// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Jan 30 14:23:46 2026
// Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_watch_myip_koreawatch_0_0_sim_netlist.v
// Design      : soc_watch_myip_koreawatch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
   (p_0_in_0,
    AR,
    E,
    \sync_step_reg[1] ,
    \sync_step_reg[1]_0 ,
    ff_cur_reg_0,
    \sync_step_reg[0] ,
    s00_axi_aclk,
    sync_step,
    \hour_reg[0] ,
    active_en_reg,
    CO,
    \min_reg[0] ,
    s00_axi_wvalid,
    s00_axi_wready,
    p_0_in,
    s00_axi_aresetn);
  output [1:0]p_0_in_0;
  output [0:0]AR;
  output [0:0]E;
  output [0:0]\sync_step_reg[1] ;
  output [0:0]\sync_step_reg[1]_0 ;
  output [0:0]ff_cur_reg_0;
  output \sync_step_reg[0] ;
  input s00_axi_aclk;
  input [1:0]sync_step;
  input \hour_reg[0] ;
  input active_en_reg;
  input [0:0]CO;
  input \min_reg[0] ;
  input s00_axi_wvalid;
  input s00_axi_wready;
  input [2:0]p_0_in;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [0:0]E;
  wire active_en_reg;
  wire [0:0]ff_cur_reg_0;
  wire \hour_reg[0] ;
  wire \min_reg[0] ;
  wire [2:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire rx_done;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire [1:0]sync_step;
  wire \sync_step_reg[0] ;
  wire [0:0]\sync_step_reg[1] ;
  wire [0:0]\sync_step_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    active_en_i_1
       (.I0(sync_step[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(sync_step[1]),
        .I4(active_en_reg),
        .O(\sync_step_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \cnt_sysclk[31]_i_1 
       (.I0(sync_step[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(sync_step[0]),
        .I4(active_en_reg),
        .O(\sync_step_reg[1] ));
  LUT5 #(
    .INIT(32'h00000008)) 
    ff_cur_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wready),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(rx_done));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(rx_done),
        .Q(p_0_in_0[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[0]));
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \hour[7]_i_1 
       (.I0(sync_step[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(sync_step[0]),
        .I4(\hour_reg[0] ),
        .O(E));
  LUT5 #(
    .INIT(32'h0020FFFF)) 
    \min[7]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(sync_step[0]),
        .I3(sync_step[1]),
        .I4(\min_reg[0] ),
        .O(ff_cur_reg_0));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \sec[7]_i_1 
       (.I0(sync_step[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(sync_step[0]),
        .I4(active_en_reg),
        .I5(CO),
        .O(\sync_step_reg[1]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_korea_watch
   (SR,
    \s00_axi_awaddr[4] ,
    \s00_axi_awaddr[3] ,
    s00_axi_awaddr_2_sp_1,
    \s00_axi_araddr[4] ,
    \s00_axi_araddr[3] ,
    s00_axi_araddr_2_sp_1,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_awaddr,
    state_write,
    s00_axi_awvalid,
    \axi_awaddr_reg[4] ,
    p_0_in,
    s00_axi_araddr,
    \axi_araddr_reg[4] ,
    sel0,
    Q,
    s00_axi_rdata_0_sp_1,
    \s00_axi_rdata[0]_0 ,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_aresetn);
  output [0:0]SR;
  output \s00_axi_awaddr[4] ;
  output \s00_axi_awaddr[3] ;
  output s00_axi_awaddr_2_sp_1;
  output \s00_axi_araddr[4] ;
  output \s00_axi_araddr[3] ;
  output s00_axi_araddr_2_sp_1;
  output [0:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input [1:0]state_write;
  input s00_axi_awvalid;
  input \axi_awaddr_reg[4] ;
  input [2:0]p_0_in;
  input [2:0]s00_axi_araddr;
  input \axi_araddr_reg[4] ;
  input [2:0]sel0;
  input [7:0]Q;
  input s00_axi_rdata_0_sp_1;
  input [0:0]\s00_axi_rdata[0]_0 ;
  input s00_axi_wvalid;
  input s00_axi_wready;
  input s00_axi_aresetn;

  wire [7:0]Q;
  wire [0:0]SR;
  wire active_en_reg_n_0;
  wire \axi_araddr_reg[4] ;
  wire \axi_awaddr_reg[4] ;
  wire [31:0]cnt_sysclk;
  wire [31:1]cnt_sysclk0;
  wire cnt_sysclk0_carry__0_n_0;
  wire cnt_sysclk0_carry__0_n_1;
  wire cnt_sysclk0_carry__0_n_2;
  wire cnt_sysclk0_carry__0_n_3;
  wire cnt_sysclk0_carry__1_n_0;
  wire cnt_sysclk0_carry__1_n_1;
  wire cnt_sysclk0_carry__1_n_2;
  wire cnt_sysclk0_carry__1_n_3;
  wire cnt_sysclk0_carry__2_n_0;
  wire cnt_sysclk0_carry__2_n_1;
  wire cnt_sysclk0_carry__2_n_2;
  wire cnt_sysclk0_carry__2_n_3;
  wire cnt_sysclk0_carry__3_n_0;
  wire cnt_sysclk0_carry__3_n_1;
  wire cnt_sysclk0_carry__3_n_2;
  wire cnt_sysclk0_carry__3_n_3;
  wire cnt_sysclk0_carry__4_n_0;
  wire cnt_sysclk0_carry__4_n_1;
  wire cnt_sysclk0_carry__4_n_2;
  wire cnt_sysclk0_carry__4_n_3;
  wire cnt_sysclk0_carry__5_n_0;
  wire cnt_sysclk0_carry__5_n_1;
  wire cnt_sysclk0_carry__5_n_2;
  wire cnt_sysclk0_carry__5_n_3;
  wire cnt_sysclk0_carry__6_n_2;
  wire cnt_sysclk0_carry__6_n_3;
  wire cnt_sysclk0_carry_n_0;
  wire cnt_sysclk0_carry_n_1;
  wire cnt_sysclk0_carry_n_2;
  wire cnt_sysclk0_carry_n_3;
  wire ed_rxdone_n_3;
  wire ed_rxdone_n_4;
  wire ed_rxdone_n_5;
  wire ed_rxdone_n_6;
  wire ed_rxdone_n_7;
  wire [7:0]hour;
  wire hour1;
  wire hour1_carry__0_i_1_n_0;
  wire hour1_carry__0_i_2_n_0;
  wire hour1_carry__0_i_3_n_0;
  wire hour1_carry__0_i_4_n_0;
  wire hour1_carry__0_i_5_n_0;
  wire hour1_carry__0_i_6_n_0;
  wire hour1_carry__0_n_0;
  wire hour1_carry__0_n_1;
  wire hour1_carry__0_n_2;
  wire hour1_carry__0_n_3;
  wire hour1_carry__1_i_1_n_0;
  wire hour1_carry__1_i_2_n_0;
  wire hour1_carry__1_i_3_n_0;
  wire hour1_carry__1_i_4_n_0;
  wire hour1_carry__1_n_0;
  wire hour1_carry__1_n_1;
  wire hour1_carry__1_n_2;
  wire hour1_carry__1_n_3;
  wire hour1_carry__2_i_1_n_0;
  wire hour1_carry__2_i_2_n_0;
  wire hour1_carry__2_i_3_n_0;
  wire hour1_carry__2_i_4_n_0;
  wire hour1_carry__2_i_5_n_0;
  wire hour1_carry__2_n_1;
  wire hour1_carry__2_n_2;
  wire hour1_carry__2_n_3;
  wire hour1_carry_i_1_n_0;
  wire hour1_carry_i_2_n_0;
  wire hour1_carry_i_3_n_0;
  wire hour1_carry_i_4_n_0;
  wire hour1_carry_i_5_n_0;
  wire hour1_carry_i_6_n_0;
  wire hour1_carry_n_0;
  wire hour1_carry_n_1;
  wire hour1_carry_n_2;
  wire hour1_carry_n_3;
  wire \hour[0]_i_1_n_0 ;
  wire \hour[1]_i_1_n_0 ;
  wire \hour[2]_i_1_n_0 ;
  wire \hour[3]_i_1_n_0 ;
  wire \hour[3]_i_2_n_0 ;
  wire \hour[4]_i_1_n_0 ;
  wire \hour[4]_i_2_n_0 ;
  wire \hour[4]_i_3_n_0 ;
  wire \hour[4]_i_5_n_0 ;
  wire \hour[5]_i_1_n_0 ;
  wire \hour[6]_i_1_n_0 ;
  wire \hour[7]_i_2_n_0 ;
  wire \hour[7]_i_3_n_0 ;
  wire [7:0]min;
  wire \min[0]_i_1_n_0 ;
  wire \min[1]_i_1_n_0 ;
  wire \min[2]_i_1_n_0 ;
  wire \min[3]_i_1_n_0 ;
  wire \min[3]_i_2_n_0 ;
  wire \min[4]_i_1_n_0 ;
  wire \min[5]_i_1_n_0 ;
  wire \min[5]_i_2_n_0 ;
  wire \min[5]_i_3_n_0 ;
  wire \min[5]_i_4_n_0 ;
  wire \min[5]_i_5_n_0 ;
  wire \min[6]_i_1_n_0 ;
  wire \min[7]_i_2_n_0 ;
  wire \min[7]_i_3_n_0 ;
  wire [2:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire [31:0]p_1_in;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire \s00_axi_araddr[3] ;
  wire \s00_axi_araddr[4] ;
  wire s00_axi_araddr_2_sn_1;
  wire s00_axi_aresetn;
  wire [2:0]s00_axi_awaddr;
  wire \s00_axi_awaddr[3] ;
  wire \s00_axi_awaddr[4] ;
  wire s00_axi_awaddr_2_sn_1;
  wire s00_axi_awvalid;
  wire [0:0]s00_axi_rdata;
  wire [0:0]\s00_axi_rdata[0]_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire [7:0]sec;
  wire \sec[0]_i_1_n_0 ;
  wire \sec[1]_i_1_n_0 ;
  wire \sec[2]_i_1_n_0 ;
  wire \sec[3]_i_1_n_0 ;
  wire \sec[3]_i_2_n_0 ;
  wire \sec[4]_i_1_n_0 ;
  wire \sec[5]_i_1_n_0 ;
  wire \sec[5]_i_2_n_0 ;
  wire \sec[5]_i_3_n_0 ;
  wire \sec[5]_i_4_n_0 ;
  wire \sec[5]_i_5_n_0 ;
  wire \sec[5]_i_6_n_0 ;
  wire \sec[6]_i_1_n_0 ;
  wire \sec[7]_i_2_n_0 ;
  wire [2:0]sel0;
  wire [1:0]state_write;
  wire [1:0]sync_step;
  wire \sync_step[0]_i_1_n_0 ;
  wire \sync_step[1]_i_1_n_0 ;
  wire [3:2]NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_hour1_carry_O_UNCONNECTED;
  wire [3:0]NLW_hour1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_hour1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_hour1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_hour1_carry__2_O_UNCONNECTED;

  assign s00_axi_araddr_2_sp_1 = s00_axi_araddr_2_sn_1;
  assign s00_axi_awaddr_2_sp_1 = s00_axi_awaddr_2_sn_1;
  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  FDCE #(
    .INIT(1'b0)) 
    active_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_rxdone_n_7),
        .Q(active_en_reg_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr_reg[4] ),
        .I2(sel0[0]),
        .O(s00_axi_araddr_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr_reg[4] ),
        .I2(sel0[1]),
        .O(\s00_axi_araddr[3] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr_reg[4] ),
        .I2(sel0[2]),
        .O(\s00_axi_araddr[4] ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg[4] ),
        .I5(p_0_in[0]),
        .O(s00_axi_awaddr_2_sn_1));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg[4] ),
        .I5(p_0_in[1]),
        .O(\s00_axi_awaddr[3] ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg[4] ),
        .I5(p_0_in[2]),
        .O(\s00_axi_awaddr[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry
       (.CI(1'b0),
        .CO({cnt_sysclk0_carry_n_0,cnt_sysclk0_carry_n_1,cnt_sysclk0_carry_n_2,cnt_sysclk0_carry_n_3}),
        .CYINIT(cnt_sysclk[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[4:1]),
        .S(cnt_sysclk[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__0
       (.CI(cnt_sysclk0_carry_n_0),
        .CO({cnt_sysclk0_carry__0_n_0,cnt_sysclk0_carry__0_n_1,cnt_sysclk0_carry__0_n_2,cnt_sysclk0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[8:5]),
        .S(cnt_sysclk[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__1
       (.CI(cnt_sysclk0_carry__0_n_0),
        .CO({cnt_sysclk0_carry__1_n_0,cnt_sysclk0_carry__1_n_1,cnt_sysclk0_carry__1_n_2,cnt_sysclk0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[12:9]),
        .S(cnt_sysclk[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__2
       (.CI(cnt_sysclk0_carry__1_n_0),
        .CO({cnt_sysclk0_carry__2_n_0,cnt_sysclk0_carry__2_n_1,cnt_sysclk0_carry__2_n_2,cnt_sysclk0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[16:13]),
        .S(cnt_sysclk[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__3
       (.CI(cnt_sysclk0_carry__2_n_0),
        .CO({cnt_sysclk0_carry__3_n_0,cnt_sysclk0_carry__3_n_1,cnt_sysclk0_carry__3_n_2,cnt_sysclk0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[20:17]),
        .S(cnt_sysclk[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__4
       (.CI(cnt_sysclk0_carry__3_n_0),
        .CO({cnt_sysclk0_carry__4_n_0,cnt_sysclk0_carry__4_n_1,cnt_sysclk0_carry__4_n_2,cnt_sysclk0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[24:21]),
        .S(cnt_sysclk[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__5
       (.CI(cnt_sysclk0_carry__4_n_0),
        .CO({cnt_sysclk0_carry__5_n_0,cnt_sysclk0_carry__5_n_1,cnt_sysclk0_carry__5_n_2,cnt_sysclk0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk0[28:25]),
        .S(cnt_sysclk[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk0_carry__6
       (.CI(cnt_sysclk0_carry__5_n_0),
        .CO({NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED[3:2],cnt_sysclk0_carry__6_n_2,cnt_sysclk0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_sysclk0_carry__6_O_UNCONNECTED[3],cnt_sysclk0[31:29]}),
        .S({1'b0,cnt_sysclk[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_sysclk[0]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[10]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[11]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[12]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[13]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[14]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[15]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[16]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[17]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[18]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[19]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[1]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[20]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[21]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[22]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[23]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[24]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[25]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[26]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[27]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[28]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[29]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[2]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[30]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[30]),
        .O(p_1_in[30]));
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[31]_i_2 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[31]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[3]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[4]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[5]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[6]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[7]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[8]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk[9]_i_1 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .I2(cnt_sysclk0[9]),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(cnt_sysclk[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[10]),
        .Q(cnt_sysclk[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[11]),
        .Q(cnt_sysclk[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[12]),
        .Q(cnt_sysclk[12]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[13]),
        .Q(cnt_sysclk[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[14]),
        .Q(cnt_sysclk[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[15]),
        .Q(cnt_sysclk[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[16]),
        .Q(cnt_sysclk[16]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[17]),
        .Q(cnt_sysclk[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[18]),
        .Q(cnt_sysclk[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[19]),
        .Q(cnt_sysclk[19]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[1]),
        .Q(cnt_sysclk[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[20]),
        .Q(cnt_sysclk[20]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[21]),
        .Q(cnt_sysclk[21]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[22]),
        .Q(cnt_sysclk[22]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[23]),
        .Q(cnt_sysclk[23]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[24] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[24]),
        .Q(cnt_sysclk[24]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[25] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[25]),
        .Q(cnt_sysclk[25]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[26] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[26]),
        .Q(cnt_sysclk[26]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[27] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[27]),
        .Q(cnt_sysclk[27]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[28] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[28]),
        .Q(cnt_sysclk[28]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[29] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[29]),
        .Q(cnt_sysclk[29]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(cnt_sysclk[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[30] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[30]),
        .Q(cnt_sysclk[30]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[31] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[31]),
        .Q(cnt_sysclk[31]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(cnt_sysclk[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(cnt_sysclk[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(cnt_sysclk[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(cnt_sysclk[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(cnt_sysclk[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[8]),
        .Q(cnt_sysclk[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sysclk_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_4),
        .CLR(SR),
        .D(p_1_in[9]),
        .Q(cnt_sysclk[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n ed_rxdone
       (.AR(SR),
        .CO(hour1_carry__2_n_1),
        .E(ed_rxdone_n_3),
        .active_en_reg(active_en_reg_n_0),
        .ff_cur_reg_0(ed_rxdone_n_6),
        .\hour_reg[0] (\hour[7]_i_3_n_0 ),
        .\min_reg[0] (\min[7]_i_3_n_0 ),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sync_step(sync_step),
        .\sync_step_reg[0] (ed_rxdone_n_7),
        .\sync_step_reg[1] (ed_rxdone_n_4),
        .\sync_step_reg[1]_0 (ed_rxdone_n_5));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 hour1_carry
       (.CI(1'b0),
        .CO({hour1_carry_n_0,hour1_carry_n_1,hour1_carry_n_2,hour1_carry_n_3}),
        .CYINIT(hour1_carry_i_1_n_0),
        .DI({hour1_carry_i_2_n_0,1'b0,1'b0,1'b0}),
        .O(NLW_hour1_carry_O_UNCONNECTED[3:0]),
        .S({hour1_carry_i_3_n_0,hour1_carry_i_4_n_0,hour1_carry_i_5_n_0,hour1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 hour1_carry__0
       (.CI(hour1_carry_n_0),
        .CO({hour1_carry__0_n_0,hour1_carry__0_n_1,hour1_carry__0_n_2,hour1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_sysclk[17],1'b0,hour1_carry__0_i_1_n_0,hour1_carry__0_i_2_n_0}),
        .O(NLW_hour1_carry__0_O_UNCONNECTED[3:0]),
        .S({hour1_carry__0_i_3_n_0,hour1_carry__0_i_4_n_0,hour1_carry__0_i_5_n_0,hour1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    hour1_carry__0_i_1
       (.I0(cnt_sysclk[12]),
        .I1(cnt_sysclk[13]),
        .O(hour1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    hour1_carry__0_i_2
       (.I0(cnt_sysclk[10]),
        .I1(cnt_sysclk[11]),
        .O(hour1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hour1_carry__0_i_3
       (.I0(cnt_sysclk[16]),
        .I1(cnt_sysclk[17]),
        .O(hour1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    hour1_carry__0_i_4
       (.I0(cnt_sysclk[14]),
        .I1(cnt_sysclk[15]),
        .O(hour1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hour1_carry__0_i_5
       (.I0(cnt_sysclk[13]),
        .I1(cnt_sysclk[12]),
        .O(hour1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    hour1_carry__0_i_6
       (.I0(cnt_sysclk[11]),
        .I1(cnt_sysclk[10]),
        .O(hour1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 hour1_carry__1
       (.CI(hour1_carry__0_n_0),
        .CO({hour1_carry__1_n_0,hour1_carry__1_n_1,hour1_carry__1_n_2,hour1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_sysclk[25],1'b0,1'b0,cnt_sysclk[19]}),
        .O(NLW_hour1_carry__1_O_UNCONNECTED[3:0]),
        .S({hour1_carry__1_i_1_n_0,hour1_carry__1_i_2_n_0,hour1_carry__1_i_3_n_0,hour1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    hour1_carry__1_i_1
       (.I0(cnt_sysclk[24]),
        .I1(cnt_sysclk[25]),
        .O(hour1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    hour1_carry__1_i_2
       (.I0(cnt_sysclk[22]),
        .I1(cnt_sysclk[23]),
        .O(hour1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    hour1_carry__1_i_3
       (.I0(cnt_sysclk[20]),
        .I1(cnt_sysclk[21]),
        .O(hour1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hour1_carry__1_i_4
       (.I0(cnt_sysclk[18]),
        .I1(cnt_sysclk[19]),
        .O(hour1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 hour1_carry__2
       (.CI(hour1_carry__1_n_0),
        .CO({NLW_hour1_carry__2_CO_UNCONNECTED[3],hour1_carry__2_n_1,hour1_carry__2_n_2,hour1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,hour1_carry__2_i_1_n_0,hour1_carry__2_i_2_n_0,cnt_sysclk[27]}),
        .O(NLW_hour1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,hour1_carry__2_i_3_n_0,hour1_carry__2_i_4_n_0,hour1_carry__2_i_5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    hour1_carry__2_i_1
       (.I0(cnt_sysclk[30]),
        .I1(cnt_sysclk[31]),
        .O(hour1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    hour1_carry__2_i_2
       (.I0(cnt_sysclk[28]),
        .I1(cnt_sysclk[29]),
        .O(hour1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    hour1_carry__2_i_3
       (.I0(cnt_sysclk[31]),
        .I1(cnt_sysclk[30]),
        .O(hour1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    hour1_carry__2_i_4
       (.I0(cnt_sysclk[29]),
        .I1(cnt_sysclk[28]),
        .O(hour1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hour1_carry__2_i_5
       (.I0(cnt_sysclk[26]),
        .I1(cnt_sysclk[27]),
        .O(hour1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    hour1_carry_i_1
       (.I0(cnt_sysclk[0]),
        .I1(cnt_sysclk[1]),
        .O(hour1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    hour1_carry_i_2
       (.I0(cnt_sysclk[8]),
        .I1(cnt_sysclk[9]),
        .O(hour1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    hour1_carry_i_3
       (.I0(cnt_sysclk[9]),
        .I1(cnt_sysclk[8]),
        .O(hour1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    hour1_carry_i_4
       (.I0(cnt_sysclk[6]),
        .I1(cnt_sysclk[7]),
        .O(hour1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    hour1_carry_i_5
       (.I0(cnt_sysclk[4]),
        .I1(cnt_sysclk[5]),
        .O(hour1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    hour1_carry_i_6
       (.I0(cnt_sysclk[2]),
        .I1(cnt_sysclk[3]),
        .O(hour1_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \hour[0]_i_1 
       (.I0(hour[0]),
        .I1(\hour[4]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\hour[7]_i_3_n_0 ),
        .O(\hour[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \hour[1]_i_1 
       (.I0(\hour[7]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\hour[4]_i_2_n_0 ),
        .I3(hour[1]),
        .I4(hour[0]),
        .O(\hour[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F8F8F8888888)) 
    \hour[2]_i_1 
       (.I0(\hour[7]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\hour[4]_i_2_n_0 ),
        .I3(hour[0]),
        .I4(hour[1]),
        .I5(hour[2]),
        .O(\hour[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF88888F8F888F888)) 
    \hour[3]_i_1 
       (.I0(\hour[7]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(\hour[4]_i_2_n_0 ),
        .I3(hour[3]),
        .I4(\hour[3]_i_2_n_0 ),
        .I5(hour[2]),
        .O(\hour[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \hour[3]_i_2 
       (.I0(hour[1]),
        .I1(hour[0]),
        .O(\hour[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F8F8F8888888)) 
    \hour[4]_i_1 
       (.I0(\hour[7]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(\hour[4]_i_2_n_0 ),
        .I3(hour[3]),
        .I4(\hour[4]_i_3_n_0 ),
        .I5(hour[4]),
        .O(\hour[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \hour[4]_i_2 
       (.I0(\min[5]_i_4_n_0 ),
        .I1(active_en_reg_n_0),
        .I2(hour1_carry__2_n_1),
        .I3(\sec[5]_i_5_n_0 ),
        .I4(hour1),
        .O(\hour[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \hour[4]_i_3 
       (.I0(hour[2]),
        .I1(hour[0]),
        .I2(hour[1]),
        .O(\hour[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \hour[4]_i_4 
       (.I0(\hour[4]_i_5_n_0 ),
        .I1(hour[7]),
        .I2(hour[4]),
        .I3(hour[3]),
        .O(hour1));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \hour[4]_i_5 
       (.I0(hour[6]),
        .I1(hour[5]),
        .I2(hour[1]),
        .I3(hour[0]),
        .I4(hour[4]),
        .I5(hour[2]),
        .O(\hour[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hour[5]_i_1 
       (.I0(\hour[7]_i_3_n_0 ),
        .I1(Q[5]),
        .O(\hour[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hour[6]_i_1 
       (.I0(\hour[7]_i_3_n_0 ),
        .I1(Q[6]),
        .O(\hour[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hour[7]_i_2 
       (.I0(\hour[7]_i_3_n_0 ),
        .I1(Q[7]),
        .O(\hour[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hour[7]_i_3 
       (.I0(\sec[5]_i_5_n_0 ),
        .I1(hour1_carry__2_n_1),
        .I2(active_en_reg_n_0),
        .I3(\min[5]_i_4_n_0 ),
        .O(\hour[7]_i_3_n_0 ));
  FDCE \hour_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_3),
        .CLR(SR),
        .D(\hour[0]_i_1_n_0 ),
        .Q(hour[0]));
  FDCE \hour_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_3),
        .CLR(SR),
        .D(\hour[1]_i_1_n_0 ),
        .Q(hour[1]));
  FDCE \hour_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_3),
        .CLR(SR),
        .D(\hour[2]_i_1_n_0 ),
        .Q(hour[2]));
  FDCE \hour_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_3),
        .CLR(SR),
        .D(\hour[3]_i_1_n_0 ),
        .Q(hour[3]));
  FDCE \hour_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_3),
        .CLR(SR),
        .D(\hour[4]_i_1_n_0 ),
        .Q(hour[4]));
  FDCE \hour_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_3),
        .CLR(SR),
        .D(\hour[5]_i_1_n_0 ),
        .Q(hour[5]));
  FDCE \hour_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_3),
        .CLR(SR),
        .D(\hour[6]_i_1_n_0 ),
        .Q(hour[6]));
  FDCE \hour_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_3),
        .CLR(SR),
        .D(\hour[7]_i_2_n_0 ),
        .Q(hour[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \min[0]_i_1 
       (.I0(min[0]),
        .I1(\min[5]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\min[7]_i_3_n_0 ),
        .O(\min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \min[1]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\min[5]_i_2_n_0 ),
        .I3(min[1]),
        .I4(min[0]),
        .O(\min[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F888F888F888)) 
    \min[2]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\min[5]_i_2_n_0 ),
        .I3(min[2]),
        .I4(min[0]),
        .I5(min[1]),
        .O(\min[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F8F8F8888888)) 
    \min[3]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(\min[5]_i_2_n_0 ),
        .I3(\min[3]_i_2_n_0 ),
        .I4(min[2]),
        .I5(min[3]),
        .O(\min[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \min[3]_i_2 
       (.I0(min[1]),
        .I1(min[0]),
        .O(\min[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \min[4]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(\min[5]_i_2_n_0 ),
        .I3(min[4]),
        .I4(\min[5]_i_3_n_0 ),
        .O(\min[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F8F8F8888888)) 
    \min[5]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(\min[5]_i_2_n_0 ),
        .I3(min[4]),
        .I4(\min[5]_i_3_n_0 ),
        .I5(min[5]),
        .O(\min[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \min[5]_i_2 
       (.I0(\sec[5]_i_5_n_0 ),
        .I1(hour1_carry__2_n_1),
        .I2(active_en_reg_n_0),
        .I3(\min[5]_i_4_n_0 ),
        .O(\min[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \min[5]_i_3 
       (.I0(min[3]),
        .I1(min[1]),
        .I2(min[0]),
        .I3(min[2]),
        .O(\min[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \min[5]_i_4 
       (.I0(min[7]),
        .I1(min[6]),
        .I2(\min[5]_i_5_n_0 ),
        .O(\min[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080000000)) 
    \min[5]_i_5 
       (.I0(min[3]),
        .I1(min[4]),
        .I2(min[5]),
        .I3(min[1]),
        .I4(min[0]),
        .I5(min[2]),
        .O(\min[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \min[6]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(Q[6]),
        .O(\min[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \min[7]_i_2 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(Q[7]),
        .O(\min[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \min[7]_i_3 
       (.I0(active_en_reg_n_0),
        .I1(hour1_carry__2_n_1),
        .I2(\sec[5]_i_5_n_0 ),
        .O(\min[7]_i_3_n_0 ));
  FDCE \min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_6),
        .CLR(SR),
        .D(\min[0]_i_1_n_0 ),
        .Q(min[0]));
  FDCE \min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_6),
        .CLR(SR),
        .D(\min[1]_i_1_n_0 ),
        .Q(min[1]));
  FDCE \min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_6),
        .CLR(SR),
        .D(\min[2]_i_1_n_0 ),
        .Q(min[2]));
  FDCE \min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_6),
        .CLR(SR),
        .D(\min[3]_i_1_n_0 ),
        .Q(min[3]));
  FDCE \min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_6),
        .CLR(SR),
        .D(\min[4]_i_1_n_0 ),
        .Q(min[4]));
  FDCE \min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_6),
        .CLR(SR),
        .D(\min[5]_i_1_n_0 ),
        .Q(min[5]));
  FDCE \min_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_6),
        .CLR(SR),
        .D(\min[6]_i_1_n_0 ),
        .Q(min[6]));
  FDCE \min_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_6),
        .CLR(SR),
        .D(\min[7]_i_2_n_0 ),
        .Q(min[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(s00_axi_rdata_0_sn_1),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\s00_axi_rdata[0]_0 ),
        .I5(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata));
  LUT6 #(
    .INIT(64'h00000000CFC0A0A0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(hour[0]),
        .I1(sec[0]),
        .I2(sel0[0]),
        .I3(min[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \sec[0]_i_1 
       (.I0(sec[0]),
        .I1(\sec[5]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(hour1_carry__2_n_1),
        .I4(active_en_reg_n_0),
        .O(\sec[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070FF70FF707070)) 
    \sec[1]_i_1 
       (.I0(active_en_reg_n_0),
        .I1(hour1_carry__2_n_1),
        .I2(Q[1]),
        .I3(\sec[5]_i_4_n_0 ),
        .I4(sec[1]),
        .I5(sec[0]),
        .O(\sec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F888F888F888)) 
    \sec[2]_i_1 
       (.I0(\sec[5]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\sec[5]_i_4_n_0 ),
        .I3(sec[2]),
        .I4(sec[0]),
        .I5(sec[1]),
        .O(\sec[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7070707070FF70)) 
    \sec[3]_i_1 
       (.I0(active_en_reg_n_0),
        .I1(hour1_carry__2_n_1),
        .I2(Q[3]),
        .I3(\sec[5]_i_4_n_0 ),
        .I4(\sec[3]_i_2_n_0 ),
        .I5(sec[3]),
        .O(\sec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sec[3]_i_2 
       (.I0(sec[2]),
        .I1(sec[0]),
        .I2(sec[1]),
        .O(\sec[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7070FF70FF707070)) 
    \sec[4]_i_1 
       (.I0(active_en_reg_n_0),
        .I1(hour1_carry__2_n_1),
        .I2(Q[4]),
        .I3(\sec[5]_i_4_n_0 ),
        .I4(sec[4]),
        .I5(\sec[5]_i_3_n_0 ),
        .O(\sec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8888F8888888)) 
    \sec[5]_i_1 
       (.I0(\sec[5]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(\sec[5]_i_3_n_0 ),
        .I3(sec[4]),
        .I4(\sec[5]_i_4_n_0 ),
        .I5(sec[5]),
        .O(\sec[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sec[5]_i_2 
       (.I0(hour1_carry__2_n_1),
        .I1(active_en_reg_n_0),
        .O(\sec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sec[5]_i_3 
       (.I0(sec[3]),
        .I1(sec[1]),
        .I2(sec[0]),
        .I3(sec[2]),
        .O(\sec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \sec[5]_i_4 
       (.I0(active_en_reg_n_0),
        .I1(hour1_carry__2_n_1),
        .I2(\sec[5]_i_5_n_0 ),
        .O(\sec[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sec[5]_i_5 
       (.I0(sec[7]),
        .I1(sec[6]),
        .I2(\sec[5]_i_6_n_0 ),
        .O(\sec[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080000000)) 
    \sec[5]_i_6 
       (.I0(sec[3]),
        .I1(sec[4]),
        .I2(sec[5]),
        .I3(sec[1]),
        .I4(sec[0]),
        .I5(sec[2]),
        .O(\sec[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \sec[6]_i_1 
       (.I0(active_en_reg_n_0),
        .I1(hour1_carry__2_n_1),
        .I2(Q[6]),
        .O(\sec[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \sec[7]_i_2 
       (.I0(active_en_reg_n_0),
        .I1(hour1_carry__2_n_1),
        .I2(Q[7]),
        .O(\sec[7]_i_2_n_0 ));
  FDCE \sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_5),
        .CLR(SR),
        .D(\sec[0]_i_1_n_0 ),
        .Q(sec[0]));
  FDCE \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_5),
        .CLR(SR),
        .D(\sec[1]_i_1_n_0 ),
        .Q(sec[1]));
  FDCE \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_5),
        .CLR(SR),
        .D(\sec[2]_i_1_n_0 ),
        .Q(sec[2]));
  FDCE \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_5),
        .CLR(SR),
        .D(\sec[3]_i_1_n_0 ),
        .Q(sec[3]));
  FDCE \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_5),
        .CLR(SR),
        .D(\sec[4]_i_1_n_0 ),
        .Q(sec[4]));
  FDCE \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_5),
        .CLR(SR),
        .D(\sec[5]_i_1_n_0 ),
        .Q(sec[5]));
  FDCE \sec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_5),
        .CLR(SR),
        .D(\sec[6]_i_1_n_0 ),
        .Q(sec[6]));
  FDCE \sec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_rxdone_n_5),
        .CLR(SR),
        .D(\sec[7]_i_2_n_0 ),
        .Q(sec[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF304)) 
    \sync_step[0]_i_1 
       (.I0(sync_step[1]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(sync_step[0]),
        .O(\sync_step[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF308)) 
    \sync_step[1]_i_1 
       (.I0(sync_step[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(sync_step[1]),
        .O(\sync_step[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sync_step_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\sync_step[0]_i_1_n_0 ),
        .Q(sync_step[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sync_step_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\sync_step[1]_i_1_n_0 ),
        .Q(sync_step[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
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
  output s00_axi_wready;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch_slave_lite_v1_0_S00_AXI myip_koreawatch_slave_lite_v1_0_S00_AXI_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
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
  output s00_axi_wready;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
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
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire axi_awready0__0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire inst_n_0;
  wire inst_n_1;
  wire inst_n_2;
  wire inst_n_3;
  wire inst_n_4;
  wire inst_n_5;
  wire inst_n_6;
  wire [2:0]p_0_in;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
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
  wire \slv_reg7[31]_i_2_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
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
        .R(inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
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
        .R(inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(inst_n_0));
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
        .D(inst_n_6),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(inst_n_5),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(inst_n_4),
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
        .R(inst_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(inst_n_3),
        .Q(p_0_in[0]),
        .R(inst_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(inst_n_2),
        .Q(p_0_in[1]),
        .R(inst_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(inst_n_1),
        .Q(p_0_in[2]),
        .R(inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hCCC4FFCF)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(inst_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(inst_n_0));
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
        .R(inst_n_0));
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
        .R(inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_korea_watch inst
       (.Q(slv_reg0[7:0]),
        .SR(inst_n_0),
        .\axi_araddr_reg[4] (\axi_araddr[4]_i_2_n_0 ),
        .\axi_awaddr_reg[4] (axi_awready_reg_0),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .\s00_axi_araddr[3] (inst_n_5),
        .\s00_axi_araddr[4] (inst_n_4),
        .s00_axi_araddr_2_sp_1(inst_n_6),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_awaddr(s00_axi_awaddr),
        .\s00_axi_awaddr[3] (inst_n_2),
        .\s00_axi_awaddr[4] (inst_n_1),
        .s00_axi_awaddr_2_sp_1(inst_n_3),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_rdata(s00_axi_rdata[0]),
        .\s00_axi_rdata[0]_0 (slv_reg7[0]),
        .s00_axi_rdata_0_sp_1(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sel0(sel0),
        .state_write(state_write));
  LUT6 #(
    .INIT(64'hFFFFFFFF48084000)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg6[0]),
        .I4(slv_reg5[0]),
        .I5(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A0C)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(slv_reg4[0]),
        .I1(slv_reg0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[10]),
        .I5(slv_reg5[10]),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg0[10]),
        .I1(slv_reg4[10]),
        .I2(slv_reg7[10]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[11]),
        .I5(slv_reg5[11]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg0[11]),
        .I1(slv_reg4[11]),
        .I2(slv_reg7[11]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[12]),
        .I5(slv_reg5[12]),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg0[12]),
        .I1(slv_reg4[12]),
        .I2(slv_reg7[12]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[13]),
        .I5(slv_reg5[13]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg0[13]),
        .I1(slv_reg4[13]),
        .I2(slv_reg7[13]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[14]),
        .I5(slv_reg5[14]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg0[14]),
        .I1(slv_reg4[14]),
        .I2(slv_reg7[14]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[15]),
        .I5(slv_reg5[15]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg0[15]),
        .I1(slv_reg4[15]),
        .I2(slv_reg7[15]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[16]),
        .I5(slv_reg5[16]),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg0[16]),
        .I1(slv_reg4[16]),
        .I2(slv_reg7[16]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[17]),
        .I5(slv_reg5[17]),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg0[17]),
        .I1(slv_reg4[17]),
        .I2(slv_reg7[17]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[18]),
        .I5(slv_reg5[18]),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg0[18]),
        .I1(slv_reg4[18]),
        .I2(slv_reg7[18]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[19]),
        .I5(slv_reg5[19]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg0[19]),
        .I1(slv_reg4[19]),
        .I2(slv_reg7[19]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[1]),
        .I5(slv_reg5[1]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(slv_reg0[1]),
        .I1(slv_reg4[1]),
        .I2(slv_reg7[1]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[20]),
        .I5(slv_reg5[20]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg0[20]),
        .I1(slv_reg4[20]),
        .I2(slv_reg7[20]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[21]),
        .I5(slv_reg5[21]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg0[21]),
        .I1(slv_reg4[21]),
        .I2(slv_reg7[21]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[22]),
        .I5(slv_reg5[22]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg0[22]),
        .I1(slv_reg4[22]),
        .I2(slv_reg7[22]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[23]),
        .I5(slv_reg5[23]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg0[23]),
        .I1(slv_reg4[23]),
        .I2(slv_reg7[23]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[24]),
        .I5(slv_reg5[24]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg0[24]),
        .I1(slv_reg4[24]),
        .I2(slv_reg7[24]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[25]),
        .I5(slv_reg5[25]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg0[25]),
        .I1(slv_reg4[25]),
        .I2(slv_reg7[25]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[26]),
        .I5(slv_reg5[26]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg0[26]),
        .I1(slv_reg4[26]),
        .I2(slv_reg7[26]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[27]),
        .I5(slv_reg5[27]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg0[27]),
        .I1(slv_reg4[27]),
        .I2(slv_reg7[27]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[28]),
        .I5(slv_reg5[28]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg0[28]),
        .I1(slv_reg4[28]),
        .I2(slv_reg7[28]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[29]),
        .I5(slv_reg5[29]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg0[29]),
        .I1(slv_reg4[29]),
        .I2(slv_reg7[29]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[2]),
        .I5(slv_reg5[2]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(slv_reg0[2]),
        .I1(slv_reg4[2]),
        .I2(slv_reg7[2]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[30]),
        .I5(slv_reg5[30]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg0[30]),
        .I1(slv_reg4[30]),
        .I2(slv_reg7[30]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[31]),
        .I5(slv_reg5[31]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg0[31]),
        .I1(slv_reg4[31]),
        .I2(slv_reg7[31]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[3]),
        .I5(slv_reg5[3]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(slv_reg0[3]),
        .I1(slv_reg4[3]),
        .I2(slv_reg7[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[4]),
        .I5(slv_reg5[4]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(slv_reg0[4]),
        .I1(slv_reg4[4]),
        .I2(slv_reg7[4]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[5]),
        .I5(slv_reg5[5]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(slv_reg0[5]),
        .I1(slv_reg4[5]),
        .I2(slv_reg7[5]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[6]),
        .I5(slv_reg5[6]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(slv_reg0[6]),
        .I1(slv_reg4[6]),
        .I2(slv_reg7[6]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[7]),
        .I5(slv_reg5[7]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg0[7]),
        .I1(slv_reg4[7]),
        .I2(slv_reg7[7]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[8]),
        .I5(slv_reg5[8]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg0[8]),
        .I1(slv_reg4[8]),
        .I2(slv_reg7[8]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAEAAAEABAAAAAAA)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(slv_reg6[9]),
        .I5(slv_reg5[9]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hF000000000CC00AA)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg0[9]),
        .I1(slv_reg4[9]),
        .I2(slv_reg7[9]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \slv_reg0[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(s00_axi_awaddr[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(inst_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(inst_n_0));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg4[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg4[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg4[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg4[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(inst_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(inst_n_0));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \slv_reg5[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(p_0_in[1]),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_wstrb[1]),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \slv_reg5[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(p_0_in[1]),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_wstrb[2]),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \slv_reg5[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(p_0_in[1]),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_wstrb[3]),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \slv_reg5[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(s00_axi_awaddr[0]),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \slv_reg5[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(p_0_in[1]),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(inst_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(inst_n_0));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg6[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg6[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg6[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg6[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg6[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg6[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \slv_reg6[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(s00_axi_awaddr[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg6[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg6[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg6[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(inst_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(inst_n_0));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg7[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg7[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg7[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg7[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg7[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg7[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \slv_reg7[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(s00_axi_awaddr[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(\slv_reg7[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg7[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg7[31]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(inst_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(inst_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "soc_watch_myip_koreawatch_0_0,myip_koreawatch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_koreawatch,Vivado 2024.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch inst
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
