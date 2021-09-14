// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      VecDotProduct
`define AUTOTB_DUT_INST AESL_inst_VecDotProduct
`define AUTOTB_TOP      apatb_VecDotProduct_top
`define AUTOTB_LAT_RESULT_FILE "VecDotProduct.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "VecDotProduct.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_VecDotProduct_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_ddr0 1
`define AESL_DEPTH_ddr1 1
`define AESL_DEPTH_ddr2 1
`define AESL_DEPTH_vecA 1
`define AESL_DEPTH_vecB 1
`define AESL_DEPTH_scaC 1
`define AESL_DEPTH_readRep 1
`define AUTOTB_TVIN_ddr0  "../tv/cdatafile/c.VecDotProduct.autotvin_ddr0.dat"
`define AUTOTB_TVIN_ddr1  "../tv/cdatafile/c.VecDotProduct.autotvin_ddr1.dat"
`define AUTOTB_TVIN_vecA  "../tv/cdatafile/c.VecDotProduct.autotvin_vecA.dat"
`define AUTOTB_TVIN_vecB  "../tv/cdatafile/c.VecDotProduct.autotvin_vecB.dat"
`define AUTOTB_TVIN_scaC  "../tv/cdatafile/c.VecDotProduct.autotvin_scaC.dat"
`define AUTOTB_TVIN_readRep  "../tv/cdatafile/c.VecDotProduct.autotvin_readRep.dat"
`define AUTOTB_TVIN_ddr0_out_wrapc  "../tv/rtldatafile/rtl.VecDotProduct.autotvin_ddr0.dat"
`define AUTOTB_TVIN_ddr1_out_wrapc  "../tv/rtldatafile/rtl.VecDotProduct.autotvin_ddr1.dat"
`define AUTOTB_TVIN_vecA_out_wrapc  "../tv/rtldatafile/rtl.VecDotProduct.autotvin_vecA.dat"
`define AUTOTB_TVIN_vecB_out_wrapc  "../tv/rtldatafile/rtl.VecDotProduct.autotvin_vecB.dat"
`define AUTOTB_TVIN_scaC_out_wrapc  "../tv/rtldatafile/rtl.VecDotProduct.autotvin_scaC.dat"
`define AUTOTB_TVIN_readRep_out_wrapc  "../tv/rtldatafile/rtl.VecDotProduct.autotvin_readRep.dat"
`define AUTOTB_TVOUT_ddr2  "../tv/cdatafile/c.VecDotProduct.autotvout_ddr2.dat"
`define AUTOTB_TVOUT_ddr2_out_wrapc  "../tv/rtldatafile/rtl.VecDotProduct.autotvout_ddr2.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_ddr0 = 10000;
parameter LENGTH_ddr1 = 10000;
parameter LENGTH_ddr2 = 1;
parameter LENGTH_vecA = 1;
parameter LENGTH_vecB = 1;
parameter LENGTH_scaC = 1;
parameter LENGTH_readRep = 1;

task read_token;
    input integer fp;
    output reg [279 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [4 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [4 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire [5 : 0] control_r_AWADDR;
wire  control_r_AWVALID;
wire  control_r_AWREADY;
wire  control_r_WVALID;
wire  control_r_WREADY;
wire [31 : 0] control_r_WDATA;
wire [3 : 0] control_r_WSTRB;
wire [5 : 0] control_r_ARADDR;
wire  control_r_ARVALID;
wire  control_r_ARREADY;
wire  control_r_RVALID;
wire  control_r_RREADY;
wire [31 : 0] control_r_RDATA;
wire [1 : 0] control_r_RRESP;
wire  control_r_BVALID;
wire  control_r_BREADY;
wire [1 : 0] control_r_BRESP;
wire  control_r_INTERRUPT;
wire  ddr0_AWVALID;
wire  ddr0_AWREADY;
wire [31 : 0] ddr0_AWADDR;
wire [0 : 0] ddr0_AWID;
wire [7 : 0] ddr0_AWLEN;
wire [2 : 0] ddr0_AWSIZE;
wire [1 : 0] ddr0_AWBURST;
wire [1 : 0] ddr0_AWLOCK;
wire [3 : 0] ddr0_AWCACHE;
wire [2 : 0] ddr0_AWPROT;
wire [3 : 0] ddr0_AWQOS;
wire [3 : 0] ddr0_AWREGION;
wire [0 : 0] ddr0_AWUSER;
wire  ddr0_WVALID;
wire  ddr0_WREADY;
wire [127 : 0] ddr0_WDATA;
wire [15 : 0] ddr0_WSTRB;
wire  ddr0_WLAST;
wire [0 : 0] ddr0_WID;
wire [0 : 0] ddr0_WUSER;
wire  ddr0_ARVALID;
wire  ddr0_ARREADY;
wire [31 : 0] ddr0_ARADDR;
wire [0 : 0] ddr0_ARID;
wire [7 : 0] ddr0_ARLEN;
wire [2 : 0] ddr0_ARSIZE;
wire [1 : 0] ddr0_ARBURST;
wire [1 : 0] ddr0_ARLOCK;
wire [3 : 0] ddr0_ARCACHE;
wire [2 : 0] ddr0_ARPROT;
wire [3 : 0] ddr0_ARQOS;
wire [3 : 0] ddr0_ARREGION;
wire [0 : 0] ddr0_ARUSER;
wire  ddr0_RVALID;
wire  ddr0_RREADY;
wire [127 : 0] ddr0_RDATA;
wire  ddr0_RLAST;
wire [0 : 0] ddr0_RID;
wire [0 : 0] ddr0_RUSER;
wire [1 : 0] ddr0_RRESP;
wire  ddr0_BVALID;
wire  ddr0_BREADY;
wire [1 : 0] ddr0_BRESP;
wire [0 : 0] ddr0_BID;
wire [0 : 0] ddr0_BUSER;
wire  ddr1_AWVALID;
wire  ddr1_AWREADY;
wire [31 : 0] ddr1_AWADDR;
wire [0 : 0] ddr1_AWID;
wire [7 : 0] ddr1_AWLEN;
wire [2 : 0] ddr1_AWSIZE;
wire [1 : 0] ddr1_AWBURST;
wire [1 : 0] ddr1_AWLOCK;
wire [3 : 0] ddr1_AWCACHE;
wire [2 : 0] ddr1_AWPROT;
wire [3 : 0] ddr1_AWQOS;
wire [3 : 0] ddr1_AWREGION;
wire [0 : 0] ddr1_AWUSER;
wire  ddr1_WVALID;
wire  ddr1_WREADY;
wire [127 : 0] ddr1_WDATA;
wire [15 : 0] ddr1_WSTRB;
wire  ddr1_WLAST;
wire [0 : 0] ddr1_WID;
wire [0 : 0] ddr1_WUSER;
wire  ddr1_ARVALID;
wire  ddr1_ARREADY;
wire [31 : 0] ddr1_ARADDR;
wire [0 : 0] ddr1_ARID;
wire [7 : 0] ddr1_ARLEN;
wire [2 : 0] ddr1_ARSIZE;
wire [1 : 0] ddr1_ARBURST;
wire [1 : 0] ddr1_ARLOCK;
wire [3 : 0] ddr1_ARCACHE;
wire [2 : 0] ddr1_ARPROT;
wire [3 : 0] ddr1_ARQOS;
wire [3 : 0] ddr1_ARREGION;
wire [0 : 0] ddr1_ARUSER;
wire  ddr1_RVALID;
wire  ddr1_RREADY;
wire [127 : 0] ddr1_RDATA;
wire  ddr1_RLAST;
wire [0 : 0] ddr1_RID;
wire [0 : 0] ddr1_RUSER;
wire [1 : 0] ddr1_RRESP;
wire  ddr1_BVALID;
wire  ddr1_BREADY;
wire [1 : 0] ddr1_BRESP;
wire [0 : 0] ddr1_BID;
wire [0 : 0] ddr1_BUSER;
wire  ddr2_AWVALID;
wire  ddr2_AWREADY;
wire [31 : 0] ddr2_AWADDR;
wire [0 : 0] ddr2_AWID;
wire [7 : 0] ddr2_AWLEN;
wire [2 : 0] ddr2_AWSIZE;
wire [1 : 0] ddr2_AWBURST;
wire [1 : 0] ddr2_AWLOCK;
wire [3 : 0] ddr2_AWCACHE;
wire [2 : 0] ddr2_AWPROT;
wire [3 : 0] ddr2_AWQOS;
wire [3 : 0] ddr2_AWREGION;
wire [0 : 0] ddr2_AWUSER;
wire  ddr2_WVALID;
wire  ddr2_WREADY;
wire [31 : 0] ddr2_WDATA;
wire [3 : 0] ddr2_WSTRB;
wire  ddr2_WLAST;
wire [0 : 0] ddr2_WID;
wire [0 : 0] ddr2_WUSER;
wire  ddr2_ARVALID;
wire  ddr2_ARREADY;
wire [31 : 0] ddr2_ARADDR;
wire [0 : 0] ddr2_ARID;
wire [7 : 0] ddr2_ARLEN;
wire [2 : 0] ddr2_ARSIZE;
wire [1 : 0] ddr2_ARBURST;
wire [1 : 0] ddr2_ARLOCK;
wire [3 : 0] ddr2_ARCACHE;
wire [2 : 0] ddr2_ARPROT;
wire [3 : 0] ddr2_ARQOS;
wire [3 : 0] ddr2_ARREGION;
wire [0 : 0] ddr2_ARUSER;
wire  ddr2_RVALID;
wire  ddr2_RREADY;
wire [31 : 0] ddr2_RDATA;
wire  ddr2_RLAST;
wire [0 : 0] ddr2_RID;
wire [0 : 0] ddr2_RUSER;
wire [1 : 0] ddr2_RRESP;
wire  ddr2_BVALID;
wire  ddr2_BREADY;
wire [1 : 0] ddr2_BRESP;
wire [0 : 0] ddr2_BID;
wire [0 : 0] ddr2_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_r_write_data_finish;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .s_axi_control_r_AWADDR(control_r_AWADDR),
    .s_axi_control_r_AWVALID(control_r_AWVALID),
    .s_axi_control_r_AWREADY(control_r_AWREADY),
    .s_axi_control_r_WVALID(control_r_WVALID),
    .s_axi_control_r_WREADY(control_r_WREADY),
    .s_axi_control_r_WDATA(control_r_WDATA),
    .s_axi_control_r_WSTRB(control_r_WSTRB),
    .s_axi_control_r_ARADDR(control_r_ARADDR),
    .s_axi_control_r_ARVALID(control_r_ARVALID),
    .s_axi_control_r_ARREADY(control_r_ARREADY),
    .s_axi_control_r_RVALID(control_r_RVALID),
    .s_axi_control_r_RREADY(control_r_RREADY),
    .s_axi_control_r_RDATA(control_r_RDATA),
    .s_axi_control_r_RRESP(control_r_RRESP),
    .s_axi_control_r_BVALID(control_r_BVALID),
    .s_axi_control_r_BREADY(control_r_BREADY),
    .s_axi_control_r_BRESP(control_r_BRESP),
    .interrupt(control_r_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_ddr0_AWVALID(ddr0_AWVALID),
    .m_axi_ddr0_AWREADY(ddr0_AWREADY),
    .m_axi_ddr0_AWADDR(ddr0_AWADDR),
    .m_axi_ddr0_AWID(ddr0_AWID),
    .m_axi_ddr0_AWLEN(ddr0_AWLEN),
    .m_axi_ddr0_AWSIZE(ddr0_AWSIZE),
    .m_axi_ddr0_AWBURST(ddr0_AWBURST),
    .m_axi_ddr0_AWLOCK(ddr0_AWLOCK),
    .m_axi_ddr0_AWCACHE(ddr0_AWCACHE),
    .m_axi_ddr0_AWPROT(ddr0_AWPROT),
    .m_axi_ddr0_AWQOS(ddr0_AWQOS),
    .m_axi_ddr0_AWREGION(ddr0_AWREGION),
    .m_axi_ddr0_AWUSER(ddr0_AWUSER),
    .m_axi_ddr0_WVALID(ddr0_WVALID),
    .m_axi_ddr0_WREADY(ddr0_WREADY),
    .m_axi_ddr0_WDATA(ddr0_WDATA),
    .m_axi_ddr0_WSTRB(ddr0_WSTRB),
    .m_axi_ddr0_WLAST(ddr0_WLAST),
    .m_axi_ddr0_WID(ddr0_WID),
    .m_axi_ddr0_WUSER(ddr0_WUSER),
    .m_axi_ddr0_ARVALID(ddr0_ARVALID),
    .m_axi_ddr0_ARREADY(ddr0_ARREADY),
    .m_axi_ddr0_ARADDR(ddr0_ARADDR),
    .m_axi_ddr0_ARID(ddr0_ARID),
    .m_axi_ddr0_ARLEN(ddr0_ARLEN),
    .m_axi_ddr0_ARSIZE(ddr0_ARSIZE),
    .m_axi_ddr0_ARBURST(ddr0_ARBURST),
    .m_axi_ddr0_ARLOCK(ddr0_ARLOCK),
    .m_axi_ddr0_ARCACHE(ddr0_ARCACHE),
    .m_axi_ddr0_ARPROT(ddr0_ARPROT),
    .m_axi_ddr0_ARQOS(ddr0_ARQOS),
    .m_axi_ddr0_ARREGION(ddr0_ARREGION),
    .m_axi_ddr0_ARUSER(ddr0_ARUSER),
    .m_axi_ddr0_RVALID(ddr0_RVALID),
    .m_axi_ddr0_RREADY(ddr0_RREADY),
    .m_axi_ddr0_RDATA(ddr0_RDATA),
    .m_axi_ddr0_RLAST(ddr0_RLAST),
    .m_axi_ddr0_RID(ddr0_RID),
    .m_axi_ddr0_RUSER(ddr0_RUSER),
    .m_axi_ddr0_RRESP(ddr0_RRESP),
    .m_axi_ddr0_BVALID(ddr0_BVALID),
    .m_axi_ddr0_BREADY(ddr0_BREADY),
    .m_axi_ddr0_BRESP(ddr0_BRESP),
    .m_axi_ddr0_BID(ddr0_BID),
    .m_axi_ddr0_BUSER(ddr0_BUSER),
    .m_axi_ddr1_AWVALID(ddr1_AWVALID),
    .m_axi_ddr1_AWREADY(ddr1_AWREADY),
    .m_axi_ddr1_AWADDR(ddr1_AWADDR),
    .m_axi_ddr1_AWID(ddr1_AWID),
    .m_axi_ddr1_AWLEN(ddr1_AWLEN),
    .m_axi_ddr1_AWSIZE(ddr1_AWSIZE),
    .m_axi_ddr1_AWBURST(ddr1_AWBURST),
    .m_axi_ddr1_AWLOCK(ddr1_AWLOCK),
    .m_axi_ddr1_AWCACHE(ddr1_AWCACHE),
    .m_axi_ddr1_AWPROT(ddr1_AWPROT),
    .m_axi_ddr1_AWQOS(ddr1_AWQOS),
    .m_axi_ddr1_AWREGION(ddr1_AWREGION),
    .m_axi_ddr1_AWUSER(ddr1_AWUSER),
    .m_axi_ddr1_WVALID(ddr1_WVALID),
    .m_axi_ddr1_WREADY(ddr1_WREADY),
    .m_axi_ddr1_WDATA(ddr1_WDATA),
    .m_axi_ddr1_WSTRB(ddr1_WSTRB),
    .m_axi_ddr1_WLAST(ddr1_WLAST),
    .m_axi_ddr1_WID(ddr1_WID),
    .m_axi_ddr1_WUSER(ddr1_WUSER),
    .m_axi_ddr1_ARVALID(ddr1_ARVALID),
    .m_axi_ddr1_ARREADY(ddr1_ARREADY),
    .m_axi_ddr1_ARADDR(ddr1_ARADDR),
    .m_axi_ddr1_ARID(ddr1_ARID),
    .m_axi_ddr1_ARLEN(ddr1_ARLEN),
    .m_axi_ddr1_ARSIZE(ddr1_ARSIZE),
    .m_axi_ddr1_ARBURST(ddr1_ARBURST),
    .m_axi_ddr1_ARLOCK(ddr1_ARLOCK),
    .m_axi_ddr1_ARCACHE(ddr1_ARCACHE),
    .m_axi_ddr1_ARPROT(ddr1_ARPROT),
    .m_axi_ddr1_ARQOS(ddr1_ARQOS),
    .m_axi_ddr1_ARREGION(ddr1_ARREGION),
    .m_axi_ddr1_ARUSER(ddr1_ARUSER),
    .m_axi_ddr1_RVALID(ddr1_RVALID),
    .m_axi_ddr1_RREADY(ddr1_RREADY),
    .m_axi_ddr1_RDATA(ddr1_RDATA),
    .m_axi_ddr1_RLAST(ddr1_RLAST),
    .m_axi_ddr1_RID(ddr1_RID),
    .m_axi_ddr1_RUSER(ddr1_RUSER),
    .m_axi_ddr1_RRESP(ddr1_RRESP),
    .m_axi_ddr1_BVALID(ddr1_BVALID),
    .m_axi_ddr1_BREADY(ddr1_BREADY),
    .m_axi_ddr1_BRESP(ddr1_BRESP),
    .m_axi_ddr1_BID(ddr1_BID),
    .m_axi_ddr1_BUSER(ddr1_BUSER),
    .m_axi_ddr2_AWVALID(ddr2_AWVALID),
    .m_axi_ddr2_AWREADY(ddr2_AWREADY),
    .m_axi_ddr2_AWADDR(ddr2_AWADDR),
    .m_axi_ddr2_AWID(ddr2_AWID),
    .m_axi_ddr2_AWLEN(ddr2_AWLEN),
    .m_axi_ddr2_AWSIZE(ddr2_AWSIZE),
    .m_axi_ddr2_AWBURST(ddr2_AWBURST),
    .m_axi_ddr2_AWLOCK(ddr2_AWLOCK),
    .m_axi_ddr2_AWCACHE(ddr2_AWCACHE),
    .m_axi_ddr2_AWPROT(ddr2_AWPROT),
    .m_axi_ddr2_AWQOS(ddr2_AWQOS),
    .m_axi_ddr2_AWREGION(ddr2_AWREGION),
    .m_axi_ddr2_AWUSER(ddr2_AWUSER),
    .m_axi_ddr2_WVALID(ddr2_WVALID),
    .m_axi_ddr2_WREADY(ddr2_WREADY),
    .m_axi_ddr2_WDATA(ddr2_WDATA),
    .m_axi_ddr2_WSTRB(ddr2_WSTRB),
    .m_axi_ddr2_WLAST(ddr2_WLAST),
    .m_axi_ddr2_WID(ddr2_WID),
    .m_axi_ddr2_WUSER(ddr2_WUSER),
    .m_axi_ddr2_ARVALID(ddr2_ARVALID),
    .m_axi_ddr2_ARREADY(ddr2_ARREADY),
    .m_axi_ddr2_ARADDR(ddr2_ARADDR),
    .m_axi_ddr2_ARID(ddr2_ARID),
    .m_axi_ddr2_ARLEN(ddr2_ARLEN),
    .m_axi_ddr2_ARSIZE(ddr2_ARSIZE),
    .m_axi_ddr2_ARBURST(ddr2_ARBURST),
    .m_axi_ddr2_ARLOCK(ddr2_ARLOCK),
    .m_axi_ddr2_ARCACHE(ddr2_ARCACHE),
    .m_axi_ddr2_ARPROT(ddr2_ARPROT),
    .m_axi_ddr2_ARQOS(ddr2_ARQOS),
    .m_axi_ddr2_ARREGION(ddr2_ARREGION),
    .m_axi_ddr2_ARUSER(ddr2_ARUSER),
    .m_axi_ddr2_RVALID(ddr2_RVALID),
    .m_axi_ddr2_RREADY(ddr2_RREADY),
    .m_axi_ddr2_RDATA(ddr2_RDATA),
    .m_axi_ddr2_RLAST(ddr2_RLAST),
    .m_axi_ddr2_RID(ddr2_RID),
    .m_axi_ddr2_RUSER(ddr2_RUSER),
    .m_axi_ddr2_RRESP(ddr2_RRESP),
    .m_axi_ddr2_BVALID(ddr2_BVALID),
    .m_axi_ddr2_BREADY(ddr2_BREADY),
    .m_axi_ddr2_BRESP(ddr2_BRESP),
    .m_axi_ddr2_BID(ddr2_BID),
    .m_axi_ddr2_BUSER(ddr2_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_r_write_data_finish & control_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end







wire    AESL_axi_master_ddr0_ready;
wire    AESL_axi_master_ddr0_done;
wire [64 - 1:0] vecA;
AESL_axi_master_ddr0 AESL_AXI_MASTER_ddr0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ddr0_AWVALID (ddr0_AWVALID),
    .TRAN_ddr0_AWREADY (ddr0_AWREADY),
    .TRAN_ddr0_AWADDR (ddr0_AWADDR),
    .TRAN_ddr0_AWID (ddr0_AWID),
    .TRAN_ddr0_AWLEN (ddr0_AWLEN),
    .TRAN_ddr0_AWSIZE (ddr0_AWSIZE),
    .TRAN_ddr0_AWBURST (ddr0_AWBURST),
    .TRAN_ddr0_AWLOCK (ddr0_AWLOCK),
    .TRAN_ddr0_AWCACHE (ddr0_AWCACHE),
    .TRAN_ddr0_AWPROT (ddr0_AWPROT),
    .TRAN_ddr0_AWQOS (ddr0_AWQOS),
    .TRAN_ddr0_AWREGION (ddr0_AWREGION),
    .TRAN_ddr0_AWUSER (ddr0_AWUSER),
    .TRAN_ddr0_WVALID (ddr0_WVALID),
    .TRAN_ddr0_WREADY (ddr0_WREADY),
    .TRAN_ddr0_WDATA (ddr0_WDATA),
    .TRAN_ddr0_WSTRB (ddr0_WSTRB),
    .TRAN_ddr0_WLAST (ddr0_WLAST),
    .TRAN_ddr0_WID (ddr0_WID),
    .TRAN_ddr0_WUSER (ddr0_WUSER),
    .TRAN_ddr0_ARVALID (ddr0_ARVALID),
    .TRAN_ddr0_ARREADY (ddr0_ARREADY),
    .TRAN_ddr0_ARADDR (ddr0_ARADDR),
    .TRAN_ddr0_ARID (ddr0_ARID),
    .TRAN_ddr0_ARLEN (ddr0_ARLEN),
    .TRAN_ddr0_ARSIZE (ddr0_ARSIZE),
    .TRAN_ddr0_ARBURST (ddr0_ARBURST),
    .TRAN_ddr0_ARLOCK (ddr0_ARLOCK),
    .TRAN_ddr0_ARCACHE (ddr0_ARCACHE),
    .TRAN_ddr0_ARPROT (ddr0_ARPROT),
    .TRAN_ddr0_ARQOS (ddr0_ARQOS),
    .TRAN_ddr0_ARREGION (ddr0_ARREGION),
    .TRAN_ddr0_ARUSER (ddr0_ARUSER),
    .TRAN_ddr0_RVALID (ddr0_RVALID),
    .TRAN_ddr0_RREADY (ddr0_RREADY),
    .TRAN_ddr0_RDATA (ddr0_RDATA),
    .TRAN_ddr0_RLAST (ddr0_RLAST),
    .TRAN_ddr0_RID (ddr0_RID),
    .TRAN_ddr0_RUSER (ddr0_RUSER),
    .TRAN_ddr0_RRESP (ddr0_RRESP),
    .TRAN_ddr0_BVALID (ddr0_BVALID),
    .TRAN_ddr0_BREADY (ddr0_BREADY),
    .TRAN_ddr0_BRESP (ddr0_BRESP),
    .TRAN_ddr0_BID (ddr0_BID),
    .TRAN_ddr0_BUSER (ddr0_BUSER),
    .TRAN_ddr0_vecA (vecA),
    .ready (AESL_axi_master_ddr0_ready),
    .done  (AESL_axi_master_ddr0_done)
);
assign    AESL_axi_master_ddr0_ready    =   ready;
assign    AESL_axi_master_ddr0_done    =   AESL_done_delay;
wire    AESL_axi_master_ddr1_ready;
wire    AESL_axi_master_ddr1_done;
wire [64 - 1:0] vecB;
AESL_axi_master_ddr1 AESL_AXI_MASTER_ddr1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ddr1_AWVALID (ddr1_AWVALID),
    .TRAN_ddr1_AWREADY (ddr1_AWREADY),
    .TRAN_ddr1_AWADDR (ddr1_AWADDR),
    .TRAN_ddr1_AWID (ddr1_AWID),
    .TRAN_ddr1_AWLEN (ddr1_AWLEN),
    .TRAN_ddr1_AWSIZE (ddr1_AWSIZE),
    .TRAN_ddr1_AWBURST (ddr1_AWBURST),
    .TRAN_ddr1_AWLOCK (ddr1_AWLOCK),
    .TRAN_ddr1_AWCACHE (ddr1_AWCACHE),
    .TRAN_ddr1_AWPROT (ddr1_AWPROT),
    .TRAN_ddr1_AWQOS (ddr1_AWQOS),
    .TRAN_ddr1_AWREGION (ddr1_AWREGION),
    .TRAN_ddr1_AWUSER (ddr1_AWUSER),
    .TRAN_ddr1_WVALID (ddr1_WVALID),
    .TRAN_ddr1_WREADY (ddr1_WREADY),
    .TRAN_ddr1_WDATA (ddr1_WDATA),
    .TRAN_ddr1_WSTRB (ddr1_WSTRB),
    .TRAN_ddr1_WLAST (ddr1_WLAST),
    .TRAN_ddr1_WID (ddr1_WID),
    .TRAN_ddr1_WUSER (ddr1_WUSER),
    .TRAN_ddr1_ARVALID (ddr1_ARVALID),
    .TRAN_ddr1_ARREADY (ddr1_ARREADY),
    .TRAN_ddr1_ARADDR (ddr1_ARADDR),
    .TRAN_ddr1_ARID (ddr1_ARID),
    .TRAN_ddr1_ARLEN (ddr1_ARLEN),
    .TRAN_ddr1_ARSIZE (ddr1_ARSIZE),
    .TRAN_ddr1_ARBURST (ddr1_ARBURST),
    .TRAN_ddr1_ARLOCK (ddr1_ARLOCK),
    .TRAN_ddr1_ARCACHE (ddr1_ARCACHE),
    .TRAN_ddr1_ARPROT (ddr1_ARPROT),
    .TRAN_ddr1_ARQOS (ddr1_ARQOS),
    .TRAN_ddr1_ARREGION (ddr1_ARREGION),
    .TRAN_ddr1_ARUSER (ddr1_ARUSER),
    .TRAN_ddr1_RVALID (ddr1_RVALID),
    .TRAN_ddr1_RREADY (ddr1_RREADY),
    .TRAN_ddr1_RDATA (ddr1_RDATA),
    .TRAN_ddr1_RLAST (ddr1_RLAST),
    .TRAN_ddr1_RID (ddr1_RID),
    .TRAN_ddr1_RUSER (ddr1_RUSER),
    .TRAN_ddr1_RRESP (ddr1_RRESP),
    .TRAN_ddr1_BVALID (ddr1_BVALID),
    .TRAN_ddr1_BREADY (ddr1_BREADY),
    .TRAN_ddr1_BRESP (ddr1_BRESP),
    .TRAN_ddr1_BID (ddr1_BID),
    .TRAN_ddr1_BUSER (ddr1_BUSER),
    .TRAN_ddr1_vecB (vecB),
    .ready (AESL_axi_master_ddr1_ready),
    .done  (AESL_axi_master_ddr1_done)
);
assign    AESL_axi_master_ddr1_ready    =   ready;
assign    AESL_axi_master_ddr1_done    =   AESL_done_delay;
wire    AESL_axi_master_ddr2_ready;
wire    AESL_axi_master_ddr2_done;
wire [64 - 1:0] scaC;
AESL_axi_master_ddr2 AESL_AXI_MASTER_ddr2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ddr2_AWVALID (ddr2_AWVALID),
    .TRAN_ddr2_AWREADY (ddr2_AWREADY),
    .TRAN_ddr2_AWADDR (ddr2_AWADDR),
    .TRAN_ddr2_AWID (ddr2_AWID),
    .TRAN_ddr2_AWLEN (ddr2_AWLEN),
    .TRAN_ddr2_AWSIZE (ddr2_AWSIZE),
    .TRAN_ddr2_AWBURST (ddr2_AWBURST),
    .TRAN_ddr2_AWLOCK (ddr2_AWLOCK),
    .TRAN_ddr2_AWCACHE (ddr2_AWCACHE),
    .TRAN_ddr2_AWPROT (ddr2_AWPROT),
    .TRAN_ddr2_AWQOS (ddr2_AWQOS),
    .TRAN_ddr2_AWREGION (ddr2_AWREGION),
    .TRAN_ddr2_AWUSER (ddr2_AWUSER),
    .TRAN_ddr2_WVALID (ddr2_WVALID),
    .TRAN_ddr2_WREADY (ddr2_WREADY),
    .TRAN_ddr2_WDATA (ddr2_WDATA),
    .TRAN_ddr2_WSTRB (ddr2_WSTRB),
    .TRAN_ddr2_WLAST (ddr2_WLAST),
    .TRAN_ddr2_WID (ddr2_WID),
    .TRAN_ddr2_WUSER (ddr2_WUSER),
    .TRAN_ddr2_ARVALID (ddr2_ARVALID),
    .TRAN_ddr2_ARREADY (ddr2_ARREADY),
    .TRAN_ddr2_ARADDR (ddr2_ARADDR),
    .TRAN_ddr2_ARID (ddr2_ARID),
    .TRAN_ddr2_ARLEN (ddr2_ARLEN),
    .TRAN_ddr2_ARSIZE (ddr2_ARSIZE),
    .TRAN_ddr2_ARBURST (ddr2_ARBURST),
    .TRAN_ddr2_ARLOCK (ddr2_ARLOCK),
    .TRAN_ddr2_ARCACHE (ddr2_ARCACHE),
    .TRAN_ddr2_ARPROT (ddr2_ARPROT),
    .TRAN_ddr2_ARQOS (ddr2_ARQOS),
    .TRAN_ddr2_ARREGION (ddr2_ARREGION),
    .TRAN_ddr2_ARUSER (ddr2_ARUSER),
    .TRAN_ddr2_RVALID (ddr2_RVALID),
    .TRAN_ddr2_RREADY (ddr2_RREADY),
    .TRAN_ddr2_RDATA (ddr2_RDATA),
    .TRAN_ddr2_RLAST (ddr2_RLAST),
    .TRAN_ddr2_RID (ddr2_RID),
    .TRAN_ddr2_RUSER (ddr2_RUSER),
    .TRAN_ddr2_RRESP (ddr2_RRESP),
    .TRAN_ddr2_BVALID (ddr2_BVALID),
    .TRAN_ddr2_BREADY (ddr2_BREADY),
    .TRAN_ddr2_BRESP (ddr2_BRESP),
    .TRAN_ddr2_BID (ddr2_BID),
    .TRAN_ddr2_BUSER (ddr2_BUSER),
    .TRAN_ddr2_scaC (scaC),
    .ready (AESL_axi_master_ddr2_ready),
    .done  (AESL_axi_master_ddr2_done)
);
assign    AESL_axi_master_ddr2_ready    =   ready;
assign    AESL_axi_master_ddr2_done    =   AESL_done_delay;

AESL_axi_slave_control_r AESL_AXI_SLAVE_control_r(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_r_AWADDR (control_r_AWADDR),
    .TRAN_s_axi_control_r_AWVALID (control_r_AWVALID),
    .TRAN_s_axi_control_r_AWREADY (control_r_AWREADY),
    .TRAN_s_axi_control_r_WVALID (control_r_WVALID),
    .TRAN_s_axi_control_r_WREADY (control_r_WREADY),
    .TRAN_s_axi_control_r_WDATA (control_r_WDATA),
    .TRAN_s_axi_control_r_WSTRB (control_r_WSTRB),
    .TRAN_s_axi_control_r_ARADDR (control_r_ARADDR),
    .TRAN_s_axi_control_r_ARVALID (control_r_ARVALID),
    .TRAN_s_axi_control_r_ARREADY (control_r_ARREADY),
    .TRAN_s_axi_control_r_RVALID (control_r_RVALID),
    .TRAN_s_axi_control_r_RREADY (control_r_RREADY),
    .TRAN_s_axi_control_r_RDATA (control_r_RDATA),
    .TRAN_s_axi_control_r_RRESP (control_r_RRESP),
    .TRAN_s_axi_control_r_BVALID (control_r_BVALID),
    .TRAN_s_axi_control_r_BREADY (control_r_BREADY),
    .TRAN_s_axi_control_r_BRESP (control_r_BRESP),
    .TRAN_control_r_interrupt (control_r_INTERRUPT),
    .TRAN_vecA (vecA),
    .TRAN_vecB (vecB),
    .TRAN_scaC (scaC),
    .TRAN_control_r_write_data_finish(control_r_write_data_finish),
    .TRAN_control_r_ready_out (AESL_ready),
    .TRAN_control_r_ready_in (AESL_slave_ready),
    .TRAN_control_r_done_out (AESL_slave_output_done),
    .TRAN_control_r_idle_out (AESL_idle),
    .TRAN_control_r_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_r_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_r_transaction_done_in (AESL_done_delay),
    .TRAN_control_r_start_in  (AESL_slave_start)
);
AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_in (AESL_slave_output_done),
    .TRAN_control_idle_in (AESL_idle),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
reg all_finish; 
    always @(posedge AESL_clock) begin
        if (~AESL_reset) begin
            all_finish = 0;
        end
        else if (done_cnt == AUTOTB_TRANSACTION_NUM) begin
            all_finish = 1;
        end
    end
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_ddr0;
reg [31:0] size_ddr0;
reg [31:0] size_ddr0_backup;
reg end_ddr1;
reg [31:0] size_ddr1;
reg [31:0] size_ddr1_backup;
reg end_vecA;
reg [31:0] size_vecA;
reg [31:0] size_vecA_backup;
reg end_vecB;
reg [31:0] size_vecB;
reg [31:0] size_vecB_backup;
reg end_scaC;
reg [31:0] size_scaC;
reg [31:0] size_scaC_backup;
reg end_readRep;
reg [31:0] size_readRep;
reg [31:0] size_readRep_backup;
reg end_ddr2;
reg [31:0] size_ddr2;
reg [31:0] size_ddr2_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(100+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_ddr2;

initial begin : dump_tvout_runtime_sign_ddr2
    integer fp;
    dump_tvout_finish_ddr2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_ddr2_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ddr2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_ddr2_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ddr2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_ddr2 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask

always @(posedge AESL_clock)
begin
    if (done_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .reset(AESL_reset),
    .clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

endmodule
