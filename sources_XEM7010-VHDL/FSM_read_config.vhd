library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.UT_EGSE_EP_Package.all;

entity FSM_read_config is
    port(
        --global
        i_clk_slow              : in  std_logic;
        i_reset                 : in  std_logic;
        --input
        i_pipe_in_config_empty  : in  std_logic;
        i_pipe_in_config_valid  : in  std_logic;
        i_pipe_in_config_dout   : in  signed(31 downto 0);
        i_pipe_in_rd_data_count : in  STD_LOGIC_VECTOR(9 downto 0);
        --output
        o_pipe_in_config_rd_en  : out std_logic;
        o_coef_fir_ready        : out std_logic;
        o_coef_fir              : out Array_config_32x16_type
    );
end entity FSM_read_config;

architecture RTL of FSM_read_config is

    type state_type is (IDLE, read, valid);
    signal state    : state_type;
    signal add_coef : integer;

begin

    ------------------------------------------------------------------------------------------------
    -- Raw buffer read
    ------------------------------------------------------------------------------------------------        

    Raw_Capture_FSM : process(i_clk_slow, i_reset) is
    begin
        if i_reset = '1' then
            state                  <= IDLE;
            o_pipe_in_config_rd_en <= '0';
            add_coef               <= 31;
            o_coef_fir             <= (others => (others => '0'));
            o_coef_fir_ready       <= '0';
        elsif rising_edge(i_clk_slow) then

            case state is
                when IDLE =>

                    if i_pipe_in_config_empty = '0' and To_integer(unsigned(i_pipe_in_rd_data_count)) = 32 then
                        state      <= read;
                        add_coef   <= 0;
                        o_coef_fir <= (others => (others => '0'));
                        o_coef_fir_ready       <= '0';
                    end if;

                when read =>

                    if add_coef < 32 then
                        o_pipe_in_config_rd_en <= '1';
                        state                  <= valid;
                    else
                        state                  <= IDLE;
                        o_pipe_in_config_rd_en <= '0';
                        o_coef_fir_ready       <= '1';

                    end if;

                when valid =>

                    o_pipe_in_config_rd_en <= '0';

                    if i_pipe_in_config_valid = '1' then
                        o_coef_fir(add_coef) <= i_pipe_in_config_dout(15 downto 0);
                        add_coef             <= add_coef + 1;
                        state                <= read;
                    end if;

            end case;
        end if;
    end process;

end architecture RTL;
