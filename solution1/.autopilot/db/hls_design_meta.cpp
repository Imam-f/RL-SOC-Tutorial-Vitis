#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_r_AWADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_r_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_r_ARADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_r_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_r_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_r_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_r_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_r_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axi_ddr0_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr0_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr0_AWADDR", 32, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_ddr0_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr0_AWLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_ddr0_AWSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_ddr0_AWBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_ddr0_AWLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_ddr0_AWCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_ddr0_AWPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_ddr0_AWQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_ddr0_AWREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_ddr0_AWUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr0_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr0_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr0_WDATA", 128, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_ddr0_WSTRB", 16, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_ddr0_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_ddr0_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr0_WUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr0_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr0_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr0_ARADDR", 32, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_ddr0_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr0_ARLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_ddr0_ARSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_ddr0_ARBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_ddr0_ARLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_ddr0_ARCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_ddr0_ARPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_ddr0_ARQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_ddr0_ARREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_ddr0_ARUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr0_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr0_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr0_RDATA", 128, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_ddr0_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_ddr0_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr0_RUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr0_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_ddr0_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr0_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr0_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_ddr0_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr0_BUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr1_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr1_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr1_AWADDR", 32, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_ddr1_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr1_AWLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_ddr1_AWSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_ddr1_AWBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_ddr1_AWLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_ddr1_AWCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_ddr1_AWPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_ddr1_AWQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_ddr1_AWREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_ddr1_AWUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr1_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr1_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr1_WDATA", 128, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_ddr1_WSTRB", 16, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_ddr1_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_ddr1_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr1_WUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr1_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr1_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr1_ARADDR", 32, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_ddr1_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr1_ARLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_ddr1_ARSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_ddr1_ARBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_ddr1_ARLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_ddr1_ARCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_ddr1_ARPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_ddr1_ARQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_ddr1_ARREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_ddr1_ARUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr1_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr1_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr1_RDATA", 128, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_ddr1_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_ddr1_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr1_RUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr1_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_ddr1_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr1_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr1_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_ddr1_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr1_BUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr2_AWVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr2_AWREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr2_AWADDR", 32, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_ddr2_AWID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr2_AWLEN", 8, hls_out, 2, "m_axi", "LEN", 1),
	Port_Property("m_axi_ddr2_AWSIZE", 3, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_ddr2_AWBURST", 2, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_ddr2_AWLOCK", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_ddr2_AWCACHE", 4, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_ddr2_AWPROT", 3, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_ddr2_AWQOS", 4, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_ddr2_AWREGION", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_ddr2_AWUSER", 1, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr2_WVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr2_WREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr2_WDATA", 32, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_ddr2_WSTRB", 4, hls_out, 2, "m_axi", "STRB", 1),
	Port_Property("m_axi_ddr2_WLAST", 1, hls_out, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_ddr2_WID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr2_WUSER", 1, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr2_ARVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr2_ARREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr2_ARADDR", 32, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_ddr2_ARID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr2_ARLEN", 8, hls_out, 2, "m_axi", "LEN", 1),
	Port_Property("m_axi_ddr2_ARSIZE", 3, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_ddr2_ARBURST", 2, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_ddr2_ARLOCK", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_ddr2_ARCACHE", 4, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_ddr2_ARPROT", 3, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_ddr2_ARQOS", 4, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_ddr2_ARREGION", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_ddr2_ARUSER", 1, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr2_RVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr2_RREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr2_RDATA", 32, hls_in, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_ddr2_RLAST", 1, hls_in, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_ddr2_RID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr2_RUSER", 1, hls_in, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_ddr2_RRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_ddr2_BVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_ddr2_BREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_ddr2_BRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_ddr2_BID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_ddr2_BUSER", 1, hls_in, 2, "m_axi", "USER", 1),
};
const char* HLS_Design_Meta::dut_name = "VecDotProduct";
