library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spectrum is
    port(
        i_clk_slow                : in  std_logic;
        i_reset                   : in  std_logic;
        -- input from detect Energy level
        i_Energy_level_max        : in  signed(15 downto 0);
        i_readyEnergy_level_max   : in  std_logic;
        -- out spectrum to fifo pipe out
        o_pipe_out_spectrum_din   : out std_logic_vector(31 downto 0);
        o_pipe_out_spectrum_wr_en : out std_logic
    );
end entity spectrum;

architecture RTL of spectrum is

    signal addr                 : std_logic_vector(9 downto 0);
    signal we                   : std_logic;
    signal di                   : std_logic_vector(15 downto 0);
    signal en                   : std_logic;
    signal do                   : std_logic_vector(15 downto 0);
    signal count                : unsigned(26 downto 0);
    signal clk_synchro_spectrum : std_logic;
    --signal stamp : unsigned(15 downto 0);

begin

    ------------------------------------------
    -- Cycle spectrum
    ------------------------------------------

    label_Cycle_spectrum : process(i_clk_slow, i_reset) is
    begin
        if i_reset = '1' then
            count                <= (others => '0');
            clk_synchro_spectrum <= '0';
        elsif rising_edge(i_clk_slow) then
            count <= count + 1;
            if To_integer(count) = 100000000 then
                clk_synchro_spectrum <= not clk_synchro_spectrum;
                count                <= (others => '0');
            end if;
        end if;
    end process;

    ------------------------------------------
    -- Single-Port Block RAM No-Change Mode
    -- File: rams_sp_nc.vhd 
    ------------------------------------------

    label_rame_one : entity work.rams_sp_nc
        port map(
            clk  => i_clk_slow,
            we   => we,
            en   => en,
            addr => addr,
            di   => di,
            do   => do
        );

    ------------------------------------------
    -- 
    -- manage read write rams_sp_nc and send pipe out spectrum
    --
    ------------------------------------------

    label_spectrum_FSM : entity work.spectrum_FSM
        port map(
            -- global
            i_clk_slow                => i_clk_slow,
            i_reset                   => i_reset,
            -- synchro_spectrum
            i_clk_synchro_spectrum    => clk_synchro_spectrum,
            i_set_synchro_spectrum    => '1',
            -- RAM
            o_we                      => we,
            o_en                      => en,
            o_addr                    => addr,
            o_di                      => di,
            i_do                      => do,
            -- input from detect Energy level
            i_ready_energy_level_max  => i_readyEnergy_level_max,
            i_energy_level_max        => i_Energy_level_max,
            -- out spectrum to fifo pipe out
            o_pipe_out_spectrum_din   => o_pipe_out_spectrum_din,
            o_pipe_out_spectrum_wr_en => o_pipe_out_spectrum_wr_en
        );

end architecture RTL;
