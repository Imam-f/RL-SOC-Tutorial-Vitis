
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set vecA__vecB__scaC__return_group [add_wave_group vecA__vecB__scaC__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/interrupt -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_BRESP -into $vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_BREADY -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_BVALID -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_RRESP -into $vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_RDATA -into $vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_RREADY -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_RVALID -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_ARREADY -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_ARVALID -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_ARADDR -into $vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_WSTRB -into $vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_WDATA -into $vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_WREADY -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_WVALID -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_AWREADY -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_AWVALID -into $vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_r_AWADDR -into $vecA__vecB__scaC__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set scaC_group [add_wave_group scaC(axi_master) -into $coutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $scaC_group]
set wdata_group [add_wave_group "Write Channel" -into $scaC_group]
set ctrl_group [add_wave_group "Handshakes" -into $scaC_group]
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_BUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_BID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_BRESP -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_RRESP -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_RUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_RID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_RDATA -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARREGION -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARQOS -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARPROT -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARBURST -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARLEN -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARADDR -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_WUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_WID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_WSTRB -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_WDATA -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWREGION -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWQOS -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWPROT -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWBURST -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWLEN -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWADDR -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr2_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set vecB_group [add_wave_group vecB(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $vecB_group]
set wdata_group [add_wave_group "Write Channel" -into $vecB_group]
set ctrl_group [add_wave_group "Handshakes" -into $vecB_group]
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_BUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_BID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_BRESP -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_RRESP -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_RUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_RID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_RDATA -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_WUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_WID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_WDATA -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set vecA_group [add_wave_group vecA(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $vecA_group]
set wdata_group [add_wave_group "Write Channel" -into $vecA_group]
set ctrl_group [add_wave_group "Handshakes" -into $vecA_group]
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_BUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_BID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_BRESP -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_RRESP -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_RUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_RID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_RDATA -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_WUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_WID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_WDATA -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/m_axi_ddr0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set readRep_group [add_wave_group readRep(axi_slave) -into $cinputgroup]
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_BRESP -into $readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_BREADY -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_BVALID -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_RRESP -into $readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_RDATA -into $readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_RREADY -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_RVALID -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_ARREADY -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_ARVALID -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_ARADDR -into $readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_WSTRB -into $readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_WDATA -into $readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_WREADY -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_WVALID -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_AWREADY -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_AWVALID -into $readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/s_axi_control_AWADDR -into $readRep_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/ap_done -into $blocksiggroup
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/ap_idle -into $blocksiggroup
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/ap_ready -into $blocksiggroup
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_VecDotProduct_top/AESL_inst_VecDotProduct/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_VecDotProduct_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_VecDotProduct_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_VecDotProduct_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_VecDotProduct_top/LENGTH_ddr0 -into $tb_portdepth_group -radix hex
add_wave /apatb_VecDotProduct_top/LENGTH_ddr1 -into $tb_portdepth_group -radix hex
add_wave /apatb_VecDotProduct_top/LENGTH_ddr2 -into $tb_portdepth_group -radix hex
add_wave /apatb_VecDotProduct_top/LENGTH_vecA -into $tb_portdepth_group -radix hex
add_wave /apatb_VecDotProduct_top/LENGTH_vecB -into $tb_portdepth_group -radix hex
add_wave /apatb_VecDotProduct_top/LENGTH_scaC -into $tb_portdepth_group -radix hex
add_wave /apatb_VecDotProduct_top/LENGTH_readRep -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_vecA__vecB__scaC__return_group [add_wave_group vecA__vecB__scaC__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_VecDotProduct_top/control_r_INTERRUPT -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_BRESP -into $tb_vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/control_r_BREADY -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_BVALID -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_RRESP -into $tb_vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/control_r_RDATA -into $tb_vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/control_r_RREADY -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_RVALID -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_ARREADY -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_ARVALID -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_ARADDR -into $tb_vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/control_r_WSTRB -into $tb_vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/control_r_WDATA -into $tb_vecA__vecB__scaC__return_group -radix hex
add_wave /apatb_VecDotProduct_top/control_r_WREADY -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_WVALID -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_AWREADY -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_AWVALID -into $tb_vecA__vecB__scaC__return_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_r_AWADDR -into $tb_vecA__vecB__scaC__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_scaC_group [add_wave_group scaC(axi_master) -into $tbcoutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_scaC_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_scaC_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_scaC_group]
add_wave /apatb_VecDotProduct_top/ddr2_BUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_BID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_BRESP -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_RRESP -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_RUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_RID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_RDATA -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARREGION -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARQOS -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARPROT -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARBURST -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARLEN -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARADDR -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_WUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_WID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_WSTRB -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_WDATA -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWREGION -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWQOS -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWPROT -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWBURST -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWLEN -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWADDR -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr2_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_vecB_group [add_wave_group vecB(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_vecB_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_vecB_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_vecB_group]
add_wave /apatb_VecDotProduct_top/ddr1_BUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_BID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_BRESP -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_RRESP -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_RUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_RID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_RDATA -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_WUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_WID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_WDATA -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_vecA_group [add_wave_group vecA(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_vecA_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_vecA_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_vecA_group]
add_wave /apatb_VecDotProduct_top/ddr0_BUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_BID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_BRESP -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_RRESP -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_RUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_RID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_RDATA -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARID -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_WUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_WID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_WDATA -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWID -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/ddr0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_readRep_group [add_wave_group readRep(axi_slave) -into $tbcinputgroup]
add_wave /apatb_VecDotProduct_top/control_BRESP -into $tb_readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/control_BREADY -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_BVALID -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_RRESP -into $tb_readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/control_RDATA -into $tb_readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/control_RREADY -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_RVALID -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_ARREADY -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_ARVALID -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_ARADDR -into $tb_readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/control_WSTRB -into $tb_readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/control_WDATA -into $tb_readRep_group -radix hex
add_wave /apatb_VecDotProduct_top/control_WREADY -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_WVALID -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_AWREADY -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_AWVALID -into $tb_readRep_group -color #ffff00 -radix hex
add_wave /apatb_VecDotProduct_top/control_AWADDR -into $tb_readRep_group -radix hex
save_wave_config VecDotProduct.wcfg
run all

