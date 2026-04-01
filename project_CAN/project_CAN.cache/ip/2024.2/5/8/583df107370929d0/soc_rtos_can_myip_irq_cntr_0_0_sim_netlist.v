// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Feb 12 08:19:40 2026
// Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_rtos_can_myip_irq_cntr_0_0_sim_netlist.v
// Design      : soc_rtos_can_myip_irq_cntr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_irq_cntr
   (s00_axi_rdata,
    irq_out,
    SR,
    Q,
    \pending_reg[7]_0 ,
    \pending_reg[7]_1 ,
    irq_in,
    \s00_axi_rdata[31] ,
    axi_araddr,
    s00_axi_aresetn,
    s00_axi_aclk);
  output [8:0]s00_axi_rdata;
  output irq_out;
  output [0:0]SR;
  input [8:0]Q;
  input [6:0]\pending_reg[7]_0 ;
  input [7:0]\pending_reg[7]_1 ;
  input [0:0]irq_in;
  input [8:0]\s00_axi_rdata[31] ;
  input [1:0]axi_araddr;
  input s00_axi_aresetn;
  input s00_axi_aclk;

  wire [7:0]PENDING;
  wire [8:0]Q;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire [0:0]irq_in;
  wire irq_out;
  wire irq_out_INST_0_i_1_n_0;
  wire irq_out_INST_0_i_2_n_0;
  wire irq_out_INST_0_i_3_n_0;
  wire [7:0]pending0;
  wire [6:0]\pending_reg[7]_0 ;
  wire [7:0]\pending_reg[7]_1 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [8:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_4_n_0 ;
  wire [8:0]\s00_axi_rdata[31] ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEFFFF)) 
    irq_out_INST_0
       (.I0(irq_out_INST_0_i_1_n_0),
        .I1(PENDING[0]),
        .I2(PENDING[1]),
        .I3(Q[1]),
        .I4(irq_out_INST_0_i_2_n_0),
        .I5(irq_out_INST_0_i_3_n_0),
        .O(irq_out));
  LUT4 #(
    .INIT(16'hF888)) 
    irq_out_INST_0_i_1
       (.I0(PENDING[2]),
        .I1(Q[2]),
        .I2(PENDING[3]),
        .I3(Q[3]),
        .O(irq_out_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    irq_out_INST_0_i_2
       (.I0(Q[4]),
        .I1(PENDING[4]),
        .O(irq_out_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    irq_out_INST_0_i_3
       (.I0(PENDING[5]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(PENDING[7]),
        .I4(Q[6]),
        .I5(PENDING[6]),
        .O(irq_out_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'h32)) 
    \pending[0]_i_1 
       (.I0(irq_in),
        .I1(\pending_reg[7]_1 [0]),
        .I2(PENDING[0]),
        .O(pending0[0]));
  LUT3 #(
    .INIT(8'h32)) 
    \pending[1]_i_1 
       (.I0(\pending_reg[7]_0 [0]),
        .I1(\pending_reg[7]_1 [1]),
        .I2(PENDING[1]),
        .O(pending0[1]));
  LUT3 #(
    .INIT(8'h32)) 
    \pending[2]_i_1 
       (.I0(\pending_reg[7]_0 [1]),
        .I1(\pending_reg[7]_1 [2]),
        .I2(PENDING[2]),
        .O(pending0[2]));
  LUT3 #(
    .INIT(8'h32)) 
    \pending[3]_i_1 
       (.I0(\pending_reg[7]_0 [2]),
        .I1(\pending_reg[7]_1 [3]),
        .I2(PENDING[3]),
        .O(pending0[3]));
  LUT3 #(
    .INIT(8'h32)) 
    \pending[4]_i_1 
       (.I0(\pending_reg[7]_0 [3]),
        .I1(\pending_reg[7]_1 [4]),
        .I2(PENDING[4]),
        .O(pending0[4]));
  LUT3 #(
    .INIT(8'h32)) 
    \pending[5]_i_1 
       (.I0(\pending_reg[7]_0 [4]),
        .I1(\pending_reg[7]_1 [5]),
        .I2(PENDING[5]),
        .O(pending0[5]));
  LUT3 #(
    .INIT(8'h32)) 
    \pending[6]_i_1 
       (.I0(\pending_reg[7]_0 [5]),
        .I1(\pending_reg[7]_1 [6]),
        .I2(PENDING[6]),
        .O(pending0[6]));
  LUT3 #(
    .INIT(8'h32)) 
    \pending[7]_i_1 
       (.I0(\pending_reg[7]_0 [6]),
        .I1(\pending_reg[7]_1 [7]),
        .I2(PENDING[7]),
        .O(pending0[7]));
  FDCE \pending_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pending0[0]),
        .Q(PENDING[0]));
  FDCE \pending_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pending0[1]),
        .Q(PENDING[1]));
  FDCE \pending_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pending0[2]),
        .Q(PENDING[2]));
  FDCE \pending_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pending0[3]),
        .Q(PENDING[3]));
  FDCE \pending_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pending0[4]),
        .Q(PENDING[4]));
  FDCE \pending_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pending0[5]),
        .Q(PENDING[5]));
  FDCE \pending_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pending0[6]),
        .Q(PENDING[6]));
  FDCE \pending_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pending0[7]),
        .Q(PENDING[7]));
  LUT6 #(
    .INIT(64'h3B383B38CBC80B08)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[31] [0]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(Q[0]),
        .I4(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I5(PENDING[0]),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'h70007777FFFFFFFF)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(PENDING[2]),
        .I2(irq_out_INST_0_i_2_n_0),
        .I3(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .I4(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .I5(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF700070007000)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(Q[6]),
        .I1(PENDING[6]),
        .I2(Q[7]),
        .I3(PENDING[7]),
        .I4(PENDING[5]),
        .I5(Q[5]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(Q[3]),
        .I1(PENDING[3]),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s00_axi_rdata[0]_INST_0_i_4 
       (.I0(Q[1]),
        .I1(PENDING[1]),
        .O(\s00_axi_rdata[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCEEEEFFCCFCFC)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(PENDING[1]),
        .I1(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I2(Q[1]),
        .I3(\s00_axi_rdata[31] [1]),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'h888A8A8A88888888)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .I1(irq_out_INST_0_i_1_n_0),
        .I2(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .I3(Q[4]),
        .I4(PENDING[4]),
        .I5(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00404440)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(PENDING[0]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(PENDING[1]),
        .I4(Q[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_rdata[1]_INST_0_i_3 
       (.I0(Q[5]),
        .I1(PENDING[5]),
        .O(\s00_axi_rdata[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAEAEA)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .I2(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .I3(Q[1]),
        .I4(PENDING[1]),
        .I5(PENDING[0]),
        .O(s00_axi_rdata[2]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(PENDING[2]),
        .I1(Q[2]),
        .I2(\s00_axi_rdata[31] [2]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .I1(Q[5]),
        .I2(PENDING[5]),
        .I3(PENDING[4]),
        .I4(Q[4]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00002A002A2A2A00)) 
    \s00_axi_rdata[2]_INST_0_i_3 
       (.I0(axi_araddr[0]),
        .I1(Q[3]),
        .I2(PENDING[3]),
        .I3(axi_araddr[1]),
        .I4(PENDING[2]),
        .I5(Q[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \s00_axi_rdata[2]_INST_0_i_4 
       (.I0(PENDING[6]),
        .I1(Q[6]),
        .I2(PENDING[7]),
        .I3(Q[7]),
        .O(\s00_axi_rdata[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(irq_out),
        .I1(Q[8]),
        .I2(\s00_axi_rdata[31] [8]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .O(s00_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(PENDING[3]),
        .I1(Q[3]),
        .I2(\s00_axi_rdata[31] [3]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .O(s00_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(PENDING[4]),
        .I1(Q[4]),
        .I2(\s00_axi_rdata[31] [4]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .O(s00_axi_rdata[4]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(PENDING[5]),
        .I1(Q[5]),
        .I2(\s00_axi_rdata[31] [5]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .O(s00_axi_rdata[5]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(PENDING[6]),
        .I1(Q[6]),
        .I2(\s00_axi_rdata[31] [6]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .O(s00_axi_rdata[6]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(PENDING[7]),
        .I1(Q[7]),
        .I2(\s00_axi_rdata[31] [7]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .O(s00_axi_rdata[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_irq_cntr
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    irq_out,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_wdata,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    irq_in,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output irq_out;
  output s00_axi_wready;
  output s00_axi_bvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [0:0]irq_in;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire [0:0]irq_in;
  wire irq_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_irq_cntr_slave_lite_v1_0_S00_AXI myip_irq_cntr_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .irq_in(irq_in),
        .irq_out(irq_out),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_irq_cntr_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    irq_out,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_wdata,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    irq_in,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [31:0]s00_axi_rdata;
  output irq_out;
  output s00_axi_wready;
  output s00_axi_bvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [0:0]irq_in;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready0__0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire [7:0]clr_irq_pulse;
  wire clr_irq_pulse1__3;
  wire \clr_irq_pulse[0]_i_1_n_0 ;
  wire \clr_irq_pulse[1]_i_1_n_0 ;
  wire \clr_irq_pulse[2]_i_1_n_0 ;
  wire \clr_irq_pulse[3]_i_1_n_0 ;
  wire \clr_irq_pulse[4]_i_1_n_0 ;
  wire \clr_irq_pulse[5]_i_1_n_0 ;
  wire \clr_irq_pulse[6]_i_1_n_0 ;
  wire \clr_irq_pulse[7]_i_1_n_0 ;
  wire inst_irq_n_10;
  wire [0:0]irq_in;
  wire irq_out;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [7:1]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
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
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire [6:0]soft_irq_pulse;
  wire \soft_irq_pulse[0]_i_1_n_0 ;
  wire \soft_irq_pulse[1]_i_1_n_0 ;
  wire \soft_irq_pulse[2]_i_1_n_0 ;
  wire \soft_irq_pulse[3]_i_1_n_0 ;
  wire \soft_irq_pulse[4]_i_1_n_0 ;
  wire \soft_irq_pulse[5]_i_1_n_0 ;
  wire \soft_irq_pulse[6]_i_1_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;

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
        .R(inst_irq_n_10));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(inst_irq_n_10));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(inst_irq_n_10));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(inst_irq_n_10));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[3]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
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
        .R(inst_irq_n_10));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(inst_irq_n_10));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(inst_irq_n_10));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
        .R(inst_irq_n_10));
  LUT6 #(
    .INIT(64'hFBFF3838C3FF0000)) 
    axi_bvalid_i_1
       (.I0(axi_awready0__0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(inst_irq_n_10));
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
        .R(inst_irq_n_10));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(inst_irq_n_10));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clr_irq_pulse[0]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[0]),
        .O(\clr_irq_pulse[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clr_irq_pulse[1]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[1]),
        .O(\clr_irq_pulse[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clr_irq_pulse[2]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[2]),
        .O(\clr_irq_pulse[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clr_irq_pulse[3]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[3]),
        .O(\clr_irq_pulse[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clr_irq_pulse[4]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[4]),
        .O(\clr_irq_pulse[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clr_irq_pulse[5]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[5]),
        .O(\clr_irq_pulse[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clr_irq_pulse[6]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[6]),
        .O(\clr_irq_pulse[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clr_irq_pulse[7]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[7]),
        .O(\clr_irq_pulse[7]_i_1_n_0 ));
  FDRE \clr_irq_pulse_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clr_irq_pulse[0]_i_1_n_0 ),
        .Q(clr_irq_pulse[0]),
        .R(inst_irq_n_10));
  FDRE \clr_irq_pulse_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clr_irq_pulse[1]_i_1_n_0 ),
        .Q(clr_irq_pulse[1]),
        .R(inst_irq_n_10));
  FDRE \clr_irq_pulse_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clr_irq_pulse[2]_i_1_n_0 ),
        .Q(clr_irq_pulse[2]),
        .R(inst_irq_n_10));
  FDRE \clr_irq_pulse_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clr_irq_pulse[3]_i_1_n_0 ),
        .Q(clr_irq_pulse[3]),
        .R(inst_irq_n_10));
  FDRE \clr_irq_pulse_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clr_irq_pulse[4]_i_1_n_0 ),
        .Q(clr_irq_pulse[4]),
        .R(inst_irq_n_10));
  FDRE \clr_irq_pulse_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clr_irq_pulse[5]_i_1_n_0 ),
        .Q(clr_irq_pulse[5]),
        .R(inst_irq_n_10));
  FDRE \clr_irq_pulse_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clr_irq_pulse[6]_i_1_n_0 ),
        .Q(clr_irq_pulse[6]),
        .R(inst_irq_n_10));
  FDRE \clr_irq_pulse_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clr_irq_pulse[7]_i_1_n_0 ),
        .Q(clr_irq_pulse[7]),
        .R(inst_irq_n_10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_irq_cntr inst_irq
       (.Q({\slv_reg0_reg_n_0_[31] ,slv_reg0,\slv_reg0_reg_n_0_[0] }),
        .SR(inst_irq_n_10),
        .axi_araddr(axi_araddr),
        .irq_in(irq_in),
        .irq_out(irq_out),
        .\pending_reg[7]_0 (soft_irq_pulse),
        .\pending_reg[7]_1 (clr_irq_pulse),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata({s00_axi_rdata[31],s00_axi_rdata[7:0]}),
        .\s00_axi_rdata[31] ({slv_reg2[31],slv_reg2[7:0]}));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg2[10]),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[10]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg2[11]),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[11]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg2[12]),
        .I1(\slv_reg0_reg_n_0_[12] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[12]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg2[13]),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[13]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg2[14]),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[14]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg2[15]),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg2[16]),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg2[17]),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg2[18]),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg2[19]),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[19]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg2[20]),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg2[21]),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg2[22]),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg2[23]),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg2[24]),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg2[25]),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg2[26]),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg2[27]),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg2[28]),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg2[29]),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[29]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg2[30]),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg2[8]),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[8]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg2[9]),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(\slv_reg0[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(inst_irq_n_10));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(inst_irq_n_10));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg2[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(p_1_in[7]));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(inst_irq_n_10));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(inst_irq_n_10));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \soft_irq_pulse[0]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[8]),
        .O(\soft_irq_pulse[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \soft_irq_pulse[1]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[9]),
        .O(\soft_irq_pulse[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \soft_irq_pulse[2]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[10]),
        .O(\soft_irq_pulse[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \soft_irq_pulse[3]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[11]),
        .O(\soft_irq_pulse[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \soft_irq_pulse[4]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[12]),
        .O(\soft_irq_pulse[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \soft_irq_pulse[5]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[13]),
        .O(\soft_irq_pulse[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \soft_irq_pulse[6]_i_1 
       (.I0(clr_irq_pulse1__3),
        .I1(s00_axi_wdata[14]),
        .O(\soft_irq_pulse[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \soft_irq_pulse[6]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awaddr[0]),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wready),
        .I5(s00_axi_wvalid),
        .O(clr_irq_pulse1__3));
  FDRE \soft_irq_pulse_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\soft_irq_pulse[0]_i_1_n_0 ),
        .Q(soft_irq_pulse[0]),
        .R(inst_irq_n_10));
  FDRE \soft_irq_pulse_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\soft_irq_pulse[1]_i_1_n_0 ),
        .Q(soft_irq_pulse[1]),
        .R(inst_irq_n_10));
  FDRE \soft_irq_pulse_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\soft_irq_pulse[2]_i_1_n_0 ),
        .Q(soft_irq_pulse[2]),
        .R(inst_irq_n_10));
  FDRE \soft_irq_pulse_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\soft_irq_pulse[3]_i_1_n_0 ),
        .Q(soft_irq_pulse[3]),
        .R(inst_irq_n_10));
  FDRE \soft_irq_pulse_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\soft_irq_pulse[4]_i_1_n_0 ),
        .Q(soft_irq_pulse[4]),
        .R(inst_irq_n_10));
  FDRE \soft_irq_pulse_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\soft_irq_pulse[5]_i_1_n_0 ),
        .Q(soft_irq_pulse[5]),
        .R(inst_irq_n_10));
  FDRE \soft_irq_pulse_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\soft_irq_pulse[6]_i_1_n_0 ),
        .Q(soft_irq_pulse[6]),
        .R(inst_irq_n_10));
endmodule

(* CHECK_LICENSE_TYPE = "soc_rtos_can_myip_irq_cntr_0_0,myip_irq_cntr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_irq_cntr,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (irq_in,
    irq_out,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
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
    s00_axi_rready);
  input [0:0]irq_in;
  output irq_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire [0:0]irq_in;
  wire irq_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_irq_cntr inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .irq_in(irq_in),
        .irq_out(irq_out),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
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
