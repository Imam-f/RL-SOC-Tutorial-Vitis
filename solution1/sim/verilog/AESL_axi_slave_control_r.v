// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control_r (
    clk,
    reset,
    TRAN_s_axi_control_r_AWADDR,
    TRAN_s_axi_control_r_AWVALID,
    TRAN_s_axi_control_r_AWREADY,
    TRAN_s_axi_control_r_WVALID,
    TRAN_s_axi_control_r_WREADY,
    TRAN_s_axi_control_r_WDATA,
    TRAN_s_axi_control_r_WSTRB,
    TRAN_s_axi_control_r_ARADDR,
    TRAN_s_axi_control_r_ARVALID,
    TRAN_s_axi_control_r_ARREADY,
    TRAN_s_axi_control_r_RVALID,
    TRAN_s_axi_control_r_RREADY,
    TRAN_s_axi_control_r_RDATA,
    TRAN_s_axi_control_r_RRESP,
    TRAN_s_axi_control_r_BVALID,
    TRAN_s_axi_control_r_BREADY,
    TRAN_s_axi_control_r_BRESP,
    TRAN_vecA,
    TRAN_vecB,
    TRAN_scaC,
    TRAN_control_r_write_data_finish,
    TRAN_control_r_start_in,
    TRAN_control_r_idle_out,
    TRAN_control_r_ready_out,
    TRAN_control_r_ready_in,
    TRAN_control_r_done_out,
    TRAN_control_r_write_start_in   ,
    TRAN_control_r_write_start_finish,
    TRAN_control_r_interrupt,
    TRAN_control_r_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_vecA "../tv/cdatafile/c.VecDotProduct.autotvin_vecA.dat"
`define TV_IN_vecB "../tv/cdatafile/c.VecDotProduct.autotvin_vecB.dat"
`define TV_IN_scaC "../tv/cdatafile/c.VecDotProduct.autotvin_scaC.dat"
parameter ADDR_WIDTH = 6;
parameter DATA_WIDTH = 32;
parameter vecA_DEPTH = 1;
reg [31 : 0] vecA_OPERATE_DEPTH = 1;
parameter vecA_c_bitwidth = 64;
parameter vecB_DEPTH = 1;
reg [31 : 0] vecB_OPERATE_DEPTH = 1;
parameter vecB_c_bitwidth = 64;
parameter scaC_DEPTH = 1;
reg [31 : 0] scaC_OPERATE_DEPTH = 1;
parameter scaC_c_bitwidth = 64;
parameter START_ADDR = 0;
parameter VecDotProduct_continue_addr = 0;
parameter VecDotProduct_auto_start_addr = 0;
parameter vecA_data_in_addr = 16;
parameter vecB_data_in_addr = 28;
parameter scaC_data_in_addr = 40;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_r_AWADDR;
output  TRAN_s_axi_control_r_AWVALID;
input  TRAN_s_axi_control_r_AWREADY;
output  TRAN_s_axi_control_r_WVALID;
input  TRAN_s_axi_control_r_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_r_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_r_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_r_ARADDR;
output  TRAN_s_axi_control_r_ARVALID;
input  TRAN_s_axi_control_r_ARREADY;
input  TRAN_s_axi_control_r_RVALID;
output  TRAN_s_axi_control_r_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_r_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_r_RRESP;
input  TRAN_s_axi_control_r_BVALID;
output  TRAN_s_axi_control_r_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_r_BRESP;
input    [64 - 1 : 0] TRAN_vecA;
input    [64 - 1 : 0] TRAN_vecB;
input    [64 - 1 : 0] TRAN_scaC;
output TRAN_control_r_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_r_start_in;
output    TRAN_control_r_done_out;
output    TRAN_control_r_ready_out;
input     TRAN_control_r_ready_in;
output    TRAN_control_r_idle_out;
input  TRAN_control_r_write_start_in   ;
output TRAN_control_r_write_start_finish;
input     TRAN_control_r_interrupt;
input     TRAN_control_r_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [vecA_c_bitwidth - 1 : 0] reg_vecA;
reg vecA_write_data_finish;
reg [vecB_c_bitwidth - 1 : 0] reg_vecB;
reg vecB_write_data_finish;
reg [scaC_c_bitwidth - 1 : 0] reg_scaC;
reg scaC_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
//write vecA reg
reg [31 : 0] write_vecA_count = 0;
reg write_vecA_run_flag = 0;
reg write_one_vecA_data_done = 0;
//write vecB reg
reg [31 : 0] write_vecB_count = 0;
reg write_vecB_run_flag = 0;
reg write_one_vecB_data_done = 0;
//write scaC reg
reg [31 : 0] write_scaC_count = 0;
reg write_scaC_run_flag = 0;
reg write_one_scaC_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_r_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_r_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_r_WVALID = WVALID_reg;
assign TRAN_s_axi_control_r_WDATA = WDATA_reg;
assign TRAN_s_axi_control_r_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_r_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_r_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_r_RREADY = RREADY_reg;
assign TRAN_s_axi_control_r_BREADY = BREADY_reg;
assign TRAN_control_r_write_start_finish = AESL_write_start_finish;
assign TRAN_control_r_done_out = AESL_done_index_reg;
assign TRAN_control_r_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_r_idle_out = AESL_idle_index_reg;
assign TRAN_control_r_write_data_finish = 1 & vecA_write_data_finish & vecB_write_data_finish & scaC_write_data_finish;
always @(TRAN_control_r_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_r_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

always @(TRAN_vecA) 
begin
    reg_vecA = TRAN_vecA;
end
always @(TRAN_vecB) 
begin
    reg_vecB = TRAN_vecB;
end
always @(TRAN_scaC) 
begin
    reg_scaC = TRAN_scaC;
end
task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_r_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_r_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_r_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_r_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_r_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_r_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_r_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_r_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        vecA_write_data_finish <= 0;
        write_vecA_run_flag <= 0; 
        write_vecA_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vecA_c_bitwidth, vecA_DEPTH, vecA_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_r_start_in === 1) begin
            vecA_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_vecA_run_flag <= 1; 
            write_vecA_count = 0;
        end
        if (write_one_vecA_data_done === 1) begin
            write_vecA_count = write_vecA_count + 1;
            if (write_vecA_count == vecA_OPERATE_DEPTH) begin
                write_vecA_run_flag <= 0; 
                vecA_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_vecA
    integer write_vecA_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] vecA_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vecA_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_vecA_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write vecA data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (vecA_c_bitwidth < 32) begin
                        vecA_data_tmp_reg = reg_vecA;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < vecA_c_bitwidth) begin
                                vecA_data_tmp_reg[j] = reg_vecA[i*32 + j];
                            end
                            else begin
                                vecA_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (vecA_data_in_addr + write_vecA_count * four_byte_num * 4 + i * 4, vecA_data_tmp_reg, write_vecA_resp);
                end
                process_busy = 0;
                write_one_vecA_data_done <= 1;
                @(posedge clk);
                write_one_vecA_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vecB_write_data_finish <= 0;
        write_vecB_run_flag <= 0; 
        write_vecB_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vecB_c_bitwidth, vecB_DEPTH, vecB_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_r_start_in === 1) begin
            vecB_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_vecB_run_flag <= 1; 
            write_vecB_count = 0;
        end
        if (write_one_vecB_data_done === 1) begin
            write_vecB_count = write_vecB_count + 1;
            if (write_vecB_count == vecB_OPERATE_DEPTH) begin
                write_vecB_run_flag <= 0; 
                vecB_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_vecB
    integer write_vecB_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] vecB_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vecB_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_vecB_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write vecB data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (vecB_c_bitwidth < 32) begin
                        vecB_data_tmp_reg = reg_vecB;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < vecB_c_bitwidth) begin
                                vecB_data_tmp_reg[j] = reg_vecB[i*32 + j];
                            end
                            else begin
                                vecB_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (vecB_data_in_addr + write_vecB_count * four_byte_num * 4 + i * 4, vecB_data_tmp_reg, write_vecB_resp);
                end
                process_busy = 0;
                write_one_vecB_data_done <= 1;
                @(posedge clk);
                write_one_vecB_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        scaC_write_data_finish <= 0;
        write_scaC_run_flag <= 0; 
        write_scaC_count = 0;
        count_operate_depth_by_bitwidth_and_depth (scaC_c_bitwidth, scaC_DEPTH, scaC_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_r_start_in === 1) begin
            scaC_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_scaC_run_flag <= 1; 
            write_scaC_count = 0;
        end
        if (write_one_scaC_data_done === 1) begin
            write_scaC_count = write_scaC_count + 1;
            if (write_scaC_count == scaC_OPERATE_DEPTH) begin
                write_scaC_run_flag <= 0; 
                scaC_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_scaC
    integer write_scaC_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] scaC_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = scaC_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_scaC_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write scaC data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (scaC_c_bitwidth < 32) begin
                        scaC_data_tmp_reg = reg_scaC;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < scaC_c_bitwidth) begin
                                scaC_data_tmp_reg[j] = reg_scaC[i*32 + j];
                            end
                            else begin
                                scaC_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (scaC_data_in_addr + write_scaC_count * four_byte_num * 4 + i * 4, scaC_data_tmp_reg, write_scaC_resp);
                end
                process_busy = 0;
                write_one_scaC_data_done <= 1;
                @(posedge clk);
                write_one_scaC_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_r_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 4;
    while (1) begin
        process_4_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_4_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
endmodule
