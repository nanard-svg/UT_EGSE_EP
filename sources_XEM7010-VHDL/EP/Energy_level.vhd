library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Energy_level is
    port(
        i_clk_slow              : in  std_logic;
        i_reset                 : in  std_logic;
        --input
        i_data_after_filter     : in  signed(15 downto 0);
        --input Th level
        i_TH_rise               : in  std_logic_vector(31 downto 0);
        i_TH_fall               : in  std_logic_vector(31 downto 0);
        --output
        o_Energy_level_max      : out signed(15 downto 0);
        o_readyEnergy_level_max : out std_logic
    );
end entity Energy_level;

architecture RTL of Energy_level is
    type state_type is (init, event_detecting, event_detecting_finish);
    signal max_research : signed(15 downto 0);
    signal state        : state_type := init;

begin

    process(i_clk_slow, i_reset) is
    begin
        if i_reset = '1' then

            state                   <= init;
            max_research            <= (others => '0');
            o_Energy_level_max      <= (others => '0');
            o_readyEnergy_level_max <= '0';

        elsif rising_edge(i_clk_slow) then

            case state is
                when init =>

                    o_readyEnergy_level_max <= '0';

                    if (i_data_after_filter > signed(i_TH_rise(15 downto 0))) then
                        state        <= event_detecting;
                        max_research <= i_data_after_filter;
                    end if;

                when event_detecting =>

                    if (i_data_after_filter < signed(i_TH_fall(15 downto 0))) then
                        state <= event_detecting_finish;
                    else
                        if (i_data_after_filter >= max_research) then
                            max_research <= i_data_after_filter;
                        end if;
                    end if;

                when event_detecting_finish =>

                    state                   <= init;
                    o_Energy_level_max      <= max_research;
                    o_readyEnergy_level_max <= '1';
            end case;
        end if;
    end process;

end architecture RTL;
