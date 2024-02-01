--------------------------------------------------------------------------
-- Counters.vhd
--
-- HDL for the counters sample.  This HDL describes two counters operating
-- on different board clocks and with slightly different functionality.
-- The counter controls and counter values are connected to endpoints so
-- that FrontPanel may control and observe them.
--
-- Copyright (c) 2005-2009  Opal Kelly Incorporated
-- $Rev$ $Date$
--------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

use IEEE.std_logic_misc.all;
use ieee.numeric_std.all;
use work.FRONTPANEL.all;

use work.UT_EGSE_EP_Package.all;

Library UNISIM;
use UNISIM.vcomponents.all;

entity UT_EGSE is
    port(
        okUH     : in    STD_LOGIC_VECTOR(4 downto 0);
        okHU     : out   STD_LOGIC_VECTOR(2 downto 0);
        okUHU    : inout STD_LOGIC_VECTOR(31 downto 0);
        okAA     : inout STD_LOGIC;     --removed for simulation
        sys_clkp : in    STD_LOGIC;
        sys_clkn : in    STD_LOGIC;
        sck      : out   STD_LOGIC;
        cnv      : out   STD_LOGIC;
        sdi      : in    STD_LOGIC;
        sdo      : out   STD_LOGIC;
        led      : out   STD_LOGIC_VECTOR(7 downto 0)
        --clk_60Mhz : out   STD_LOGIC
    );
end UT_EGSE;

architecture arch of UT_EGSE is

    signal sys_clk : STD_LOGIC;

    signal okClk : STD_LOGIC;
    signal okHE  : STD_LOGIC_VECTOR(112 downto 0);
    signal okEH  : STD_LOGIC_VECTOR(64 downto 0);
    signal okEHx : STD_LOGIC_VECTOR(65 * 7 - 1 downto 0);

    signal ep00wire : STD_LOGIC_VECTOR(31 downto 0);
    signal ep20wire : STD_LOGIC_VECTOR(31 downto 0);
    signal ep21wire : STD_LOGIC_VECTOR(31 downto 0);
    signal ep22wire : std_logic_vector(31 downto 0);

    signal reset : std_logic;
    signal count : unsigned(31 downto 0);

    -- pipe in

    signal pipe_in_injection_din_fifo   : STD_LOGIC_VECTOR(31 downto 0);
    signal pipe_in_injection_wr_en_fifo : STD_LOGIC;
    signal pipe_in_injection_rd_en_fifo : STD_LOGIC;

    signal pipe_in_injection_dout_fifo  : STD_LOGIC_VECTOR(31 downto 0);
    signal pipe_in_injection_empty_fifo : STD_LOGIC;
    signal pipe_in_injection_valid_fifo : STD_LOGIC;

    signal dout_fifo_pipe_out_raw_data  : std_logic_vector(31 downto 0);
    signal rd_en_fifo_pipe_out_raw_data : STD_LOGIC;
    signal led_buf                      : STD_LOGIC_VECTOR(7 downto 0);

    signal ep01wire : STD_LOGIC_VECTOR(31 downto 0);

    signal pipe_in_config_din   : STD_LOGIC_VECTOR(31 downto 0);
    signal pipe_in_config_wr_en : STD_LOGIC;
    signal pipe_in_config_rd_en : STD_LOGIC;
    signal pipe_in_config_dout  : STD_LOGIC_VECTOR(31 downto 0);

    signal pipe_in_config_empty : STD_LOGIC;
    signal pipe_in_config_valid : STD_LOGIC;

    signal reset_wire                 : std_logic;
    signal locked                     : std_logic;
    signal din_fifo_pipe_out_raw_data : signed(31 downto 0);

    signal clk_60Mhz : STD_LOGIC;

    signal data_before_filter           : signed(15 downto 0);
    signal data_after_filter            : signed(15 downto 0);
    signal ready_after_filter           : std_logic;
    signal wr_en_fifo_pipe_out_raw_data : STD_LOGIC;
    signal i_Start_Capture              : std_logic;
    signal i_level_trigger              : std_logic;

    signal pipe_in_confi_rd_data_count : STD_LOGIC_VECTOR(9 DOWNTO 0);
    signal coef_fir                    : Array_config_32x16_type;
    signal coef_fir_ready              : std_logic;

    signal rd_fifo_pipe_out_data_count_raw_data : std_logic_vector(10 downto 0);

    signal ready_fast_injection : std_logic;
    signal data_fast_injection  : signed(15 downto 0);

    signal data_rx         : std_logic_vector(17 downto 0);
    signal ready_rx        : std_logic;
    signal i_data_CDC      : signed(15 downto 0);
    signal i_ready_CDC     : std_logic;
    signal data_rx_keeped  : std_logic_vector(17 downto 0);
    signal ready_rx_keeped : std_logic;

    signal TH_rise      : std_logic_vector(31 downto 0);
    signal TH_fall      : std_logic_vector(31 downto 0);
    signal enable_erase : std_logic;

    signal pipe_out_spectrum_rd_en         : std_logic;
    signal pipe_out_spectrum_dout          : std_logic_vector(31 downto 0);
    signal pipe_out_spectrum_din           : STD_LOGIC_VECTOR(31 downto 0);
    signal pipe_out_spectrum_wr_en         : STD_LOGIC;
    signal pipe_out_rd_data_count_spectrum : std_logic_vector(10 downto 0);
    signal pipe_out_spectrum_wr_en_fifo    : std_logic;
    signal pipe_out_spectrum_din_fifo      : STD_LOGIC_VECTOR(31 downto 0);
    signal spectrum_count_pulse : std_logic_vector(31 downto 0);
    
    signal empty_fifo_pipe_out_raw_data    : std_logic;
    signal din_fifo_raw_data               : signed(31 downto 0);
    

begin

    led(7) <= '0' when (led_buf(7) = '1') else 'Z';
    led(6) <= '0' when (led_buf(6) = '1') else 'Z';
    led(5) <= '0' when (led_buf(5) = '1') else 'Z';
    led(4) <= '0' when (led_buf(4) = '1') else 'Z';
    led(3) <= '0' when (led_buf(3) = '1') else 'Z';
    led(2) <= '0' when (led_buf(2) = '1') else 'Z';
    led(1) <= '0' when (led_buf(1) = '1') else 'Z';
    led(0) <= '0' when (led_buf(0) = '1') else 'Z';
    sdo    <= '1';
    ------------------------------------------
    --  LED
    ------------------------------------------

    label_process_led : process(sys_clk, reset) is
    begin
        if reset = '1' then
            count   <= (others => '0');
            led_buf <= (others => '0');
        elsif rising_edge(sys_clk) then
            count <= count + 1;
            if To_integer(count) = 5000000 then

                led_buf <= not led_buf;
                count   <= (others => '0');

            end if;
        end if;
    end process;

    --    ------------------------------------------------
    --    -- 
    --    --------------------------------------------------
    --
    --    osc_clk : IBUFGDS port map(O => sys_clk_input, I => sys_clkp, IB => sys_clkn);
    --
    --    ------------------------------------------
    --    --  clock divider
    --    ------------------------------------------
    --
    --    label_clock : process(sys_clk_input, reset) is
    --    begin
    --        if reset = '1' then
    --            
    --            count_clock <= (others => '0');
    --            sys_clk_in     <= '0';
    --
    --        elsif rising_edge(sys_clk_input) then
    --
    --            count_clock <= count_clock + 1;
    --
    --            if To_integer(count_clock) = 1 then
    --                sys_clk_in     <= not sys_clk_in;
    --                count_clock <= (others => '0');
    --
    --            end if;
    --        end if;
    --    end process;
    --
    --    label_buffg : BUFG port map(I => sys_clk_in, O => sys_clk);

    ------------------------------------------
    --  PLL MMCM
    ------------------------------------------

    label_clk_mmcm : entity work.clk_wiz_0
        port map(
            clk_out1  => sys_clk,
            clk_out2  => clk_60Mhz,
            locked    => locked,
            clk_in1_p => sys_clkp,
            clk_in1_n => sys_clkn
        );

    reset_wire      <= ep00wire(0);
    i_Start_Capture <= ep00wire(1);
    reset           <= (not locked) or reset_wire;
    enable_erase    <= ep00wire(30);

    ------------------------------------------
    -- Instantiate the okHost and connect endpoints
    ------------------------------------------

    okHI : okHost
        port map(
            okUH  => okUH,
            okHU  => okHU,
            okUHU => okUHU,
            okAA  => okAA,              --removed for simulation
            okClk => okClk,
            okHE  => okHE,
            okEH  => okEH
        );

    ------------------------------------------
    --  FIFO pipe_in Injection
    ------------------------------------------

    fifo_pipe_in_injection : entity work.fifo_pipe_out_w32_1024_r32_1024
        port map(
            rst         => reset,
            wr_clk      => okClk,
            rd_clk      => clk_60Mhz,
            din         => pipe_in_injection_din_fifo,
            wr_en       => pipe_in_injection_wr_en_fifo,
            rd_en       => pipe_in_injection_rd_en_fifo,
            dout        => pipe_in_injection_dout_fifo,
            full        => open,
            empty       => pipe_in_injection_empty_fifo,
            valid       => pipe_in_injection_valid_fifo,
            wr_rst_busy => open,
            rd_rst_busy => open
        );

    ------------------------------------------
    --  Injection to CDC
    ------------------------------------------  

    label_Injection : entity work.Injection
        port map(
            --global
            reset           => reset,
            clk_60Mhz       => clk_60Mhz,
            --from pipe in Injection
            o_pipe_in_rd_en => pipe_in_injection_rd_en_fifo,
            i_pipe_in_empty => pipe_in_injection_empty_fifo,
            i_pipe_in_valid => pipe_in_injection_valid_fifo,
            i_pipe_in_dout  => signed(pipe_in_injection_dout_fifo(15 downto 0)),
            --output injection
            o_data          => data_fast_injection,
            o_ready         => ready_fast_injection
        );

    ------------------------------------------
    --  ADC to keeper
    ------------------------------------------  

    label_ADC : entity work.Rx_fe
        port map(
            --global
            clk        => clk_60Mhz,
            rst        => reset,
            --IO ADC
            o_sck      => sck,
            o_cnv      => cnv,
            i_sdo      => sdi,
            --out
            o_data_rx  => data_rx,
            o_ready_rx => ready_rx
        );

    ------------------------------------------
    --  keep data from ADC to CDC
    ------------------------------------------ 

    label_keep_data_from_ADC : process(clk_60Mhz, reset) is
    begin
        if reset = '1' then
            data_rx_keeped  <= (others => '0');
            ready_rx_keeped <= '0';
        elsif rising_edge(clk_60Mhz) then
            if ready_rx = '1' then
                ready_rx_keeped <= '1';
                data_rx_keeped  <= data_rx;
            else
                ready_rx_keeped <= '0';
            end if;
        end if;
    end process;

    ------------------------------------------
    --  MUX ADC OR Injection
    ------------------------------------------  

    label_mux_science_data : i_data_CDC   <= signed(data_rx_keeped(17 downto 2)) when ep00wire(31) = '1' else data_fast_injection;
    label_mux_science_ready : i_ready_CDC <= ready_rx_keeped when ep00wire(31) = '1' else ready_fast_injection;

    ------------------------------------------
    --  EP
    ------------------------------------------
    label_Ep : entity work.EP
        port map(
            i_clk_slow                => sys_clk,
            i_clk_fast                => clk_60Mhz,
            i_reset                   => reset,
            -- input param trigger pick detect energy
            i_TH_rise                 => TH_rise,
            i_TH_fall                 => TH_fall,
            i_enable_erase            => enable_erase,
            -- input Data science
            i_ready_CDC               => i_ready_CDC,
            i_data_CDC                => i_data_CDC,
            -- out view 
            o_data_after_filter       => data_after_filter,
            o_ready_after_filter      => ready_after_filter,
            -- input coef filter
            i_coef_fir                => coef_fir,
            i_coef_fir_ready          => coef_fir_ready,
            -- out view
            o_data_before_filter      => data_before_filter,
            -- out spectrum to fifo pipe out
            o_pipe_out_spectrum_din   => pipe_out_spectrum_din,
            o_pipe_out_spectrum_wr_en => pipe_out_spectrum_wr_en,
            o_spectrum_count_pulse    => spectrum_count_pulse
        );

    ------------------------------------------
    --  process trigger raw data
    ------------------------------------------ 

    process(sys_clk, reset) is
    begin
        if reset = '1' then
            pipe_out_spectrum_wr_en_fifo <= '0';
            pipe_out_spectrum_din_fifo   <= (others => '0');
        elsif rising_edge(sys_clk) then
            pipe_out_spectrum_wr_en_fifo <= pipe_out_spectrum_wr_en;
            pipe_out_spectrum_din_fifo   <= pipe_out_spectrum_din;
        end if;
    end process;

    ------------------------------------------
    --  FSM raw data
    ------------------------------------------

    label_FSM_raw_data : entity work.FSM_raw_data
        port map(
            --global
            i_clk_slow                     => sys_clk,
            i_reset                        => reset,
            --remote FSM raw data
            i_level_trigger                => i_level_trigger,
            i_Start_Capture                => i_Start_Capture,
            --input
            i_din_fifo_raw_data            => din_fifo_raw_data,
            i_ready                        => ready_after_filter,
            --output
            o_din_fifo_pipe_out_raw_data   => din_fifo_pipe_out_raw_data,
            o_wr_en_fifo_pipe_out_raw_data => wr_en_fifo_pipe_out_raw_data,
            i_empty_fifo_pipe_out_raw_data => empty_fifo_pipe_out_raw_data
        );

    din_fifo_raw_data <= (data_after_filter) & (data_before_filter);

    ------------------------------------------
    --  process trigger raw data
    ------------------------------------------ 

    label_trigger : process(sys_clk, reset) is
    begin
        if reset = '1' then
            i_level_trigger <= '0';
        elsif rising_edge(sys_clk) then
            if signed(ep01wire(15 downto 0)) < data_before_filter then
                i_level_trigger <= '1';
            else
                i_level_trigger <= '0';
            end if;
        end if;
    end process;

    ------------------------------------------
    --  FIFO pipe_out data science
    ------------------------------------------

    fifo_pipe_out_science : entity work.fifo_pipe_out_w32_2048_r32_2048
        port map(
            rst           => reset,
            wr_clk        => sys_clk,
            rd_clk        => okClk,
            din           => std_logic_vector(din_fifo_pipe_out_raw_data),
            wr_en         => wr_en_fifo_pipe_out_raw_data,
            rd_en         => rd_en_fifo_pipe_out_raw_data,
            dout          => dout_fifo_pipe_out_raw_data,
            full          => open,
            empty         => empty_fifo_pipe_out_raw_data,
            valid         => open,
            rd_data_count => rd_fifo_pipe_out_data_count_raw_data,
            wr_rst_busy   => open,
            rd_rst_busy   => open
        );

    ------------------------------------------
    --  FIFO pipe_out spectrum
    ------------------------------------------

    fifo_pipe_out_specrum : entity work.fifo_pipe_out_w32_2048_r32_2048
        port map(
            rst           => reset,
            wr_clk        => sys_clk,
            rd_clk        => okClk,
            din           => pipe_out_spectrum_din_fifo,
            wr_en         => pipe_out_spectrum_wr_en_fifo,
            rd_en         => pipe_out_spectrum_rd_en,
            dout          => pipe_out_spectrum_dout,
            full          => open,
            empty         => open,
            valid         => open,
            rd_data_count => pipe_out_rd_data_count_spectrum,
            wr_rst_busy   => open,
            rd_rst_busy   => open
        );

    ------------------------------------------
    --  FSM pipe_in config in co coef FIR filter
    ------------------------------------------

    label_FSM_pipe_in_config : entity work.FSM_read_config
        port map(
            i_clk_slow              => sys_clk,
            i_reset                 => reset,
            i_pipe_in_config_empty  => pipe_in_config_empty,
            i_pipe_in_config_valid  => pipe_in_config_valid,
            i_pipe_in_config_dout   => signed(pipe_in_config_dout),
            i_pipe_in_rd_data_count => pipe_in_confi_rd_data_count,
            o_pipe_in_config_rd_en  => pipe_in_config_rd_en,
            o_coef_fir_ready        => coef_fir_ready,
            o_coef_fir              => coef_fir
        );

    ------------------------------------------
    --  FIFO pipe_in config
    ------------------------------------------

    fifo_pipe_in_config : entity work.fifo_pipe_in_w32_1024_r32_1024
        port map(
            rst           => reset,
            wr_clk        => okClk,
            rd_clk        => sys_clk,
            din           => pipe_in_config_din,
            wr_en         => pipe_in_config_wr_en,
            rd_en         => pipe_in_config_rd_en,
            dout          => pipe_in_config_dout,
            full          => open,
            empty         => pipe_in_config_empty,
            valid         => pipe_in_config_valid,
            rd_data_count => pipe_in_confi_rd_data_count,
            wr_rst_busy   => open,
            rd_rst_busy   => open
        );

    ------------------------------------------
    --  wire out for FIFO pipe out science. 
    ------------------------------------------

    label_process_inter_wire : process(sys_clk, reset) is
    begin
        if reset = '1' then
            ep20wire <= (others => '0');
        elsif rising_edge(sys_clk) then
            ep20wire <= "000000000000000000000" & rd_fifo_pipe_out_data_count_raw_data;
        end if;
    end process;

    ------------------------------------------
    --  wire out for FIFO pipe out spectrum. 
    ------------------------------------------

    label_process_spectrum : process(sys_clk, reset) is
    begin
        if reset = '1' then
            ep21wire <= (others => '0');
        elsif rising_edge(sys_clk) then
            ep21wire <= "000000000000000000000" & pipe_out_rd_data_count_spectrum;
        end if;
    end process;

    ep22wire <= spectrum_count_pulse;

    --  okwire OR
    okWO : okWireOR generic map(N => 7) port map(okEH => okEH, okEHx => okEHx);
    --  reset, start_capture
    ep00 : okWireIn port map(okHE => okHE, ep_addr => x"00", ep_dataout => ep00wire);
    --  level trig raw data
    ep01 : okWireIn port map(okHE => okHE, ep_addr => x"01", ep_dataout => ep01wire);
    --  level TH_rise
    ep02 : okWireIn port map(okHE => okHE, ep_addr => x"02", ep_dataout => TH_rise);
    --  level TH_fall
    ep03 : okWireIn port map(okHE => okHE, ep_addr => x"03", ep_dataout => TH_fall);

    --  read wire out rd_fifo_pipe_out_data_count_raw_data
    ep20 : okWireOut port map(okHE => okHE, okEH => okEHx(1 * 65 - 1 downto 0 * 65), ep_addr => x"20", ep_datain => ep20wire);
    --  read wire out pipe_out_rd_data_count_spectrum
    ep21 : okWireOut port map(okHE => okHE, okEH => okEHx(2 * 65 - 1 downto 1 * 65), ep_addr => x"21", ep_datain => ep21wire);
    --  read wire out pipe_out_rd_data_count_spectrum
    ep22 : okWireOut port map(okHE => okHE, okEH => okEHx(3 * 65 - 1 downto 2 * 65), ep_addr => x"22", ep_datain => ep22wire);
    --  pipe in injection
    ep80 : okPipeIn port map(okHE => okHE, okEH => okEHx(4 * 65 - 1 downto 3 * 65), ep_addr => x"80", ep_write => pipe_in_injection_wr_en_fifo, ep_dataout => pipe_in_injection_din_fifo);
    --  pipe in config
    ep81 : okPipeIn port map(okHE => okHE, okEH => okEHx(5 * 65 - 1 downto 4 * 65), ep_addr => x"81", ep_write => pipe_in_config_wr_en, ep_dataout => pipe_in_config_din);
    --  pipe out raw data
    epA1 : okPipeOut port map(okHE => okHE, okEH => okEHx(6 * 65 - 1 downto 5 * 65), ep_addr => x"A1", ep_read => rd_en_fifo_pipe_out_raw_data, ep_datain => dout_fifo_pipe_out_raw_data);
    --  pipe out spectrum
    epA2 : okPipeOut port map(okHE => okHE, okEH => okEHx(7 * 65 - 1 downto 6 * 65), ep_addr => x"A2", ep_read => pipe_out_spectrum_rd_en, ep_datain => pipe_out_spectrum_dout);

end arch;
