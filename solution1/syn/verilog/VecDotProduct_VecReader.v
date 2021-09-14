// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module VecDotProduct_VecReader (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        m_axi_ddr0_AWVALID,
        m_axi_ddr0_AWREADY,
        m_axi_ddr0_AWADDR,
        m_axi_ddr0_AWID,
        m_axi_ddr0_AWLEN,
        m_axi_ddr0_AWSIZE,
        m_axi_ddr0_AWBURST,
        m_axi_ddr0_AWLOCK,
        m_axi_ddr0_AWCACHE,
        m_axi_ddr0_AWPROT,
        m_axi_ddr0_AWQOS,
        m_axi_ddr0_AWREGION,
        m_axi_ddr0_AWUSER,
        m_axi_ddr0_WVALID,
        m_axi_ddr0_WREADY,
        m_axi_ddr0_WDATA,
        m_axi_ddr0_WSTRB,
        m_axi_ddr0_WLAST,
        m_axi_ddr0_WID,
        m_axi_ddr0_WUSER,
        m_axi_ddr0_ARVALID,
        m_axi_ddr0_ARREADY,
        m_axi_ddr0_ARADDR,
        m_axi_ddr0_ARID,
        m_axi_ddr0_ARLEN,
        m_axi_ddr0_ARSIZE,
        m_axi_ddr0_ARBURST,
        m_axi_ddr0_ARLOCK,
        m_axi_ddr0_ARCACHE,
        m_axi_ddr0_ARPROT,
        m_axi_ddr0_ARQOS,
        m_axi_ddr0_ARREGION,
        m_axi_ddr0_ARUSER,
        m_axi_ddr0_RVALID,
        m_axi_ddr0_RREADY,
        m_axi_ddr0_RDATA,
        m_axi_ddr0_RLAST,
        m_axi_ddr0_RID,
        m_axi_ddr0_RUSER,
        m_axi_ddr0_RRESP,
        m_axi_ddr0_BVALID,
        m_axi_ddr0_BREADY,
        m_axi_ddr0_BRESP,
        m_axi_ddr0_BID,
        m_axi_ddr0_BUSER,
        fifoA21_din,
        fifoA21_full_n,
        fifoA21_write,
        ddr_dout,
        ddr_empty_n,
        ddr_read,
        readRep
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_pp0_stage0 = 10'd256;
parameter    ap_ST_fsm_state12 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output   m_axi_ddr0_AWVALID;
input   m_axi_ddr0_AWREADY;
output  [31:0] m_axi_ddr0_AWADDR;
output  [0:0] m_axi_ddr0_AWID;
output  [31:0] m_axi_ddr0_AWLEN;
output  [2:0] m_axi_ddr0_AWSIZE;
output  [1:0] m_axi_ddr0_AWBURST;
output  [1:0] m_axi_ddr0_AWLOCK;
output  [3:0] m_axi_ddr0_AWCACHE;
output  [2:0] m_axi_ddr0_AWPROT;
output  [3:0] m_axi_ddr0_AWQOS;
output  [3:0] m_axi_ddr0_AWREGION;
output  [0:0] m_axi_ddr0_AWUSER;
output   m_axi_ddr0_WVALID;
input   m_axi_ddr0_WREADY;
output  [127:0] m_axi_ddr0_WDATA;
output  [15:0] m_axi_ddr0_WSTRB;
output   m_axi_ddr0_WLAST;
output  [0:0] m_axi_ddr0_WID;
output  [0:0] m_axi_ddr0_WUSER;
output   m_axi_ddr0_ARVALID;
input   m_axi_ddr0_ARREADY;
output  [31:0] m_axi_ddr0_ARADDR;
output  [0:0] m_axi_ddr0_ARID;
output  [31:0] m_axi_ddr0_ARLEN;
output  [2:0] m_axi_ddr0_ARSIZE;
output  [1:0] m_axi_ddr0_ARBURST;
output  [1:0] m_axi_ddr0_ARLOCK;
output  [3:0] m_axi_ddr0_ARCACHE;
output  [2:0] m_axi_ddr0_ARPROT;
output  [3:0] m_axi_ddr0_ARQOS;
output  [3:0] m_axi_ddr0_ARREGION;
output  [0:0] m_axi_ddr0_ARUSER;
input   m_axi_ddr0_RVALID;
output   m_axi_ddr0_RREADY;
input  [127:0] m_axi_ddr0_RDATA;
input   m_axi_ddr0_RLAST;
input  [0:0] m_axi_ddr0_RID;
input  [0:0] m_axi_ddr0_RUSER;
input  [1:0] m_axi_ddr0_RRESP;
input   m_axi_ddr0_BVALID;
output   m_axi_ddr0_BREADY;
input  [1:0] m_axi_ddr0_BRESP;
input  [0:0] m_axi_ddr0_BID;
input  [0:0] m_axi_ddr0_BUSER;
output  [127:0] fifoA21_din;
input   fifoA21_full_n;
output   fifoA21_write;
input  [63:0] ddr_dout;
input   ddr_empty_n;
output   ddr_read;
input  [31:0] readRep;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_ddr0_ARVALID;
reg m_axi_ddr0_RREADY;
reg fifoA21_write;
reg ddr_read;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    ddr0_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    ddr0_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln4_2_reg_181;
reg    fifoA21_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln4_2_reg_181_pp0_iter1_reg;
reg    ddr_blk_n;
reg   [30:0] i_reg_104;
reg    ap_block_state1;
wire   [0:0] icmp_ln4_fu_115_p2;
reg   [59:0] trunc_ln4_2_reg_165;
wire   [30:0] trunc_ln4_fu_131_p1;
wire   [0:0] icmp_ln4_2_fu_144_p2;
wire    ap_block_state9_pp0_stage0_iter0;
reg    ap_block_state10_pp0_stage0_iter1;
reg    ap_block_state11_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [30:0] add_ln4_fu_149_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [127:0] ddr0_addr_read_reg_190;
wire    ap_CS_fsm_state8;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state9;
wire  signed [63:0] sext_ln4_fu_134_p1;
reg    ap_block_pp0_stage0_01001;
wire    ap_CS_fsm_state12;
reg   [9:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state12)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state9)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state9);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_104 <= 31'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln4_2_fu_144_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_104 <= add_ln4_fu_149_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln4_2_reg_181 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ddr0_addr_read_reg_190 <= m_axi_ddr0_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln4_2_reg_181 <= icmp_ln4_2_fu_144_p2;
        icmp_ln4_2_reg_181_pp0_iter1_reg <= icmp_ln4_2_reg_181;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ddr_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln4_fu_115_p2 == 1'd1))) begin
        trunc_ln4_2_reg_165 <= {{ddr_dout[63:4]}};
    end
end

always @ (*) begin
    if ((icmp_ln4_2_fu_144_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ddr0_blk_n_AR = m_axi_ddr0_ARREADY;
    end else begin
        ddr0_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln4_2_reg_181 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ddr0_blk_n_R = m_axi_ddr0_RVALID;
    end else begin
        ddr0_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ddr_blk_n = ddr_empty_n;
    end else begin
        ddr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ddr_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ddr_read = 1'b1;
    end else begin
        ddr_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln4_2_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        fifoA21_blk_n = fifoA21_full_n;
    end else begin
        fifoA21_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln4_2_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifoA21_write = 1'b1;
    end else begin
        fifoA21_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_ddr0_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_ddr0_ARVALID = 1'b1;
    end else begin
        m_axi_ddr0_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln4_2_reg_181 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        m_axi_ddr0_RREADY = 1'b1;
    end else begin
        m_axi_ddr0_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ddr_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln4_fu_115_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ddr_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln4_fu_115_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m_axi_ddr0_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln4_2_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln4_2_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln4_fu_149_p2 = (i_reg_104 + 31'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((m_axi_ddr0_RVALID == 1'b0) & (icmp_ln4_2_reg_181 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln4_2_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (fifoA21_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((m_axi_ddr0_RVALID == 1'b0) & (icmp_ln4_2_reg_181 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln4_2_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (fifoA21_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((m_axi_ddr0_RVALID == 1'b0) & (icmp_ln4_2_reg_181 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln4_2_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (fifoA21_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0) | (ddr_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter1 = ((m_axi_ddr0_RVALID == 1'b0) & (icmp_ln4_2_reg_181 == 1'd0));
end

always @ (*) begin
    ap_block_state11_pp0_stage0_iter2 = ((icmp_ln4_2_reg_181_pp0_iter1_reg == 1'd0) & (fifoA21_full_n == 1'b0));
end

assign ap_block_state9_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign fifoA21_din = ddr0_addr_read_reg_190;

assign icmp_ln4_2_fu_144_p2 = ((i_reg_104 == trunc_ln4_fu_131_p1) ? 1'b1 : 1'b0);

assign icmp_ln4_fu_115_p2 = (($signed(readRep) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign m_axi_ddr0_ARADDR = sext_ln4_fu_134_p1;

assign m_axi_ddr0_ARBURST = 2'd0;

assign m_axi_ddr0_ARCACHE = 4'd0;

assign m_axi_ddr0_ARID = 1'd0;

assign m_axi_ddr0_ARLEN = readRep;

assign m_axi_ddr0_ARLOCK = 2'd0;

assign m_axi_ddr0_ARPROT = 3'd0;

assign m_axi_ddr0_ARQOS = 4'd0;

assign m_axi_ddr0_ARREGION = 4'd0;

assign m_axi_ddr0_ARSIZE = 3'd0;

assign m_axi_ddr0_ARUSER = 1'd0;

assign m_axi_ddr0_AWADDR = 32'd0;

assign m_axi_ddr0_AWBURST = 2'd0;

assign m_axi_ddr0_AWCACHE = 4'd0;

assign m_axi_ddr0_AWID = 1'd0;

assign m_axi_ddr0_AWLEN = 32'd0;

assign m_axi_ddr0_AWLOCK = 2'd0;

assign m_axi_ddr0_AWPROT = 3'd0;

assign m_axi_ddr0_AWQOS = 4'd0;

assign m_axi_ddr0_AWREGION = 4'd0;

assign m_axi_ddr0_AWSIZE = 3'd0;

assign m_axi_ddr0_AWUSER = 1'd0;

assign m_axi_ddr0_AWVALID = 1'b0;

assign m_axi_ddr0_BREADY = 1'b0;

assign m_axi_ddr0_WDATA = 128'd0;

assign m_axi_ddr0_WID = 1'd0;

assign m_axi_ddr0_WLAST = 1'b0;

assign m_axi_ddr0_WSTRB = 16'd0;

assign m_axi_ddr0_WUSER = 1'd0;

assign m_axi_ddr0_WVALID = 1'b0;

assign sext_ln4_fu_134_p1 = $signed(trunc_ln4_2_reg_165);

assign start_out = real_start;

assign trunc_ln4_fu_131_p1 = readRep[30:0];

endmodule //VecDotProduct_VecReader