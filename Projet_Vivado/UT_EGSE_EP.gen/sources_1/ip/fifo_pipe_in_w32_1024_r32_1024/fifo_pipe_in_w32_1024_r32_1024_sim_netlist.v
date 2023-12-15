// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec 14 16:55:33 2023
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
