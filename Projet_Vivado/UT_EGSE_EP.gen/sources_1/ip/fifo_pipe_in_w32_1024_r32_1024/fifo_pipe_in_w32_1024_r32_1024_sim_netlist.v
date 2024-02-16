// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Feb 16 08:54:23 2024
// Host        : DESKTOP-3HC2UMC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/3Utransat/UT_EGSE_EP_clone/Projet_Vivado/UT_EGSE_EP.gen/sources_1/ip/fifo_pipe_in_w32_1024_r32_1024/fifo_pipe_in_w32_1024_r32_1024_sim_netlist.v
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
