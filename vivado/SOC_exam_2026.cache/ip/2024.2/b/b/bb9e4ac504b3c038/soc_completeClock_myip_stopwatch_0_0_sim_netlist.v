// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Jan 27 16:28:05 2026
// Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_completeClock_myip_stopwatch_0_0_sim_netlist.v
// Design      : soc_completeClock_myip_stopwatch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI myip_stopwatch_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [2:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[31]_i_2_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[31]_i_2_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire stop_watch_inst_n_0;

  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(stop_watch_inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(stop_watch_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFBFAAFF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFF405500)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(stop_watch_inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(stop_watch_inst_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[4]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[4]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(stop_watch_inst_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(stop_watch_inst_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(stop_watch_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hAAA2FFAF)) 
    axi_awready_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'hBF992600FFFF2600)) 
    axi_bvalid_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(axi_bvalid_i_2_n_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_bready),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    axi_bvalid_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(stop_watch_inst_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'hF0AACC0000000000)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(slv_reg5[0]),
        .I1(slv_reg6[0]),
        .I2(slv_reg7[0]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(slv_reg4[10]),
        .I1(slv_reg5[10]),
        .I2(slv_reg6[10]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(slv_reg4[11]),
        .I1(slv_reg5[11]),
        .I2(slv_reg6[11]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(slv_reg4[12]),
        .I1(slv_reg5[12]),
        .I2(slv_reg6[12]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(slv_reg4[13]),
        .I1(slv_reg5[13]),
        .I2(slv_reg6[13]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .I2(slv_reg7[14]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'h0000C00A)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(slv_reg3[14]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(slv_reg4[14]),
        .I1(slv_reg5[14]),
        .I2(slv_reg6[14]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .I2(slv_reg7[15]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h0000C00A)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(slv_reg3[15]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(slv_reg4[15]),
        .I1(slv_reg5[15]),
        .I2(slv_reg6[15]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(slv_reg4[16]),
        .I1(slv_reg5[16]),
        .I2(slv_reg6[16]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(slv_reg4[17]),
        .I1(slv_reg5[17]),
        .I2(slv_reg6[17]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(slv_reg4[18]),
        .I1(slv_reg5[18]),
        .I2(slv_reg6[18]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(slv_reg4[19]),
        .I1(slv_reg5[19]),
        .I2(slv_reg6[19]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(slv_reg4[1]),
        .I1(slv_reg5[1]),
        .I2(slv_reg6[1]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(slv_reg4[20]),
        .I1(slv_reg5[20]),
        .I2(slv_reg6[20]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(slv_reg4[21]),
        .I1(slv_reg5[21]),
        .I2(slv_reg6[21]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(slv_reg4[22]),
        .I1(slv_reg5[22]),
        .I2(slv_reg6[22]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hF0AACC0000000000)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg5[23]),
        .I1(slv_reg6[23]),
        .I2(slv_reg7[23]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(slv_reg3[23]),
        .I2(slv_reg4[23]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(slv_reg4[24]),
        .I1(slv_reg5[24]),
        .I2(slv_reg6[24]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(slv_reg4[25]),
        .I1(slv_reg5[25]),
        .I2(slv_reg6[25]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(slv_reg4[26]),
        .I1(slv_reg5[26]),
        .I2(slv_reg6[26]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(slv_reg4[27]),
        .I1(slv_reg5[27]),
        .I2(slv_reg6[27]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(slv_reg4[28]),
        .I1(slv_reg5[28]),
        .I2(slv_reg6[28]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(slv_reg4[29]),
        .I1(slv_reg5[29]),
        .I2(slv_reg6[29]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(slv_reg4[2]),
        .I1(slv_reg5[2]),
        .I2(slv_reg6[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .I2(slv_reg7[30]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[30]));
  LUT5 #(
    .INIT(32'h0000C00A)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(slv_reg3[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(slv_reg4[30]),
        .I1(slv_reg5[30]),
        .I2(slv_reg6[30]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(slv_reg7[31]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[31]));
  LUT5 #(
    .INIT(32'h0000C00A)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(slv_reg3[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(slv_reg4[31]),
        .I1(slv_reg5[31]),
        .I2(slv_reg6[31]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(slv_reg4[3]),
        .I1(slv_reg5[3]),
        .I2(slv_reg6[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(slv_reg4[4]),
        .I1(slv_reg5[4]),
        .I2(slv_reg6[4]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(slv_reg4[5]),
        .I1(slv_reg5[5]),
        .I2(slv_reg6[5]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(slv_reg4[6]),
        .I1(slv_reg5[6]),
        .I2(slv_reg6[6]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hF0AACC0000000000)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg5[7]),
        .I1(slv_reg6[7]),
        .I2(slv_reg7[7]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000F0CC0000AA)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(slv_reg3[7]),
        .I2(slv_reg4[7]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(slv_reg4[8]),
        .I1(slv_reg5[8]),
        .I2(slv_reg6[8]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(slv_reg4[9]),
        .I1(slv_reg5[9]),
        .I2(slv_reg6[9]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202A000000000000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202A000000000000)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202A000000000000)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \slv_reg0[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202A000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[1]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[2]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[3]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \slv_reg3[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4700000000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg5[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg5[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg5[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \slv_reg5[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awaddr[1]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg5[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg6[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg6[31]_i_2_n_0 ),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg6[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg6[31]_i_2_n_0 ),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg6[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg6[31]_i_2_n_0 ),
        .O(\slv_reg6[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \slv_reg6[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg6[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    \slv_reg6[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\slv_reg6[31]_i_2_n_0 ),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[2]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(stop_watch_inst_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(stop_watch_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip stop_watch_inst
       (.Q({\slv_reg0_reg_n_0_[29] ,\slv_reg0_reg_n_0_[28] ,\slv_reg0_reg_n_0_[27] ,\slv_reg0_reg_n_0_[26] ,\slv_reg0_reg_n_0_[25] ,\slv_reg0_reg_n_0_[24] ,\slv_reg0_reg_n_0_[22] ,\slv_reg0_reg_n_0_[21] ,\slv_reg0_reg_n_0_[20] ,\slv_reg0_reg_n_0_[19] ,\slv_reg0_reg_n_0_[18] ,\slv_reg0_reg_n_0_[17] ,\slv_reg0_reg_n_0_[16] ,\slv_reg0_reg_n_0_[13] ,\slv_reg0_reg_n_0_[12] ,\slv_reg0_reg_n_0_[11] ,\slv_reg0_reg_n_0_[10] ,\slv_reg0_reg_n_0_[9] ,\slv_reg0_reg_n_0_[8] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,slv_reg0}),
        .SR(stop_watch_inst_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata({s00_axi_rdata[29:24],s00_axi_rdata[22:16],s00_axi_rdata[13:8],s00_axi_rdata[6:0]}),
        .\s00_axi_rdata[0]_0 (slv_reg4[0]),
        .\s00_axi_rdata[26] (\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .\s00_axi_rdata[27] (\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .\s00_axi_rdata[28] (\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .\s00_axi_rdata[29] ({slv_reg3[29:24],slv_reg3[22:16],slv_reg3[13:8],slv_reg3[6:0]}),
        .\s00_axi_rdata[29]_0 ({slv_reg7[29:24],slv_reg7[22:16],slv_reg7[13:8],slv_reg7[6:1]}),
        .\s00_axi_rdata[29]_1 (\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_0_sp_1(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .s00_axi_rdata_10_sp_1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_11_sp_1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_12_sp_1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_13_sp_1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_16_sp_1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_17_sp_1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_18_sp_1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_19_sp_1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_1_sp_1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_20_sp_1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_21_sp_1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_22_sp_1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_24_sp_1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_25_sp_1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_2_sp_1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_3_sp_1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_4_sp_1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_5_sp_1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_6_sp_1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_8_sp_1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_9_sp_1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .sel0(sel0));
endmodule

(* CHECK_LICENSE_TYPE = "soc_completeClock_myip_stopwatch_0_0,myip_stopwatch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_stopwatch,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip
   (SR,
    s00_axi_rdata,
    s00_axi_aclk,
    Q,
    s00_axi_rdata_0_sp_1,
    \s00_axi_rdata[29] ,
    \s00_axi_rdata[0]_0 ,
    sel0,
    s00_axi_rdata_1_sp_1,
    \s00_axi_rdata[29]_0 ,
    s00_axi_rdata_2_sp_1,
    s00_axi_rdata_3_sp_1,
    s00_axi_rdata_4_sp_1,
    s00_axi_rdata_5_sp_1,
    s00_axi_rdata_6_sp_1,
    s00_axi_rdata_8_sp_1,
    s00_axi_rdata_9_sp_1,
    s00_axi_rdata_10_sp_1,
    s00_axi_rdata_11_sp_1,
    s00_axi_rdata_12_sp_1,
    s00_axi_rdata_13_sp_1,
    s00_axi_rdata_16_sp_1,
    s00_axi_rdata_17_sp_1,
    s00_axi_rdata_18_sp_1,
    s00_axi_rdata_19_sp_1,
    s00_axi_rdata_20_sp_1,
    s00_axi_rdata_21_sp_1,
    s00_axi_rdata_22_sp_1,
    s00_axi_rdata_24_sp_1,
    s00_axi_rdata_25_sp_1,
    \s00_axi_rdata[26] ,
    \s00_axi_rdata[27] ,
    \s00_axi_rdata[28] ,
    \s00_axi_rdata[29]_1 ,
    s00_axi_aresetn);
  output [0:0]SR;
  output [25:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [25:0]Q;
  input s00_axi_rdata_0_sp_1;
  input [25:0]\s00_axi_rdata[29] ;
  input [0:0]\s00_axi_rdata[0]_0 ;
  input [2:0]sel0;
  input s00_axi_rdata_1_sp_1;
  input [24:0]\s00_axi_rdata[29]_0 ;
  input s00_axi_rdata_2_sp_1;
  input s00_axi_rdata_3_sp_1;
  input s00_axi_rdata_4_sp_1;
  input s00_axi_rdata_5_sp_1;
  input s00_axi_rdata_6_sp_1;
  input s00_axi_rdata_8_sp_1;
  input s00_axi_rdata_9_sp_1;
  input s00_axi_rdata_10_sp_1;
  input s00_axi_rdata_11_sp_1;
  input s00_axi_rdata_12_sp_1;
  input s00_axi_rdata_13_sp_1;
  input s00_axi_rdata_16_sp_1;
  input s00_axi_rdata_17_sp_1;
  input s00_axi_rdata_18_sp_1;
  input s00_axi_rdata_19_sp_1;
  input s00_axi_rdata_20_sp_1;
  input s00_axi_rdata_21_sp_1;
  input s00_axi_rdata_22_sp_1;
  input s00_axi_rdata_24_sp_1;
  input s00_axi_rdata_25_sp_1;
  input \s00_axi_rdata[26] ;
  input \s00_axi_rdata[27] ;
  input \s00_axi_rdata[28] ;
  input \s00_axi_rdata[29]_1 ;
  input s00_axi_aresetn;

  wire [25:0]Q;
  wire [0:0]SR;
  wire [31:0]cnt_sysclk1;
  wire [31:1]cnt_sysclk10;
  wire cnt_sysclk10_carry__0_n_0;
  wire cnt_sysclk10_carry__0_n_1;
  wire cnt_sysclk10_carry__0_n_2;
  wire cnt_sysclk10_carry__0_n_3;
  wire cnt_sysclk10_carry__1_n_0;
  wire cnt_sysclk10_carry__1_n_1;
  wire cnt_sysclk10_carry__1_n_2;
  wire cnt_sysclk10_carry__1_n_3;
  wire cnt_sysclk10_carry__2_n_0;
  wire cnt_sysclk10_carry__2_n_1;
  wire cnt_sysclk10_carry__2_n_2;
  wire cnt_sysclk10_carry__2_n_3;
  wire cnt_sysclk10_carry__3_n_0;
  wire cnt_sysclk10_carry__3_n_1;
  wire cnt_sysclk10_carry__3_n_2;
  wire cnt_sysclk10_carry__3_n_3;
  wire cnt_sysclk10_carry__4_n_0;
  wire cnt_sysclk10_carry__4_n_1;
  wire cnt_sysclk10_carry__4_n_2;
  wire cnt_sysclk10_carry__4_n_3;
  wire cnt_sysclk10_carry__5_n_0;
  wire cnt_sysclk10_carry__5_n_1;
  wire cnt_sysclk10_carry__5_n_2;
  wire cnt_sysclk10_carry__5_n_3;
  wire cnt_sysclk10_carry__6_n_2;
  wire cnt_sysclk10_carry__6_n_3;
  wire cnt_sysclk10_carry_n_0;
  wire cnt_sysclk10_carry_n_1;
  wire cnt_sysclk10_carry_n_2;
  wire cnt_sysclk10_carry_n_3;
  wire cnt_sysclk11_carry__0_i_1_n_0;
  wire cnt_sysclk11_carry__0_i_2_n_0;
  wire cnt_sysclk11_carry__0_i_3_n_0;
  wire cnt_sysclk11_carry__0_i_4_n_0;
  wire cnt_sysclk11_carry__0_i_5_n_0;
  wire cnt_sysclk11_carry__0_i_6_n_0;
  wire cnt_sysclk11_carry__0_n_0;
  wire cnt_sysclk11_carry__0_n_1;
  wire cnt_sysclk11_carry__0_n_2;
  wire cnt_sysclk11_carry__0_n_3;
  wire cnt_sysclk11_carry__1_i_1_n_0;
  wire cnt_sysclk11_carry__1_i_2_n_0;
  wire cnt_sysclk11_carry__1_i_3_n_0;
  wire cnt_sysclk11_carry__1_i_4_n_0;
  wire cnt_sysclk11_carry__1_i_5_n_0;
  wire cnt_sysclk11_carry__1_i_6_n_0;
  wire cnt_sysclk11_carry__1_i_7_n_0;
  wire cnt_sysclk11_carry__1_n_0;
  wire cnt_sysclk11_carry__1_n_1;
  wire cnt_sysclk11_carry__1_n_2;
  wire cnt_sysclk11_carry__1_n_3;
  wire cnt_sysclk11_carry__2_i_1_n_0;
  wire cnt_sysclk11_carry__2_i_2_n_0;
  wire cnt_sysclk11_carry__2_i_3_n_0;
  wire cnt_sysclk11_carry__2_i_4_n_0;
  wire cnt_sysclk11_carry__2_i_5_n_0;
  wire cnt_sysclk11_carry__2_i_6_n_0;
  wire cnt_sysclk11_carry__2_n_1;
  wire cnt_sysclk11_carry__2_n_2;
  wire cnt_sysclk11_carry__2_n_3;
  wire cnt_sysclk11_carry_i_1_n_0;
  wire cnt_sysclk11_carry_i_2_n_0;
  wire cnt_sysclk11_carry_i_3_n_0;
  wire cnt_sysclk11_carry_i_4_n_0;
  wire cnt_sysclk11_carry_i_5_n_0;
  wire cnt_sysclk11_carry_i_6_n_0;
  wire cnt_sysclk11_carry_i_7_n_0;
  wire cnt_sysclk11_carry_n_0;
  wire cnt_sysclk11_carry_n_1;
  wire cnt_sysclk11_carry_n_2;
  wire cnt_sysclk11_carry_n_3;
  wire \cnt_sysclk1[31]_i_1_n_0 ;
  wire [31:0]cnt_sysclk2;
  wire [31:1]cnt_sysclk20;
  wire cnt_sysclk20_carry__0_n_0;
  wire cnt_sysclk20_carry__0_n_1;
  wire cnt_sysclk20_carry__0_n_2;
  wire cnt_sysclk20_carry__0_n_3;
  wire cnt_sysclk20_carry__1_n_0;
  wire cnt_sysclk20_carry__1_n_1;
  wire cnt_sysclk20_carry__1_n_2;
  wire cnt_sysclk20_carry__1_n_3;
  wire cnt_sysclk20_carry__2_n_0;
  wire cnt_sysclk20_carry__2_n_1;
  wire cnt_sysclk20_carry__2_n_2;
  wire cnt_sysclk20_carry__2_n_3;
  wire cnt_sysclk20_carry__3_n_0;
  wire cnt_sysclk20_carry__3_n_1;
  wire cnt_sysclk20_carry__3_n_2;
  wire cnt_sysclk20_carry__3_n_3;
  wire cnt_sysclk20_carry__4_n_0;
  wire cnt_sysclk20_carry__4_n_1;
  wire cnt_sysclk20_carry__4_n_2;
  wire cnt_sysclk20_carry__4_n_3;
  wire cnt_sysclk20_carry__5_n_0;
  wire cnt_sysclk20_carry__5_n_1;
  wire cnt_sysclk20_carry__5_n_2;
  wire cnt_sysclk20_carry__5_n_3;
  wire cnt_sysclk20_carry__6_n_2;
  wire cnt_sysclk20_carry__6_n_3;
  wire cnt_sysclk20_carry_n_0;
  wire cnt_sysclk20_carry_n_1;
  wire cnt_sysclk20_carry_n_2;
  wire cnt_sysclk20_carry_n_3;
  wire \cnt_sysclk2[0]_i_1_n_0 ;
  wire \cnt_sysclk2[10]_i_1_n_0 ;
  wire \cnt_sysclk2[11]_i_1_n_0 ;
  wire \cnt_sysclk2[12]_i_1_n_0 ;
  wire \cnt_sysclk2[13]_i_1_n_0 ;
  wire \cnt_sysclk2[14]_i_1_n_0 ;
  wire \cnt_sysclk2[15]_i_1_n_0 ;
  wire \cnt_sysclk2[16]_i_1_n_0 ;
  wire \cnt_sysclk2[17]_i_1_n_0 ;
  wire \cnt_sysclk2[18]_i_1_n_0 ;
  wire \cnt_sysclk2[19]_i_1_n_0 ;
  wire \cnt_sysclk2[1]_i_1_n_0 ;
  wire \cnt_sysclk2[20]_i_1_n_0 ;
  wire \cnt_sysclk2[21]_i_1_n_0 ;
  wire \cnt_sysclk2[22]_i_1_n_0 ;
  wire \cnt_sysclk2[23]_i_1_n_0 ;
  wire \cnt_sysclk2[24]_i_1_n_0 ;
  wire \cnt_sysclk2[25]_i_1_n_0 ;
  wire \cnt_sysclk2[26]_i_1_n_0 ;
  wire \cnt_sysclk2[27]_i_1_n_0 ;
  wire \cnt_sysclk2[28]_i_1_n_0 ;
  wire \cnt_sysclk2[29]_i_1_n_0 ;
  wire \cnt_sysclk2[2]_i_1_n_0 ;
  wire \cnt_sysclk2[30]_i_1_n_0 ;
  wire \cnt_sysclk2[31]_i_1_n_0 ;
  wire \cnt_sysclk2[31]_i_2_n_0 ;
  wire \cnt_sysclk2[3]_i_1_n_0 ;
  wire \cnt_sysclk2[4]_i_1_n_0 ;
  wire \cnt_sysclk2[5]_i_1_n_0 ;
  wire \cnt_sysclk2[6]_i_1_n_0 ;
  wire \cnt_sysclk2[7]_i_1_n_0 ;
  wire \cnt_sysclk2[8]_i_1_n_0 ;
  wire \cnt_sysclk2[9]_i_1_n_0 ;
  wire \csec[0]_i_1_n_0 ;
  wire \csec[1]_i_1_n_0 ;
  wire \csec[2]_i_1_n_0 ;
  wire \csec[3]_i_1_n_0 ;
  wire \csec[4]_i_1_n_0 ;
  wire \csec[5]_i_1_n_0 ;
  wire \csec[6]_i_1_n_0 ;
  wire csec_mem;
  wire \csec_mem[0]_i_1_n_0 ;
  wire \csec_mem[0]_i_2_n_0 ;
  wire \csec_mem[1]_i_1_n_0 ;
  wire \csec_mem[1]_i_2_n_0 ;
  wire \csec_mem[2]_i_1_n_0 ;
  wire \csec_mem[3]_i_1_n_0 ;
  wire \csec_mem[4]_i_1_n_0 ;
  wire \csec_mem[4]_i_2_n_0 ;
  wire \csec_mem[5]_i_1_n_0 ;
  wire \csec_mem[6]_i_2_n_0 ;
  wire \csec_mem[6]_i_3_n_0 ;
  wire \csec_mem[6]_i_4_n_0 ;
  wire \csec_mem_reg_n_0_[0] ;
  wire \csec_mem_reg_n_0_[1] ;
  wire \csec_mem_reg_n_0_[2] ;
  wire \csec_mem_reg_n_0_[3] ;
  wire \csec_mem_reg_n_0_[4] ;
  wire \csec_mem_reg_n_0_[5] ;
  wire \csec_mem_reg_n_0_[6] ;
  wire [29:0]data2;
  wire lap_csec;
  wire \lap_csec[0]_i_1_n_0 ;
  wire \lap_csec[0]_i_2_n_0 ;
  wire \lap_csec[1]_i_1_n_0 ;
  wire \lap_csec[1]_i_2_n_0 ;
  wire \lap_csec[2]_i_1_n_0 ;
  wire \lap_csec[2]_i_2_n_0 ;
  wire \lap_csec[3]_i_1_n_0 ;
  wire \lap_csec[4]_i_1_n_0 ;
  wire \lap_csec[4]_i_2_n_0 ;
  wire \lap_csec[5]_i_1_n_0 ;
  wire \lap_csec[6]_i_2_n_0 ;
  wire \lap_csec[6]_i_3_n_0 ;
  wire \lap_csec[6]_i_4_n_0 ;
  wire \lap_csec_reg_n_0_[0] ;
  wire \lap_csec_reg_n_0_[1] ;
  wire \lap_csec_reg_n_0_[2] ;
  wire \lap_csec_reg_n_0_[3] ;
  wire \lap_csec_reg_n_0_[4] ;
  wire \lap_csec_reg_n_0_[5] ;
  wire \lap_csec_reg_n_0_[6] ;
  wire lap_sec0_carry__0_i_1_n_0;
  wire lap_sec0_carry__0_i_2_n_0;
  wire lap_sec0_carry__0_i_3_n_0;
  wire lap_sec0_carry__0_i_4_n_0;
  wire lap_sec0_carry__0_i_5_n_0;
  wire lap_sec0_carry__0_i_6_n_0;
  wire lap_sec0_carry__0_n_0;
  wire lap_sec0_carry__0_n_1;
  wire lap_sec0_carry__0_n_2;
  wire lap_sec0_carry__0_n_3;
  wire lap_sec0_carry__1_i_1_n_0;
  wire lap_sec0_carry__1_i_2_n_0;
  wire lap_sec0_carry__1_i_3_n_0;
  wire lap_sec0_carry__1_i_4_n_0;
  wire lap_sec0_carry__1_i_5_n_0;
  wire lap_sec0_carry__1_i_6_n_0;
  wire lap_sec0_carry__1_i_7_n_0;
  wire lap_sec0_carry__1_n_0;
  wire lap_sec0_carry__1_n_1;
  wire lap_sec0_carry__1_n_2;
  wire lap_sec0_carry__1_n_3;
  wire lap_sec0_carry__2_i_1_n_0;
  wire lap_sec0_carry__2_i_2_n_0;
  wire lap_sec0_carry__2_i_3_n_0;
  wire lap_sec0_carry__2_i_4_n_0;
  wire lap_sec0_carry__2_i_5_n_0;
  wire lap_sec0_carry__2_i_6_n_0;
  wire lap_sec0_carry__2_n_1;
  wire lap_sec0_carry__2_n_2;
  wire lap_sec0_carry__2_n_3;
  wire lap_sec0_carry_i_1_n_0;
  wire lap_sec0_carry_i_2_n_0;
  wire lap_sec0_carry_i_3_n_0;
  wire lap_sec0_carry_i_4_n_0;
  wire lap_sec0_carry_i_5_n_0;
  wire lap_sec0_carry_i_6_n_0;
  wire lap_sec0_carry_i_7_n_0;
  wire lap_sec0_carry_n_0;
  wire lap_sec0_carry_n_1;
  wire lap_sec0_carry_n_2;
  wire lap_sec0_carry_n_3;
  wire \lap_sec[0]_i_1_n_0 ;
  wire \lap_sec[0]_i_2_n_0 ;
  wire \lap_sec[0]_i_3_n_0 ;
  wire \lap_sec[1]_i_1_n_0 ;
  wire \lap_sec[1]_i_2_n_0 ;
  wire \lap_sec[1]_i_3_n_0 ;
  wire \lap_sec[1]_i_4_n_0 ;
  wire \lap_sec[2]_i_1_n_0 ;
  wire \lap_sec[2]_i_2_n_0 ;
  wire \lap_sec[2]_i_3_n_0 ;
  wire \lap_sec[2]_i_4_n_0 ;
  wire \lap_sec[3]_i_1_n_0 ;
  wire \lap_sec[3]_i_2_n_0 ;
  wire \lap_sec[3]_i_3_n_0 ;
  wire \lap_sec[4]_i_1_n_0 ;
  wire \lap_sec[4]_i_2_n_0 ;
  wire \lap_sec[5]_i_1_n_0 ;
  wire \lap_sec[5]_i_2_n_0 ;
  wire \lap_sec[5]_i_3_n_0 ;
  wire \lap_sec[5]_i_4_n_0 ;
  wire \lap_sec[5]_i_5_n_0 ;
  wire \lap_sec_reg_n_0_[0] ;
  wire \lap_sec_reg_n_0_[1] ;
  wire \lap_sec_reg_n_0_[2] ;
  wire \lap_sec_reg_n_0_[3] ;
  wire \lap_sec_reg_n_0_[4] ;
  wire \lap_sec_reg_n_0_[5] ;
  wire \lap_time[0]_i_1_n_0 ;
  wire \lap_time[10]_i_1_n_0 ;
  wire \lap_time[11]_i_1_n_0 ;
  wire \lap_time[12]_i_1_n_0 ;
  wire \lap_time[13]_i_1_n_0 ;
  wire \lap_time[1]_i_1_n_0 ;
  wire \lap_time[2]_i_1_n_0 ;
  wire \lap_time[3]_i_1_n_0 ;
  wire \lap_time[4]_i_1_n_0 ;
  wire \lap_time[5]_i_1_n_0 ;
  wire \lap_time[6]_i_1_n_0 ;
  wire \lap_time[8]_i_1_n_0 ;
  wire \lap_time[9]_i_1_n_0 ;
  wire mode;
  wire mode_i_1_n_0;
  wire [5:0]p_0_in;
  wire [31:0]p_1_in;
  wire run_i_1_n_0;
  wire run_reg_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [25:0]s00_axi_rdata;
  wire [0:0]\s00_axi_rdata[0]_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26] ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27] ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28] ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire [25:0]\s00_axi_rdata[29] ;
  wire [24:0]\s00_axi_rdata[29]_0 ;
  wire \s00_axi_rdata[29]_1 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_rdata_10_sn_1;
  wire s00_axi_rdata_11_sn_1;
  wire s00_axi_rdata_12_sn_1;
  wire s00_axi_rdata_13_sn_1;
  wire s00_axi_rdata_16_sn_1;
  wire s00_axi_rdata_17_sn_1;
  wire s00_axi_rdata_18_sn_1;
  wire s00_axi_rdata_19_sn_1;
  wire s00_axi_rdata_1_sn_1;
  wire s00_axi_rdata_20_sn_1;
  wire s00_axi_rdata_21_sn_1;
  wire s00_axi_rdata_22_sn_1;
  wire s00_axi_rdata_24_sn_1;
  wire s00_axi_rdata_25_sn_1;
  wire s00_axi_rdata_2_sn_1;
  wire s00_axi_rdata_3_sn_1;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rdata_5_sn_1;
  wire s00_axi_rdata_6_sn_1;
  wire s00_axi_rdata_8_sn_1;
  wire s00_axi_rdata_9_sn_1;
  wire \sec[0]_i_1_n_0 ;
  wire \sec[1]_i_1_n_0 ;
  wire \sec[2]_i_1_n_0 ;
  wire \sec[3]_i_1_n_0 ;
  wire \sec[4]_i_1_n_0 ;
  wire \sec[5]_i_1_n_0 ;
  wire \sec_mem[0]_i_2_n_0 ;
  wire \sec_mem[1]_i_2_n_0 ;
  wire \sec_mem[1]_i_3_n_0 ;
  wire \sec_mem[1]_i_4_n_0 ;
  wire \sec_mem[2]_i_2_n_0 ;
  wire \sec_mem[2]_i_3_n_0 ;
  wire \sec_mem[2]_i_4_n_0 ;
  wire \sec_mem[2]_i_5_n_0 ;
  wire \sec_mem[3]_i_2_n_0 ;
  wire \sec_mem[3]_i_3_n_0 ;
  wire \sec_mem[4]_i_2_n_0 ;
  wire \sec_mem[5]_i_2_n_0 ;
  wire \sec_mem[5]_i_3_n_0 ;
  wire \sec_mem[5]_i_4_n_0 ;
  wire \sec_mem[5]_i_5_n_0 ;
  wire \sec_mem_reg_n_0_[0] ;
  wire \sec_mem_reg_n_0_[1] ;
  wire \sec_mem_reg_n_0_[2] ;
  wire \sec_mem_reg_n_0_[3] ;
  wire \sec_mem_reg_n_0_[4] ;
  wire \sec_mem_reg_n_0_[5] ;
  wire [2:0]sel0;
  wire [3:2]NLW_cnt_sysclk10_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk10_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk11_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_cnt_sysclk20_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk20_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_lap_sec0_carry_O_UNCONNECTED;
  wire [3:0]NLW_lap_sec0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_lap_sec0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_lap_sec0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_lap_sec0_carry__2_O_UNCONNECTED;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  assign s00_axi_rdata_10_sn_1 = s00_axi_rdata_10_sp_1;
  assign s00_axi_rdata_11_sn_1 = s00_axi_rdata_11_sp_1;
  assign s00_axi_rdata_12_sn_1 = s00_axi_rdata_12_sp_1;
  assign s00_axi_rdata_13_sn_1 = s00_axi_rdata_13_sp_1;
  assign s00_axi_rdata_16_sn_1 = s00_axi_rdata_16_sp_1;
  assign s00_axi_rdata_17_sn_1 = s00_axi_rdata_17_sp_1;
  assign s00_axi_rdata_18_sn_1 = s00_axi_rdata_18_sp_1;
  assign s00_axi_rdata_19_sn_1 = s00_axi_rdata_19_sp_1;
  assign s00_axi_rdata_1_sn_1 = s00_axi_rdata_1_sp_1;
  assign s00_axi_rdata_20_sn_1 = s00_axi_rdata_20_sp_1;
  assign s00_axi_rdata_21_sn_1 = s00_axi_rdata_21_sp_1;
  assign s00_axi_rdata_22_sn_1 = s00_axi_rdata_22_sp_1;
  assign s00_axi_rdata_24_sn_1 = s00_axi_rdata_24_sp_1;
  assign s00_axi_rdata_25_sn_1 = s00_axi_rdata_25_sp_1;
  assign s00_axi_rdata_2_sn_1 = s00_axi_rdata_2_sp_1;
  assign s00_axi_rdata_3_sn_1 = s00_axi_rdata_3_sp_1;
  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  assign s00_axi_rdata_5_sn_1 = s00_axi_rdata_5_sp_1;
  assign s00_axi_rdata_6_sn_1 = s00_axi_rdata_6_sp_1;
  assign s00_axi_rdata_8_sn_1 = s00_axi_rdata_8_sp_1;
  assign s00_axi_rdata_9_sn_1 = s00_axi_rdata_9_sp_1;
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk10_carry
       (.CI(1'b0),
        .CO({cnt_sysclk10_carry_n_0,cnt_sysclk10_carry_n_1,cnt_sysclk10_carry_n_2,cnt_sysclk10_carry_n_3}),
        .CYINIT(cnt_sysclk1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[4:1]),
        .S(cnt_sysclk1[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk10_carry__0
       (.CI(cnt_sysclk10_carry_n_0),
        .CO({cnt_sysclk10_carry__0_n_0,cnt_sysclk10_carry__0_n_1,cnt_sysclk10_carry__0_n_2,cnt_sysclk10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[8:5]),
        .S(cnt_sysclk1[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk10_carry__1
       (.CI(cnt_sysclk10_carry__0_n_0),
        .CO({cnt_sysclk10_carry__1_n_0,cnt_sysclk10_carry__1_n_1,cnt_sysclk10_carry__1_n_2,cnt_sysclk10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[12:9]),
        .S(cnt_sysclk1[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk10_carry__2
       (.CI(cnt_sysclk10_carry__1_n_0),
        .CO({cnt_sysclk10_carry__2_n_0,cnt_sysclk10_carry__2_n_1,cnt_sysclk10_carry__2_n_2,cnt_sysclk10_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[16:13]),
        .S(cnt_sysclk1[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk10_carry__3
       (.CI(cnt_sysclk10_carry__2_n_0),
        .CO({cnt_sysclk10_carry__3_n_0,cnt_sysclk10_carry__3_n_1,cnt_sysclk10_carry__3_n_2,cnt_sysclk10_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[20:17]),
        .S(cnt_sysclk1[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk10_carry__4
       (.CI(cnt_sysclk10_carry__3_n_0),
        .CO({cnt_sysclk10_carry__4_n_0,cnt_sysclk10_carry__4_n_1,cnt_sysclk10_carry__4_n_2,cnt_sysclk10_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[24:21]),
        .S(cnt_sysclk1[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk10_carry__5
       (.CI(cnt_sysclk10_carry__4_n_0),
        .CO({cnt_sysclk10_carry__5_n_0,cnt_sysclk10_carry__5_n_1,cnt_sysclk10_carry__5_n_2,cnt_sysclk10_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[28:25]),
        .S(cnt_sysclk1[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk10_carry__6
       (.CI(cnt_sysclk10_carry__5_n_0),
        .CO({NLW_cnt_sysclk10_carry__6_CO_UNCONNECTED[3:2],cnt_sysclk10_carry__6_n_2,cnt_sysclk10_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_sysclk10_carry__6_O_UNCONNECTED[3],cnt_sysclk10[31:29]}),
        .S({1'b0,cnt_sysclk1[31:29]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk11_carry
       (.CI(1'b0),
        .CO({cnt_sysclk11_carry_n_0,cnt_sysclk11_carry_n_1,cnt_sysclk11_carry_n_2,cnt_sysclk11_carry_n_3}),
        .CYINIT(cnt_sysclk11_carry_i_1_n_0),
        .DI({cnt_sysclk11_carry_i_2_n_0,cnt_sysclk11_carry_i_3_n_0,1'b0,1'b0}),
        .O(NLW_cnt_sysclk11_carry_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk11_carry_i_4_n_0,cnt_sysclk11_carry_i_5_n_0,cnt_sysclk11_carry_i_6_n_0,cnt_sysclk11_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk11_carry__0
       (.CI(cnt_sysclk11_carry_n_0),
        .CO({cnt_sysclk11_carry__0_n_0,cnt_sysclk11_carry__0_n_1,cnt_sysclk11_carry__0_n_2,cnt_sysclk11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_sysclk1[15],cnt_sysclk11_carry__0_i_1_n_0,cnt_sysclk11_carry__0_i_2_n_0}),
        .O(NLW_cnt_sysclk11_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk11_carry__0_i_3_n_0,cnt_sysclk11_carry__0_i_4_n_0,cnt_sysclk11_carry__0_i_5_n_0,cnt_sysclk11_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk11_carry__0_i_1
       (.I0(cnt_sysclk1[12]),
        .I1(cnt_sysclk1[13]),
        .O(cnt_sysclk11_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk11_carry__0_i_2
       (.I0(cnt_sysclk1[10]),
        .I1(cnt_sysclk1[11]),
        .O(cnt_sysclk11_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk11_carry__0_i_3
       (.I0(cnt_sysclk1[16]),
        .I1(cnt_sysclk1[17]),
        .O(cnt_sysclk11_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk11_carry__0_i_4
       (.I0(cnt_sysclk1[14]),
        .I1(cnt_sysclk1[15]),
        .O(cnt_sysclk11_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__0_i_5
       (.I0(cnt_sysclk1[12]),
        .I1(cnt_sysclk1[13]),
        .O(cnt_sysclk11_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__0_i_6
       (.I0(cnt_sysclk1[10]),
        .I1(cnt_sysclk1[11]),
        .O(cnt_sysclk11_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk11_carry__1
       (.CI(cnt_sysclk11_carry__0_n_0),
        .CO({cnt_sysclk11_carry__1_n_0,cnt_sysclk11_carry__1_n_1,cnt_sysclk11_carry__1_n_2,cnt_sysclk11_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_sysclk11_carry__1_i_1_n_0,cnt_sysclk11_carry__1_i_2_n_0,cnt_sysclk11_carry__1_i_3_n_0,1'b0}),
        .O(NLW_cnt_sysclk11_carry__1_O_UNCONNECTED[3:0]),
        .S({cnt_sysclk11_carry__1_i_4_n_0,cnt_sysclk11_carry__1_i_5_n_0,cnt_sysclk11_carry__1_i_6_n_0,cnt_sysclk11_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk11_carry__1_i_1
       (.I0(cnt_sysclk1[24]),
        .I1(cnt_sysclk1[25]),
        .O(cnt_sysclk11_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk11_carry__1_i_2
       (.I0(cnt_sysclk1[22]),
        .I1(cnt_sysclk1[23]),
        .O(cnt_sysclk11_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk11_carry__1_i_3
       (.I0(cnt_sysclk1[20]),
        .I1(cnt_sysclk1[21]),
        .O(cnt_sysclk11_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__1_i_4
       (.I0(cnt_sysclk1[24]),
        .I1(cnt_sysclk1[25]),
        .O(cnt_sysclk11_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__1_i_5
       (.I0(cnt_sysclk1[22]),
        .I1(cnt_sysclk1[23]),
        .O(cnt_sysclk11_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__1_i_6
       (.I0(cnt_sysclk1[20]),
        .I1(cnt_sysclk1[21]),
        .O(cnt_sysclk11_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk11_carry__1_i_7
       (.I0(cnt_sysclk1[18]),
        .I1(cnt_sysclk1[19]),
        .O(cnt_sysclk11_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cnt_sysclk11_carry__2
       (.CI(cnt_sysclk11_carry__1_n_0),
        .CO({NLW_cnt_sysclk11_carry__2_CO_UNCONNECTED[3],cnt_sysclk11_carry__2_n_1,cnt_sysclk11_carry__2_n_2,cnt_sysclk11_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_sysclk11_carry__2_i_1_n_0,cnt_sysclk11_carry__2_i_2_n_0,cnt_sysclk11_carry__2_i_3_n_0}),
        .O(NLW_cnt_sysclk11_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,cnt_sysclk11_carry__2_i_4_n_0,cnt_sysclk11_carry__2_i_5_n_0,cnt_sysclk11_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk11_carry__2_i_1
       (.I0(cnt_sysclk1[30]),
        .I1(cnt_sysclk1[31]),
        .O(cnt_sysclk11_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk11_carry__2_i_2
       (.I0(cnt_sysclk1[28]),
        .I1(cnt_sysclk1[29]),
        .O(cnt_sysclk11_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk11_carry__2_i_3
       (.I0(cnt_sysclk1[26]),
        .I1(cnt_sysclk1[27]),
        .O(cnt_sysclk11_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__2_i_4
       (.I0(cnt_sysclk1[30]),
        .I1(cnt_sysclk1[31]),
        .O(cnt_sysclk11_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__2_i_5
       (.I0(cnt_sysclk1[28]),
        .I1(cnt_sysclk1[29]),
        .O(cnt_sysclk11_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__2_i_6
       (.I0(cnt_sysclk1[26]),
        .I1(cnt_sysclk1[27]),
        .O(cnt_sysclk11_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk11_carry_i_1
       (.I0(cnt_sysclk1[0]),
        .I1(cnt_sysclk1[1]),
        .O(cnt_sysclk11_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk11_carry_i_2
       (.I0(cnt_sysclk1[8]),
        .I1(cnt_sysclk1[9]),
        .O(cnt_sysclk11_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt_sysclk11_carry_i_3
       (.I0(cnt_sysclk1[6]),
        .I1(cnt_sysclk1[7]),
        .O(cnt_sysclk11_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_sysclk11_carry_i_4
       (.I0(cnt_sysclk1[9]),
        .I1(cnt_sysclk1[8]),
        .O(cnt_sysclk11_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry_i_5
       (.I0(cnt_sysclk1[6]),
        .I1(cnt_sysclk1[7]),
        .O(cnt_sysclk11_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk11_carry_i_6
       (.I0(cnt_sysclk1[4]),
        .I1(cnt_sysclk1[5]),
        .O(cnt_sysclk11_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_sysclk11_carry_i_7
       (.I0(cnt_sysclk1[2]),
        .I1(cnt_sysclk1[3]),
        .O(cnt_sysclk11_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_sysclk1[0]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk1[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[10]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[11]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[12]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[13]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[14]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[15]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[16]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[17]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[18]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[19]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[1]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[20]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[21]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[22]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[23]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[24]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[25]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[26]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[27]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[28]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[29]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[2]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[30]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[30]),
        .O(p_1_in[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_sysclk1[31]_i_1 
       (.I0(run_reg_n_0),
        .I1(Q[1]),
        .O(\cnt_sysclk1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[31]_i_2 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[31]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[3]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[4]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[5]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[6]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[7]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[8]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[9]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk10[9]),
        .O(p_1_in[9]));
  FDCE \cnt_sysclk1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(cnt_sysclk1[0]));
  FDCE \cnt_sysclk1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[10]),
        .Q(cnt_sysclk1[10]));
  FDCE \cnt_sysclk1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[11]),
        .Q(cnt_sysclk1[11]));
  FDCE \cnt_sysclk1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[12]),
        .Q(cnt_sysclk1[12]));
  FDCE \cnt_sysclk1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[13]),
        .Q(cnt_sysclk1[13]));
  FDCE \cnt_sysclk1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[14]),
        .Q(cnt_sysclk1[14]));
  FDCE \cnt_sysclk1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[15]),
        .Q(cnt_sysclk1[15]));
  FDCE \cnt_sysclk1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[16]),
        .Q(cnt_sysclk1[16]));
  FDCE \cnt_sysclk1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[17]),
        .Q(cnt_sysclk1[17]));
  FDCE \cnt_sysclk1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[18]),
        .Q(cnt_sysclk1[18]));
  FDCE \cnt_sysclk1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[19]),
        .Q(cnt_sysclk1[19]));
  FDCE \cnt_sysclk1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[1]),
        .Q(cnt_sysclk1[1]));
  FDCE \cnt_sysclk1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[20]),
        .Q(cnt_sysclk1[20]));
  FDCE \cnt_sysclk1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[21]),
        .Q(cnt_sysclk1[21]));
  FDCE \cnt_sysclk1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[22]),
        .Q(cnt_sysclk1[22]));
  FDCE \cnt_sysclk1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[23]),
        .Q(cnt_sysclk1[23]));
  FDCE \cnt_sysclk1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[24]),
        .Q(cnt_sysclk1[24]));
  FDCE \cnt_sysclk1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[25]),
        .Q(cnt_sysclk1[25]));
  FDCE \cnt_sysclk1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[26]),
        .Q(cnt_sysclk1[26]));
  FDCE \cnt_sysclk1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[27]),
        .Q(cnt_sysclk1[27]));
  FDCE \cnt_sysclk1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[28]),
        .Q(cnt_sysclk1[28]));
  FDCE \cnt_sysclk1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[29]),
        .Q(cnt_sysclk1[29]));
  FDCE \cnt_sysclk1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(cnt_sysclk1[2]));
  FDCE \cnt_sysclk1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[30]),
        .Q(cnt_sysclk1[30]));
  FDCE \cnt_sysclk1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[31]),
        .Q(cnt_sysclk1[31]));
  FDCE \cnt_sysclk1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(cnt_sysclk1[3]));
  FDCE \cnt_sysclk1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(cnt_sysclk1[4]));
  FDCE \cnt_sysclk1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(cnt_sysclk1[5]));
  FDCE \cnt_sysclk1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(cnt_sysclk1[6]));
  FDCE \cnt_sysclk1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(cnt_sysclk1[7]));
  FDCE \cnt_sysclk1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[8]),
        .Q(cnt_sysclk1[8]));
  FDCE \cnt_sysclk1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk1[31]_i_1_n_0 ),
        .CLR(SR),
        .D(p_1_in[9]),
        .Q(cnt_sysclk1[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry
       (.CI(1'b0),
        .CO({cnt_sysclk20_carry_n_0,cnt_sysclk20_carry_n_1,cnt_sysclk20_carry_n_2,cnt_sysclk20_carry_n_3}),
        .CYINIT(cnt_sysclk2[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[4:1]),
        .S(cnt_sysclk2[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__0
       (.CI(cnt_sysclk20_carry_n_0),
        .CO({cnt_sysclk20_carry__0_n_0,cnt_sysclk20_carry__0_n_1,cnt_sysclk20_carry__0_n_2,cnt_sysclk20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[8:5]),
        .S(cnt_sysclk2[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__1
       (.CI(cnt_sysclk20_carry__0_n_0),
        .CO({cnt_sysclk20_carry__1_n_0,cnt_sysclk20_carry__1_n_1,cnt_sysclk20_carry__1_n_2,cnt_sysclk20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[12:9]),
        .S(cnt_sysclk2[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__2
       (.CI(cnt_sysclk20_carry__1_n_0),
        .CO({cnt_sysclk20_carry__2_n_0,cnt_sysclk20_carry__2_n_1,cnt_sysclk20_carry__2_n_2,cnt_sysclk20_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[16:13]),
        .S(cnt_sysclk2[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__3
       (.CI(cnt_sysclk20_carry__2_n_0),
        .CO({cnt_sysclk20_carry__3_n_0,cnt_sysclk20_carry__3_n_1,cnt_sysclk20_carry__3_n_2,cnt_sysclk20_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[20:17]),
        .S(cnt_sysclk2[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__4
       (.CI(cnt_sysclk20_carry__3_n_0),
        .CO({cnt_sysclk20_carry__4_n_0,cnt_sysclk20_carry__4_n_1,cnt_sysclk20_carry__4_n_2,cnt_sysclk20_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[24:21]),
        .S(cnt_sysclk2[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__5
       (.CI(cnt_sysclk20_carry__4_n_0),
        .CO({cnt_sysclk20_carry__5_n_0,cnt_sysclk20_carry__5_n_1,cnt_sysclk20_carry__5_n_2,cnt_sysclk20_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[28:25]),
        .S(cnt_sysclk2[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__6
       (.CI(cnt_sysclk20_carry__5_n_0),
        .CO({NLW_cnt_sysclk20_carry__6_CO_UNCONNECTED[3:2],cnt_sysclk20_carry__6_n_2,cnt_sysclk20_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_sysclk20_carry__6_O_UNCONNECTED[3],cnt_sysclk20[31:29]}),
        .S({1'b0,cnt_sysclk2[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_sysclk2[0]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk2[0]),
        .O(\cnt_sysclk2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[10]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[10]),
        .O(\cnt_sysclk2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[11]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[11]),
        .O(\cnt_sysclk2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[12]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[12]),
        .O(\cnt_sysclk2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[13]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[13]),
        .O(\cnt_sysclk2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[14]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[14]),
        .O(\cnt_sysclk2[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[15]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[15]),
        .O(\cnt_sysclk2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[16]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[16]),
        .O(\cnt_sysclk2[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[17]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[17]),
        .O(\cnt_sysclk2[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[18]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[18]),
        .O(\cnt_sysclk2[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[19]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[19]),
        .O(\cnt_sysclk2[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[1]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[1]),
        .O(\cnt_sysclk2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[20]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[20]),
        .O(\cnt_sysclk2[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[21]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[21]),
        .O(\cnt_sysclk2[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[22]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[22]),
        .O(\cnt_sysclk2[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[23]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[23]),
        .O(\cnt_sysclk2[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[24]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[24]),
        .O(\cnt_sysclk2[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[25]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[25]),
        .O(\cnt_sysclk2[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[26]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[26]),
        .O(\cnt_sysclk2[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[27]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[27]),
        .O(\cnt_sysclk2[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[28]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[28]),
        .O(\cnt_sysclk2[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[29]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[29]),
        .O(\cnt_sysclk2[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[2]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[2]),
        .O(\cnt_sysclk2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[30]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[30]),
        .O(\cnt_sysclk2[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_sysclk2[31]_i_1 
       (.I0(Q[1]),
        .I1(run_reg_n_0),
        .O(\cnt_sysclk2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[31]_i_2 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[31]),
        .O(\cnt_sysclk2[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[3]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[3]),
        .O(\cnt_sysclk2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[4]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[4]),
        .O(\cnt_sysclk2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[5]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[5]),
        .O(\cnt_sysclk2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[6]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[6]),
        .O(\cnt_sysclk2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[7]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[7]),
        .O(\cnt_sysclk2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[8]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[8]),
        .O(\cnt_sysclk2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk2[9]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(cnt_sysclk20[9]),
        .O(\cnt_sysclk2[9]_i_1_n_0 ));
  FDCE \cnt_sysclk2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[0]_i_1_n_0 ),
        .Q(cnt_sysclk2[0]));
  FDCE \cnt_sysclk2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[10]_i_1_n_0 ),
        .Q(cnt_sysclk2[10]));
  FDCE \cnt_sysclk2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[11]_i_1_n_0 ),
        .Q(cnt_sysclk2[11]));
  FDCE \cnt_sysclk2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[12]_i_1_n_0 ),
        .Q(cnt_sysclk2[12]));
  FDCE \cnt_sysclk2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[13]_i_1_n_0 ),
        .Q(cnt_sysclk2[13]));
  FDCE \cnt_sysclk2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[14]_i_1_n_0 ),
        .Q(cnt_sysclk2[14]));
  FDCE \cnt_sysclk2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[15]_i_1_n_0 ),
        .Q(cnt_sysclk2[15]));
  FDCE \cnt_sysclk2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[16]_i_1_n_0 ),
        .Q(cnt_sysclk2[16]));
  FDCE \cnt_sysclk2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[17]_i_1_n_0 ),
        .Q(cnt_sysclk2[17]));
  FDCE \cnt_sysclk2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[18]_i_1_n_0 ),
        .Q(cnt_sysclk2[18]));
  FDCE \cnt_sysclk2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[19]_i_1_n_0 ),
        .Q(cnt_sysclk2[19]));
  FDCE \cnt_sysclk2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[1]_i_1_n_0 ),
        .Q(cnt_sysclk2[1]));
  FDCE \cnt_sysclk2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[20]_i_1_n_0 ),
        .Q(cnt_sysclk2[20]));
  FDCE \cnt_sysclk2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[21]_i_1_n_0 ),
        .Q(cnt_sysclk2[21]));
  FDCE \cnt_sysclk2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[22]_i_1_n_0 ),
        .Q(cnt_sysclk2[22]));
  FDCE \cnt_sysclk2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[23]_i_1_n_0 ),
        .Q(cnt_sysclk2[23]));
  FDCE \cnt_sysclk2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[24]_i_1_n_0 ),
        .Q(cnt_sysclk2[24]));
  FDCE \cnt_sysclk2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[25]_i_1_n_0 ),
        .Q(cnt_sysclk2[25]));
  FDCE \cnt_sysclk2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[26]_i_1_n_0 ),
        .Q(cnt_sysclk2[26]));
  FDCE \cnt_sysclk2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[27]_i_1_n_0 ),
        .Q(cnt_sysclk2[27]));
  FDCE \cnt_sysclk2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[28]_i_1_n_0 ),
        .Q(cnt_sysclk2[28]));
  FDCE \cnt_sysclk2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[29]_i_1_n_0 ),
        .Q(cnt_sysclk2[29]));
  FDCE \cnt_sysclk2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[2]_i_1_n_0 ),
        .Q(cnt_sysclk2[2]));
  FDCE \cnt_sysclk2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[30]_i_1_n_0 ),
        .Q(cnt_sysclk2[30]));
  FDCE \cnt_sysclk2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[31]_i_2_n_0 ),
        .Q(cnt_sysclk2[31]));
  FDCE \cnt_sysclk2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[3]_i_1_n_0 ),
        .Q(cnt_sysclk2[3]));
  FDCE \cnt_sysclk2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[4]_i_1_n_0 ),
        .Q(cnt_sysclk2[4]));
  FDCE \cnt_sysclk2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[5]_i_1_n_0 ),
        .Q(cnt_sysclk2[5]));
  FDCE \cnt_sysclk2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[6]_i_1_n_0 ),
        .Q(cnt_sysclk2[6]));
  FDCE \cnt_sysclk2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[7]_i_1_n_0 ),
        .Q(cnt_sysclk2[7]));
  FDCE \cnt_sysclk2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[8]_i_1_n_0 ),
        .Q(cnt_sysclk2[8]));
  FDCE \cnt_sysclk2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\cnt_sysclk2[31]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_sysclk2[9]_i_1_n_0 ),
        .Q(cnt_sysclk2[9]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \csec[0]_i_1 
       (.I0(\lap_csec_reg_n_0_[0] ),
        .I1(mode),
        .I2(\csec_mem_reg_n_0_[0] ),
        .O(\csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \csec[1]_i_1 
       (.I0(\lap_csec_reg_n_0_[1] ),
        .I1(mode),
        .I2(\csec_mem_reg_n_0_[1] ),
        .O(\csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \csec[2]_i_1 
       (.I0(\lap_csec_reg_n_0_[2] ),
        .I1(mode),
        .I2(\csec_mem_reg_n_0_[2] ),
        .O(\csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \csec[3]_i_1 
       (.I0(\lap_csec_reg_n_0_[3] ),
        .I1(mode),
        .I2(\csec_mem_reg_n_0_[3] ),
        .O(\csec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \csec[4]_i_1 
       (.I0(\lap_csec_reg_n_0_[4] ),
        .I1(mode),
        .I2(\csec_mem_reg_n_0_[4] ),
        .O(\csec[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \csec[5]_i_1 
       (.I0(\lap_csec_reg_n_0_[5] ),
        .I1(mode),
        .I2(\csec_mem_reg_n_0_[5] ),
        .O(\csec[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \csec[6]_i_1 
       (.I0(\lap_csec_reg_n_0_[6] ),
        .I1(mode),
        .I2(\csec_mem_reg_n_0_[6] ),
        .O(\csec[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400000004)) 
    \csec_mem[0]_i_1 
       (.I0(\csec_mem_reg_n_0_[0] ),
        .I1(run_reg_n_0),
        .I2(\csec_mem_reg_n_0_[4] ),
        .I3(\csec_mem_reg_n_0_[3] ),
        .I4(\csec_mem_reg_n_0_[2] ),
        .I5(\csec_mem[0]_i_2_n_0 ),
        .O(\csec_mem[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \csec_mem[0]_i_2 
       (.I0(\csec_mem_reg_n_0_[5] ),
        .I1(\csec_mem_reg_n_0_[6] ),
        .O(\csec_mem[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0028282828282828)) 
    \csec_mem[1]_i_1 
       (.I0(run_reg_n_0),
        .I1(\csec_mem_reg_n_0_[0] ),
        .I2(\csec_mem_reg_n_0_[1] ),
        .I3(\csec_mem[1]_i_2_n_0 ),
        .I4(\csec_mem_reg_n_0_[5] ),
        .I5(\csec_mem_reg_n_0_[6] ),
        .O(\csec_mem[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \csec_mem[1]_i_2 
       (.I0(\csec_mem_reg_n_0_[4] ),
        .I1(\csec_mem_reg_n_0_[3] ),
        .I2(\csec_mem_reg_n_0_[2] ),
        .O(\csec_mem[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0070707070000000)) 
    \csec_mem[2]_i_1 
       (.I0(\csec_mem_reg_n_0_[6] ),
        .I1(\csec_mem_reg_n_0_[5] ),
        .I2(run_reg_n_0),
        .I3(\csec_mem_reg_n_0_[1] ),
        .I4(\csec_mem_reg_n_0_[0] ),
        .I5(\csec_mem_reg_n_0_[2] ),
        .O(\csec_mem[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \csec_mem[3]_i_1 
       (.I0(\csec_mem[4]_i_2_n_0 ),
        .I1(\csec_mem_reg_n_0_[2] ),
        .I2(\csec_mem_reg_n_0_[0] ),
        .I3(\csec_mem_reg_n_0_[1] ),
        .I4(\csec_mem_reg_n_0_[3] ),
        .O(\csec_mem[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \csec_mem[4]_i_1 
       (.I0(\csec_mem_reg_n_0_[2] ),
        .I1(\csec_mem_reg_n_0_[0] ),
        .I2(\csec_mem_reg_n_0_[1] ),
        .I3(\csec_mem_reg_n_0_[3] ),
        .I4(\csec_mem[4]_i_2_n_0 ),
        .I5(\csec_mem_reg_n_0_[4] ),
        .O(\csec_mem[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \csec_mem[4]_i_2 
       (.I0(\csec_mem_reg_n_0_[6] ),
        .I1(\csec_mem_reg_n_0_[5] ),
        .I2(run_reg_n_0),
        .O(\csec_mem[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h73000F00)) 
    \csec_mem[5]_i_1 
       (.I0(\csec_mem_reg_n_0_[6] ),
        .I1(\csec_mem[6]_i_3_n_0 ),
        .I2(\csec_mem[6]_i_4_n_0 ),
        .I3(run_reg_n_0),
        .I4(\csec_mem_reg_n_0_[5] ),
        .O(\csec_mem[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \csec_mem[6]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(Q[1]),
        .O(csec_mem));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5F003000)) 
    \csec_mem[6]_i_2 
       (.I0(\csec_mem[6]_i_3_n_0 ),
        .I1(\csec_mem[6]_i_4_n_0 ),
        .I2(\csec_mem_reg_n_0_[5] ),
        .I3(run_reg_n_0),
        .I4(\csec_mem_reg_n_0_[6] ),
        .O(\csec_mem[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \csec_mem[6]_i_3 
       (.I0(\csec_mem_reg_n_0_[2] ),
        .I1(\csec_mem_reg_n_0_[3] ),
        .I2(\csec_mem_reg_n_0_[4] ),
        .I3(\csec_mem_reg_n_0_[1] ),
        .I4(\csec_mem_reg_n_0_[0] ),
        .O(\csec_mem[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \csec_mem[6]_i_4 
       (.I0(\csec_mem_reg_n_0_[3] ),
        .I1(\csec_mem_reg_n_0_[1] ),
        .I2(\csec_mem_reg_n_0_[0] ),
        .I3(\csec_mem_reg_n_0_[2] ),
        .I4(\csec_mem_reg_n_0_[4] ),
        .O(\csec_mem[6]_i_4_n_0 ));
  FDCE \csec_mem_reg[0] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(\csec_mem[0]_i_1_n_0 ),
        .Q(\csec_mem_reg_n_0_[0] ));
  FDCE \csec_mem_reg[1] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(\csec_mem[1]_i_1_n_0 ),
        .Q(\csec_mem_reg_n_0_[1] ));
  FDCE \csec_mem_reg[2] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(\csec_mem[2]_i_1_n_0 ),
        .Q(\csec_mem_reg_n_0_[2] ));
  FDCE \csec_mem_reg[3] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(\csec_mem[3]_i_1_n_0 ),
        .Q(\csec_mem_reg_n_0_[3] ));
  FDCE \csec_mem_reg[4] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(\csec_mem[4]_i_1_n_0 ),
        .Q(\csec_mem_reg_n_0_[4] ));
  FDCE \csec_mem_reg[5] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(\csec_mem[5]_i_1_n_0 ),
        .Q(\csec_mem_reg_n_0_[5] ));
  FDCE \csec_mem_reg[6] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(\csec_mem[6]_i_2_n_0 ),
        .Q(\csec_mem_reg_n_0_[6] ));
  FDCE \csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\csec[0]_i_1_n_0 ),
        .Q(data2[16]));
  FDCE \csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\csec[1]_i_1_n_0 ),
        .Q(data2[17]));
  FDCE \csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\csec[2]_i_1_n_0 ),
        .Q(data2[18]));
  FDCE \csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\csec[3]_i_1_n_0 ),
        .Q(data2[19]));
  FDCE \csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\csec[4]_i_1_n_0 ),
        .Q(data2[20]));
  FDCE \csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\csec[5]_i_1_n_0 ),
        .Q(data2[21]));
  FDCE \csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\csec[6]_i_1_n_0 ),
        .Q(data2[22]));
  LUT6 #(
    .INIT(64'h4444444400000004)) 
    \lap_csec[0]_i_1 
       (.I0(\lap_csec_reg_n_0_[0] ),
        .I1(\lap_csec[2]_i_2_n_0 ),
        .I2(\lap_csec_reg_n_0_[4] ),
        .I3(\lap_csec_reg_n_0_[3] ),
        .I4(\lap_csec_reg_n_0_[2] ),
        .I5(\lap_csec[0]_i_2_n_0 ),
        .O(\lap_csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \lap_csec[0]_i_2 
       (.I0(\lap_csec_reg_n_0_[5] ),
        .I1(\lap_csec_reg_n_0_[6] ),
        .O(\lap_csec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0028282828282828)) 
    \lap_csec[1]_i_1 
       (.I0(\lap_csec[2]_i_2_n_0 ),
        .I1(\lap_csec_reg_n_0_[0] ),
        .I2(\lap_csec_reg_n_0_[1] ),
        .I3(\lap_csec[1]_i_2_n_0 ),
        .I4(\lap_csec_reg_n_0_[5] ),
        .I5(\lap_csec_reg_n_0_[6] ),
        .O(\lap_csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \lap_csec[1]_i_2 
       (.I0(\lap_csec_reg_n_0_[4] ),
        .I1(\lap_csec_reg_n_0_[3] ),
        .I2(\lap_csec_reg_n_0_[2] ),
        .O(\lap_csec[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h002A2A2A2A000000)) 
    \lap_csec[2]_i_1 
       (.I0(\lap_csec[2]_i_2_n_0 ),
        .I1(\lap_csec_reg_n_0_[6] ),
        .I2(\lap_csec_reg_n_0_[5] ),
        .I3(\lap_csec_reg_n_0_[1] ),
        .I4(\lap_csec_reg_n_0_[0] ),
        .I5(\lap_csec_reg_n_0_[2] ),
        .O(\lap_csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_csec[2]_i_2 
       (.I0(run_reg_n_0),
        .I1(Q[1]),
        .O(\lap_csec[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_csec[3]_i_1 
       (.I0(\lap_csec[4]_i_2_n_0 ),
        .I1(\lap_csec_reg_n_0_[2] ),
        .I2(\lap_csec_reg_n_0_[0] ),
        .I3(\lap_csec_reg_n_0_[1] ),
        .I4(\lap_csec_reg_n_0_[3] ),
        .O(\lap_csec[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \lap_csec[4]_i_1 
       (.I0(\lap_csec_reg_n_0_[2] ),
        .I1(\lap_csec_reg_n_0_[0] ),
        .I2(\lap_csec_reg_n_0_[1] ),
        .I3(\lap_csec_reg_n_0_[3] ),
        .I4(\lap_csec[4]_i_2_n_0 ),
        .I5(\lap_csec_reg_n_0_[4] ),
        .O(\lap_csec[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \lap_csec[4]_i_2 
       (.I0(Q[1]),
        .I1(run_reg_n_0),
        .I2(\lap_csec_reg_n_0_[6] ),
        .I3(\lap_csec_reg_n_0_[5] ),
        .O(\lap_csec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00730000000F0000)) 
    \lap_csec[5]_i_1 
       (.I0(\lap_csec_reg_n_0_[6] ),
        .I1(\lap_csec[6]_i_3_n_0 ),
        .I2(\lap_csec[6]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(run_reg_n_0),
        .I5(\lap_csec_reg_n_0_[5] ),
        .O(\lap_csec[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \lap_csec[6]_i_1 
       (.I0(lap_sec0_carry__2_n_1),
        .I1(run_reg_n_0),
        .I2(Q[1]),
        .O(lap_csec));
  LUT6 #(
    .INIT(64'h000053F000000000)) 
    \lap_csec[6]_i_2 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec[6]_i_4_n_0 ),
        .I2(\lap_csec_reg_n_0_[6] ),
        .I3(\lap_csec_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(run_reg_n_0),
        .O(\lap_csec[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \lap_csec[6]_i_3 
       (.I0(\lap_csec_reg_n_0_[2] ),
        .I1(\lap_csec_reg_n_0_[3] ),
        .I2(\lap_csec_reg_n_0_[4] ),
        .I3(\lap_csec_reg_n_0_[1] ),
        .I4(\lap_csec_reg_n_0_[0] ),
        .O(\lap_csec[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \lap_csec[6]_i_4 
       (.I0(\lap_csec_reg_n_0_[3] ),
        .I1(\lap_csec_reg_n_0_[1] ),
        .I2(\lap_csec_reg_n_0_[0] ),
        .I3(\lap_csec_reg_n_0_[2] ),
        .I4(\lap_csec_reg_n_0_[4] ),
        .O(\lap_csec[6]_i_4_n_0 ));
  FDCE \lap_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_csec[0]_i_1_n_0 ),
        .Q(\lap_csec_reg_n_0_[0] ));
  FDCE \lap_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_csec[1]_i_1_n_0 ),
        .Q(\lap_csec_reg_n_0_[1] ));
  FDCE \lap_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_csec[2]_i_1_n_0 ),
        .Q(\lap_csec_reg_n_0_[2] ));
  FDCE \lap_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_csec[3]_i_1_n_0 ),
        .Q(\lap_csec_reg_n_0_[3] ));
  FDCE \lap_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_csec[4]_i_1_n_0 ),
        .Q(\lap_csec_reg_n_0_[4] ));
  FDCE \lap_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_csec[5]_i_1_n_0 ),
        .Q(\lap_csec_reg_n_0_[5] ));
  FDCE \lap_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_csec[6]_i_2_n_0 ),
        .Q(\lap_csec_reg_n_0_[6] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lap_sec0_carry
       (.CI(1'b0),
        .CO({lap_sec0_carry_n_0,lap_sec0_carry_n_1,lap_sec0_carry_n_2,lap_sec0_carry_n_3}),
        .CYINIT(lap_sec0_carry_i_1_n_0),
        .DI({lap_sec0_carry_i_2_n_0,lap_sec0_carry_i_3_n_0,1'b0,1'b0}),
        .O(NLW_lap_sec0_carry_O_UNCONNECTED[3:0]),
        .S({lap_sec0_carry_i_4_n_0,lap_sec0_carry_i_5_n_0,lap_sec0_carry_i_6_n_0,lap_sec0_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lap_sec0_carry__0
       (.CI(lap_sec0_carry_n_0),
        .CO({lap_sec0_carry__0_n_0,lap_sec0_carry__0_n_1,lap_sec0_carry__0_n_2,lap_sec0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_sysclk2[15],lap_sec0_carry__0_i_1_n_0,lap_sec0_carry__0_i_2_n_0}),
        .O(NLW_lap_sec0_carry__0_O_UNCONNECTED[3:0]),
        .S({lap_sec0_carry__0_i_3_n_0,lap_sec0_carry__0_i_4_n_0,lap_sec0_carry__0_i_5_n_0,lap_sec0_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    lap_sec0_carry__0_i_1
       (.I0(cnt_sysclk2[12]),
        .I1(cnt_sysclk2[13]),
        .O(lap_sec0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_sec0_carry__0_i_2
       (.I0(cnt_sysclk2[10]),
        .I1(cnt_sysclk2[11]),
        .O(lap_sec0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_sec0_carry__0_i_3
       (.I0(cnt_sysclk2[16]),
        .I1(cnt_sysclk2[17]),
        .O(lap_sec0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    lap_sec0_carry__0_i_4
       (.I0(cnt_sysclk2[14]),
        .I1(cnt_sysclk2[15]),
        .O(lap_sec0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry__0_i_5
       (.I0(cnt_sysclk2[12]),
        .I1(cnt_sysclk2[13]),
        .O(lap_sec0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry__0_i_6
       (.I0(cnt_sysclk2[10]),
        .I1(cnt_sysclk2[11]),
        .O(lap_sec0_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lap_sec0_carry__1
       (.CI(lap_sec0_carry__0_n_0),
        .CO({lap_sec0_carry__1_n_0,lap_sec0_carry__1_n_1,lap_sec0_carry__1_n_2,lap_sec0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({lap_sec0_carry__1_i_1_n_0,lap_sec0_carry__1_i_2_n_0,lap_sec0_carry__1_i_3_n_0,1'b0}),
        .O(NLW_lap_sec0_carry__1_O_UNCONNECTED[3:0]),
        .S({lap_sec0_carry__1_i_4_n_0,lap_sec0_carry__1_i_5_n_0,lap_sec0_carry__1_i_6_n_0,lap_sec0_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    lap_sec0_carry__1_i_1
       (.I0(cnt_sysclk2[24]),
        .I1(cnt_sysclk2[25]),
        .O(lap_sec0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_sec0_carry__1_i_2
       (.I0(cnt_sysclk2[22]),
        .I1(cnt_sysclk2[23]),
        .O(lap_sec0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_sec0_carry__1_i_3
       (.I0(cnt_sysclk2[20]),
        .I1(cnt_sysclk2[21]),
        .O(lap_sec0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry__1_i_4
       (.I0(cnt_sysclk2[24]),
        .I1(cnt_sysclk2[25]),
        .O(lap_sec0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry__1_i_5
       (.I0(cnt_sysclk2[22]),
        .I1(cnt_sysclk2[23]),
        .O(lap_sec0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry__1_i_6
       (.I0(cnt_sysclk2[20]),
        .I1(cnt_sysclk2[21]),
        .O(lap_sec0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_sec0_carry__1_i_7
       (.I0(cnt_sysclk2[18]),
        .I1(cnt_sysclk2[19]),
        .O(lap_sec0_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lap_sec0_carry__2
       (.CI(lap_sec0_carry__1_n_0),
        .CO({NLW_lap_sec0_carry__2_CO_UNCONNECTED[3],lap_sec0_carry__2_n_1,lap_sec0_carry__2_n_2,lap_sec0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,lap_sec0_carry__2_i_1_n_0,lap_sec0_carry__2_i_2_n_0,lap_sec0_carry__2_i_3_n_0}),
        .O(NLW_lap_sec0_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,lap_sec0_carry__2_i_4_n_0,lap_sec0_carry__2_i_5_n_0,lap_sec0_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    lap_sec0_carry__2_i_1
       (.I0(cnt_sysclk2[30]),
        .I1(cnt_sysclk2[31]),
        .O(lap_sec0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_sec0_carry__2_i_2
       (.I0(cnt_sysclk2[28]),
        .I1(cnt_sysclk2[29]),
        .O(lap_sec0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_sec0_carry__2_i_3
       (.I0(cnt_sysclk2[26]),
        .I1(cnt_sysclk2[27]),
        .O(lap_sec0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry__2_i_4
       (.I0(cnt_sysclk2[30]),
        .I1(cnt_sysclk2[31]),
        .O(lap_sec0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry__2_i_5
       (.I0(cnt_sysclk2[28]),
        .I1(cnt_sysclk2[29]),
        .O(lap_sec0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry__2_i_6
       (.I0(cnt_sysclk2[26]),
        .I1(cnt_sysclk2[27]),
        .O(lap_sec0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_sec0_carry_i_1
       (.I0(cnt_sysclk2[0]),
        .I1(cnt_sysclk2[1]),
        .O(lap_sec0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_sec0_carry_i_2
       (.I0(cnt_sysclk2[8]),
        .I1(cnt_sysclk2[9]),
        .O(lap_sec0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_sec0_carry_i_3
       (.I0(cnt_sysclk2[6]),
        .I1(cnt_sysclk2[7]),
        .O(lap_sec0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    lap_sec0_carry_i_4
       (.I0(cnt_sysclk2[9]),
        .I1(cnt_sysclk2[8]),
        .O(lap_sec0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_sec0_carry_i_5
       (.I0(cnt_sysclk2[6]),
        .I1(cnt_sysclk2[7]),
        .O(lap_sec0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_sec0_carry_i_6
       (.I0(cnt_sysclk2[4]),
        .I1(cnt_sysclk2[5]),
        .O(lap_sec0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_sec0_carry_i_7
       (.I0(cnt_sysclk2[2]),
        .I1(cnt_sysclk2[3]),
        .O(lap_sec0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h08080000FF000000)) 
    \lap_sec[0]_i_1 
       (.I0(\lap_sec[0]_i_2_n_0 ),
        .I1(run_reg_n_0),
        .I2(Q[1]),
        .I3(\lap_sec[1]_i_2_n_0 ),
        .I4(\lap_sec[0]_i_3_n_0 ),
        .I5(\lap_sec_reg_n_0_[0] ),
        .O(\lap_sec[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFFFFFF)) 
    \lap_sec[0]_i_2 
       (.I0(\lap_sec[2]_i_4_n_0 ),
        .I1(\lap_csec_reg_n_0_[2] ),
        .I2(\lap_csec_reg_n_0_[3] ),
        .I3(\lap_csec_reg_n_0_[4] ),
        .I4(\lap_csec_reg_n_0_[6] ),
        .I5(\lap_csec_reg_n_0_[5] ),
        .O(\lap_sec[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h1FFFFFFF)) 
    \lap_sec[0]_i_3 
       (.I0(\lap_sec_reg_n_0_[2] ),
        .I1(\lap_sec_reg_n_0_[1] ),
        .I2(\lap_sec_reg_n_0_[3] ),
        .I3(\lap_sec_reg_n_0_[4] ),
        .I4(\lap_sec_reg_n_0_[5] ),
        .O(\lap_sec[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \lap_sec[1]_i_1 
       (.I0(\lap_sec[1]_i_2_n_0 ),
        .I1(\lap_sec[1]_i_3_n_0 ),
        .I2(\lap_sec[1]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(run_reg_n_0),
        .I5(\lap_sec_reg_n_0_[1] ),
        .O(\lap_sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \lap_sec[1]_i_2 
       (.I0(\lap_csec_reg_n_0_[5] ),
        .I1(\lap_csec_reg_n_0_[6] ),
        .I2(run_reg_n_0),
        .I3(Q[1]),
        .I4(\lap_csec[6]_i_3_n_0 ),
        .O(\lap_sec[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \lap_sec[1]_i_3 
       (.I0(\lap_sec_reg_n_0_[1] ),
        .I1(\lap_sec_reg_n_0_[0] ),
        .I2(\lap_sec_reg_n_0_[2] ),
        .I3(\lap_sec_reg_n_0_[5] ),
        .I4(\lap_sec_reg_n_0_[4] ),
        .I5(\lap_sec_reg_n_0_[3] ),
        .O(\lap_sec[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0CCC0C0DCDDDCDC)) 
    \lap_sec[1]_i_4 
       (.I0(\lap_sec_reg_n_0_[2] ),
        .I1(\lap_sec[2]_i_3_n_0 ),
        .I2(\lap_csec[0]_i_2_n_0 ),
        .I3(\lap_csec[1]_i_2_n_0 ),
        .I4(\lap_sec[2]_i_4_n_0 ),
        .I5(\lap_sec_reg_n_0_[0] ),
        .O(\lap_sec[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08080000FF000000)) 
    \lap_sec[2]_i_1 
       (.I0(\lap_sec[2]_i_2_n_0 ),
        .I1(run_reg_n_0),
        .I2(Q[1]),
        .I3(\lap_sec[5]_i_3_n_0 ),
        .I4(\lap_sec[2]_i_3_n_0 ),
        .I5(\lap_sec_reg_n_0_[2] ),
        .O(\lap_sec[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF7FFF7FFF)) 
    \lap_sec[2]_i_2 
       (.I0(\lap_sec_reg_n_0_[1] ),
        .I1(\lap_sec_reg_n_0_[0] ),
        .I2(\lap_csec_reg_n_0_[5] ),
        .I3(\lap_csec_reg_n_0_[6] ),
        .I4(\lap_csec[1]_i_2_n_0 ),
        .I5(\lap_sec[2]_i_4_n_0 ),
        .O(\lap_sec[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \lap_sec[2]_i_3 
       (.I0(\lap_sec_reg_n_0_[5] ),
        .I1(\lap_sec_reg_n_0_[4] ),
        .I2(\lap_sec_reg_n_0_[3] ),
        .O(\lap_sec[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \lap_sec[2]_i_4 
       (.I0(\lap_csec_reg_n_0_[0] ),
        .I1(\lap_csec_reg_n_0_[1] ),
        .O(\lap_sec[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20202020FF000000)) 
    \lap_sec[3]_i_1 
       (.I0(\lap_sec[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(run_reg_n_0),
        .I3(\lap_sec[5]_i_3_n_0 ),
        .I4(\lap_sec_reg_n_0_[2] ),
        .I5(\lap_sec_reg_n_0_[3] ),
        .O(\lap_sec[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABAB2ABBBBBBBB)) 
    \lap_sec[3]_i_2 
       (.I0(\lap_sec[3]_i_3_n_0 ),
        .I1(\lap_sec_reg_n_0_[2] ),
        .I2(\lap_sec_reg_n_0_[0] ),
        .I3(\lap_sec[5]_i_5_n_0 ),
        .I4(\lap_csec[0]_i_2_n_0 ),
        .I5(\lap_sec_reg_n_0_[1] ),
        .O(\lap_sec[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \lap_sec[3]_i_3 
       (.I0(\lap_sec_reg_n_0_[4] ),
        .I1(\lap_sec_reg_n_0_[5] ),
        .O(\lap_sec[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0FF000000)) 
    \lap_sec[4]_i_1 
       (.I0(\lap_sec[4]_i_2_n_0 ),
        .I1(\lap_sec[5]_i_2_n_0 ),
        .I2(\lap_csec[2]_i_2_n_0 ),
        .I3(\lap_sec[5]_i_3_n_0 ),
        .I4(\lap_sec[5]_i_4_n_0 ),
        .I5(\lap_sec_reg_n_0_[4] ),
        .O(\lap_sec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF7F)) 
    \lap_sec[4]_i_2 
       (.I0(\lap_sec_reg_n_0_[2] ),
        .I1(\lap_sec_reg_n_0_[1] ),
        .I2(\lap_sec_reg_n_0_[0] ),
        .I3(\lap_csec[0]_i_2_n_0 ),
        .I4(\lap_sec[5]_i_5_n_0 ),
        .I5(\lap_sec_reg_n_0_[5] ),
        .O(\lap_sec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888F000CCCC0000)) 
    \lap_sec[5]_i_1 
       (.I0(\lap_sec[5]_i_2_n_0 ),
        .I1(\lap_csec[2]_i_2_n_0 ),
        .I2(\lap_sec[5]_i_3_n_0 ),
        .I3(\lap_sec[5]_i_4_n_0 ),
        .I4(\lap_sec_reg_n_0_[5] ),
        .I5(\lap_sec_reg_n_0_[4] ),
        .O(\lap_sec[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11105555FFFFFFFF)) 
    \lap_sec[5]_i_2 
       (.I0(\lap_sec_reg_n_0_[2] ),
        .I1(\lap_sec_reg_n_0_[0] ),
        .I2(\lap_sec[5]_i_5_n_0 ),
        .I3(\lap_csec[0]_i_2_n_0 ),
        .I4(\lap_sec_reg_n_0_[1] ),
        .I5(\lap_sec_reg_n_0_[3] ),
        .O(\lap_sec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lap_sec[5]_i_3 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec[2]_i_2_n_0 ),
        .I2(\lap_csec_reg_n_0_[6] ),
        .I3(\lap_csec_reg_n_0_[5] ),
        .I4(\lap_sec_reg_n_0_[1] ),
        .I5(\lap_sec_reg_n_0_[0] ),
        .O(\lap_sec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_sec[5]_i_4 
       (.I0(\lap_sec_reg_n_0_[2] ),
        .I1(\lap_sec_reg_n_0_[3] ),
        .O(\lap_sec[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \lap_sec[5]_i_5 
       (.I0(\lap_csec_reg_n_0_[4] ),
        .I1(\lap_csec_reg_n_0_[3] ),
        .I2(\lap_csec_reg_n_0_[2] ),
        .I3(\lap_csec_reg_n_0_[1] ),
        .I4(\lap_csec_reg_n_0_[0] ),
        .O(\lap_sec[5]_i_5_n_0 ));
  FDCE \lap_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_sec[0]_i_1_n_0 ),
        .Q(\lap_sec_reg_n_0_[0] ));
  FDCE \lap_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_sec[1]_i_1_n_0 ),
        .Q(\lap_sec_reg_n_0_[1] ));
  FDCE \lap_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_sec[2]_i_1_n_0 ),
        .Q(\lap_sec_reg_n_0_[2] ));
  FDCE \lap_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_sec[3]_i_1_n_0 ),
        .Q(\lap_sec_reg_n_0_[3] ));
  FDCE \lap_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_sec[4]_i_1_n_0 ),
        .Q(\lap_sec_reg_n_0_[4] ));
  FDCE \lap_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(lap_csec),
        .CLR(SR),
        .D(\lap_sec[5]_i_1_n_0 ),
        .Q(\lap_sec_reg_n_0_[5] ));
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[0]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_csec_reg_n_0_[0] ),
        .O(\lap_time[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[10]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_sec_reg_n_0_[2] ),
        .O(\lap_time[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[11]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_sec_reg_n_0_[3] ),
        .O(\lap_time[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[12]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_sec_reg_n_0_[4] ),
        .O(\lap_time[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[13]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_sec_reg_n_0_[5] ),
        .O(\lap_time[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[1]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_csec_reg_n_0_[1] ),
        .O(\lap_time[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[2]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_csec_reg_n_0_[2] ),
        .O(\lap_time[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[3]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_csec_reg_n_0_[3] ),
        .O(\lap_time[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[4]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_csec_reg_n_0_[4] ),
        .O(\lap_time[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[5]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_csec_reg_n_0_[5] ),
        .O(\lap_time[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[6]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_csec_reg_n_0_[6] ),
        .O(\lap_time[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[8]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_sec_reg_n_0_[0] ),
        .O(\lap_time[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_time[9]_i_1 
       (.I0(run_reg_n_0),
        .I1(\lap_sec_reg_n_0_[1] ),
        .O(\lap_time[9]_i_1_n_0 ));
  FDCE \lap_time_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[0]_i_1_n_0 ),
        .Q(data2[0]));
  FDCE \lap_time_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[10]_i_1_n_0 ),
        .Q(data2[10]));
  FDCE \lap_time_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[11]_i_1_n_0 ),
        .Q(data2[11]));
  FDCE \lap_time_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[12]_i_1_n_0 ),
        .Q(data2[12]));
  FDCE \lap_time_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[13]_i_1_n_0 ),
        .Q(data2[13]));
  FDCE \lap_time_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[1]_i_1_n_0 ),
        .Q(data2[1]));
  FDCE \lap_time_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[2]_i_1_n_0 ),
        .Q(data2[2]));
  FDCE \lap_time_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[3]_i_1_n_0 ),
        .Q(data2[3]));
  FDCE \lap_time_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[4]_i_1_n_0 ),
        .Q(data2[4]));
  FDCE \lap_time_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[5]_i_1_n_0 ),
        .Q(data2[5]));
  FDCE \lap_time_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[6]_i_1_n_0 ),
        .Q(data2[6]));
  FDCE \lap_time_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[8]_i_1_n_0 ),
        .Q(data2[8]));
  FDCE \lap_time_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q[1]),
        .CLR(SR),
        .D(\lap_time[9]_i_1_n_0 ),
        .Q(data2[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hF0FD0F00)) 
    mode_i_1
       (.I0(Q[1]),
        .I1(run_reg_n_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(mode),
        .O(mode_i_1_n_0));
  FDCE mode_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(mode_i_1_n_0),
        .Q(mode));
  LUT2 #(
    .INIT(4'h6)) 
    run_i_1
       (.I0(run_reg_n_0),
        .I1(Q[0]),
        .O(run_i_1_n_0));
  FDCE run_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(run_i_1_n_0),
        .Q(run_reg_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .I2(s00_axi_rdata_0_sn_1),
        .O(s00_axi_rdata[0]));
  LUT5 #(
    .INIT(32'h00000E02)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mode),
        .I4(sel0[2]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000F0CC00AA00)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(data2[0]),
        .I1(\s00_axi_rdata[29] [0]),
        .I2(\s00_axi_rdata[0]_0 ),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_10_sn_1),
        .I2(\s00_axi_rdata[29]_0 [8]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(Q[9]),
        .I1(data2[10]),
        .I2(\s00_axi_rdata[29] [9]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_11_sn_1),
        .I2(\s00_axi_rdata[29]_0 [9]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(Q[10]),
        .I1(data2[11]),
        .I2(\s00_axi_rdata[29] [10]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_12_sn_1),
        .I2(\s00_axi_rdata[29]_0 [10]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(Q[11]),
        .I1(data2[12]),
        .I2(\s00_axi_rdata[29] [11]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_13_sn_1),
        .I2(\s00_axi_rdata[29]_0 [11]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(Q[12]),
        .I1(data2[13]),
        .I2(\s00_axi_rdata[29] [12]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_16_sn_1),
        .I2(\s00_axi_rdata[29]_0 [12]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(Q[13]),
        .I1(data2[16]),
        .I2(\s00_axi_rdata[29] [13]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_17_sn_1),
        .I2(\s00_axi_rdata[29]_0 [13]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(Q[14]),
        .I1(data2[17]),
        .I2(\s00_axi_rdata[29] [14]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_18_sn_1),
        .I2(\s00_axi_rdata[29]_0 [14]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(Q[15]),
        .I1(data2[18]),
        .I2(\s00_axi_rdata[29] [15]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_19_sn_1),
        .I2(\s00_axi_rdata[29]_0 [15]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(Q[16]),
        .I1(data2[19]),
        .I2(\s00_axi_rdata[29] [16]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_1_sn_1),
        .I2(\s00_axi_rdata[29]_0 [0]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(data2[1]),
        .I2(\s00_axi_rdata[29] [1]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_20_sn_1),
        .I2(\s00_axi_rdata[29]_0 [16]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(Q[17]),
        .I1(data2[20]),
        .I2(\s00_axi_rdata[29] [17]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_21_sn_1),
        .I2(\s00_axi_rdata[29]_0 [17]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(Q[18]),
        .I1(data2[21]),
        .I2(\s00_axi_rdata[29] [18]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_22_sn_1),
        .I2(\s00_axi_rdata[29]_0 [18]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(Q[19]),
        .I1(data2[22]),
        .I2(\s00_axi_rdata[29] [19]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_24_sn_1),
        .I2(\s00_axi_rdata[29]_0 [19]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(Q[20]),
        .I1(data2[24]),
        .I2(\s00_axi_rdata[29] [20]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_25_sn_1),
        .I2(\s00_axi_rdata[29]_0 [20]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(Q[21]),
        .I1(data2[25]),
        .I2(\s00_axi_rdata[29] [21]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26] ),
        .I2(\s00_axi_rdata[29]_0 [21]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(Q[22]),
        .I1(data2[26]),
        .I2(\s00_axi_rdata[29] [22]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] ),
        .I2(\s00_axi_rdata[29]_0 [22]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(Q[23]),
        .I1(data2[27]),
        .I2(\s00_axi_rdata[29] [23]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28] ),
        .I2(\s00_axi_rdata[29]_0 [23]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(Q[24]),
        .I1(data2[28]),
        .I2(\s00_axi_rdata[29] [24]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_1 ),
        .I2(\s00_axi_rdata[29]_0 [24]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(Q[25]),
        .I1(data2[29]),
        .I2(\s00_axi_rdata[29] [25]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_2_sn_1),
        .I2(\s00_axi_rdata[29]_0 [1]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(data2[2]),
        .I2(\s00_axi_rdata[29] [2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_3_sn_1),
        .I2(\s00_axi_rdata[29]_0 [2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(Q[3]),
        .I1(data2[3]),
        .I2(\s00_axi_rdata[29] [3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_4_sn_1),
        .I2(\s00_axi_rdata[29]_0 [3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(Q[4]),
        .I1(data2[4]),
        .I2(\s00_axi_rdata[29] [4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_5_sn_1),
        .I2(\s00_axi_rdata[29]_0 [4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(Q[5]),
        .I1(data2[5]),
        .I2(\s00_axi_rdata[29] [5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_6_sn_1),
        .I2(\s00_axi_rdata[29]_0 [5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(Q[6]),
        .I1(data2[6]),
        .I2(\s00_axi_rdata[29] [6]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_8_sn_1),
        .I2(\s00_axi_rdata[29]_0 [6]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(Q[7]),
        .I1(data2[8]),
        .I2(\s00_axi_rdata[29] [7]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_9_sn_1),
        .I2(\s00_axi_rdata[29]_0 [7]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'h00000000F000CCAA)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(Q[8]),
        .I1(data2[9]),
        .I2(\s00_axi_rdata[29] [8]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sec[0]_i_1 
       (.I0(\lap_sec_reg_n_0_[0] ),
        .I1(mode),
        .I2(\sec_mem_reg_n_0_[0] ),
        .O(\sec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sec[1]_i_1 
       (.I0(\lap_sec_reg_n_0_[1] ),
        .I1(mode),
        .I2(\sec_mem_reg_n_0_[1] ),
        .O(\sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sec[2]_i_1 
       (.I0(\lap_sec_reg_n_0_[2] ),
        .I1(mode),
        .I2(\sec_mem_reg_n_0_[2] ),
        .O(\sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sec[3]_i_1 
       (.I0(\lap_sec_reg_n_0_[3] ),
        .I1(mode),
        .I2(\sec_mem_reg_n_0_[3] ),
        .O(\sec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sec[4]_i_1 
       (.I0(\lap_sec_reg_n_0_[4] ),
        .I1(mode),
        .I2(\sec_mem_reg_n_0_[4] ),
        .O(\sec[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sec[5]_i_1 
       (.I0(\lap_sec_reg_n_0_[5] ),
        .I1(mode),
        .I2(\sec_mem_reg_n_0_[5] ),
        .O(\sec[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8800F000)) 
    \sec_mem[0]_i_1 
       (.I0(\sec_mem[2]_i_3_n_0 ),
        .I1(run_reg_n_0),
        .I2(\sec_mem[1]_i_2_n_0 ),
        .I3(\sec_mem[0]_i_2_n_0 ),
        .I4(\sec_mem_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h1FFFFFFF)) 
    \sec_mem[0]_i_2 
       (.I0(\sec_mem_reg_n_0_[2] ),
        .I1(\sec_mem_reg_n_0_[1] ),
        .I2(\sec_mem_reg_n_0_[3] ),
        .I3(\sec_mem_reg_n_0_[4] ),
        .I4(\sec_mem_reg_n_0_[5] ),
        .O(\sec_mem[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \sec_mem[1]_i_1 
       (.I0(\sec_mem[1]_i_2_n_0 ),
        .I1(\sec_mem[1]_i_3_n_0 ),
        .I2(\sec_mem[1]_i_4_n_0 ),
        .I3(run_reg_n_0),
        .I4(\sec_mem_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sec_mem[1]_i_2 
       (.I0(\csec_mem_reg_n_0_[5] ),
        .I1(\csec_mem_reg_n_0_[6] ),
        .I2(run_reg_n_0),
        .I3(\csec_mem[6]_i_3_n_0 ),
        .O(\sec_mem[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \sec_mem[1]_i_3 
       (.I0(\sec_mem_reg_n_0_[1] ),
        .I1(\sec_mem_reg_n_0_[0] ),
        .I2(\sec_mem_reg_n_0_[2] ),
        .I3(\sec_mem_reg_n_0_[5] ),
        .I4(\sec_mem_reg_n_0_[4] ),
        .I5(\sec_mem_reg_n_0_[3] ),
        .O(\sec_mem[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0CCC0C0DCDDDCDC)) 
    \sec_mem[1]_i_4 
       (.I0(\sec_mem_reg_n_0_[2] ),
        .I1(\sec_mem[2]_i_4_n_0 ),
        .I2(\csec_mem[0]_i_2_n_0 ),
        .I3(\csec_mem[1]_i_2_n_0 ),
        .I4(\sec_mem[2]_i_5_n_0 ),
        .I5(\sec_mem_reg_n_0_[0] ),
        .O(\sec_mem[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE0E00000FF000000)) 
    \sec_mem[2]_i_1 
       (.I0(\sec_mem[2]_i_2_n_0 ),
        .I1(\sec_mem[2]_i_3_n_0 ),
        .I2(run_reg_n_0),
        .I3(\sec_mem[5]_i_3_n_0 ),
        .I4(\sec_mem[2]_i_4_n_0 ),
        .I5(\sec_mem_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \sec_mem[2]_i_2 
       (.I0(\sec_mem_reg_n_0_[0] ),
        .I1(\sec_mem_reg_n_0_[1] ),
        .O(\sec_mem[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFFFFFF)) 
    \sec_mem[2]_i_3 
       (.I0(\sec_mem[2]_i_5_n_0 ),
        .I1(\csec_mem_reg_n_0_[2] ),
        .I2(\csec_mem_reg_n_0_[3] ),
        .I3(\csec_mem_reg_n_0_[4] ),
        .I4(\csec_mem_reg_n_0_[6] ),
        .I5(\csec_mem_reg_n_0_[5] ),
        .O(\sec_mem[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sec_mem[2]_i_4 
       (.I0(\sec_mem_reg_n_0_[5] ),
        .I1(\sec_mem_reg_n_0_[4] ),
        .I2(\sec_mem_reg_n_0_[3] ),
        .O(\sec_mem[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sec_mem[2]_i_5 
       (.I0(\csec_mem_reg_n_0_[0] ),
        .I1(\csec_mem_reg_n_0_[1] ),
        .O(\sec_mem[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8888F000)) 
    \sec_mem[3]_i_1 
       (.I0(\sec_mem[3]_i_2_n_0 ),
        .I1(run_reg_n_0),
        .I2(\sec_mem[5]_i_3_n_0 ),
        .I3(\sec_mem_reg_n_0_[2] ),
        .I4(\sec_mem_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hABABAB2ABBBBBBBB)) 
    \sec_mem[3]_i_2 
       (.I0(\sec_mem[3]_i_3_n_0 ),
        .I1(\sec_mem_reg_n_0_[2] ),
        .I2(\sec_mem_reg_n_0_[0] ),
        .I3(\sec_mem[5]_i_5_n_0 ),
        .I4(\csec_mem[0]_i_2_n_0 ),
        .I5(\sec_mem_reg_n_0_[1] ),
        .O(\sec_mem[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sec_mem[3]_i_3 
       (.I0(\sec_mem_reg_n_0_[4] ),
        .I1(\sec_mem_reg_n_0_[5] ),
        .O(\sec_mem[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0FF000000)) 
    \sec_mem[4]_i_1 
       (.I0(\sec_mem[4]_i_2_n_0 ),
        .I1(\sec_mem[5]_i_2_n_0 ),
        .I2(run_reg_n_0),
        .I3(\sec_mem[5]_i_3_n_0 ),
        .I4(\sec_mem[5]_i_4_n_0 ),
        .I5(\sec_mem_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h00000000FFFFFF7F)) 
    \sec_mem[4]_i_2 
       (.I0(\sec_mem_reg_n_0_[2] ),
        .I1(\sec_mem_reg_n_0_[1] ),
        .I2(\sec_mem_reg_n_0_[0] ),
        .I3(\csec_mem[0]_i_2_n_0 ),
        .I4(\sec_mem[5]_i_5_n_0 ),
        .I5(\sec_mem_reg_n_0_[5] ),
        .O(\sec_mem[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888F000CCCC0000)) 
    \sec_mem[5]_i_1 
       (.I0(\sec_mem[5]_i_2_n_0 ),
        .I1(run_reg_n_0),
        .I2(\sec_mem[5]_i_3_n_0 ),
        .I3(\sec_mem[5]_i_4_n_0 ),
        .I4(\sec_mem_reg_n_0_[5] ),
        .I5(\sec_mem_reg_n_0_[4] ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h11105555FFFFFFFF)) 
    \sec_mem[5]_i_2 
       (.I0(\sec_mem_reg_n_0_[2] ),
        .I1(\sec_mem_reg_n_0_[0] ),
        .I2(\sec_mem[5]_i_5_n_0 ),
        .I3(\csec_mem[0]_i_2_n_0 ),
        .I4(\sec_mem_reg_n_0_[1] ),
        .I5(\sec_mem_reg_n_0_[3] ),
        .O(\sec_mem[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sec_mem[5]_i_3 
       (.I0(\csec_mem[6]_i_3_n_0 ),
        .I1(run_reg_n_0),
        .I2(\csec_mem_reg_n_0_[6] ),
        .I3(\csec_mem_reg_n_0_[5] ),
        .I4(\sec_mem_reg_n_0_[1] ),
        .I5(\sec_mem_reg_n_0_[0] ),
        .O(\sec_mem[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sec_mem[5]_i_4 
       (.I0(\sec_mem_reg_n_0_[2] ),
        .I1(\sec_mem_reg_n_0_[3] ),
        .O(\sec_mem[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \sec_mem[5]_i_5 
       (.I0(\csec_mem_reg_n_0_[4] ),
        .I1(\csec_mem_reg_n_0_[3] ),
        .I2(\csec_mem_reg_n_0_[2] ),
        .I3(\csec_mem_reg_n_0_[1] ),
        .I4(\csec_mem_reg_n_0_[0] ),
        .O(\sec_mem[5]_i_5_n_0 ));
  FDCE \sec_mem_reg[0] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(p_0_in[0]),
        .Q(\sec_mem_reg_n_0_[0] ));
  FDCE \sec_mem_reg[1] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(p_0_in[1]),
        .Q(\sec_mem_reg_n_0_[1] ));
  FDCE \sec_mem_reg[2] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(p_0_in[2]),
        .Q(\sec_mem_reg_n_0_[2] ));
  FDCE \sec_mem_reg[3] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(p_0_in[3]),
        .Q(\sec_mem_reg_n_0_[3] ));
  FDCE \sec_mem_reg[4] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(p_0_in[4]),
        .Q(\sec_mem_reg_n_0_[4] ));
  FDCE \sec_mem_reg[5] 
       (.C(s00_axi_aclk),
        .CE(csec_mem),
        .CLR(SR),
        .D(p_0_in[5]),
        .Q(\sec_mem_reg_n_0_[5] ));
  FDCE \sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\sec[0]_i_1_n_0 ),
        .Q(data2[24]));
  FDCE \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\sec[1]_i_1_n_0 ),
        .Q(data2[25]));
  FDCE \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\sec[2]_i_1_n_0 ),
        .Q(data2[26]));
  FDCE \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\sec[3]_i_1_n_0 ),
        .Q(data2[27]));
  FDCE \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\sec[4]_i_1_n_0 ),
        .Q(data2[28]));
  FDCE \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\sec[5]_i_1_n_0 ),
        .Q(data2[29]));
endmodule
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
