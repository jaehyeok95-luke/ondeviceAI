// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Feb  5 10:58:44 2026
// Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user14/project_CAN/project_CAN.gen/sources_1/bd/soc_rtos_ver1/ip/soc_rtos_ver1_myip_RTOS_0_0/soc_rtos_ver1_myip_RTOS_0_0_sim_netlist.v
// Design      : soc_rtos_ver1_myip_RTOS_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_rtos_ver1_myip_RTOS_0_0,myip_RTOS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_RTOS,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module soc_rtos_ver1_myip_RTOS_0_0
   (irq_out,
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
  soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .axi_wready_reg(s00_axi_wready),
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
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "irq_latch" *) 
module soc_rtos_ver1_myip_RTOS_0_0_irq_latch
   (PEND,
    s00_axi_rdata,
    irq_out,
    E,
    s00_axi_aclk,
    \missed_cnt_reg[7]_0 ,
    pend_reg_0,
    missed_reg_0,
    Q,
    \s00_axi_rdata[31] ,
    \s00_axi_rdata[31]_0 ,
    axi_araddr);
  output PEND;
  output [9:0]s00_axi_rdata;
  output irq_out;
  input [0:0]E;
  input s00_axi_aclk;
  input \missed_cnt_reg[7]_0 ;
  input pend_reg_0;
  input missed_reg_0;
  input [9:0]Q;
  input [9:0]\s00_axi_rdata[31] ;
  input [9:0]\s00_axi_rdata[31]_0 ;
  input [1:0]axi_araddr;

  wire [0:0]E;
  wire PEND;
  wire [9:0]Q;
  wire [1:0]axi_araddr;
  wire irq_out;
  wire missed;
  wire \missed_cnt[0]_i_1_n_0 ;
  wire \missed_cnt[1]_i_1_n_0 ;
  wire \missed_cnt[2]_i_1_n_0 ;
  wire \missed_cnt[7]_i_3_n_0 ;
  wire [7:0]missed_cnt_reg;
  wire \missed_cnt_reg[7]_0 ;
  wire missed_i_1_n_0;
  wire missed_reg_0;
  wire [7:3]p_0_in__0;
  wire pend_reg_0;
  wire s00_axi_aclk;
  wire [9:0]s00_axi_rdata;
  wire [9:0]\s00_axi_rdata[31] ;
  wire [9:0]\s00_axi_rdata[31]_0 ;

  LUT2 #(
    .INIT(4'h8)) 
    irq_out_INST_0
       (.I0(PEND),
        .I1(Q[0]),
        .O(irq_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \missed_cnt[0]_i_1 
       (.I0(missed_cnt_reg[0]),
        .I1(missed_reg_0),
        .O(\missed_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \missed_cnt[1]_i_1 
       (.I0(missed_cnt_reg[1]),
        .I1(missed_cnt_reg[0]),
        .I2(missed_reg_0),
        .O(\missed_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \missed_cnt[2]_i_1 
       (.I0(missed_cnt_reg[2]),
        .I1(missed_cnt_reg[0]),
        .I2(missed_cnt_reg[1]),
        .I3(missed_reg_0),
        .O(\missed_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \missed_cnt[3]_i_1 
       (.I0(missed_cnt_reg[3]),
        .I1(missed_cnt_reg[1]),
        .I2(missed_cnt_reg[0]),
        .I3(missed_cnt_reg[2]),
        .I4(missed_reg_0),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \missed_cnt[4]_i_1 
       (.I0(missed_cnt_reg[4]),
        .I1(missed_cnt_reg[2]),
        .I2(missed_cnt_reg[0]),
        .I3(missed_cnt_reg[1]),
        .I4(missed_cnt_reg[3]),
        .I5(missed_reg_0),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \missed_cnt[5]_i_1 
       (.I0(missed_cnt_reg[5]),
        .I1(\missed_cnt[7]_i_3_n_0 ),
        .I2(missed_cnt_reg[4]),
        .I3(missed_reg_0),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \missed_cnt[6]_i_1 
       (.I0(missed_cnt_reg[6]),
        .I1(missed_cnt_reg[5]),
        .I2(missed_cnt_reg[4]),
        .I3(\missed_cnt[7]_i_3_n_0 ),
        .I4(missed_reg_0),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \missed_cnt[7]_i_2 
       (.I0(missed_cnt_reg[7]),
        .I1(missed_cnt_reg[4]),
        .I2(missed_cnt_reg[5]),
        .I3(missed_cnt_reg[6]),
        .I4(\missed_cnt[7]_i_3_n_0 ),
        .I5(missed_reg_0),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \missed_cnt[7]_i_3 
       (.I0(missed_cnt_reg[2]),
        .I1(missed_cnt_reg[0]),
        .I2(missed_cnt_reg[1]),
        .I3(missed_cnt_reg[3]),
        .O(\missed_cnt[7]_i_3_n_0 ));
  FDCE \missed_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(\missed_cnt[0]_i_1_n_0 ),
        .Q(missed_cnt_reg[0]));
  FDCE \missed_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(\missed_cnt[1]_i_1_n_0 ),
        .Q(missed_cnt_reg[1]));
  FDCE \missed_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(\missed_cnt[2]_i_1_n_0 ),
        .Q(missed_cnt_reg[2]));
  FDCE \missed_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(p_0_in__0[3]),
        .Q(missed_cnt_reg[3]));
  FDCE \missed_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(p_0_in__0[4]),
        .Q(missed_cnt_reg[4]));
  FDCE \missed_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(p_0_in__0[5]),
        .Q(missed_cnt_reg[5]));
  FDCE \missed_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(p_0_in__0[6]),
        .Q(missed_cnt_reg[6]));
  FDCE \missed_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(p_0_in__0[7]),
        .Q(missed_cnt_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    missed_i_1
       (.I0(PEND),
        .I1(missed_reg_0),
        .O(missed_i_1_n_0));
  FDCE missed_reg
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(missed_i_1_n_0),
        .Q(missed));
  FDCE pend_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\missed_cnt_reg[7]_0 ),
        .D(pend_reg_0),
        .Q(PEND));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(missed),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(\s00_axi_rdata[31]_0 [0]),
        .I4(\s00_axi_rdata[31] [0]),
        .I5(Q[0]),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[31]_0 [1]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(missed_cnt_reg[0]),
        .I4(\s00_axi_rdata[31] [1]),
        .I5(Q[1]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hF0F0CCCCFF00AAAA)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(Q[9]),
        .I1(irq_out),
        .I2(\s00_axi_rdata[31] [9]),
        .I3(\s00_axi_rdata[31]_0 [9]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[31]_0 [2]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(missed_cnt_reg[1]),
        .I4(\s00_axi_rdata[31] [2]),
        .I5(Q[2]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[31]_0 [3]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(missed_cnt_reg[2]),
        .I4(\s00_axi_rdata[31] [3]),
        .I5(Q[3]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[31]_0 [4]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(missed_cnt_reg[3]),
        .I4(\s00_axi_rdata[31] [4]),
        .I5(Q[4]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[31]_0 [5]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(missed_cnt_reg[4]),
        .I4(\s00_axi_rdata[31] [5]),
        .I5(Q[5]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[31]_0 [6]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(missed_cnt_reg[5]),
        .I4(\s00_axi_rdata[31] [6]),
        .I5(Q[6]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[31]_0 [7]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(missed_cnt_reg[6]),
        .I4(\s00_axi_rdata[31] [7]),
        .I5(Q[7]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[31]_0 [8]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(missed_cnt_reg[7]),
        .I4(\s00_axi_rdata[31] [8]),
        .I5(Q[8]),
        .O(s00_axi_rdata[8]));
endmodule

(* ORIG_REF_NAME = "myip_RTOS" *) 
module soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS
   (axi_awready_reg,
    axi_rvalid_reg,
    axi_arready_reg,
    s00_axi_rdata,
    irq_out,
    axi_wready_reg,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_rvalid_reg;
  output axi_arready_reg;
  output [31:0]s00_axi_rdata;
  output irq_out;
  output axi_wready_reg;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire axi_wready_reg;
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
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS_slave_lite_v1_0_S00_AXI myip_RTOS_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(axi_wready_reg),
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
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "myip_RTOS_slave_lite_v1_0_S00_AXI" *) 
module soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_rdata,
    irq_out,
    axi_wready_reg_0,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [31:0]s00_axi_rdata;
  output irq_out;
  output axi_wready_reg_0;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire CE;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire PEND;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[3]_i_2_n_0 ;
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
  wire axi_wready_reg_0;
  wire clr_cnt_pulse;
  wire clr_cnt_pulse_reg_n_0;
  wire clr_pend_pulse;
  wire clr_pend_pulse_reg_n_0;
  wire [31:1]count;
  wire inst_counter_n_0;
  wire inst_counter_n_11;
  wire inst_counter_n_34;
  wire irq_out;
  wire [15:0]presc_value;
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
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
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
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;

  LUT6 #(
    .INIT(64'hFFFF0FFF8888FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF00077770000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(inst_counter_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(inst_counter_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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
        .R(inst_counter_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(inst_counter_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(state_read[0]),
        .I2(s00_axi_aresetn),
        .I3(\axi_araddr[3]_i_2_n_0 ),
        .I4(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(state_read[0]),
        .I2(s00_axi_aresetn),
        .I3(\axi_araddr[3]_i_2_n_0 ),
        .I4(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[3]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .O(\axi_araddr[3]_i_2_n_0 ));
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
    .INIT(64'hFF554055FFFF4055)) 
    axi_arready_i_1
       (.I0(state_read[0]),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_rready),
        .I3(state_read[1]),
        .I4(axi_arready_reg_0),
        .I5(s00_axi_arvalid),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(inst_counter_n_0));
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
        .R(inst_counter_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(inst_counter_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
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
        .R(inst_counter_n_0));
  LUT6 #(
    .INIT(64'hFB38FF38C300FF00)) 
    axi_bvalid_i_1
       (.I0(axi_awready0__0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(s00_axi_bvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
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
        .R(inst_counter_n_0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FCCCCCCC)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(state_read[0]),
        .I3(s00_axi_arvalid),
        .I4(axi_arready_reg_0),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(inst_counter_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(axi_wready_reg_0),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(axi_wready_reg_0),
        .R(inst_counter_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    clr_cnt_pulse_i_1
       (.I0(s00_axi_wdata[2]),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready0__0),
        .I4(s00_axi_awaddr[1]),
        .I5(s00_axi_awaddr[0]),
        .O(clr_cnt_pulse));
  FDRE clr_cnt_pulse_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clr_cnt_pulse),
        .Q(clr_cnt_pulse_reg_n_0),
        .R(inst_counter_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    clr_pend_pulse_i_1
       (.I0(s00_axi_wdata[3]),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready0__0),
        .I4(s00_axi_awaddr[1]),
        .I5(s00_axi_awaddr[0]),
        .O(clr_pend_pulse));
  FDRE clr_pend_pulse_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clr_pend_pulse),
        .Q(clr_pend_pulse_reg_n_0),
        .R(inst_counter_n_0));
  soc_rtos_ver1_myip_RTOS_0_0_tick_counter inst_counter
       (.CE(CE),
        .E(inst_counter_n_11),
        .PEND(PEND),
        .Q({\slv_reg0_reg_n_0_[30] ,\slv_reg0_reg_n_0_[29] ,\slv_reg0_reg_n_0_[28] ,\slv_reg0_reg_n_0_[27] ,\slv_reg0_reg_n_0_[26] ,\slv_reg0_reg_n_0_[25] ,\slv_reg0_reg_n_0_[24] ,\slv_reg0_reg_n_0_[23] ,\slv_reg0_reg_n_0_[22] ,\slv_reg0_reg_n_0_[21] ,\slv_reg0_reg_n_0_[20] ,presc_value[15:6],slv_reg0[0]}),
        .axi_araddr(axi_araddr),
        .\count_reg[0]_0 (clr_cnt_pulse_reg_n_0),
        .\count_reg[31]_0 ({count[31],count[9:1]}),
        .pend_reg(clr_pend_pulse_reg_n_0),
        .\period_active_reg[31]_0 (slv_reg1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(inst_counter_n_0),
        .s00_axi_rdata({s00_axi_rdata[30:10],s00_axi_rdata[0]}),
        .tick_event_reg_0(inst_counter_n_34));
  soc_rtos_ver1_myip_RTOS_0_0_irq_latch inst_irq
       (.E(inst_counter_n_11),
        .PEND(PEND),
        .Q({\slv_reg0_reg_n_0_[31] ,presc_value[5:0],\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[2] ,slv_reg0[1]}),
        .axi_araddr(axi_araddr),
        .irq_out(irq_out),
        .\missed_cnt_reg[7]_0 (inst_counter_n_0),
        .missed_reg_0(clr_pend_pulse_reg_n_0),
        .pend_reg_0(inst_counter_n_34),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata({s00_axi_rdata[31],s00_axi_rdata[9:1]}),
        .\s00_axi_rdata[31] ({count[31],count[9:1]}),
        .\s00_axi_rdata[31]_0 ({slv_reg1[31],slv_reg1[9:1]}));
  soc_rtos_ver1_myip_RTOS_0_0_tick_timebase inst_timebase
       (.CE(CE),
        .Q({presc_value,slv_reg0[0]}),
        .s00_axi_aclk(s00_axi_aclk),
        .\sys_clk_reg[0]_0 (inst_counter_n_0));
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
        .Q(slv_reg0[0]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(presc_value[6]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(presc_value[7]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(presc_value[8]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(presc_value[9]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(presc_value[10]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(presc_value[11]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(presc_value[12]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(presc_value[13]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(presc_value[14]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(presc_value[15]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(presc_value[0]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(presc_value[1]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(presc_value[2]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(presc_value[3]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(presc_value[4]),
        .R(inst_counter_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(presc_value[5]),
        .R(inst_counter_n_0));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(inst_counter_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(inst_counter_n_0));
endmodule

(* ORIG_REF_NAME = "tick_counter" *) 
module soc_rtos_ver1_myip_RTOS_0_0_tick_counter
   (s00_axi_aresetn_0,
    \count_reg[31]_0 ,
    E,
    s00_axi_rdata,
    tick_event_reg_0,
    Q,
    s00_axi_aclk,
    PEND,
    pend_reg,
    s00_axi_aresetn,
    \count_reg[0]_0 ,
    CE,
    \period_active_reg[31]_0 ,
    axi_araddr);
  output s00_axi_aresetn_0;
  output [9:0]\count_reg[31]_0 ;
  output [0:0]E;
  output [21:0]s00_axi_rdata;
  output tick_event_reg_0;
  input [21:0]Q;
  input s00_axi_aclk;
  input PEND;
  input pend_reg;
  input s00_axi_aresetn;
  input \count_reg[0]_0 ;
  input CE;
  input [31:0]\period_active_reg[31]_0 ;
  input [1:0]axi_araddr;

  wire CE;
  wire [0:0]E;
  wire PEND;
  wire [21:0]Q;
  wire TICK_EVENT;
  wire [1:0]axi_araddr;
  wire [0:0]clamped_shadow;
  wire [30:0]count;
  wire [31:1]count0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[31]_i_10_n_0 ;
  wire \count[31]_i_11_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_6_n_0 ;
  wire \count[31]_i_7_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count[31]_i_9_n_0 ;
  wire \count_reg[0]_0 ;
  wire [9:0]\count_reg[31]_0 ;
  wire en_ed;
  wire [31:0]p_1_in;
  wire pend_reg;
  wire [31:0]period_active;
  wire \period_active[0]_i_2_n_0 ;
  wire \period_active[0]_i_3_n_0 ;
  wire \period_active[0]_i_4_n_0 ;
  wire \period_active[0]_i_5_n_0 ;
  wire \period_active[0]_i_6_n_0 ;
  wire \period_active[0]_i_7_n_0 ;
  wire \period_active[31]_i_1_n_0 ;
  wire [31:0]\period_active_reg[31]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [21:0]s00_axi_rdata;
  wire tick_event0;
  wire tick_event0_carry__0_i_1_n_0;
  wire tick_event0_carry__0_i_2_n_0;
  wire tick_event0_carry__0_i_3_n_0;
  wire tick_event0_carry__0_i_4_n_0;
  wire tick_event0_carry__0_i_5_n_0;
  wire tick_event0_carry__0_i_6_n_0;
  wire tick_event0_carry__0_i_7_n_0;
  wire tick_event0_carry__0_i_8_n_0;
  wire tick_event0_carry__0_n_0;
  wire tick_event0_carry__0_n_1;
  wire tick_event0_carry__0_n_2;
  wire tick_event0_carry__0_n_3;
  wire tick_event0_carry__1_i_1_n_0;
  wire tick_event0_carry__1_i_2_n_0;
  wire tick_event0_carry__1_i_3_n_0;
  wire tick_event0_carry__1_i_4_n_0;
  wire tick_event0_carry__1_i_5_n_0;
  wire tick_event0_carry__1_i_6_n_0;
  wire tick_event0_carry__1_i_7_n_0;
  wire tick_event0_carry__1_i_8_n_0;
  wire tick_event0_carry__1_n_0;
  wire tick_event0_carry__1_n_1;
  wire tick_event0_carry__1_n_2;
  wire tick_event0_carry__1_n_3;
  wire tick_event0_carry__2_i_1_n_0;
  wire tick_event0_carry__2_i_2_n_0;
  wire tick_event0_carry__2_i_3_n_0;
  wire tick_event0_carry__2_i_4_n_0;
  wire tick_event0_carry__2_i_5_n_0;
  wire tick_event0_carry__2_i_6_n_0;
  wire tick_event0_carry__2_i_7_n_0;
  wire tick_event0_carry__2_i_8_n_0;
  wire tick_event0_carry__2_n_1;
  wire tick_event0_carry__2_n_2;
  wire tick_event0_carry__2_n_3;
  wire tick_event0_carry_i_1_n_0;
  wire tick_event0_carry_i_2_n_0;
  wire tick_event0_carry_i_3_n_0;
  wire tick_event0_carry_i_4_n_0;
  wire tick_event0_carry_i_5_n_0;
  wire tick_event0_carry_i_6_n_0;
  wire tick_event0_carry_i_7_n_0;
  wire tick_event0_carry_i_8_n_0;
  wire tick_event0_carry_n_0;
  wire tick_event0_carry_n_1;
  wire tick_event0_carry_n_2;
  wire tick_event0_carry_n_3;
  wire [31:1]tick_event1;
  wire tick_event1_carry__0_i_1_n_0;
  wire tick_event1_carry__0_i_2_n_0;
  wire tick_event1_carry__0_i_3_n_0;
  wire tick_event1_carry__0_i_4_n_0;
  wire tick_event1_carry__0_n_0;
  wire tick_event1_carry__0_n_1;
  wire tick_event1_carry__0_n_2;
  wire tick_event1_carry__0_n_3;
  wire tick_event1_carry__1_i_1_n_0;
  wire tick_event1_carry__1_i_2_n_0;
  wire tick_event1_carry__1_i_3_n_0;
  wire tick_event1_carry__1_i_4_n_0;
  wire tick_event1_carry__1_n_0;
  wire tick_event1_carry__1_n_1;
  wire tick_event1_carry__1_n_2;
  wire tick_event1_carry__1_n_3;
  wire tick_event1_carry__2_i_1_n_0;
  wire tick_event1_carry__2_i_2_n_0;
  wire tick_event1_carry__2_i_3_n_0;
  wire tick_event1_carry__2_i_4_n_0;
  wire tick_event1_carry__2_n_0;
  wire tick_event1_carry__2_n_1;
  wire tick_event1_carry__2_n_2;
  wire tick_event1_carry__2_n_3;
  wire tick_event1_carry__3_i_1_n_0;
  wire tick_event1_carry__3_i_2_n_0;
  wire tick_event1_carry__3_i_3_n_0;
  wire tick_event1_carry__3_i_4_n_0;
  wire tick_event1_carry__3_n_0;
  wire tick_event1_carry__3_n_1;
  wire tick_event1_carry__3_n_2;
  wire tick_event1_carry__3_n_3;
  wire tick_event1_carry__4_i_1_n_0;
  wire tick_event1_carry__4_i_2_n_0;
  wire tick_event1_carry__4_i_3_n_0;
  wire tick_event1_carry__4_i_4_n_0;
  wire tick_event1_carry__4_n_0;
  wire tick_event1_carry__4_n_1;
  wire tick_event1_carry__4_n_2;
  wire tick_event1_carry__4_n_3;
  wire tick_event1_carry__5_i_1_n_0;
  wire tick_event1_carry__5_i_2_n_0;
  wire tick_event1_carry__5_i_3_n_0;
  wire tick_event1_carry__5_i_4_n_0;
  wire tick_event1_carry__5_n_0;
  wire tick_event1_carry__5_n_1;
  wire tick_event1_carry__5_n_2;
  wire tick_event1_carry__5_n_3;
  wire tick_event1_carry__6_i_1_n_0;
  wire tick_event1_carry__6_i_2_n_0;
  wire tick_event1_carry__6_i_3_n_0;
  wire tick_event1_carry__6_n_2;
  wire tick_event1_carry__6_n_3;
  wire tick_event1_carry_i_1_n_0;
  wire tick_event1_carry_i_2_n_0;
  wire tick_event1_carry_i_3_n_0;
  wire tick_event1_carry_i_4_n_0;
  wire tick_event1_carry_n_0;
  wire tick_event1_carry_n_1;
  wire tick_event1_carry_n_2;
  wire tick_event1_carry_n_3;
  wire tick_event_i_1_n_0;
  wire tick_event_i_2_n_0;
  wire tick_event_i_3_n_0;
  wire tick_event_i_4_n_0;
  wire tick_event_reg_0;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_tick_event0_carry_O_UNCONNECTED;
  wire [3:0]NLW_tick_event0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_tick_event0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_tick_event0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_tick_event1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_tick_event1_carry__6_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[4:1]),
        .S(\count_reg[31]_0 [3:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[8:5]),
        .S(\count_reg[31]_0 [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[12:9]),
        .S({count[12:10],\count_reg[31]_0 [8]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[16:13]),
        .S(count[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[20:17]),
        .S(count[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[24:21]),
        .S(count[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[28:25]),
        .S(count[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0[31:29]}),
        .S({1'b0,\count_reg[31]_0 [9],count[30:29]}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \count[0]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[10]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[11]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[12]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[13]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[14]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[15]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[16]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[17]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[18]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[19]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[1]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[20]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[21]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[22]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[23]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[24]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[25]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[26]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[27]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[28]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[29]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[2]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[30]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[30]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \count[31]_i_1 
       (.I0(CE),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(\count[31]_i_7_n_0 ),
        .O(\count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_10 
       (.I0(period_active[29]),
        .I1(period_active[28]),
        .I2(period_active[31]),
        .I3(period_active[30]),
        .O(\count[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_11 
       (.I0(period_active[21]),
        .I1(period_active[20]),
        .I2(period_active[23]),
        .I3(period_active[22]),
        .O(\count[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[31]_i_2 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[31]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3 
       (.I0(period_active[10]),
        .I1(period_active[11]),
        .I2(period_active[8]),
        .I3(period_active[9]),
        .I4(\count[31]_i_8_n_0 ),
        .O(\count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_4 
       (.I0(period_active[2]),
        .I1(period_active[3]),
        .I2(period_active[0]),
        .I3(period_active[1]),
        .I4(\count[31]_i_9_n_0 ),
        .O(\count[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_5 
       (.I0(period_active[26]),
        .I1(period_active[27]),
        .I2(period_active[24]),
        .I3(period_active[25]),
        .I4(\count[31]_i_10_n_0 ),
        .O(\count[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_6 
       (.I0(period_active[18]),
        .I1(period_active[19]),
        .I2(period_active[16]),
        .I3(period_active[17]),
        .I4(\count[31]_i_11_n_0 ),
        .O(\count[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[31]_i_7 
       (.I0(\count_reg[0]_0 ),
        .I1(Q[0]),
        .O(\count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8 
       (.I0(period_active[13]),
        .I1(period_active[12]),
        .I2(period_active[15]),
        .I3(period_active[14]),
        .O(\count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9 
       (.I0(period_active[5]),
        .I1(period_active[4]),
        .I2(period_active[7]),
        .I3(period_active[6]),
        .O(\count[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[3]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[4]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[5]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[6]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[7]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[8]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \count[9]_i_1 
       (.I0(tick_event0),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(count0[9]),
        .O(p_1_in[9]));
  FDCE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[0]),
        .Q(count[0]));
  FDCE \count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[10]),
        .Q(count[10]));
  FDCE \count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[11]),
        .Q(count[11]));
  FDCE \count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[12]),
        .Q(count[12]));
  FDCE \count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[13]),
        .Q(count[13]));
  FDCE \count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[14]),
        .Q(count[14]));
  FDCE \count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[15]),
        .Q(count[15]));
  FDCE \count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[16]),
        .Q(count[16]));
  FDCE \count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[17]),
        .Q(count[17]));
  FDCE \count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[18]),
        .Q(count[18]));
  FDCE \count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[19]),
        .Q(count[19]));
  FDCE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[1]),
        .Q(\count_reg[31]_0 [0]));
  FDCE \count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[20]),
        .Q(count[20]));
  FDCE \count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[21]),
        .Q(count[21]));
  FDCE \count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[22]),
        .Q(count[22]));
  FDCE \count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[23]),
        .Q(count[23]));
  FDCE \count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[24]),
        .Q(count[24]));
  FDCE \count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[25]),
        .Q(count[25]));
  FDCE \count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[26]),
        .Q(count[26]));
  FDCE \count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[27]),
        .Q(count[27]));
  FDCE \count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[28]),
        .Q(count[28]));
  FDCE \count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[29]),
        .Q(count[29]));
  FDCE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[2]),
        .Q(\count_reg[31]_0 [1]));
  FDCE \count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[30]),
        .Q(count[30]));
  FDCE \count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[31]),
        .Q(\count_reg[31]_0 [9]));
  FDCE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[3]),
        .Q(\count_reg[31]_0 [2]));
  FDCE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[4]),
        .Q(\count_reg[31]_0 [3]));
  FDCE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[5]),
        .Q(\count_reg[31]_0 [4]));
  FDCE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[6]),
        .Q(\count_reg[31]_0 [5]));
  FDCE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[7]),
        .Q(\count_reg[31]_0 [6]));
  FDCE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[8]),
        .Q(\count_reg[31]_0 [7]));
  FDCE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\count[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_1_in[9]),
        .Q(\count_reg[31]_0 [8]));
  FDCE en_ed_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(Q[0]),
        .Q(en_ed));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \missed_cnt[7]_i_1 
       (.I0(TICK_EVENT),
        .I1(PEND),
        .I2(pend_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h32)) 
    pend_i_1
       (.I0(TICK_EVENT),
        .I1(pend_reg),
        .I2(PEND),
        .O(tick_event_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    \period_active[0]_i_1 
       (.I0(\period_active[0]_i_2_n_0 ),
        .I1(\period_active_reg[31]_0 [0]),
        .O(clamped_shadow));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \period_active[0]_i_2 
       (.I0(\period_active[0]_i_3_n_0 ),
        .I1(\period_active[0]_i_4_n_0 ),
        .I2(\period_active[0]_i_5_n_0 ),
        .I3(\period_active[0]_i_6_n_0 ),
        .I4(\period_active_reg[31]_0 [1]),
        .I5(\period_active[0]_i_7_n_0 ),
        .O(\period_active[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \period_active[0]_i_3 
       (.I0(\period_active_reg[31]_0 [28]),
        .I1(\period_active_reg[31]_0 [29]),
        .I2(\period_active_reg[31]_0 [26]),
        .I3(\period_active_reg[31]_0 [27]),
        .I4(\period_active_reg[31]_0 [31]),
        .I5(\period_active_reg[31]_0 [30]),
        .O(\period_active[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \period_active[0]_i_4 
       (.I0(\period_active_reg[31]_0 [10]),
        .I1(\period_active_reg[31]_0 [11]),
        .I2(\period_active_reg[31]_0 [8]),
        .I3(\period_active_reg[31]_0 [9]),
        .I4(\period_active_reg[31]_0 [13]),
        .I5(\period_active_reg[31]_0 [12]),
        .O(\period_active[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \period_active[0]_i_5 
       (.I0(\period_active_reg[31]_0 [4]),
        .I1(\period_active_reg[31]_0 [5]),
        .I2(\period_active_reg[31]_0 [2]),
        .I3(\period_active_reg[31]_0 [3]),
        .I4(\period_active_reg[31]_0 [7]),
        .I5(\period_active_reg[31]_0 [6]),
        .O(\period_active[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \period_active[0]_i_6 
       (.I0(\period_active_reg[31]_0 [22]),
        .I1(\period_active_reg[31]_0 [23]),
        .I2(\period_active_reg[31]_0 [20]),
        .I3(\period_active_reg[31]_0 [21]),
        .I4(\period_active_reg[31]_0 [25]),
        .I5(\period_active_reg[31]_0 [24]),
        .O(\period_active[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \period_active[0]_i_7 
       (.I0(\period_active_reg[31]_0 [16]),
        .I1(\period_active_reg[31]_0 [17]),
        .I2(\period_active_reg[31]_0 [14]),
        .I3(\period_active_reg[31]_0 [15]),
        .I4(\period_active_reg[31]_0 [19]),
        .I5(\period_active_reg[31]_0 [18]),
        .O(\period_active[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \period_active[31]_i_1 
       (.I0(en_ed),
        .I1(Q[0]),
        .I2(TICK_EVENT),
        .O(\period_active[31]_i_1_n_0 ));
  FDPE \period_active_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .D(clamped_shadow),
        .PRE(s00_axi_aresetn_0),
        .Q(period_active[0]));
  FDCE \period_active_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [10]),
        .Q(period_active[10]));
  FDCE \period_active_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [11]),
        .Q(period_active[11]));
  FDCE \period_active_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [12]),
        .Q(period_active[12]));
  FDCE \period_active_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [13]),
        .Q(period_active[13]));
  FDCE \period_active_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [14]),
        .Q(period_active[14]));
  FDCE \period_active_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [15]),
        .Q(period_active[15]));
  FDCE \period_active_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [16]),
        .Q(period_active[16]));
  FDCE \period_active_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [17]),
        .Q(period_active[17]));
  FDCE \period_active_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [18]),
        .Q(period_active[18]));
  FDCE \period_active_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [19]),
        .Q(period_active[19]));
  FDCE \period_active_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [1]),
        .Q(period_active[1]));
  FDCE \period_active_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [20]),
        .Q(period_active[20]));
  FDCE \period_active_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [21]),
        .Q(period_active[21]));
  FDCE \period_active_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [22]),
        .Q(period_active[22]));
  FDCE \period_active_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [23]),
        .Q(period_active[23]));
  FDCE \period_active_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [24]),
        .Q(period_active[24]));
  FDCE \period_active_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [25]),
        .Q(period_active[25]));
  FDCE \period_active_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [26]),
        .Q(period_active[26]));
  FDCE \period_active_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [27]),
        .Q(period_active[27]));
  FDCE \period_active_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [28]),
        .Q(period_active[28]));
  FDCE \period_active_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [29]),
        .Q(period_active[29]));
  FDCE \period_active_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [2]),
        .Q(period_active[2]));
  FDCE \period_active_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [30]),
        .Q(period_active[30]));
  FDCE \period_active_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [31]),
        .Q(period_active[31]));
  FDCE \period_active_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [3]),
        .Q(period_active[3]));
  FDCE \period_active_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [4]),
        .Q(period_active[4]));
  FDCE \period_active_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [5]),
        .Q(period_active[5]));
  FDCE \period_active_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [6]),
        .Q(period_active[6]));
  FDCE \period_active_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [7]),
        .Q(period_active[7]));
  FDCE \period_active_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [8]),
        .Q(period_active[8]));
  FDCE \period_active_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\period_active[31]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\period_active_reg[31]_0 [9]),
        .Q(period_active[9]));
  LUT6 #(
    .INIT(64'hEF2FE323EC2CE020)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\period_active_reg[31]_0 [0]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(count[0]),
        .I4(PEND),
        .I5(Q[0]),
        .O(s00_axi_rdata[0]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(Q[1]),
        .I1(count[10]),
        .I2(\period_active_reg[31]_0 [10]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[1]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(Q[2]),
        .I1(count[11]),
        .I2(\period_active_reg[31]_0 [11]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[2]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(Q[3]),
        .I1(count[12]),
        .I2(\period_active_reg[31]_0 [12]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[3]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(Q[4]),
        .I1(count[13]),
        .I2(\period_active_reg[31]_0 [13]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[4]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(Q[5]),
        .I1(count[14]),
        .I2(\period_active_reg[31]_0 [14]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[5]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(Q[6]),
        .I1(count[15]),
        .I2(\period_active_reg[31]_0 [15]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[6]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(Q[7]),
        .I1(count[16]),
        .I2(\period_active_reg[31]_0 [16]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[7]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(Q[8]),
        .I1(count[17]),
        .I2(\period_active_reg[31]_0 [17]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[8]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(Q[9]),
        .I1(count[18]),
        .I2(\period_active_reg[31]_0 [18]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[9]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(Q[10]),
        .I1(count[19]),
        .I2(\period_active_reg[31]_0 [19]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[10]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(Q[11]),
        .I1(count[20]),
        .I2(\period_active_reg[31]_0 [20]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[11]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(Q[12]),
        .I1(count[21]),
        .I2(\period_active_reg[31]_0 [21]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[12]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(Q[13]),
        .I1(count[22]),
        .I2(\period_active_reg[31]_0 [22]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[13]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(Q[14]),
        .I1(count[23]),
        .I2(\period_active_reg[31]_0 [23]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(Q[15]),
        .I1(count[24]),
        .I2(\period_active_reg[31]_0 [24]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(Q[16]),
        .I1(count[25]),
        .I2(\period_active_reg[31]_0 [25]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[16]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(Q[17]),
        .I1(count[26]),
        .I2(\period_active_reg[31]_0 [26]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[17]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(Q[18]),
        .I1(count[27]),
        .I2(\period_active_reg[31]_0 [27]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[18]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(Q[19]),
        .I1(count[28]),
        .I2(\period_active_reg[31]_0 [28]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[19]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(Q[20]),
        .I1(count[29]),
        .I2(\period_active_reg[31]_0 [29]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[20]));
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(Q[21]),
        .I1(count[30]),
        .I2(\period_active_reg[31]_0 [30]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(s00_axi_rdata[21]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tick_event0_carry
       (.CI(1'b0),
        .CO({tick_event0_carry_n_0,tick_event0_carry_n_1,tick_event0_carry_n_2,tick_event0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({tick_event0_carry_i_1_n_0,tick_event0_carry_i_2_n_0,tick_event0_carry_i_3_n_0,tick_event0_carry_i_4_n_0}),
        .O(NLW_tick_event0_carry_O_UNCONNECTED[3:0]),
        .S({tick_event0_carry_i_5_n_0,tick_event0_carry_i_6_n_0,tick_event0_carry_i_7_n_0,tick_event0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tick_event0_carry__0
       (.CI(tick_event0_carry_n_0),
        .CO({tick_event0_carry__0_n_0,tick_event0_carry__0_n_1,tick_event0_carry__0_n_2,tick_event0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({tick_event0_carry__0_i_1_n_0,tick_event0_carry__0_i_2_n_0,tick_event0_carry__0_i_3_n_0,tick_event0_carry__0_i_4_n_0}),
        .O(NLW_tick_event0_carry__0_O_UNCONNECTED[3:0]),
        .S({tick_event0_carry__0_i_5_n_0,tick_event0_carry__0_i_6_n_0,tick_event0_carry__0_i_7_n_0,tick_event0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__0_i_1
       (.I0(count[15]),
        .I1(tick_event1[15]),
        .I2(count[14]),
        .I3(tick_event1[14]),
        .O(tick_event0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__0_i_2
       (.I0(count[13]),
        .I1(tick_event1[13]),
        .I2(count[12]),
        .I3(tick_event1[12]),
        .O(tick_event0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__0_i_3
       (.I0(count[11]),
        .I1(tick_event1[11]),
        .I2(count[10]),
        .I3(tick_event1[10]),
        .O(tick_event0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__0_i_4
       (.I0(\count_reg[31]_0 [8]),
        .I1(tick_event1[9]),
        .I2(\count_reg[31]_0 [7]),
        .I3(tick_event1[8]),
        .O(tick_event0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__0_i_5
       (.I0(tick_event1[15]),
        .I1(count[15]),
        .I2(tick_event1[14]),
        .I3(count[14]),
        .O(tick_event0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__0_i_6
       (.I0(tick_event1[13]),
        .I1(count[13]),
        .I2(tick_event1[12]),
        .I3(count[12]),
        .O(tick_event0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__0_i_7
       (.I0(tick_event1[11]),
        .I1(count[11]),
        .I2(tick_event1[10]),
        .I3(count[10]),
        .O(tick_event0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__0_i_8
       (.I0(tick_event1[9]),
        .I1(\count_reg[31]_0 [8]),
        .I2(tick_event1[8]),
        .I3(\count_reg[31]_0 [7]),
        .O(tick_event0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tick_event0_carry__1
       (.CI(tick_event0_carry__0_n_0),
        .CO({tick_event0_carry__1_n_0,tick_event0_carry__1_n_1,tick_event0_carry__1_n_2,tick_event0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({tick_event0_carry__1_i_1_n_0,tick_event0_carry__1_i_2_n_0,tick_event0_carry__1_i_3_n_0,tick_event0_carry__1_i_4_n_0}),
        .O(NLW_tick_event0_carry__1_O_UNCONNECTED[3:0]),
        .S({tick_event0_carry__1_i_5_n_0,tick_event0_carry__1_i_6_n_0,tick_event0_carry__1_i_7_n_0,tick_event0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__1_i_1
       (.I0(count[23]),
        .I1(tick_event1[23]),
        .I2(count[22]),
        .I3(tick_event1[22]),
        .O(tick_event0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__1_i_2
       (.I0(count[21]),
        .I1(tick_event1[21]),
        .I2(count[20]),
        .I3(tick_event1[20]),
        .O(tick_event0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__1_i_3
       (.I0(count[19]),
        .I1(tick_event1[19]),
        .I2(count[18]),
        .I3(tick_event1[18]),
        .O(tick_event0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__1_i_4
       (.I0(count[17]),
        .I1(tick_event1[17]),
        .I2(count[16]),
        .I3(tick_event1[16]),
        .O(tick_event0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__1_i_5
       (.I0(tick_event1[23]),
        .I1(count[23]),
        .I2(tick_event1[22]),
        .I3(count[22]),
        .O(tick_event0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__1_i_6
       (.I0(tick_event1[21]),
        .I1(count[21]),
        .I2(tick_event1[20]),
        .I3(count[20]),
        .O(tick_event0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__1_i_7
       (.I0(tick_event1[19]),
        .I1(count[19]),
        .I2(tick_event1[18]),
        .I3(count[18]),
        .O(tick_event0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__1_i_8
       (.I0(tick_event1[17]),
        .I1(count[17]),
        .I2(tick_event1[16]),
        .I3(count[16]),
        .O(tick_event0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tick_event0_carry__2
       (.CI(tick_event0_carry__1_n_0),
        .CO({tick_event0,tick_event0_carry__2_n_1,tick_event0_carry__2_n_2,tick_event0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({tick_event0_carry__2_i_1_n_0,tick_event0_carry__2_i_2_n_0,tick_event0_carry__2_i_3_n_0,tick_event0_carry__2_i_4_n_0}),
        .O(NLW_tick_event0_carry__2_O_UNCONNECTED[3:0]),
        .S({tick_event0_carry__2_i_5_n_0,tick_event0_carry__2_i_6_n_0,tick_event0_carry__2_i_7_n_0,tick_event0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__2_i_1
       (.I0(\count_reg[31]_0 [9]),
        .I1(tick_event1[31]),
        .I2(count[30]),
        .I3(tick_event1[30]),
        .O(tick_event0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__2_i_2
       (.I0(count[29]),
        .I1(tick_event1[29]),
        .I2(count[28]),
        .I3(tick_event1[28]),
        .O(tick_event0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__2_i_3
       (.I0(count[27]),
        .I1(tick_event1[27]),
        .I2(count[26]),
        .I3(tick_event1[26]),
        .O(tick_event0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry__2_i_4
       (.I0(count[25]),
        .I1(tick_event1[25]),
        .I2(count[24]),
        .I3(tick_event1[24]),
        .O(tick_event0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__2_i_5
       (.I0(tick_event1[31]),
        .I1(\count_reg[31]_0 [9]),
        .I2(tick_event1[30]),
        .I3(count[30]),
        .O(tick_event0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__2_i_6
       (.I0(tick_event1[29]),
        .I1(count[29]),
        .I2(tick_event1[28]),
        .I3(count[28]),
        .O(tick_event0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__2_i_7
       (.I0(tick_event1[27]),
        .I1(count[27]),
        .I2(tick_event1[26]),
        .I3(count[26]),
        .O(tick_event0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry__2_i_8
       (.I0(tick_event1[25]),
        .I1(count[25]),
        .I2(tick_event1[24]),
        .I3(count[24]),
        .O(tick_event0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry_i_1
       (.I0(\count_reg[31]_0 [6]),
        .I1(tick_event1[7]),
        .I2(\count_reg[31]_0 [5]),
        .I3(tick_event1[6]),
        .O(tick_event0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry_i_2
       (.I0(\count_reg[31]_0 [4]),
        .I1(tick_event1[5]),
        .I2(\count_reg[31]_0 [3]),
        .I3(tick_event1[4]),
        .O(tick_event0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tick_event0_carry_i_3
       (.I0(\count_reg[31]_0 [2]),
        .I1(tick_event1[3]),
        .I2(\count_reg[31]_0 [1]),
        .I3(tick_event1[2]),
        .O(tick_event0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    tick_event0_carry_i_4
       (.I0(\count_reg[31]_0 [0]),
        .I1(tick_event1[1]),
        .I2(count[0]),
        .I3(period_active[0]),
        .O(tick_event0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry_i_5
       (.I0(tick_event1[7]),
        .I1(\count_reg[31]_0 [6]),
        .I2(tick_event1[6]),
        .I3(\count_reg[31]_0 [5]),
        .O(tick_event0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry_i_6
       (.I0(tick_event1[5]),
        .I1(\count_reg[31]_0 [4]),
        .I2(tick_event1[4]),
        .I3(\count_reg[31]_0 [3]),
        .O(tick_event0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_event0_carry_i_7
       (.I0(tick_event1[3]),
        .I1(\count_reg[31]_0 [2]),
        .I2(tick_event1[2]),
        .I3(\count_reg[31]_0 [1]),
        .O(tick_event0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    tick_event0_carry_i_8
       (.I0(count[0]),
        .I1(period_active[0]),
        .I2(tick_event1[1]),
        .I3(\count_reg[31]_0 [0]),
        .O(tick_event0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tick_event1_carry
       (.CI(1'b0),
        .CO({tick_event1_carry_n_0,tick_event1_carry_n_1,tick_event1_carry_n_2,tick_event1_carry_n_3}),
        .CYINIT(period_active[0]),
        .DI(period_active[4:1]),
        .O(tick_event1[4:1]),
        .S({tick_event1_carry_i_1_n_0,tick_event1_carry_i_2_n_0,tick_event1_carry_i_3_n_0,tick_event1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tick_event1_carry__0
       (.CI(tick_event1_carry_n_0),
        .CO({tick_event1_carry__0_n_0,tick_event1_carry__0_n_1,tick_event1_carry__0_n_2,tick_event1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(period_active[8:5]),
        .O(tick_event1[8:5]),
        .S({tick_event1_carry__0_i_1_n_0,tick_event1_carry__0_i_2_n_0,tick_event1_carry__0_i_3_n_0,tick_event1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__0_i_1
       (.I0(period_active[8]),
        .O(tick_event1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__0_i_2
       (.I0(period_active[7]),
        .O(tick_event1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__0_i_3
       (.I0(period_active[6]),
        .O(tick_event1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__0_i_4
       (.I0(period_active[5]),
        .O(tick_event1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tick_event1_carry__1
       (.CI(tick_event1_carry__0_n_0),
        .CO({tick_event1_carry__1_n_0,tick_event1_carry__1_n_1,tick_event1_carry__1_n_2,tick_event1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(period_active[12:9]),
        .O(tick_event1[12:9]),
        .S({tick_event1_carry__1_i_1_n_0,tick_event1_carry__1_i_2_n_0,tick_event1_carry__1_i_3_n_0,tick_event1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__1_i_1
       (.I0(period_active[12]),
        .O(tick_event1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__1_i_2
       (.I0(period_active[11]),
        .O(tick_event1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__1_i_3
       (.I0(period_active[10]),
        .O(tick_event1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__1_i_4
       (.I0(period_active[9]),
        .O(tick_event1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tick_event1_carry__2
       (.CI(tick_event1_carry__1_n_0),
        .CO({tick_event1_carry__2_n_0,tick_event1_carry__2_n_1,tick_event1_carry__2_n_2,tick_event1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(period_active[16:13]),
        .O(tick_event1[16:13]),
        .S({tick_event1_carry__2_i_1_n_0,tick_event1_carry__2_i_2_n_0,tick_event1_carry__2_i_3_n_0,tick_event1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__2_i_1
       (.I0(period_active[16]),
        .O(tick_event1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__2_i_2
       (.I0(period_active[15]),
        .O(tick_event1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__2_i_3
       (.I0(period_active[14]),
        .O(tick_event1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__2_i_4
       (.I0(period_active[13]),
        .O(tick_event1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tick_event1_carry__3
       (.CI(tick_event1_carry__2_n_0),
        .CO({tick_event1_carry__3_n_0,tick_event1_carry__3_n_1,tick_event1_carry__3_n_2,tick_event1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(period_active[20:17]),
        .O(tick_event1[20:17]),
        .S({tick_event1_carry__3_i_1_n_0,tick_event1_carry__3_i_2_n_0,tick_event1_carry__3_i_3_n_0,tick_event1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__3_i_1
       (.I0(period_active[20]),
        .O(tick_event1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__3_i_2
       (.I0(period_active[19]),
        .O(tick_event1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__3_i_3
       (.I0(period_active[18]),
        .O(tick_event1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__3_i_4
       (.I0(period_active[17]),
        .O(tick_event1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tick_event1_carry__4
       (.CI(tick_event1_carry__3_n_0),
        .CO({tick_event1_carry__4_n_0,tick_event1_carry__4_n_1,tick_event1_carry__4_n_2,tick_event1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(period_active[24:21]),
        .O(tick_event1[24:21]),
        .S({tick_event1_carry__4_i_1_n_0,tick_event1_carry__4_i_2_n_0,tick_event1_carry__4_i_3_n_0,tick_event1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__4_i_1
       (.I0(period_active[24]),
        .O(tick_event1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__4_i_2
       (.I0(period_active[23]),
        .O(tick_event1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__4_i_3
       (.I0(period_active[22]),
        .O(tick_event1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__4_i_4
       (.I0(period_active[21]),
        .O(tick_event1_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tick_event1_carry__5
       (.CI(tick_event1_carry__4_n_0),
        .CO({tick_event1_carry__5_n_0,tick_event1_carry__5_n_1,tick_event1_carry__5_n_2,tick_event1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(period_active[28:25]),
        .O(tick_event1[28:25]),
        .S({tick_event1_carry__5_i_1_n_0,tick_event1_carry__5_i_2_n_0,tick_event1_carry__5_i_3_n_0,tick_event1_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__5_i_1
       (.I0(period_active[28]),
        .O(tick_event1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__5_i_2
       (.I0(period_active[27]),
        .O(tick_event1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__5_i_3
       (.I0(period_active[26]),
        .O(tick_event1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__5_i_4
       (.I0(period_active[25]),
        .O(tick_event1_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tick_event1_carry__6
       (.CI(tick_event1_carry__5_n_0),
        .CO({NLW_tick_event1_carry__6_CO_UNCONNECTED[3:2],tick_event1_carry__6_n_2,tick_event1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,period_active[30:29]}),
        .O({NLW_tick_event1_carry__6_O_UNCONNECTED[3],tick_event1[31:29]}),
        .S({1'b0,tick_event1_carry__6_i_1_n_0,tick_event1_carry__6_i_2_n_0,tick_event1_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__6_i_1
       (.I0(period_active[31]),
        .O(tick_event1_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__6_i_2
       (.I0(period_active[30]),
        .O(tick_event1_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry__6_i_3
       (.I0(period_active[29]),
        .O(tick_event1_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry_i_1
       (.I0(period_active[4]),
        .O(tick_event1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry_i_2
       (.I0(period_active[3]),
        .O(tick_event1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry_i_3
       (.I0(period_active[2]),
        .O(tick_event1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tick_event1_carry_i_4
       (.I0(period_active[1]),
        .O(tick_event1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00FE000000000000)) 
    tick_event_i_1
       (.I0(tick_event_i_2_n_0),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_3_n_0 ),
        .I3(\count[31]_i_7_n_0 ),
        .I4(tick_event0),
        .I5(CE),
        .O(tick_event_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tick_event_i_2
       (.I0(\count[31]_i_11_n_0 ),
        .I1(tick_event_i_3_n_0),
        .I2(\count[31]_i_10_n_0 ),
        .I3(tick_event_i_4_n_0),
        .O(tick_event_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    tick_event_i_3
       (.I0(period_active[17]),
        .I1(period_active[16]),
        .I2(period_active[19]),
        .I3(period_active[18]),
        .O(tick_event_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    tick_event_i_4
       (.I0(period_active[25]),
        .I1(period_active[24]),
        .I2(period_active[27]),
        .I3(period_active[26]),
        .O(tick_event_i_4_n_0));
  FDCE tick_event_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(tick_event_i_1_n_0),
        .Q(TICK_EVENT));
endmodule

(* ORIG_REF_NAME = "tick_timebase" *) 
module soc_rtos_ver1_myip_RTOS_0_0_tick_timebase
   (CE,
    s00_axi_aclk,
    \sys_clk_reg[0]_0 ,
    Q);
  output CE;
  input s00_axi_aclk;
  input \sys_clk_reg[0]_0 ;
  input [16:0]Q;

  wire CE;
  wire [16:0]Q;
  wire ce0_carry__0_i_1_n_0;
  wire ce0_carry__0_i_2_n_0;
  wire ce0_carry__0_i_3_n_0;
  wire ce0_carry__0_i_4_n_0;
  wire ce0_carry__0_i_5_n_0;
  wire ce0_carry__0_i_6_n_0;
  wire ce0_carry__0_i_7_n_0;
  wire ce0_carry__0_i_8_n_0;
  wire ce0_carry__0_n_0;
  wire ce0_carry__0_n_1;
  wire ce0_carry__0_n_2;
  wire ce0_carry__0_n_3;
  wire ce0_carry__1_i_1_n_0;
  wire ce0_carry__1_i_2_n_0;
  wire ce0_carry__1_i_3_n_0;
  wire ce0_carry__1_i_4_n_0;
  wire ce0_carry__1_i_5_n_0;
  wire ce0_carry__1_i_6_n_0;
  wire ce0_carry__1_i_7_n_0;
  wire ce0_carry__1_i_8_n_0;
  wire ce0_carry__1_i_9_n_3;
  wire ce0_carry__1_n_0;
  wire ce0_carry__1_n_1;
  wire ce0_carry__1_n_2;
  wire ce0_carry__1_n_3;
  wire ce0_carry__2_i_1_n_0;
  wire ce0_carry__2_i_2_n_0;
  wire ce0_carry__2_i_3_n_0;
  wire ce0_carry__2_i_4_n_0;
  wire ce0_carry__2_i_5_n_0;
  wire ce0_carry__2_i_6_n_0;
  wire ce0_carry__2_i_7_n_0;
  wire ce0_carry__2_i_8_n_0;
  wire ce0_carry__2_n_0;
  wire ce0_carry__2_n_1;
  wire ce0_carry__2_n_2;
  wire ce0_carry__2_n_3;
  wire ce0_carry_i_1_n_0;
  wire ce0_carry_i_2_n_0;
  wire ce0_carry_i_3_n_0;
  wire ce0_carry_i_4_n_0;
  wire ce0_carry_i_5_n_0;
  wire ce0_carry_i_6_n_0;
  wire ce0_carry_i_7_n_0;
  wire ce0_carry_i_8_n_0;
  wire ce0_carry_n_0;
  wire ce0_carry_n_1;
  wire ce0_carry_n_2;
  wire ce0_carry_n_3;
  wire [16:1]ce1;
  wire ce1_carry__0_i_10_n_0;
  wire ce1_carry__0_i_3_n_0;
  wire ce1_carry__0_i_4_n_0;
  wire ce1_carry__0_i_5_n_0;
  wire ce1_carry__0_i_6_n_0;
  wire ce1_carry__0_i_7_n_0;
  wire ce1_carry__0_i_8_n_0;
  wire ce1_carry__0_i_9_n_0;
  wire ce1_carry__0_n_0;
  wire ce1_carry__0_n_1;
  wire ce1_carry__0_n_2;
  wire ce1_carry__0_n_3;
  wire ce1_carry__1_i_3_n_0;
  wire ce1_carry__1_i_4_n_0;
  wire ce1_carry__1_i_5_n_0;
  wire ce1_carry__1_i_6_n_0;
  wire ce1_carry__1_i_7_n_0;
  wire ce1_carry__1_n_0;
  wire ce1_carry__1_n_1;
  wire ce1_carry__1_n_2;
  wire ce1_carry__1_n_3;
  wire ce1_carry__2_i_4_n_0;
  wire ce1_carry__2_i_5_n_0;
  wire ce1_carry__2_i_6_n_0;
  wire ce1_carry__2_i_7_n_0;
  wire ce1_carry__2_n_0;
  wire ce1_carry__2_n_1;
  wire ce1_carry__2_n_2;
  wire ce1_carry__2_n_3;
  wire ce1_carry_i_1_n_0;
  wire ce1_carry_i_2_n_0;
  wire ce1_carry_i_3_n_0;
  wire ce1_carry_i_4_n_0;
  wire ce1_carry_n_0;
  wire ce1_carry_n_1;
  wire ce1_carry_n_2;
  wire ce1_carry_n_3;
  wire ce_i_1_n_0;
  wire [31:0]p_0_in;
  wire [16:5]presc_count;
  wire presc_count1;
  wire s00_axi_aclk;
  wire [31:0]sys_clk;
  wire [31:1]sys_clk0;
  wire sys_clk0_carry__0_n_0;
  wire sys_clk0_carry__0_n_1;
  wire sys_clk0_carry__0_n_2;
  wire sys_clk0_carry__0_n_3;
  wire sys_clk0_carry__1_n_0;
  wire sys_clk0_carry__1_n_1;
  wire sys_clk0_carry__1_n_2;
  wire sys_clk0_carry__1_n_3;
  wire sys_clk0_carry__2_n_0;
  wire sys_clk0_carry__2_n_1;
  wire sys_clk0_carry__2_n_2;
  wire sys_clk0_carry__2_n_3;
  wire sys_clk0_carry__3_n_0;
  wire sys_clk0_carry__3_n_1;
  wire sys_clk0_carry__3_n_2;
  wire sys_clk0_carry__3_n_3;
  wire sys_clk0_carry__4_n_0;
  wire sys_clk0_carry__4_n_1;
  wire sys_clk0_carry__4_n_2;
  wire sys_clk0_carry__4_n_3;
  wire sys_clk0_carry__5_n_0;
  wire sys_clk0_carry__5_n_1;
  wire sys_clk0_carry__5_n_2;
  wire sys_clk0_carry__5_n_3;
  wire sys_clk0_carry__6_n_2;
  wire sys_clk0_carry__6_n_3;
  wire sys_clk0_carry_n_0;
  wire sys_clk0_carry_n_1;
  wire sys_clk0_carry_n_2;
  wire sys_clk0_carry_n_3;
  wire \sys_clk_reg[0]_0 ;
  wire [3:0]NLW_ce0_carry_O_UNCONNECTED;
  wire [3:0]NLW_ce0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ce0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_ce0_carry__1_i_9_CO_UNCONNECTED;
  wire [3:0]NLW_ce0_carry__1_i_9_O_UNCONNECTED;
  wire [3:0]NLW_ce0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_sys_clk0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_sys_clk0_carry__6_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ce0_carry
       (.CI(1'b0),
        .CO({ce0_carry_n_0,ce0_carry_n_1,ce0_carry_n_2,ce0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({ce0_carry_i_1_n_0,ce0_carry_i_2_n_0,ce0_carry_i_3_n_0,ce0_carry_i_4_n_0}),
        .O(NLW_ce0_carry_O_UNCONNECTED[3:0]),
        .S({ce0_carry_i_5_n_0,ce0_carry_i_6_n_0,ce0_carry_i_7_n_0,ce0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ce0_carry__0
       (.CI(ce0_carry_n_0),
        .CO({ce0_carry__0_n_0,ce0_carry__0_n_1,ce0_carry__0_n_2,ce0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ce0_carry__0_i_1_n_0,ce0_carry__0_i_2_n_0,ce0_carry__0_i_3_n_0,ce0_carry__0_i_4_n_0}),
        .O(NLW_ce0_carry__0_O_UNCONNECTED[3:0]),
        .S({ce0_carry__0_i_5_n_0,ce0_carry__0_i_6_n_0,ce0_carry__0_i_7_n_0,ce0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ce0_carry__0_i_1
       (.I0(sys_clk[15]),
        .I1(ce1[15]),
        .I2(sys_clk[14]),
        .I3(ce1[14]),
        .O(ce0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ce0_carry__0_i_2
       (.I0(sys_clk[13]),
        .I1(ce1[13]),
        .I2(sys_clk[12]),
        .I3(ce1[12]),
        .O(ce0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ce0_carry__0_i_3
       (.I0(sys_clk[11]),
        .I1(ce1[11]),
        .I2(sys_clk[10]),
        .I3(ce1[10]),
        .O(ce0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ce0_carry__0_i_4
       (.I0(sys_clk[9]),
        .I1(ce1[9]),
        .I2(sys_clk[8]),
        .I3(ce1[8]),
        .O(ce0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ce0_carry__0_i_5
       (.I0(ce1[15]),
        .I1(sys_clk[15]),
        .I2(ce1[14]),
        .I3(sys_clk[14]),
        .O(ce0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ce0_carry__0_i_6
       (.I0(ce1[13]),
        .I1(sys_clk[13]),
        .I2(ce1[12]),
        .I3(sys_clk[12]),
        .O(ce0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ce0_carry__0_i_7
       (.I0(ce1[11]),
        .I1(sys_clk[11]),
        .I2(ce1[10]),
        .I3(sys_clk[10]),
        .O(ce0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ce0_carry__0_i_8
       (.I0(ce1[9]),
        .I1(sys_clk[9]),
        .I2(ce1[8]),
        .I3(sys_clk[8]),
        .O(ce0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ce0_carry__1
       (.CI(ce0_carry__0_n_0),
        .CO({ce0_carry__1_n_0,ce0_carry__1_n_1,ce0_carry__1_n_2,ce0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ce0_carry__1_i_1_n_0,ce0_carry__1_i_2_n_0,ce0_carry__1_i_3_n_0,ce0_carry__1_i_4_n_0}),
        .O(NLW_ce0_carry__1_O_UNCONNECTED[3:0]),
        .S({ce0_carry__1_i_5_n_0,ce0_carry__1_i_6_n_0,ce0_carry__1_i_7_n_0,ce0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE0)) 
    ce0_carry__1_i_1
       (.I0(sys_clk[23]),
        .I1(sys_clk[22]),
        .I2(ce0_carry__1_i_9_n_3),
        .O(ce0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    ce0_carry__1_i_2
       (.I0(sys_clk[21]),
        .I1(sys_clk[20]),
        .I2(ce0_carry__1_i_9_n_3),
        .O(ce0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    ce0_carry__1_i_3
       (.I0(sys_clk[19]),
        .I1(sys_clk[18]),
        .I2(ce0_carry__1_i_9_n_3),
        .O(ce0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hF220)) 
    ce0_carry__1_i_4
       (.I0(sys_clk[16]),
        .I1(ce1[16]),
        .I2(ce0_carry__1_i_9_n_3),
        .I3(sys_clk[17]),
        .O(ce0_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    ce0_carry__1_i_5
       (.I0(ce0_carry__1_i_9_n_3),
        .I1(sys_clk[22]),
        .I2(sys_clk[23]),
        .O(ce0_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    ce0_carry__1_i_6
       (.I0(ce0_carry__1_i_9_n_3),
        .I1(sys_clk[20]),
        .I2(sys_clk[21]),
        .O(ce0_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    ce0_carry__1_i_7
       (.I0(ce0_carry__1_i_9_n_3),
        .I1(sys_clk[18]),
        .I2(sys_clk[19]),
        .O(ce0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    ce0_carry__1_i_8
       (.I0(sys_clk[17]),
        .I1(ce0_carry__1_i_9_n_3),
        .I2(ce1[16]),
        .I3(sys_clk[16]),
        .O(ce0_carry__1_i_8_n_0));
  CARRY4 ce0_carry__1_i_9
       (.CI(ce1_carry__2_n_0),
        .CO({NLW_ce0_carry__1_i_9_CO_UNCONNECTED[3:1],ce0_carry__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ce0_carry__1_i_9_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ce0_carry__2
       (.CI(ce0_carry__1_n_0),
        .CO({ce0_carry__2_n_0,ce0_carry__2_n_1,ce0_carry__2_n_2,ce0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ce0_carry__2_i_1_n_0,ce0_carry__2_i_2_n_0,ce0_carry__2_i_3_n_0,ce0_carry__2_i_4_n_0}),
        .O(NLW_ce0_carry__2_O_UNCONNECTED[3:0]),
        .S({ce0_carry__2_i_5_n_0,ce0_carry__2_i_6_n_0,ce0_carry__2_i_7_n_0,ce0_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE0)) 
    ce0_carry__2_i_1
       (.I0(sys_clk[31]),
        .I1(sys_clk[30]),
        .I2(ce0_carry__1_i_9_n_3),
        .O(ce0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    ce0_carry__2_i_2
       (.I0(sys_clk[29]),
        .I1(sys_clk[28]),
        .I2(ce0_carry__1_i_9_n_3),
        .O(ce0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    ce0_carry__2_i_3
       (.I0(sys_clk[27]),
        .I1(sys_clk[26]),
        .I2(ce0_carry__1_i_9_n_3),
        .O(ce0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    ce0_carry__2_i_4
       (.I0(sys_clk[25]),
        .I1(sys_clk[24]),
        .I2(ce0_carry__1_i_9_n_3),
        .O(ce0_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    ce0_carry__2_i_5
       (.I0(ce0_carry__1_i_9_n_3),
        .I1(sys_clk[30]),
        .I2(sys_clk[31]),
        .O(ce0_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    ce0_carry__2_i_6
       (.I0(ce0_carry__1_i_9_n_3),
        .I1(sys_clk[28]),
        .I2(sys_clk[29]),
        .O(ce0_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    ce0_carry__2_i_7
       (.I0(ce0_carry__1_i_9_n_3),
        .I1(sys_clk[26]),
        .I2(sys_clk[27]),
        .O(ce0_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    ce0_carry__2_i_8
       (.I0(ce0_carry__1_i_9_n_3),
        .I1(sys_clk[24]),
        .I2(sys_clk[25]),
        .O(ce0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ce0_carry_i_1
       (.I0(sys_clk[7]),
        .I1(ce1[7]),
        .I2(sys_clk[6]),
        .I3(ce1[6]),
        .O(ce0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ce0_carry_i_2
       (.I0(sys_clk[5]),
        .I1(ce1[5]),
        .I2(sys_clk[4]),
        .I3(ce1[4]),
        .O(ce0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ce0_carry_i_3
       (.I0(sys_clk[3]),
        .I1(ce1[3]),
        .I2(sys_clk[2]),
        .I3(ce1[2]),
        .O(ce0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    ce0_carry_i_4
       (.I0(sys_clk[1]),
        .I1(ce1[1]),
        .I2(sys_clk[0]),
        .I3(Q[1]),
        .O(ce0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ce0_carry_i_5
       (.I0(ce1[7]),
        .I1(sys_clk[7]),
        .I2(ce1[6]),
        .I3(sys_clk[6]),
        .O(ce0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ce0_carry_i_6
       (.I0(ce1[5]),
        .I1(sys_clk[5]),
        .I2(ce1[4]),
        .I3(sys_clk[4]),
        .O(ce0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ce0_carry_i_7
       (.I0(ce1[3]),
        .I1(sys_clk[3]),
        .I2(ce1[2]),
        .I3(sys_clk[2]),
        .O(ce0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    ce0_carry_i_8
       (.I0(sys_clk[0]),
        .I1(Q[1]),
        .I2(ce1[1]),
        .I3(sys_clk[1]),
        .O(ce0_carry_i_8_n_0));
  CARRY4 ce1_carry
       (.CI(1'b0),
        .CO({ce1_carry_n_0,ce1_carry_n_1,ce1_carry_n_2,ce1_carry_n_3}),
        .CYINIT(Q[1]),
        .DI(Q[5:2]),
        .O(ce1[4:1]),
        .S({ce1_carry_i_1_n_0,ce1_carry_i_2_n_0,ce1_carry_i_3_n_0,ce1_carry_i_4_n_0}));
  CARRY4 ce1_carry__0
       (.CI(ce1_carry_n_0),
        .CO({ce1_carry__0_n_0,ce1_carry__0_n_1,ce1_carry__0_n_2,ce1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Q[9],presc_count[7],Q[7],presc_count[5]}),
        .O(ce1[8:5]),
        .S({ce1_carry__0_i_3_n_0,ce1_carry__0_i_4_n_0,ce1_carry__0_i_5_n_0,ce1_carry__0_i_6_n_0}));
  LUT3 #(
    .INIT(8'hAB)) 
    ce1_carry__0_i_1
       (.I0(Q[8]),
        .I1(ce1_carry__0_i_7_n_0),
        .I2(Q[6]),
        .O(presc_count[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce1_carry__0_i_10
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(ce1_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'hAB)) 
    ce1_carry__0_i_2
       (.I0(Q[6]),
        .I1(ce1_carry__0_i_7_n_0),
        .I2(Q[8]),
        .O(presc_count[5]));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry__0_i_3
       (.I0(Q[9]),
        .O(ce1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    ce1_carry__0_i_4
       (.I0(Q[6]),
        .I1(ce1_carry__0_i_7_n_0),
        .I2(Q[8]),
        .O(ce1_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry__0_i_5
       (.I0(Q[7]),
        .O(ce1_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    ce1_carry__0_i_6
       (.I0(Q[8]),
        .I1(ce1_carry__0_i_7_n_0),
        .I2(Q[6]),
        .O(ce1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ce1_carry__0_i_7
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(Q[16]),
        .I3(ce1_carry__0_i_8_n_0),
        .I4(ce1_carry__0_i_9_n_0),
        .I5(ce1_carry__0_i_10_n_0),
        .O(ce1_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    ce1_carry__0_i_8
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[1]),
        .O(ce1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce1_carry__0_i_9
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[13]),
        .I3(Q[12]),
        .O(ce1_carry__0_i_9_n_0));
  CARRY4 ce1_carry__1
       (.CI(ce1_carry__0_n_0),
        .CO({ce1_carry__1_n_0,ce1_carry__1_n_1,ce1_carry__1_n_2,ce1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Q[13:12],presc_count[10:9]}),
        .O(ce1[12:9]),
        .S({ce1_carry__1_i_3_n_0,ce1_carry__1_i_4_n_0,ce1_carry__1_i_5_n_0,ce1_carry__1_i_6_n_0}));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    ce1_carry__1_i_1
       (.I0(Q[11]),
        .I1(ce1_carry__1_i_7_n_0),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[10]),
        .O(presc_count[10]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    ce1_carry__1_i_2
       (.I0(Q[10]),
        .I1(ce1_carry__1_i_7_n_0),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[11]),
        .O(presc_count[9]));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry__1_i_3
       (.I0(Q[13]),
        .O(ce1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry__1_i_4
       (.I0(Q[12]),
        .O(ce1_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    ce1_carry__1_i_5
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(ce1_carry__1_i_7_n_0),
        .I4(Q[11]),
        .O(ce1_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    ce1_carry__1_i_6
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(ce1_carry__1_i_7_n_0),
        .I4(Q[10]),
        .O(ce1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ce1_carry__1_i_7
       (.I0(ce1_carry__0_i_10_n_0),
        .I1(ce1_carry__0_i_9_n_0),
        .I2(Q[1]),
        .I3(Q[14]),
        .I4(Q[15]),
        .I5(Q[16]),
        .O(ce1_carry__1_i_7_n_0));
  CARRY4 ce1_carry__2
       (.CI(ce1_carry__1_n_0),
        .CO({ce1_carry__2_n_0,ce1_carry__2_n_1,ce1_carry__2_n_2,ce1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({presc_count[16:15],Q[15:14]}),
        .O(ce1[16:13]),
        .S({presc_count1,ce1_carry__2_i_4_n_0,ce1_carry__2_i_5_n_0,ce1_carry__2_i_6_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    ce1_carry__2_i_1
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(ce1_carry__0_i_7_n_0),
        .O(presc_count[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    ce1_carry__2_i_2
       (.I0(Q[16]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(ce1_carry__2_i_7_n_0),
        .O(presc_count[15]));
  LUT3 #(
    .INIT(8'hFE)) 
    ce1_carry__2_i_3
       (.I0(ce1_carry__0_i_7_n_0),
        .I1(Q[8]),
        .I2(Q[6]),
        .O(presc_count1));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    ce1_carry__2_i_4
       (.I0(ce1_carry__2_i_7_n_0),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(Q[11]),
        .I4(Q[10]),
        .I5(Q[16]),
        .O(ce1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry__2_i_5
       (.I0(Q[15]),
        .O(ce1_carry__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry__2_i_6
       (.I0(Q[14]),
        .O(ce1_carry__2_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ce1_carry__2_i_7
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[1]),
        .I3(ce1_carry__0_i_9_n_0),
        .I4(ce1_carry__0_i_10_n_0),
        .O(ce1_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry_i_1
       (.I0(Q[5]),
        .O(ce1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry_i_2
       (.I0(Q[4]),
        .O(ce1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry_i_3
       (.I0(Q[3]),
        .O(ce1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ce1_carry_i_4
       (.I0(Q[2]),
        .O(ce1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ce_i_1
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .O(ce_i_1_n_0));
  FDCE ce_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(ce_i_1_n_0),
        .Q(CE));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sys_clk0_carry
       (.CI(1'b0),
        .CO({sys_clk0_carry_n_0,sys_clk0_carry_n_1,sys_clk0_carry_n_2,sys_clk0_carry_n_3}),
        .CYINIT(sys_clk[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sys_clk0[4:1]),
        .S(sys_clk[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sys_clk0_carry__0
       (.CI(sys_clk0_carry_n_0),
        .CO({sys_clk0_carry__0_n_0,sys_clk0_carry__0_n_1,sys_clk0_carry__0_n_2,sys_clk0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sys_clk0[8:5]),
        .S(sys_clk[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sys_clk0_carry__1
       (.CI(sys_clk0_carry__0_n_0),
        .CO({sys_clk0_carry__1_n_0,sys_clk0_carry__1_n_1,sys_clk0_carry__1_n_2,sys_clk0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sys_clk0[12:9]),
        .S(sys_clk[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sys_clk0_carry__2
       (.CI(sys_clk0_carry__1_n_0),
        .CO({sys_clk0_carry__2_n_0,sys_clk0_carry__2_n_1,sys_clk0_carry__2_n_2,sys_clk0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sys_clk0[16:13]),
        .S(sys_clk[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sys_clk0_carry__3
       (.CI(sys_clk0_carry__2_n_0),
        .CO({sys_clk0_carry__3_n_0,sys_clk0_carry__3_n_1,sys_clk0_carry__3_n_2,sys_clk0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sys_clk0[20:17]),
        .S(sys_clk[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sys_clk0_carry__4
       (.CI(sys_clk0_carry__3_n_0),
        .CO({sys_clk0_carry__4_n_0,sys_clk0_carry__4_n_1,sys_clk0_carry__4_n_2,sys_clk0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sys_clk0[24:21]),
        .S(sys_clk[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sys_clk0_carry__5
       (.CI(sys_clk0_carry__4_n_0),
        .CO({sys_clk0_carry__5_n_0,sys_clk0_carry__5_n_1,sys_clk0_carry__5_n_2,sys_clk0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sys_clk0[28:25]),
        .S(sys_clk[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sys_clk0_carry__6
       (.CI(sys_clk0_carry__5_n_0),
        .CO({NLW_sys_clk0_carry__6_CO_UNCONNECTED[3:2],sys_clk0_carry__6_n_2,sys_clk0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sys_clk0_carry__6_O_UNCONNECTED[3],sys_clk0[31:29]}),
        .S({1'b0,sys_clk[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sys_clk[0]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[10]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[11]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[12]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[13]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[14]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[15]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[16]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[16]),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[17]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[17]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[18]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[18]),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[19]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[19]),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[1]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[20]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[20]),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[21]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[21]),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[22]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[22]),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[23]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[23]),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[24]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[24]),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[25]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[25]),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[26]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[26]),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[27]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[27]),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[28]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[28]),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[29]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[29]),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[2]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[30]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[30]),
        .O(p_0_in[30]));
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[31]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[31]),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[3]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[4]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[5]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[6]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[7]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[8]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sys_clk[9]_i_1 
       (.I0(ce0_carry__2_n_0),
        .I1(Q[0]),
        .I2(sys_clk0[9]),
        .O(p_0_in[9]));
  FDCE \sys_clk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(sys_clk[0]));
  FDCE \sys_clk_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[10]),
        .Q(sys_clk[10]));
  FDCE \sys_clk_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[11]),
        .Q(sys_clk[11]));
  FDCE \sys_clk_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[12]),
        .Q(sys_clk[12]));
  FDCE \sys_clk_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[13]),
        .Q(sys_clk[13]));
  FDCE \sys_clk_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[14]),
        .Q(sys_clk[14]));
  FDCE \sys_clk_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[15]),
        .Q(sys_clk[15]));
  FDCE \sys_clk_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[16]),
        .Q(sys_clk[16]));
  FDCE \sys_clk_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[17]),
        .Q(sys_clk[17]));
  FDCE \sys_clk_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[18]),
        .Q(sys_clk[18]));
  FDCE \sys_clk_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[19]),
        .Q(sys_clk[19]));
  FDCE \sys_clk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(sys_clk[1]));
  FDCE \sys_clk_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[20]),
        .Q(sys_clk[20]));
  FDCE \sys_clk_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[21]),
        .Q(sys_clk[21]));
  FDCE \sys_clk_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[22]),
        .Q(sys_clk[22]));
  FDCE \sys_clk_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[23]),
        .Q(sys_clk[23]));
  FDCE \sys_clk_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[24]),
        .Q(sys_clk[24]));
  FDCE \sys_clk_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[25]),
        .Q(sys_clk[25]));
  FDCE \sys_clk_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[26]),
        .Q(sys_clk[26]));
  FDCE \sys_clk_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[27]),
        .Q(sys_clk[27]));
  FDCE \sys_clk_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[28]),
        .Q(sys_clk[28]));
  FDCE \sys_clk_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[29]),
        .Q(sys_clk[29]));
  FDCE \sys_clk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(sys_clk[2]));
  FDCE \sys_clk_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[30]),
        .Q(sys_clk[30]));
  FDCE \sys_clk_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[31]),
        .Q(sys_clk[31]));
  FDCE \sys_clk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(sys_clk[3]));
  FDCE \sys_clk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(sys_clk[4]));
  FDCE \sys_clk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(sys_clk[5]));
  FDCE \sys_clk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(sys_clk[6]));
  FDCE \sys_clk_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[7]),
        .Q(sys_clk[7]));
  FDCE \sys_clk_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[8]),
        .Q(sys_clk[8]));
  FDCE \sys_clk_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\sys_clk_reg[0]_0 ),
        .D(p_0_in[9]),
        .Q(sys_clk[9]));
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
