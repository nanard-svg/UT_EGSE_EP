library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM_raw_data is
    port(
        --global
        i_clk_slow      : in  std_logic;
        i_reset         : in  std_logic;
        --input
        i_level_trigger : in  std_logic;
        i_Start_Capture : in  std_logic;
        i_data          : in  signed(15 downto 0);
        i_ready         : in  std_logic;
        --output
        o_data          : out std_logic_vector(15 downto 0);
        o_write_data    : out std_logic
    );
end entity FSM_raw_data;

architecture RTL of FSM_raw_data is

    type state_type is (IDLE, CAPTURE, DELAY, WAIT_EVENT);
    signal state : state_type;

    signal Initial_Fill_Count : unsigned(31 downto 0);
    signal Raw_Sample_Count   : unsigned(31 downto 0);
    signal rd_en              : std_logic;
    signal Delay_Count        : unsigned(31 downto 0);
    --signal dout               : STD_LOGIC_VECTOR(15 downto 0);

begin

    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Raw capture
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------         

    label_Raw_Buffer : entity work.raw_data_fifo
        port map(
            clk        => i_clk_slow,
            srst       => i_reset,
            din        => std_logic_vector(i_data),
            wr_en      => i_ready,
            rd_en      => rd_en,
            dout       => o_data,
            full       => open,
            empty      => open,
            data_count => open
        );

    ------------------------------------------------------------------------------------------------
    -- Initial raw buffer filling
    ------------------------------------------------------------------------------------------------        

    Raw_Buffer_Initial_Fill : process(i_clk_slow, i_reset)
    begin
        if i_reset = '1' then
            Initial_Fill_Count <= (others => '0');
        else
            if rising_edge(i_clk_slow) then

                if i_ready = '1' and To_integer(Initial_Fill_Count) < 255 then
                    Initial_Fill_Count <= Initial_Fill_Count + 1;
                end if;

            end if;
        end if;
    end process;

    rd_en <= '0' when (To_integer(Initial_Fill_Count)) < 255 else i_ready;

    ------------------------------------------------------------------------------------------------
    -- Raw buffer read
    ------------------------------------------------------------------------------------------------        

    Raw_Capture_FSM : process(i_clk_slow, i_reset) is
    begin
        if i_reset = '1' then
            state            <= IDLE;
            Raw_Sample_Count <= (others => '0');
            Delay_Count      <= (others => '0');
            o_write_data     <= '0';
            
        elsif rising_edge(i_clk_slow) then
            case state is
                when IDLE =>

                    o_write_data <= '0';

                    if i_Start_Capture = '1' then -- from trig in?
                        state <= WAIT_EVENT;
                    end if;

                when WAIT_EVENT =>

                    o_write_data <= '0';

                    if i_level_trigger = '1' then -- level trigger & AND from trig in?
                        Raw_Sample_Count <= (others => '0');
                        Delay_Count      <= (others => '0');
                        state            <= DELAY;
                    end if;

                when DELAY =>

                    if i_ready = '1' then
                        Delay_Count <= Delay_Count + 1;
                        if (To_integer(Delay_Count) = 64) then
                            state <= CAPTURE;
                        end if;
                    end if;

                when CAPTURE =>

                    o_write_data <= '0';

                    if i_ready = '1' then
                        o_write_data     <= '1';
                        Raw_Sample_Count <= Raw_Sample_Count + 1;

                        if (To_integer(Raw_Sample_Count) = 512) then
                            state <= IDLE;
                        end if;

                    end if;

            end case;
        end if;
    end process;

end architecture RTL;
