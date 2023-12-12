// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Nov 16 17:11:23 2023
// Host        : DESKTOP-3HC2UMC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/3UT/UT_EGSE_EP/Projet_Vivado/UT_EGSE_EP.gen/sources_1/ip/fifo_pipe_in_w32_1024_r32_1024/fifo_pipe_in_w32_1024_r32_1024_sim_netlist.v
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
