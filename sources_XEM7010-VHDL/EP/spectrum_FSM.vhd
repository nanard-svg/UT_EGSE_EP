library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spectrum_FSM is
    port(
        -- global
        i_clk_slow                : in  std_logic;
        i_reset                   : in  std_logic;
        -- synchro_spectrum
        i_clk_synchro_spectrum    : in  std_logic;
        i_set_synchro_spectrum    : in  std_logic_vector(0 downto 0);
        i_enable_erase            : in  std_logic;
        -- RAM
        o_we                      : out std_logic;
        o_en                      : out std_logic;
        o_addr                    : out std_logic_vector(9 downto 0);
        o_di                      : out std_logic_vector(15 downto 0);
        i_do                      : in  std_logic_vector(15 downto 0);
        -- input from detect Energy level
        i_ready_energy_level_max  : in  std_logic;
        i_energy_level_max        : in  signed(15 downto 0);
        -- out spectrum to fifo pipe out
        o_pipe_out_spectrum_din   : out std_logic_vector(31 downto 0);
        o_pipe_out_spectrum_wr_en : out std_logic;
        o_spectrum_count_pulse    : out std_logic_vector(31 downto 0)
    );
end entity spectrum_FSM;

architecture RTL of spectrum_FSM is

    type state_type is (init_ram, detect_energy_max_ready, read_ram, write_ram, header_to_gse, first_data_to_gse, write_to_gse, last_data_to_gse, end_write_to_gse, dispatch);
    signal TM_Byte_index        : integer range 0 to 8;
    signal state                : state_type;
    signal addr                 : unsigned(9 downto 0);
    signal old_addr             : unsigned(9 downto 0);
    signal spectrum_count_pulse : std_logic_vector(31 downto 0);

begin

    process(i_clk_slow, i_reset) is
    begin
        if i_reset = '1' then

            state                     <= init_ram;
            o_we                      <= '1';
            o_en                      <= '1';
            addr                      <= (others => '1');
            old_addr                  <= (others => '0');
            o_di                      <= (others => '0');
            o_pipe_out_spectrum_din   <= (others => '0');
            o_pipe_out_spectrum_wr_en <= '0';
            spectrum_count_pulse      <= (others => '0');
            TM_Byte_index             <= 0;

        --stamp <= (others => '0');

        elsif rising_edge(i_clk_slow) then

            case state is

                when init_ram =>

                    if To_integer(unsigned(addr)) = 0 then
                        addr  <= To_unsigned(0, 10);
                        state <= detect_energy_max_ready;
                        o_we  <= '0';
                        o_en  <= '0';
                    else
                        o_di <= (others => '0');
                        --addr <= std_logic_vector(unsigned(addr) + to_unsigned(1, 10));
                        addr <= (addr) - 1;
                        o_we <= '1';
                        o_en <= '1';
                        --if To_integer(unsigned(o_addr)) = 65536-1 tho_en
                    end if;

                when detect_energy_max_ready =>

                    o_en <= '0';
                    o_we <= '0';

                    if i_clk_synchro_spectrum = i_set_synchro_spectrum(0) then
                        state         <= header_to_gse;
                        TM_Byte_index <= 0;
                        addr          <= (others => '0');
                        old_addr      <= (others => '0');
                        o_en          <= '0';
                        o_we          <= '0';

                    else
                        if i_ready_energy_level_max = '1' then
                            spectrum_count_pulse <= std_logic_vector(unsigned(spectrum_count_pulse) + 1);
                            addr                 <= unsigned(i_energy_level_max(15 downto 6));
                            o_en                 <= '1';
                            state                <= read_ram;
                        end if;
                    end if;

                when read_ram =>

                    o_en  <= '0';
                    o_we  <= '0';
                    --stamp <= unsigned(i_do) + to_unsigned(1, 16);
                    state <= write_ram;

                when write_ram =>

                    o_en  <= '1';
                    o_we  <= '1';
                    --o_di  <= std_logic_vector(unsigned(i_do) + to_unsigned(1, 16));
                    o_di  <= std_logic_vector(unsigned(i_do) + 1);
                    state <= detect_energy_max_ready;

                when header_to_gse =>

                    TM_Byte_index <= TM_Byte_index + 1;

                    case TM_Byte_index is

                        when 0 =>       -- write ID
                            o_pipe_out_spectrum_wr_en <= '1';
                            o_pipe_out_spectrum_din   <= x"0000000" & "000" & i_set_synchro_spectrum;
                        --------------------------------------------------------
                        when 1 =>       -- write TimeMSB
                            o_pipe_out_spectrum_din <= x"AAAAAAAA";
                        --------------------------------------------------------
                        when 2 =>       -- write T
                            o_pipe_out_spectrum_din <= x"00000000";
                        --------------------------------------------------------
                        when 3 =>       -- write TimeLSB
                            o_pipe_out_spectrum_din <= x"55555555";
                        --------------------------------------------------------
                        when 4 to 5 =>
                            state                     <= first_data_to_gse;
                            o_pipe_out_spectrum_wr_en <= '0';
                            o_en                      <= '1';
                            TM_Byte_index             <= 0;
                        --------------------------------------------------------
                        when others =>

                    end case;

                when first_data_to_gse =>

                    addr     <= addr + 1;
                    old_addr <= addr;
                    state    <= write_to_gse;

                when write_to_gse =>

                    addr     <= addr + 1;
                    old_addr <= addr;

                    o_pipe_out_spectrum_wr_en <= '1';
                    o_pipe_out_spectrum_din   <= "000000" & std_logic_vector(old_addr) & i_do;

                    if To_integer(unsigned(addr)) = (1024 - 1) then
                        o_en  <= '0';
                        state <= last_data_to_gse;
                    end if;

                when last_data_to_gse =>
                    o_pipe_out_spectrum_din <= "000000" & std_logic_vector(old_addr) & i_do;
                    state                   <= end_write_to_gse;

                when end_write_to_gse =>

                    o_pipe_out_spectrum_wr_en <= '0';
                    state                     <= dispatch;

--                when end_to_gse =>
--
--                    TM_Byte_index <= TM_Byte_index + 1;
--
--                    case TM_Byte_index is
--
--                        when 0 =>       -- 
--                            o_pipe_out_spectrum_wr_en <= '1';
--                            o_pipe_out_spectrum_din   <= x"00000000";
--                        --------------------------------------------------------
--                        when 1 =>
--                            o_pipe_out_spectrum_din <= x"00000000";
--                            TM_Byte_index           <= 0;
--                            state                   <= dispatch;
--                        --------------------------------------------------------
--                        when others =>
--
--                    end case;

                when dispatch =>
                    
                    o_pipe_out_spectrum_wr_en <= '0';

                    if i_clk_synchro_spectrum = not (i_set_synchro_spectrum(0)) then
                        if i_enable_erase = '1' then
                            state <= init_ram;
                            addr  <= (others => '1');
                        else
                            state <= detect_energy_max_ready;
                        end if;

                    end if;

            end case;
        end if;
    end process;

    o_addr                 <= std_logic_vector(addr);
    o_spectrum_count_pulse <= spectrum_count_pulse;

end architecture RTL;
