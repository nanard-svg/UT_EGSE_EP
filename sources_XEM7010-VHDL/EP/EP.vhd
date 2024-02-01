library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.UT_EGSE_EP_Package.all;

entity EP is
    port(
        -- global
        i_clk_slow                : in  std_logic;
        i_clk_fast                : in  std_logic;
        i_reset                   : in  std_logic;
        --input param
        i_TH_rise                 : in  std_logic_vector(31 downto 0);
        i_TH_fall                 : in  std_logic_vector(31 downto 0);
        i_enable_erase            : in  std_logic;
        -- input
        i_ready_CDC               : in  std_logic;
        i_data_CDC                : in  signed(15 downto 0);
        -- out
        o_data_after_filter       : out signed(15 downto 0);
        o_ready_after_filter      : out std_logic;
        --coef
        i_coef_fir                : in  Array_config_32x16_type;
        i_coef_fir_ready          : in  std_logic;
        o_data_before_filter      : out signed(15 downto 0);
        -- out spectrum to fifo pipe out
        o_pipe_out_spectrum_din   : out std_logic_vector(31 downto 0);
        o_pipe_out_spectrum_wr_en : out std_logic;
        o_spectrum_count_pulse    : out std_logic_vector(31 downto 0)
    );
end entity EP;

architecture RTL of EP is

    signal ready_before_filter   : std_logic;
    signal data_before_filter    : signed(15 downto 0);
    signal data_after_filter     : signed(15 downto 0);
    signal Energy_level_max      : signed(15 downto 0);
    signal readyEnergy_level_max : std_logic;

begin

    ------------------------------------------
    --  CDC after Injection
    ------------------------------------------

    label_cdc : entity work.Fast_to_Slow_CDC
        port map(
            --global
            i_reset    => i_reset,
            i_clk_fast => i_clk_fast,
            i_clk_slow => i_clk_slow,
            --ready
            i_ready    => i_ready_CDC,
            o_ready    => ready_before_filter, --ready_slow,
            --data science
            i_data     => i_data_CDC,
            o_data     => data_before_filter --data_slow
        );

    ------------------------------------------
    --  FIR filter
    ------------------------------------------

    label_FIR_filter : entity work.FIR_filter
        port map(
            --global
            i_clk_slow       => i_clk_slow,
            i_reset          => i_reset,
            --input
            i_coef_fir       => i_coef_fir,
            i_coef_fir_ready => i_coef_fir_ready,
            i_data           => data_before_filter,
            i_ready          => ready_before_filter,
            --out
            o_data           => data_after_filter,
            o_ready          => o_ready_after_filter
        );

    o_data_before_filter <= data_before_filter;
    o_data_after_filter  <= data_after_filter;

    ------------------------------------------
    --  Energy level
    ------------------------------------------

    label_energy_level : entity work.Energy_level
        port map(
            i_clk_slow              => i_clk_slow,
            i_reset                 => i_reset,
            i_data_after_filter     => data_after_filter,
            i_TH_rise               => i_TH_rise,
            i_TH_fall               => i_TH_fall,
            o_Energy_level_max      => Energy_level_max,
            o_readyEnergy_level_max => readyEnergy_level_max
        );

    ------------------------------------------
    --  spectrum
    ------------------------------------------

    lable_spectrum : entity work.spectrum
        port map(
            -- global
            i_clk_slow                => i_clk_slow,
            i_reset                   => i_reset,
            -- input from detect Energy level
            i_enable_erase            => i_enable_erase,
            i_Energy_level_max        => Energy_level_max,
            i_readyEnergy_level_max   => readyEnergy_level_max,
            -- out spectrum to fifo pipe out
            o_pipe_out_spectrum_din   => o_pipe_out_spectrum_din,
            o_pipe_out_spectrum_wr_en => o_pipe_out_spectrum_wr_en,
            o_spectrum_count_pulse    => o_spectrum_count_pulse
        );

end architecture RTL;
