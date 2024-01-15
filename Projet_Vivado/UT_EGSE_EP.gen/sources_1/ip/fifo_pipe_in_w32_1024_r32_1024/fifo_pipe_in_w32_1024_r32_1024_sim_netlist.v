// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec 20 15:11:12 2023
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
