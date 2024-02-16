// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Feb 16 12:24:16 2024
// Host        : DESKTOP-3HC2UMC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/3Utransat/UT_EGSE_EP/Projet_Vivado/UT_EGSE_EP.gen/sources_1/ip/fifo_pipe_in_w32_1024_r32_1024/fifo_pipe_in_w32_1024_r32_1024_sim_netlist.v
// Design      : fifo_pipe_in_w32_1024_r32_1024
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_pipe_in_w32_1024_r32_1024,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_pipe_in_w32_1024_r32_1024
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid,
    rd_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output [9:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_pipe_in_w32_1024_r32_1024_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_pipe_in_w32_1024_r32_1024_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_pipe_in_w32_1024_r32_1024_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_pipe_in_w32_1024_r32_1024_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_pipe_in_w32_1024_r32_1024_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_pipe_in_w32_1024_r32_1024_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_pipe_in_w32_1024_r32_1024_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 126176)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
