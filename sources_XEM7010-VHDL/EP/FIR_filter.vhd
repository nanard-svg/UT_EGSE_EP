library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FIR_filter is
    port(
        --global
        i_clk_slow : in  std_logic;
        i_reset    : in  std_logic;
        --input
        i_data     : in  std_logic_vector(15 downto 0);
        i_ready    : in  std_logic;
        --output
        o_data     : out std_logic_vector(15 downto 0);
        o_ready    : out std_logic
    );
end entity FIR_filter;

architecture RTL of FIR_filter is

begin

    process(i_clk_slow, i_reset) is
    begin
        if i_reset = '1' then
            o_data  <= (others => '0');
            o_ready <= '0';
        elsif rising_edge(i_clk_slow) then
            o_data  <= i_data;
            o_ready <= i_ready;
        end if;
    end process;

end architecture RTL;
