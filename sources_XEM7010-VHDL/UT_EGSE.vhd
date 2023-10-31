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

Library UNISIM;
use UNISIM.vcomponents.all;

entity UT_EGSE is
    port(
        okUH      : in    STD_LOGIC_VECTOR(4 downto 0);
        okHU      : out   STD_LOGIC_VECTOR(2 downto 0);
        okUHU     : inout STD_LOGIC_VECTOR(31 downto 0);
        okAA      : inout STD_LOGIC;    --removed for simulation
        sys_clkp  : in    STD_LOGIC;
        sys_clkn  : in    STD_LOGIC;
        led       : out   STD_LOGIC_VECTOR(7 downto 0);
        clk_60Mhz : out   STD_LOGIC
    );
end UT_EGSE;

architecture arch of UT_EGSE is
    signal sys_clk : STD_LOGIC;

    signal okClk : STD_LOGIC;
    signal okHE  : STD_LOGIC_VECTOR(112 downto 0);
    signal okEH  : STD_LOGIC_VECTOR(64 downto 0);
    signal okEHx : STD_LOGIC_VECTOR(65 * 4 - 1 downto 0);

    signal ep00wire : STD_LOGIC_VECTOR(31 downto 0);
    signal ep20wire : STD_LOGIC_VECTOR(31 downto 0);

    signal reset : std_logic;
    signal count : unsigned(31 downto 0);

    -- pipe in

    signal pipe_in_din          : STD_LOGIC_VECTOR(31 downto 0);
    signal pipe_in_wr_en        : STD_LOGIC;
    signal pipe_in_rd_en        : STD_LOGIC;
    signal pipe_in_full         : STD_LOGIC;
    signal pipe_in_dout         : STD_LOGIC_VECTOR(31 downto 0);
    signal pipe_in_empty        : STD_LOGIC;
    signal pipe_in_valid        : STD_LOGIC;
    signal pipe_out_wr_en       : std_logic;
    signal pipe_out_din         : std_logic_vector(31 downto 0);
    signal pipe_out_dout        : std_logic_vector(31 downto 0);
    signal pipe_out_rd_en       : STD_LOGIC;
    signal led_buf              : STD_LOGIC_VECTOR(7 downto 0);
    signal okB_ep_read          : std_logic;
    signal okB_po0_ep_datain    : std_logic_vector(31 downto 0);
    signal okB_pipe_out_ready   : std_logic;
    signal ep01wire             : STD_LOGIC_VECTOR(31 downto 0);
    signal probe0               : STD_LOGIC_VECTOR(34 DOWNTO 0);
    signal pipe_in_config_din   : STD_LOGIC_VECTOR(31 downto 0);
    signal pipe_in_config_wr_en : STD_LOGIC;
    signal pipe_in_config_rd_en : STD_LOGIC;
    signal pipe_in_config_dout  : STD_LOGIC_VECTOR(31 downto 0);
    signal pipe_in_config_full  : STD_LOGIC;
    signal pipe_in_config_empty : STD_LOGIC;
    signal pipe_in_config_valid : STD_LOGIC;

    signal count_clock   : unsigned(1 downto 0);
    signal sys_clk_input : STD_LOGIC;
    signal sys_clk_in    : std_logic;
    signal reset_wire    : std_logic;
    signal locked        : std_logic;
begin

    reset_wire <= ep00wire(0);

    led(7) <= '0' when (led_buf(7) = '1') else 'Z';
    led(6) <= '0' when (led_buf(6) = '1') else 'Z';
    led(5) <= '0' when (led_buf(5) = '1') else 'Z';
    led(4) <= '0' when (led_buf(4) = '1') else 'Z';
    led(3) <= '0' when (led_buf(3) = '1') else 'Z';
    led(2) <= '0' when (led_buf(2) = '1') else 'Z';
    led(1) <= '0' when (led_buf(1) = '1') else 'Z';
    led(0) <= '0' when (led_buf(0) = '1') else 'Z';

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

    ------------------------------------------
    --  read FIFO injection
    ------------------------------------------

    label_process_inter_fifo : process(sys_clk, reset) is
    begin
        if reset = '1' then
            pipe_out_din   <= (others => '0');
            pipe_out_wr_en <= '0';
            pipe_in_rd_en  <= '0';

        elsif rising_edge(sys_clk) then

            if pipe_in_rd_en = '0' and pipe_in_empty = '0' and pipe_in_valid = '0' then
                pipe_in_rd_en  <= '1';
                pipe_out_wr_en <= '0';
            else
                if pipe_in_valid = '1' then
                    pipe_out_din   <= pipe_in_dout;
                    pipe_out_wr_en <= '1';
                    pipe_in_rd_en  <= '0';
                else
                    pipe_in_rd_en  <= '0';
                    pipe_out_wr_en <= '0';
                end if;
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

    label_clk_mmcm : entity work.clk_wiz_0
        port map(
            clk_out1  => sys_clk,
            clk_out2  => clk_60Mhz,
            locked    => locked,
            clk_in1_p => sys_clkp,
            clk_in1_n => sys_clkn
        );

    reset <= (not locked) or reset_wire;

    -- Instantiate the okHost and connect endpoints
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

    fifo_pipe_in_injection : entity work.fifo_pipe_out_w32_1024_r32_1024
        port map(
            rst         => reset,
            wr_clk      => okClk,
            rd_clk      => sys_clk,
            din         => pipe_in_din,
            wr_en       => pipe_in_wr_en,
            rd_en       => pipe_in_rd_en,
            dout        => pipe_in_dout,
            full        => pipe_in_full,
            empty       => pipe_in_empty,
            valid       => pipe_in_valid,
            wr_rst_busy => open,
            rd_rst_busy => open
        );

    ------------------------------------------
    --  read FIFO config
    ------------------------------------------

    label_process_fifo_config : process(sys_clk, reset) is
    begin
        if reset = '1' then
            probe0(34 downto 3)  <= (others => '0');
            probe0(0)            <= '0';
            pipe_in_config_rd_en <= '0';
        elsif rising_edge(sys_clk) then

            if pipe_in_config_rd_en = '0' and pipe_in_config_empty = '0' and pipe_in_config_valid = '0' then
                pipe_in_config_rd_en <= '1';
                probe0(0)            <= '0';
            else
                if pipe_in_config_valid = '1' then
                    probe0(34 downto 3)  <= pipe_in_config_dout;
                    probe0(0)            <= '1';
                    pipe_in_config_rd_en <= '0';
                else
                    probe0(0)            <= '0';
                    pipe_in_config_rd_en <= '0';
                end if;
            end if;

        end if;
    end process;

    fifo_pipe_in_config : entity work.fifo_pipe_out_w32_1024_r32_1024
        port map(
            rst         => reset,
            wr_clk      => okClk,
            rd_clk      => sys_clk,
            din         => pipe_in_config_din,
            wr_en       => pipe_in_config_wr_en,
            rd_en       => pipe_in_config_rd_en,
            dout        => pipe_in_config_dout,
            full        => pipe_in_config_full,
            empty       => pipe_in_config_empty,
            valid       => pipe_in_config_valid,
            wr_rst_busy => open,
            rd_rst_busy => open
        );

    fifo_pipe_out : entity work.fifo_pipe_out_w32_2048_r32_2048
        port map(
            rst         => reset,
            wr_clk      => sys_clk,
            rd_clk      => okClk,
            din         => pipe_out_din,
            wr_en       => pipe_out_wr_en,
            rd_en       => pipe_out_rd_en,
            dout        => pipe_out_dout,
            full        => open,
            empty       => open,
            valid       => open,
            wr_rst_busy => open,
            rd_rst_busy => open
        );

    label_process_inter_wire : process(sys_clk, reset) is
    begin
        if reset = '1' then
            ep20wire <= (others => '0');
        elsif rising_edge(sys_clk) then
            ep20wire <= ep01wire;
        end if;
    end process;

    okWO : okWireOR generic map(N => 4) port map(okEH => okEH, okEHx => okEHx);

    ep00 : okWireIn port map(okHE => okHE, ep_addr => x"00", ep_dataout => ep00wire);
    ep01 : okWireIn port map(okHE => okHE, ep_addr => x"01", ep_dataout => ep01wire);
    ep20 : okWireOut port map(okHE => okHE, okEH => okEHx(1 * 65 - 1 downto 0 * 65), ep_addr => x"20", ep_datain => ep20wire);
    --ep21 : okWireOut port map(okHE => okHE, okEH => okEHx(2 * 65 - 1 downto 1 * 65), ep_addr => x"21", ep_datain => ep21wire);
    --ep22 : okWireOut port map(okHE => okHE, okEH => okEHx(3 * 65 - 1 downto 2 * 65), ep_addr => x"22", ep_datain => ep22wire);
    --ep40 : okTriggerIn port map(okHE => okHE, ep_addr => x"40", ep_clk => sys_clk, ep_trigger => ep40wire);
    --ep60 : okTriggerOut port map(okHE => okHE, okEH => okEHx(4 * 65 - 1 downto 3 * 65), ep_addr => x"60", ep_clk => sys_clk, ep_trigger => ep60trig);
    --ep61 : okTriggerOut port map(okHE => okHE, okEH => okEHx(5 * 65 - 1 downto 4 * 65), ep_addr => x"61", ep_clk => sys_clk, ep_trigger => ep61trig);
    ep80 : okPipeIn port map(okHE => okHE, okEH => okEHx(2 * 65 - 1 downto 1 * 65), ep_addr => x"80", ep_write => pipe_in_wr_en, ep_dataout => pipe_in_din);
    ep81 : okPipeIn port map(okHE => okHE, okEH => okEHx(3 * 65 - 1 downto 2 * 65), ep_addr => x"81", ep_write => pipe_in_config_wr_en, ep_dataout => pipe_in_config_din);
    epA1 : okPipeOut port map(okHE => okHE, okEH => okEHx(4 * 65 - 1 downto 3 * 65), ep_addr => x"A1", ep_read => pipe_out_rd_en, ep_datain => pipe_out_dout);
    --epA1 : okBTPipeOut port map(okHE => okHE, okEH => okEHx(4 * 65 - 1 downto 3 * 65), ep_addr => x"A1", ep_read => okB_ep_read, ep_blockstrobe => open, ep_datain => okB_po0_ep_datain, ep_ready => okB_pipe_out_ready);

    label_ila : entity work.ila_0
        port map(
            clk    => sys_clk,
            probe0 => probe0
        );
    --    probe0(0)           <= pipe_in_rd_en;
    --    probe0(1)           <= pipe_in_valid;
    --    probe0(2)           <= pipe_in_empty;
    --    probe0(34 downto 3) <= pipe_in_dout;

    probe0(0)           <= probe0(0);
    probe0(1)           <= pipe_in_config_rd_en;
    probe0(2)           <= pipe_in_config_valid;
    probe0(34 downto 3) <= probe0(34 downto 3);

end arch;
