// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Mar  7 16:21:55 2026
// Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_watchRev2_myip_stopwatch_0_0_sim_netlist.v
// Design      : soc_watchRev2_myip_stopwatch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
   (p_0_in,
    AR,
    ff_cur_reg_0,
    E,
    ff_cur_reg_1,
    ff_cur_reg_2,
    D,
    ff_cur_reg_3,
    ff_cur_reg_4,
    ff_cur_reg_5,
    ff_old_reg_0,
    ff_cur_reg_6,
    \lap_min_reg[3] ,
    \lap_sec_reg[3] ,
    \lap_csec_reg[5] ,
    Q,
    s00_axi_aclk,
    \sec_reg[0] ,
    \cnt_sysclk2_reg[19] ,
    \csec_reg[6] ,
    \lap_csec_reg[0] ,
    \lap_min_reg[0] ,
    cnt_sysclk20,
    \cnt_sysclk2_reg[0] ,
    \min_reg[0] ,
    \min_reg[0]_0 ,
    s00_axi_aresetn,
    \lap_min_reg[5] ,
    \lap_min_reg[5]_0 ,
    \lap_min_reg[5]_1 ,
    \lap_sec_reg[5] ,
    \lap_sec_reg[5]_0 ,
    \lap_csec_reg[6] ,
    \lap_csec_reg[5]_0 ,
    \lap_csec_reg[6]_0 ,
    \lap_csec_reg[6]_1 );
  output [1:0]p_0_in;
  output [0:0]AR;
  output ff_cur_reg_0;
  output [0:0]E;
  output [0:0]ff_cur_reg_1;
  output [0:0]ff_cur_reg_2;
  output [19:0]D;
  output [0:0]ff_cur_reg_3;
  output [0:0]ff_cur_reg_4;
  output [0:0]ff_cur_reg_5;
  output [0:0]ff_old_reg_0;
  output [0:0]ff_cur_reg_6;
  output [5:0]\lap_min_reg[3] ;
  output [5:0]\lap_sec_reg[3] ;
  output [6:0]\lap_csec_reg[5] ;
  input [0:0]Q;
  input s00_axi_aclk;
  input \sec_reg[0] ;
  input \cnt_sysclk2_reg[19] ;
  input \csec_reg[6] ;
  input \lap_csec_reg[0] ;
  input \lap_min_reg[0] ;
  input [18:0]cnt_sysclk20;
  input [0:0]\cnt_sysclk2_reg[0] ;
  input \min_reg[0] ;
  input \min_reg[0]_0 ;
  input s00_axi_aresetn;
  input [5:0]\lap_min_reg[5] ;
  input \lap_min_reg[5]_0 ;
  input \lap_min_reg[5]_1 ;
  input [5:0]\lap_sec_reg[5] ;
  input \lap_sec_reg[5]_0 ;
  input [6:0]\lap_csec_reg[6] ;
  input \lap_csec_reg[5]_0 ;
  input \lap_csec_reg[6]_0 ;
  input \lap_csec_reg[6]_1 ;

  wire [0:0]AR;
  wire [19:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [18:0]cnt_sysclk20;
  wire [0:0]\cnt_sysclk2_reg[0] ;
  wire \cnt_sysclk2_reg[19] ;
  wire \csec_reg[6] ;
  wire ff_cur_reg_0;
  wire [0:0]ff_cur_reg_1;
  wire [0:0]ff_cur_reg_2;
  wire [0:0]ff_cur_reg_3;
  wire [0:0]ff_cur_reg_4;
  wire [0:0]ff_cur_reg_5;
  wire [0:0]ff_cur_reg_6;
  wire [0:0]ff_old_reg_0;
  wire \lap_csec[6]_i_3_n_0 ;
  wire \lap_csec_reg[0] ;
  wire [6:0]\lap_csec_reg[5] ;
  wire \lap_csec_reg[5]_0 ;
  wire [6:0]\lap_csec_reg[6] ;
  wire \lap_csec_reg[6]_0 ;
  wire \lap_csec_reg[6]_1 ;
  wire \lap_min[5]_i_4_n_0 ;
  wire \lap_min[5]_i_6_n_0 ;
  wire \lap_min_reg[0] ;
  wire [5:0]\lap_min_reg[3] ;
  wire [5:0]\lap_min_reg[5] ;
  wire \lap_min_reg[5]_0 ;
  wire \lap_min_reg[5]_1 ;
  wire \lap_sec[5]_i_3_n_0 ;
  wire \lap_sec[5]_i_4_n_0 ;
  wire [5:0]\lap_sec_reg[3] ;
  wire [5:0]\lap_sec_reg[5] ;
  wire \lap_sec_reg[5]_0 ;
  wire \min_reg[0] ;
  wire \min_reg[0]_0 ;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \sec_reg[0] ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \cnt_sysclk1[19]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\sec_reg[0] ),
        .O(ff_cur_reg_6));
  LUT5 #(
    .INIT(32'h00005100)) 
    \cnt_sysclk2[0]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(\cnt_sysclk2_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[10]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[9]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[11]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[10]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[12]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[11]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[13]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[12]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[14]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[13]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[15]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[14]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[16]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[15]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[17]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[16]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[18]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[17]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    \cnt_sysclk2[19]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\sec_reg[0] ),
        .I3(\cnt_sysclk2_reg[19] ),
        .O(ff_cur_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[19]_i_2 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[18]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[1]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[2]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[3]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[4]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[5]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[4]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[6]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[5]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[7]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[6]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[8]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[7]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h51000000)) 
    \cnt_sysclk2[9]_i_1 
       (.I0(\lap_csec_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\sec_reg[0] ),
        .I4(cnt_sysclk20[8]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    \csec[6]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\sec_reg[0] ),
        .I3(\csec_reg[6] ),
        .O(E));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT3 #(
    .INIT(8'hF4)) 
    \lap_count[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\cnt_sysclk2_reg[19] ),
        .O(ff_old_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_csec[0]_i_1 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec_reg[6] [0]),
        .O(\lap_csec_reg[5] [0]));
  LUT3 #(
    .INIT(8'h28)) 
    \lap_csec[1]_i_1 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec_reg[6] [1]),
        .I2(\lap_csec_reg[6] [0]),
        .O(\lap_csec_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_csec[2]_i_1 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec_reg[6] [0]),
        .I2(\lap_csec_reg[6] [1]),
        .I3(\lap_csec_reg[6] [2]),
        .O(\lap_csec_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_csec[3]_i_1 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec_reg[6] [1]),
        .I2(\lap_csec_reg[6] [0]),
        .I3(\lap_csec_reg[6] [2]),
        .I4(\lap_csec_reg[6] [3]),
        .O(\lap_csec_reg[5] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_csec[4]_i_1 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec_reg[6] [2]),
        .I2(\lap_csec_reg[6] [0]),
        .I3(\lap_csec_reg[6] [1]),
        .I4(\lap_csec_reg[6] [3]),
        .I5(\lap_csec_reg[6] [4]),
        .O(\lap_csec_reg[5] [4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_csec[5]_i_1 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec_reg[6] [3]),
        .I2(\lap_csec_reg[5]_0 ),
        .I3(\lap_csec_reg[6] [2]),
        .I4(\lap_csec_reg[6] [4]),
        .I5(\lap_csec_reg[6] [5]),
        .O(\lap_csec_reg[5] [5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h88A8)) 
    \lap_csec[6]_i_1 
       (.I0(ff_cur_reg_0),
        .I1(\lap_csec_reg[0] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(ff_cur_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_csec[6]_i_2 
       (.I0(\lap_csec[6]_i_3_n_0 ),
        .I1(\lap_csec_reg[6] [5]),
        .I2(\lap_csec_reg[6]_0 ),
        .I3(\lap_csec_reg[6] [6]),
        .O(\lap_csec_reg[5] [6]));
  LUT6 #(
    .INIT(64'h2AAA2AAA00002AAA)) 
    \lap_csec[6]_i_3 
       (.I0(\sec_reg[0] ),
        .I1(\lap_csec_reg[6]_1 ),
        .I2(\lap_csec_reg[6] [5]),
        .I3(\lap_csec_reg[6] [6]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\lap_csec[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_min[0]_i_1 
       (.I0(\lap_min[5]_i_4_n_0 ),
        .I1(\lap_min_reg[5] [0]),
        .O(\lap_min_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_min[1]_i_1 
       (.I0(\lap_min[5]_i_4_n_0 ),
        .I1(\lap_min_reg[5] [1]),
        .I2(\lap_min_reg[5] [0]),
        .O(\lap_min_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_min[2]_i_1 
       (.I0(\lap_min[5]_i_4_n_0 ),
        .I1(\lap_min_reg[5] [0]),
        .I2(\lap_min_reg[5] [1]),
        .I3(\lap_min_reg[5] [2]),
        .O(\lap_min_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_min[3]_i_1 
       (.I0(\lap_min[5]_i_4_n_0 ),
        .I1(\lap_min_reg[5] [1]),
        .I2(\lap_min_reg[5] [0]),
        .I3(\lap_min_reg[5] [2]),
        .I4(\lap_min_reg[5] [3]),
        .O(\lap_min_reg[3] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_min[4]_i_1 
       (.I0(\lap_min[5]_i_4_n_0 ),
        .I1(\lap_min_reg[5] [2]),
        .I2(\lap_min_reg[5] [0]),
        .I3(\lap_min_reg[5] [1]),
        .I4(\lap_min_reg[5] [3]),
        .I5(\lap_min_reg[5] [4]),
        .O(\lap_min_reg[3] [4]));
  LUT6 #(
    .INIT(64'h88A8000000A00000)) 
    \lap_min[5]_i_1 
       (.I0(ff_cur_reg_0),
        .I1(\lap_csec_reg[0] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(\lap_sec[5]_i_3_n_0 ),
        .I5(\lap_min_reg[0] ),
        .O(ff_cur_reg_1));
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \lap_min[5]_i_2 
       (.I0(\lap_min[5]_i_4_n_0 ),
        .I1(\lap_min_reg[5]_0 ),
        .I2(\lap_min_reg[5] [3]),
        .I3(\lap_min_reg[5] [4]),
        .I4(\lap_min_reg[5] [5]),
        .O(\lap_min_reg[3] [5]));
  LUT6 #(
    .INIT(64'h2AAA2AAA2AAAAAAA)) 
    \lap_min[5]_i_4 
       (.I0(\lap_min[5]_i_6_n_0 ),
        .I1(\lap_min_reg[5] [3]),
        .I2(\lap_min_reg[5] [4]),
        .I3(\lap_min_reg[5] [5]),
        .I4(\lap_min_reg[5] [2]),
        .I5(\lap_min_reg[5]_1 ),
        .O(\lap_min[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_min[5]_i_6 
       (.I0(\sec_reg[0] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\lap_min[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_sec[0]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [0]),
        .O(\lap_sec_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_sec[1]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [1]),
        .I2(\lap_sec_reg[5] [0]),
        .O(\lap_sec_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_sec[2]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [0]),
        .I2(\lap_sec_reg[5] [1]),
        .I3(\lap_sec_reg[5] [2]),
        .O(\lap_sec_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_sec[3]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [1]),
        .I2(\lap_sec_reg[5] [0]),
        .I3(\lap_sec_reg[5] [2]),
        .I4(\lap_sec_reg[5] [3]),
        .O(\lap_sec_reg[3] [3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \lap_sec[4]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [4]),
        .I2(\lap_sec_reg[5] [2]),
        .I3(\lap_sec_reg[5] [0]),
        .I4(\lap_sec_reg[5] [1]),
        .I5(\lap_sec_reg[5] [3]),
        .O(\lap_sec_reg[3] [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88A80000)) 
    \lap_sec[5]_i_1 
       (.I0(ff_cur_reg_0),
        .I1(\lap_csec_reg[0] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(\lap_sec[5]_i_3_n_0 ),
        .O(ff_cur_reg_2));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    \lap_sec[5]_i_2 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [3]),
        .I2(\lap_sec_reg[5]_0 ),
        .I3(\lap_sec_reg[5] [2]),
        .I4(\lap_sec_reg[5] [4]),
        .I5(\lap_sec_reg[5] [5]),
        .O(\lap_sec_reg[3] [5]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \lap_sec[5]_i_3 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\lap_csec_reg[6] [6]),
        .I3(\lap_csec_reg[6] [5]),
        .I4(\lap_csec_reg[6]_1 ),
        .O(\lap_sec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \lap_sec[5]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\sec_reg[0] ),
        .I3(\lap_min_reg[0] ),
        .O(\lap_sec[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F2)) 
    \min[5]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\sec_reg[0] ),
        .I3(\csec_reg[6] ),
        .I4(\min_reg[0] ),
        .I5(\min_reg[0]_0 ),
        .O(ff_cur_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000000F2)) 
    \sec[5]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\sec_reg[0] ),
        .I3(\csec_reg[6] ),
        .I4(\min_reg[0] ),
        .O(ff_cur_reg_4));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
   (ff_cur_reg_0,
    ff_old_reg_0,
    \slv_reg0_reg[2] ,
    ff_cur_reg_1,
    \FSM_onehot_diff_state_reg[0] ,
    E,
    \FSM_onehot_diff_state_reg[2] ,
    \FSM_onehot_diff_state_reg[1] ,
    D,
    \lap_count_reg[3] ,
    start_p,
    Q,
    s00_axi_aclk,
    AR,
    \prev_csec_reg[0] ,
    \diff_csec_reg[0] ,
    \tmp_csec_reg[0] ,
    \lap_count_reg[0] ,
    \lap_count_reg[0]_0 ,
    \lap_count_reg[0]_1 ,
    p_0_in);
  output ff_cur_reg_0;
  output ff_old_reg_0;
  output \slv_reg0_reg[2] ;
  output ff_cur_reg_1;
  output \FSM_onehot_diff_state_reg[0] ;
  output [0:0]E;
  output \FSM_onehot_diff_state_reg[2] ;
  output [0:0]\FSM_onehot_diff_state_reg[1] ;
  output [0:0]D;
  output \lap_count_reg[3] ;
  output start_p;
  input [1:0]Q;
  input s00_axi_aclk;
  input [0:0]AR;
  input \prev_csec_reg[0] ;
  input \diff_csec_reg[0] ;
  input \tmp_csec_reg[0] ;
  input [3:0]\lap_count_reg[0] ;
  input \lap_count_reg[0]_0 ;
  input \lap_count_reg[0]_1 ;
  input [1:0]p_0_in;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_diff_state_reg[0] ;
  wire [0:0]\FSM_onehot_diff_state_reg[1] ;
  wire \FSM_onehot_diff_state_reg[2] ;
  wire [1:0]Q;
  wire \diff_csec_reg[0] ;
  wire ff_cur_reg_0;
  wire ff_cur_reg_1;
  wire ff_old_reg_0;
  wire [3:0]\lap_count_reg[0] ;
  wire \lap_count_reg[0]_0 ;
  wire \lap_count_reg[0]_1 ;
  wire \lap_count_reg[3] ;
  wire [1:0]p_0_in;
  wire \prev_csec_reg[0] ;
  wire s00_axi_aclk;
  wire \slv_reg0_reg[2] ;
  wire start_p;
  wire \tmp_csec_reg[0] ;

  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \FSM_onehot_diff_state[0]_i_1 
       (.I0(\prev_csec_reg[0] ),
        .I1(ff_cur_reg_1),
        .I2(E),
        .I3(\FSM_onehot_diff_state_reg[1] ),
        .I4(\tmp_csec_reg[0] ),
        .O(\FSM_onehot_diff_state_reg[2] ));
  LUT6 #(
    .INIT(64'hAAA8ABA8AAA8AAA8)) 
    \FSM_onehot_diff_state[1]_i_1 
       (.I0(\tmp_csec_reg[0] ),
        .I1(ff_cur_reg_1),
        .I2(E),
        .I3(\diff_csec_reg[0] ),
        .I4(ff_old_reg_0),
        .I5(ff_cur_reg_0),
        .O(\FSM_onehot_diff_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFAFFFF40504040)) 
    \FSM_onehot_diff_state[2]_i_1 
       (.I0(ff_cur_reg_1),
        .I1(Q[1]),
        .I2(\prev_csec_reg[0] ),
        .I3(ff_old_reg_0),
        .I4(ff_cur_reg_0),
        .I5(\diff_csec_reg[0] ),
        .O(\slv_reg0_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_min[3]_i_1 
       (.I0(\diff_csec_reg[0] ),
        .I1(ff_old_reg_0),
        .I2(ff_cur_reg_0),
        .O(\FSM_onehot_diff_state_reg[1] ));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(ff_cur_reg_0));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_0),
        .Q(ff_old_reg_0));
  LUT3 #(
    .INIT(8'hBA)) 
    \lap_count[0]_i_1 
       (.I0(\lap_count_reg[3] ),
        .I1(\lap_count_reg[0] [0]),
        .I2(\lap_count_reg[0]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \lap_count[7]_i_3 
       (.I0(start_p),
        .I1(\lap_count_reg[0] [3]),
        .I2(\lap_count_reg[0] [2]),
        .I3(\lap_count_reg[0] [1]),
        .I4(\lap_count_reg[0] [0]),
        .I5(\lap_count_reg[0]_1 ),
        .O(\lap_count_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    lap_flag_i_2
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .O(start_p));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \prev_min[5]_i_1 
       (.I0(Q[1]),
        .I1(\prev_csec_reg[0] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .O(E));
  LUT6 #(
    .INIT(64'h0000D00000000000)) 
    \tmp_min[5]_i_1 
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .I2(\tmp_csec_reg[0] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(Q[1]),
        .O(ff_cur_reg_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
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
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
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
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
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
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
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
  wire axi_awready0__0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire [1:0]\ed_start/p_0_in ;
  wire lap_flag;
  wire lap_flag_i_1_n_0;
  wire [31:7]p_1_in;
  wire run;
  wire run_i_1_n_0;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire sign_flag;
  wire sign_flag_i_1_n_0;
  wire [2:0]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
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
  wire start_p;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire stop_watch_inst_n_2;
  wire stop_watch_inst_n_36;
  wire stop_watch_inst_n_37;
  wire stop_watch_inst_n_38;
  wire stop_watch_inst_n_6;
  wire stop_watch_inst_n_7;

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
        .R(stop_watch_inst_n_2));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(stop_watch_inst_n_2));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
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
        .R(stop_watch_inst_n_2));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(stop_watch_inst_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
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
        .R(stop_watch_inst_n_2));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(stop_watch_inst_n_2));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(stop_watch_inst_n_2));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(stop_watch_inst_n_2));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
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
        .R(stop_watch_inst_n_2));
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
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
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
        .R(stop_watch_inst_n_2));
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
        .R(stop_watch_inst_n_2));
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
        .R(stop_watch_inst_n_2));
  LUT6 #(
    .INIT(64'hFFFFFFC500FF0080)) 
    lap_flag_i_1
       (.I0(stop_watch_inst_n_38),
        .I1(slv_reg0[2]),
        .I2(stop_watch_inst_n_36),
        .I3(start_p),
        .I4(stop_watch_inst_n_37),
        .I5(lap_flag),
        .O(lap_flag_i_1_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    run_i_1
       (.I0(\ed_start/p_0_in [0]),
        .I1(\ed_start/p_0_in [1]),
        .I2(run),
        .O(run_i_1_n_0));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\slv_reg0_reg_n_0_[14] ),
        .I4(sel0[1]),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\slv_reg0_reg_n_0_[15] ),
        .I4(sel0[1]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\slv_reg0_reg_n_0_[22] ),
        .I4(sel0[1]),
        .O(s00_axi_rdata[22]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\slv_reg0_reg_n_0_[23] ),
        .I4(sel0[1]),
        .O(s00_axi_rdata[23]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg5[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5DFFFFFF51000000)) 
    sign_flag_i_1
       (.I0(stop_watch_inst_n_6),
        .I1(\ed_start/p_0_in [1]),
        .I2(\ed_start/p_0_in [0]),
        .I3(stop_watch_inst_n_37),
        .I4(stop_watch_inst_n_7),
        .I5(sign_flag),
        .O(sign_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \slv_reg0[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awaddr[1]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(stop_watch_inst_n_2));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \slv_reg5[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_wstrb[1]),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \slv_reg5[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_wstrb[2]),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \slv_reg5[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_wstrb[3]),
        .I5(\slv_reg5[31]_i_2_n_0 ),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \slv_reg5[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \slv_reg5[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[3] ),
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
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(stop_watch_inst_n_2));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg6[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg6[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg6[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg6[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg6[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg6[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
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
    .INIT(64'h2020200000002000)) 
    \slv_reg6[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg6[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(stop_watch_inst_n_2));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg7[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg7[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg7[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg7[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg7[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg7[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \slv_reg7[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awaddr[1]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(\slv_reg7[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg7[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg7[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(stop_watch_inst_n_2));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(stop_watch_inst_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip stop_watch_inst
       (.AR(stop_watch_inst_n_2),
        .CO(stop_watch_inst_n_6),
        .\FSM_onehot_diff_state_reg[0]_0 (stop_watch_inst_n_38),
        .\FSM_onehot_diff_state_reg[1]_0 (stop_watch_inst_n_37),
        .\FSM_onehot_diff_state_reg[2]_0 (stop_watch_inst_n_36),
        .Q({\slv_reg0_reg_n_0_[31] ,\slv_reg0_reg_n_0_[30] ,\slv_reg0_reg_n_0_[29] ,\slv_reg0_reg_n_0_[28] ,\slv_reg0_reg_n_0_[27] ,\slv_reg0_reg_n_0_[26] ,\slv_reg0_reg_n_0_[25] ,\slv_reg0_reg_n_0_[24] ,\slv_reg0_reg_n_0_[21] ,\slv_reg0_reg_n_0_[20] ,\slv_reg0_reg_n_0_[19] ,\slv_reg0_reg_n_0_[18] ,\slv_reg0_reg_n_0_[17] ,\slv_reg0_reg_n_0_[16] ,\slv_reg0_reg_n_0_[13] ,\slv_reg0_reg_n_0_[12] ,\slv_reg0_reg_n_0_[11] ,\slv_reg0_reg_n_0_[10] ,\slv_reg0_reg_n_0_[9] ,\slv_reg0_reg_n_0_[8] ,\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,slv_reg0}),
        .\lap_count_reg[1]_0 (stop_watch_inst_n_7),
        .lap_flag(lap_flag),
        .lap_flag_reg_0(lap_flag_i_1_n_0),
        .p_0_in(\ed_start/p_0_in ),
        .run(run),
        .run_reg_0(run_i_1_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata({s00_axi_rdata[31:24],s00_axi_rdata[21:16],s00_axi_rdata[13:0]}),
        .\s00_axi_rdata[19] ({slv_reg7[19:16],slv_reg7[13:0]}),
        .\s00_axi_rdata[19]_0 ({slv_reg6[19:16],slv_reg6[13:0]}),
        .\s00_axi_rdata[19]_1 ({slv_reg5[19:16],slv_reg5[13:0]}),
        .\s00_axi_rdata[28] (\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .\s00_axi_rdata[29] (\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .\s00_axi_rdata[30] (\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .\s00_axi_rdata[31] (\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_20_sp_1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_21_sp_1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_24_sp_1(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_25_sp_1(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_26_sp_1(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_27_sp_1(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .sel0(sel0),
        .sign_flag(sign_flag),
        .sign_flag_reg_0(sign_flag_i_1_n_0),
        .start_p(start_p));
endmodule

(* CHECK_LICENSE_TYPE = "soc_watchRev2_myip_stopwatch_0_0,myip_stopwatch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_stopwatch,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_aclk,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
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
   (p_0_in,
    AR,
    run,
    lap_flag,
    sign_flag,
    CO,
    \lap_count_reg[1]_0 ,
    s00_axi_rdata,
    \FSM_onehot_diff_state_reg[2]_0 ,
    \FSM_onehot_diff_state_reg[1]_0 ,
    \FSM_onehot_diff_state_reg[0]_0 ,
    start_p,
    Q,
    s00_axi_aclk,
    run_reg_0,
    lap_flag_reg_0,
    sign_flag_reg_0,
    sel0,
    \s00_axi_rdata[19] ,
    \s00_axi_rdata[19]_0 ,
    \s00_axi_rdata[19]_1 ,
    s00_axi_rdata_20_sp_1,
    s00_axi_rdata_21_sp_1,
    s00_axi_rdata_24_sp_1,
    s00_axi_rdata_25_sp_1,
    s00_axi_rdata_26_sp_1,
    s00_axi_rdata_27_sp_1,
    \s00_axi_rdata[28] ,
    \s00_axi_rdata[29] ,
    \s00_axi_rdata[30] ,
    \s00_axi_rdata[31] ,
    s00_axi_aresetn);
  output [1:0]p_0_in;
  output [0:0]AR;
  output run;
  output lap_flag;
  output sign_flag;
  output [0:0]CO;
  output \lap_count_reg[1]_0 ;
  output [27:0]s00_axi_rdata;
  output \FSM_onehot_diff_state_reg[2]_0 ;
  output \FSM_onehot_diff_state_reg[1]_0 ;
  output \FSM_onehot_diff_state_reg[0]_0 ;
  output start_p;
  input [27:0]Q;
  input s00_axi_aclk;
  input run_reg_0;
  input lap_flag_reg_0;
  input sign_flag_reg_0;
  input [2:0]sel0;
  input [17:0]\s00_axi_rdata[19] ;
  input [17:0]\s00_axi_rdata[19]_0 ;
  input [17:0]\s00_axi_rdata[19]_1 ;
  input s00_axi_rdata_20_sp_1;
  input s00_axi_rdata_21_sp_1;
  input s00_axi_rdata_24_sp_1;
  input s00_axi_rdata_25_sp_1;
  input s00_axi_rdata_26_sp_1;
  input s00_axi_rdata_27_sp_1;
  input \s00_axi_rdata[28] ;
  input \s00_axi_rdata[29] ;
  input \s00_axi_rdata[30] ;
  input \s00_axi_rdata[31] ;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire [0:0]CO;
  wire \FSM_onehot_diff_state_reg[0]_0 ;
  wire \FSM_onehot_diff_state_reg[1]_0 ;
  wire \FSM_onehot_diff_state_reg[2]_0 ;
  wire [27:0]Q;
  wire [19:0]cnt_sysclk1;
  wire [19:1]cnt_sysclk10;
  wire \cnt_sysclk1[0]_i_1_n_0 ;
  wire \cnt_sysclk1[10]_i_1_n_0 ;
  wire \cnt_sysclk1[11]_i_1_n_0 ;
  wire \cnt_sysclk1[12]_i_1_n_0 ;
  wire \cnt_sysclk1[13]_i_1_n_0 ;
  wire \cnt_sysclk1[14]_i_1_n_0 ;
  wire \cnt_sysclk1[15]_i_1_n_0 ;
  wire \cnt_sysclk1[16]_i_1_n_0 ;
  wire \cnt_sysclk1[17]_i_1_n_0 ;
  wire \cnt_sysclk1[18]_i_1_n_0 ;
  wire \cnt_sysclk1[19]_i_2_n_0 ;
  wire \cnt_sysclk1[19]_i_4_n_0 ;
  wire \cnt_sysclk1[19]_i_5_n_0 ;
  wire \cnt_sysclk1[19]_i_6_n_0 ;
  wire \cnt_sysclk1[19]_i_7_n_0 ;
  wire \cnt_sysclk1[19]_i_8_n_0 ;
  wire \cnt_sysclk1[1]_i_1_n_0 ;
  wire \cnt_sysclk1[2]_i_1_n_0 ;
  wire \cnt_sysclk1[3]_i_1_n_0 ;
  wire \cnt_sysclk1[4]_i_1_n_0 ;
  wire \cnt_sysclk1[5]_i_1_n_0 ;
  wire \cnt_sysclk1[6]_i_1_n_0 ;
  wire \cnt_sysclk1[7]_i_1_n_0 ;
  wire \cnt_sysclk1[8]_i_1_n_0 ;
  wire \cnt_sysclk1[9]_i_1_n_0 ;
  wire \cnt_sysclk1_reg[12]_i_2_n_0 ;
  wire \cnt_sysclk1_reg[12]_i_2_n_1 ;
  wire \cnt_sysclk1_reg[12]_i_2_n_2 ;
  wire \cnt_sysclk1_reg[12]_i_2_n_3 ;
  wire \cnt_sysclk1_reg[16]_i_2_n_0 ;
  wire \cnt_sysclk1_reg[16]_i_2_n_1 ;
  wire \cnt_sysclk1_reg[16]_i_2_n_2 ;
  wire \cnt_sysclk1_reg[16]_i_2_n_3 ;
  wire \cnt_sysclk1_reg[19]_i_3_n_2 ;
  wire \cnt_sysclk1_reg[19]_i_3_n_3 ;
  wire \cnt_sysclk1_reg[4]_i_2_n_0 ;
  wire \cnt_sysclk1_reg[4]_i_2_n_1 ;
  wire \cnt_sysclk1_reg[4]_i_2_n_2 ;
  wire \cnt_sysclk1_reg[4]_i_2_n_3 ;
  wire \cnt_sysclk1_reg[8]_i_2_n_0 ;
  wire \cnt_sysclk1_reg[8]_i_2_n_1 ;
  wire \cnt_sysclk1_reg[8]_i_2_n_2 ;
  wire \cnt_sysclk1_reg[8]_i_2_n_3 ;
  wire cnt_sysclk2;
  wire [19:1]cnt_sysclk20;
  wire \cnt_sysclk2[19]_i_3_n_0 ;
  wire \cnt_sysclk2[19]_i_5_n_0 ;
  wire \cnt_sysclk2[19]_i_6_n_0 ;
  wire \cnt_sysclk2[19]_i_7_n_0 ;
  wire \cnt_sysclk2_reg[12]_i_2_n_0 ;
  wire \cnt_sysclk2_reg[12]_i_2_n_1 ;
  wire \cnt_sysclk2_reg[12]_i_2_n_2 ;
  wire \cnt_sysclk2_reg[12]_i_2_n_3 ;
  wire \cnt_sysclk2_reg[16]_i_2_n_0 ;
  wire \cnt_sysclk2_reg[16]_i_2_n_1 ;
  wire \cnt_sysclk2_reg[16]_i_2_n_2 ;
  wire \cnt_sysclk2_reg[16]_i_2_n_3 ;
  wire \cnt_sysclk2_reg[19]_i_4_n_2 ;
  wire \cnt_sysclk2_reg[19]_i_4_n_3 ;
  wire \cnt_sysclk2_reg[4]_i_2_n_0 ;
  wire \cnt_sysclk2_reg[4]_i_2_n_1 ;
  wire \cnt_sysclk2_reg[4]_i_2_n_2 ;
  wire \cnt_sysclk2_reg[4]_i_2_n_3 ;
  wire \cnt_sysclk2_reg[8]_i_2_n_0 ;
  wire \cnt_sysclk2_reg[8]_i_2_n_1 ;
  wire \cnt_sysclk2_reg[8]_i_2_n_2 ;
  wire \cnt_sysclk2_reg[8]_i_2_n_3 ;
  wire \cnt_sysclk2_reg_n_0_[0] ;
  wire \cnt_sysclk2_reg_n_0_[10] ;
  wire \cnt_sysclk2_reg_n_0_[11] ;
  wire \cnt_sysclk2_reg_n_0_[12] ;
  wire \cnt_sysclk2_reg_n_0_[13] ;
  wire \cnt_sysclk2_reg_n_0_[14] ;
  wire \cnt_sysclk2_reg_n_0_[15] ;
  wire \cnt_sysclk2_reg_n_0_[16] ;
  wire \cnt_sysclk2_reg_n_0_[17] ;
  wire \cnt_sysclk2_reg_n_0_[18] ;
  wire \cnt_sysclk2_reg_n_0_[19] ;
  wire \cnt_sysclk2_reg_n_0_[1] ;
  wire \cnt_sysclk2_reg_n_0_[2] ;
  wire \cnt_sysclk2_reg_n_0_[3] ;
  wire \cnt_sysclk2_reg_n_0_[4] ;
  wire \cnt_sysclk2_reg_n_0_[5] ;
  wire \cnt_sysclk2_reg_n_0_[6] ;
  wire \cnt_sysclk2_reg_n_0_[7] ;
  wire \cnt_sysclk2_reg_n_0_[8] ;
  wire \cnt_sysclk2_reg_n_0_[9] ;
  wire [6:0]csec;
  wire \csec[0]_i_1_n_0 ;
  wire \csec[1]_i_1_n_0 ;
  wire \csec[2]_i_1_n_0 ;
  wire \csec[3]_i_1_n_0 ;
  wire \csec[4]_i_1_n_0 ;
  wire \csec[5]_i_1_n_0 ;
  wire \csec[5]_i_2_n_0 ;
  wire \csec[6]_i_2_n_0 ;
  wire \csec[6]_i_3_n_0 ;
  wire \csec[6]_i_4_n_0 ;
  wire \csec[6]_i_5_n_0 ;
  wire [18:1]data1;
  wire [18:1]data2;
  wire [18:1]data3;
  wire [18:1]data4;
  wire [18:1]data5;
  wire [18:1]data6;
  wire [18:1]data7;
  wire [18:1]data8;
  wire [18:0]data9;
  wire [7:0]diff_csec;
  wire \diff_csec[0]_i_10_n_0 ;
  wire \diff_csec[0]_i_11_n_0 ;
  wire \diff_csec[0]_i_12_n_0 ;
  wire \diff_csec[0]_i_13_n_0 ;
  wire \diff_csec[0]_i_14_n_0 ;
  wire \diff_csec[0]_i_15_n_0 ;
  wire \diff_csec[0]_i_1_n_0 ;
  wire \diff_csec[0]_i_2_n_0 ;
  wire \diff_csec[0]_i_3_n_0 ;
  wire \diff_csec[0]_i_4_n_0 ;
  wire \diff_csec[0]_i_7_n_0 ;
  wire \diff_csec[0]_i_8_n_0 ;
  wire \diff_csec[0]_i_9_n_0 ;
  wire \diff_csec[1]_i_10_n_0 ;
  wire \diff_csec[1]_i_11_n_0 ;
  wire \diff_csec[1]_i_12_n_0 ;
  wire \diff_csec[1]_i_14_n_0 ;
  wire \diff_csec[1]_i_15_n_0 ;
  wire \diff_csec[1]_i_18_n_0 ;
  wire \diff_csec[1]_i_19_n_0 ;
  wire \diff_csec[1]_i_1_n_0 ;
  wire \diff_csec[1]_i_20_n_0 ;
  wire \diff_csec[1]_i_21_n_0 ;
  wire \diff_csec[1]_i_22_n_0 ;
  wire \diff_csec[1]_i_23_n_0 ;
  wire \diff_csec[1]_i_24_n_0 ;
  wire \diff_csec[1]_i_25_n_0 ;
  wire \diff_csec[1]_i_32_n_0 ;
  wire \diff_csec[1]_i_33_n_0 ;
  wire \diff_csec[1]_i_34_n_0 ;
  wire \diff_csec[1]_i_35_n_0 ;
  wire \diff_csec[1]_i_36_n_0 ;
  wire \diff_csec[1]_i_37_n_0 ;
  wire \diff_csec[1]_i_38_n_0 ;
  wire \diff_csec[1]_i_39_n_0 ;
  wire \diff_csec[1]_i_3_n_0 ;
  wire \diff_csec[1]_i_40_n_0 ;
  wire \diff_csec[1]_i_41_n_0 ;
  wire \diff_csec[1]_i_42_n_0 ;
  wire \diff_csec[1]_i_43_n_0 ;
  wire \diff_csec[1]_i_44_n_0 ;
  wire \diff_csec[1]_i_45_n_0 ;
  wire \diff_csec[1]_i_46_n_0 ;
  wire \diff_csec[1]_i_47_n_0 ;
  wire \diff_csec[1]_i_48_n_0 ;
  wire \diff_csec[1]_i_49_n_0 ;
  wire \diff_csec[1]_i_4_n_0 ;
  wire \diff_csec[1]_i_50_n_0 ;
  wire \diff_csec[1]_i_51_n_0 ;
  wire \diff_csec[1]_i_52_n_0 ;
  wire \diff_csec[1]_i_53_n_0 ;
  wire \diff_csec[1]_i_54_n_0 ;
  wire \diff_csec[1]_i_55_n_0 ;
  wire \diff_csec[1]_i_5_n_0 ;
  wire \diff_csec[1]_i_60_n_0 ;
  wire \diff_csec[1]_i_61_n_0 ;
  wire \diff_csec[1]_i_62_n_0 ;
  wire \diff_csec[1]_i_63_n_0 ;
  wire \diff_csec[1]_i_64_n_0 ;
  wire \diff_csec[1]_i_65_n_0 ;
  wire \diff_csec[1]_i_66_n_0 ;
  wire \diff_csec[1]_i_67_n_0 ;
  wire \diff_csec[1]_i_68_n_0 ;
  wire \diff_csec[1]_i_69_n_0 ;
  wire \diff_csec[1]_i_6_n_0 ;
  wire \diff_csec[1]_i_70_n_0 ;
  wire \diff_csec[1]_i_71_n_0 ;
  wire \diff_csec[1]_i_72_n_0 ;
  wire \diff_csec[1]_i_73_n_0 ;
  wire \diff_csec[1]_i_74_n_0 ;
  wire \diff_csec[1]_i_75_n_0 ;
  wire \diff_csec[1]_i_76_n_0 ;
  wire \diff_csec[1]_i_77_n_0 ;
  wire \diff_csec[1]_i_78_n_0 ;
  wire \diff_csec[1]_i_79_n_0 ;
  wire \diff_csec[1]_i_7_n_0 ;
  wire \diff_csec[1]_i_80_n_0 ;
  wire \diff_csec[1]_i_81_n_0 ;
  wire \diff_csec[1]_i_82_n_0 ;
  wire \diff_csec[1]_i_83_n_0 ;
  wire \diff_csec[1]_i_84_n_0 ;
  wire \diff_csec[1]_i_85_n_0 ;
  wire \diff_csec[1]_i_86_n_0 ;
  wire \diff_csec[1]_i_87_n_0 ;
  wire \diff_csec[1]_i_88_n_0 ;
  wire \diff_csec[1]_i_89_n_0 ;
  wire \diff_csec[1]_i_8_n_0 ;
  wire \diff_csec[1]_i_90_n_0 ;
  wire \diff_csec[1]_i_91_n_0 ;
  wire \diff_csec[1]_i_92_n_0 ;
  wire \diff_csec[1]_i_93_n_0 ;
  wire \diff_csec[1]_i_94_n_0 ;
  wire \diff_csec[1]_i_95_n_0 ;
  wire \diff_csec[1]_i_9_n_0 ;
  wire \diff_csec[2]_i_10_n_0 ;
  wire \diff_csec[2]_i_11_n_0 ;
  wire \diff_csec[2]_i_12_n_0 ;
  wire \diff_csec[2]_i_13_n_0 ;
  wire \diff_csec[2]_i_14_n_0 ;
  wire \diff_csec[2]_i_15_n_0 ;
  wire \diff_csec[2]_i_16_n_0 ;
  wire \diff_csec[2]_i_17_n_0 ;
  wire \diff_csec[2]_i_18_n_0 ;
  wire \diff_csec[2]_i_19_n_0 ;
  wire \diff_csec[2]_i_1_n_0 ;
  wire \diff_csec[2]_i_20_n_0 ;
  wire \diff_csec[2]_i_2_n_0 ;
  wire \diff_csec[2]_i_3_n_0 ;
  wire \diff_csec[2]_i_4_n_0 ;
  wire \diff_csec[2]_i_5_n_0 ;
  wire \diff_csec[2]_i_6_n_0 ;
  wire \diff_csec[2]_i_7_n_0 ;
  wire \diff_csec[2]_i_8_n_0 ;
  wire \diff_csec[2]_i_9_n_0 ;
  wire \diff_csec[3]_i_10_n_0 ;
  wire \diff_csec[3]_i_11_n_0 ;
  wire \diff_csec[3]_i_12_n_0 ;
  wire \diff_csec[3]_i_13_n_0 ;
  wire \diff_csec[3]_i_14_n_0 ;
  wire \diff_csec[3]_i_15_n_0 ;
  wire \diff_csec[3]_i_16_n_0 ;
  wire \diff_csec[3]_i_17_n_0 ;
  wire \diff_csec[3]_i_18_n_0 ;
  wire \diff_csec[3]_i_19_n_0 ;
  wire \diff_csec[3]_i_1_n_0 ;
  wire \diff_csec[3]_i_20_n_0 ;
  wire \diff_csec[3]_i_21_n_0 ;
  wire \diff_csec[3]_i_22_n_0 ;
  wire \diff_csec[3]_i_23_n_0 ;
  wire \diff_csec[3]_i_24_n_0 ;
  wire \diff_csec[3]_i_25_n_0 ;
  wire \diff_csec[3]_i_26_n_0 ;
  wire \diff_csec[3]_i_27_n_0 ;
  wire \diff_csec[3]_i_28_n_0 ;
  wire \diff_csec[3]_i_29_n_0 ;
  wire \diff_csec[3]_i_2_n_0 ;
  wire \diff_csec[3]_i_30_n_0 ;
  wire \diff_csec[3]_i_31_n_0 ;
  wire \diff_csec[3]_i_32_n_0 ;
  wire \diff_csec[3]_i_33_n_0 ;
  wire \diff_csec[3]_i_34_n_0 ;
  wire \diff_csec[3]_i_35_n_0 ;
  wire \diff_csec[3]_i_3_n_0 ;
  wire \diff_csec[3]_i_4_n_0 ;
  wire \diff_csec[3]_i_5_n_0 ;
  wire \diff_csec[3]_i_6_n_0 ;
  wire \diff_csec[3]_i_7_n_0 ;
  wire \diff_csec[3]_i_8_n_0 ;
  wire \diff_csec[3]_i_9_n_0 ;
  wire \diff_csec[4]_i_10_n_0 ;
  wire \diff_csec[4]_i_11_n_0 ;
  wire \diff_csec[4]_i_12_n_0 ;
  wire \diff_csec[4]_i_13_n_0 ;
  wire \diff_csec[4]_i_14_n_0 ;
  wire \diff_csec[4]_i_15_n_0 ;
  wire \diff_csec[4]_i_16_n_0 ;
  wire \diff_csec[4]_i_17_n_0 ;
  wire \diff_csec[4]_i_18_n_0 ;
  wire \diff_csec[4]_i_19_n_0 ;
  wire \diff_csec[4]_i_1_n_0 ;
  wire \diff_csec[4]_i_20_n_0 ;
  wire \diff_csec[4]_i_21_n_0 ;
  wire \diff_csec[4]_i_22_n_0 ;
  wire \diff_csec[4]_i_23_n_0 ;
  wire \diff_csec[4]_i_24_n_0 ;
  wire \diff_csec[4]_i_25_n_0 ;
  wire \diff_csec[4]_i_26_n_0 ;
  wire \diff_csec[4]_i_27_n_0 ;
  wire \diff_csec[4]_i_28_n_0 ;
  wire \diff_csec[4]_i_29_n_0 ;
  wire \diff_csec[4]_i_2_n_0 ;
  wire \diff_csec[4]_i_30_n_0 ;
  wire \diff_csec[4]_i_31_n_0 ;
  wire \diff_csec[4]_i_32_n_0 ;
  wire \diff_csec[4]_i_33_n_0 ;
  wire \diff_csec[4]_i_34_n_0 ;
  wire \diff_csec[4]_i_35_n_0 ;
  wire \diff_csec[4]_i_36_n_0 ;
  wire \diff_csec[4]_i_37_n_0 ;
  wire \diff_csec[4]_i_38_n_0 ;
  wire \diff_csec[4]_i_39_n_0 ;
  wire \diff_csec[4]_i_3_n_0 ;
  wire \diff_csec[4]_i_40_n_0 ;
  wire \diff_csec[4]_i_41_n_0 ;
  wire \diff_csec[4]_i_42_n_0 ;
  wire \diff_csec[4]_i_43_n_0 ;
  wire \diff_csec[4]_i_44_n_0 ;
  wire \diff_csec[4]_i_45_n_0 ;
  wire \diff_csec[4]_i_46_n_0 ;
  wire \diff_csec[4]_i_47_n_0 ;
  wire \diff_csec[4]_i_48_n_0 ;
  wire \diff_csec[4]_i_49_n_0 ;
  wire \diff_csec[4]_i_4_n_0 ;
  wire \diff_csec[4]_i_50_n_0 ;
  wire \diff_csec[4]_i_51_n_0 ;
  wire \diff_csec[4]_i_5_n_0 ;
  wire \diff_csec[4]_i_6_n_0 ;
  wire \diff_csec[4]_i_7_n_0 ;
  wire \diff_csec[4]_i_8_n_0 ;
  wire \diff_csec[4]_i_9_n_0 ;
  wire \diff_csec[5]_i_10_n_0 ;
  wire \diff_csec[5]_i_11_n_0 ;
  wire \diff_csec[5]_i_12_n_0 ;
  wire \diff_csec[5]_i_13_n_0 ;
  wire \diff_csec[5]_i_14_n_0 ;
  wire \diff_csec[5]_i_15_n_0 ;
  wire \diff_csec[5]_i_16_n_0 ;
  wire \diff_csec[5]_i_17_n_0 ;
  wire \diff_csec[5]_i_18_n_0 ;
  wire \diff_csec[5]_i_19_n_0 ;
  wire \diff_csec[5]_i_1_n_0 ;
  wire \diff_csec[5]_i_20_n_0 ;
  wire \diff_csec[5]_i_21_n_0 ;
  wire \diff_csec[5]_i_22_n_0 ;
  wire \diff_csec[5]_i_23_n_0 ;
  wire \diff_csec[5]_i_24_n_0 ;
  wire \diff_csec[5]_i_25_n_0 ;
  wire \diff_csec[5]_i_26_n_0 ;
  wire \diff_csec[5]_i_27_n_0 ;
  wire \diff_csec[5]_i_28_n_0 ;
  wire \diff_csec[5]_i_29_n_0 ;
  wire \diff_csec[5]_i_2_n_0 ;
  wire \diff_csec[5]_i_30_n_0 ;
  wire \diff_csec[5]_i_31_n_0 ;
  wire \diff_csec[5]_i_32_n_0 ;
  wire \diff_csec[5]_i_33_n_0 ;
  wire \diff_csec[5]_i_34_n_0 ;
  wire \diff_csec[5]_i_35_n_0 ;
  wire \diff_csec[5]_i_36_n_0 ;
  wire \diff_csec[5]_i_37_n_0 ;
  wire \diff_csec[5]_i_38_n_0 ;
  wire \diff_csec[5]_i_39_n_0 ;
  wire \diff_csec[5]_i_3_n_0 ;
  wire \diff_csec[5]_i_40_n_0 ;
  wire \diff_csec[5]_i_41_n_0 ;
  wire \diff_csec[5]_i_42_n_0 ;
  wire \diff_csec[5]_i_43_n_0 ;
  wire \diff_csec[5]_i_44_n_0 ;
  wire \diff_csec[5]_i_45_n_0 ;
  wire \diff_csec[5]_i_46_n_0 ;
  wire \diff_csec[5]_i_47_n_0 ;
  wire \diff_csec[5]_i_48_n_0 ;
  wire \diff_csec[5]_i_49_n_0 ;
  wire \diff_csec[5]_i_4_n_0 ;
  wire \diff_csec[5]_i_50_n_0 ;
  wire \diff_csec[5]_i_51_n_0 ;
  wire \diff_csec[5]_i_52_n_0 ;
  wire \diff_csec[5]_i_53_n_0 ;
  wire \diff_csec[5]_i_54_n_0 ;
  wire \diff_csec[5]_i_55_n_0 ;
  wire \diff_csec[5]_i_56_n_0 ;
  wire \diff_csec[5]_i_57_n_0 ;
  wire \diff_csec[5]_i_5_n_0 ;
  wire \diff_csec[5]_i_6_n_0 ;
  wire \diff_csec[5]_i_7_n_0 ;
  wire \diff_csec[5]_i_8_n_0 ;
  wire \diff_csec[5]_i_9_n_0 ;
  wire \diff_csec[6]_i_10_n_0 ;
  wire \diff_csec[6]_i_11_n_0 ;
  wire \diff_csec[6]_i_12_n_0 ;
  wire \diff_csec[6]_i_13_n_0 ;
  wire \diff_csec[6]_i_14_n_0 ;
  wire \diff_csec[6]_i_15_n_0 ;
  wire \diff_csec[6]_i_16_n_0 ;
  wire \diff_csec[6]_i_17_n_0 ;
  wire \diff_csec[6]_i_18_n_0 ;
  wire \diff_csec[6]_i_19_n_0 ;
  wire \diff_csec[6]_i_1_n_0 ;
  wire \diff_csec[6]_i_20_n_0 ;
  wire \diff_csec[6]_i_21_n_0 ;
  wire \diff_csec[6]_i_22_n_0 ;
  wire \diff_csec[6]_i_23_n_0 ;
  wire \diff_csec[6]_i_24_n_0 ;
  wire \diff_csec[6]_i_25_n_0 ;
  wire \diff_csec[6]_i_26_n_0 ;
  wire \diff_csec[6]_i_27_n_0 ;
  wire \diff_csec[6]_i_28_n_0 ;
  wire \diff_csec[6]_i_29_n_0 ;
  wire \diff_csec[6]_i_2_n_0 ;
  wire \diff_csec[6]_i_30_n_0 ;
  wire \diff_csec[6]_i_31_n_0 ;
  wire \diff_csec[6]_i_32_n_0 ;
  wire \diff_csec[6]_i_33_n_0 ;
  wire \diff_csec[6]_i_34_n_0 ;
  wire \diff_csec[6]_i_35_n_0 ;
  wire \diff_csec[6]_i_36_n_0 ;
  wire \diff_csec[6]_i_37_n_0 ;
  wire \diff_csec[6]_i_38_n_0 ;
  wire \diff_csec[6]_i_39_n_0 ;
  wire \diff_csec[6]_i_3_n_0 ;
  wire \diff_csec[6]_i_40_n_0 ;
  wire \diff_csec[6]_i_41_n_0 ;
  wire \diff_csec[6]_i_42_n_0 ;
  wire \diff_csec[6]_i_43_n_0 ;
  wire \diff_csec[6]_i_44_n_0 ;
  wire \diff_csec[6]_i_45_n_0 ;
  wire \diff_csec[6]_i_46_n_0 ;
  wire \diff_csec[6]_i_47_n_0 ;
  wire \diff_csec[6]_i_48_n_0 ;
  wire \diff_csec[6]_i_49_n_0 ;
  wire \diff_csec[6]_i_4_n_0 ;
  wire \diff_csec[6]_i_50_n_0 ;
  wire \diff_csec[6]_i_51_n_0 ;
  wire \diff_csec[6]_i_52_n_0 ;
  wire \diff_csec[6]_i_53_n_0 ;
  wire \diff_csec[6]_i_54_n_0 ;
  wire \diff_csec[6]_i_55_n_0 ;
  wire \diff_csec[6]_i_56_n_0 ;
  wire \diff_csec[6]_i_57_n_0 ;
  wire \diff_csec[6]_i_58_n_0 ;
  wire \diff_csec[6]_i_59_n_0 ;
  wire \diff_csec[6]_i_5_n_0 ;
  wire \diff_csec[6]_i_60_n_0 ;
  wire \diff_csec[6]_i_61_n_0 ;
  wire \diff_csec[6]_i_62_n_0 ;
  wire \diff_csec[6]_i_63_n_0 ;
  wire \diff_csec[6]_i_64_n_0 ;
  wire \diff_csec[6]_i_65_n_0 ;
  wire \diff_csec[6]_i_66_n_0 ;
  wire \diff_csec[6]_i_67_n_0 ;
  wire \diff_csec[6]_i_68_n_0 ;
  wire \diff_csec[6]_i_69_n_0 ;
  wire \diff_csec[6]_i_6_n_0 ;
  wire \diff_csec[6]_i_70_n_0 ;
  wire \diff_csec[6]_i_71_n_0 ;
  wire \diff_csec[6]_i_72_n_0 ;
  wire \diff_csec[6]_i_73_n_0 ;
  wire \diff_csec[6]_i_74_n_0 ;
  wire \diff_csec[6]_i_75_n_0 ;
  wire \diff_csec[6]_i_76_n_0 ;
  wire \diff_csec[6]_i_77_n_0 ;
  wire \diff_csec[6]_i_78_n_0 ;
  wire \diff_csec[6]_i_79_n_0 ;
  wire \diff_csec[6]_i_7_n_0 ;
  wire \diff_csec[6]_i_8_n_0 ;
  wire \diff_csec[6]_i_9_n_0 ;
  wire \diff_csec[7]_i_100_n_0 ;
  wire \diff_csec[7]_i_101_n_0 ;
  wire \diff_csec[7]_i_102_n_0 ;
  wire \diff_csec[7]_i_103_n_0 ;
  wire \diff_csec[7]_i_104_n_0 ;
  wire \diff_csec[7]_i_105_n_0 ;
  wire \diff_csec[7]_i_106_n_0 ;
  wire \diff_csec[7]_i_107_n_0 ;
  wire \diff_csec[7]_i_108_n_0 ;
  wire \diff_csec[7]_i_109_n_0 ;
  wire \diff_csec[7]_i_10_n_0 ;
  wire \diff_csec[7]_i_110_n_0 ;
  wire \diff_csec[7]_i_111_n_0 ;
  wire \diff_csec[7]_i_112_n_0 ;
  wire \diff_csec[7]_i_113_n_0 ;
  wire \diff_csec[7]_i_114_n_0 ;
  wire \diff_csec[7]_i_115_n_0 ;
  wire \diff_csec[7]_i_116_n_0 ;
  wire \diff_csec[7]_i_117_n_0 ;
  wire \diff_csec[7]_i_118_n_0 ;
  wire \diff_csec[7]_i_11_n_0 ;
  wire \diff_csec[7]_i_12_n_0 ;
  wire \diff_csec[7]_i_13_n_0 ;
  wire \diff_csec[7]_i_14_n_0 ;
  wire \diff_csec[7]_i_15_n_0 ;
  wire \diff_csec[7]_i_16_n_0 ;
  wire \diff_csec[7]_i_17_n_0 ;
  wire \diff_csec[7]_i_18_n_0 ;
  wire \diff_csec[7]_i_19_n_0 ;
  wire \diff_csec[7]_i_1_n_0 ;
  wire \diff_csec[7]_i_20_n_0 ;
  wire \diff_csec[7]_i_21_n_0 ;
  wire \diff_csec[7]_i_22_n_0 ;
  wire \diff_csec[7]_i_23_n_0 ;
  wire \diff_csec[7]_i_2_n_0 ;
  wire \diff_csec[7]_i_32_n_0 ;
  wire \diff_csec[7]_i_33_n_0 ;
  wire \diff_csec[7]_i_34_n_0 ;
  wire \diff_csec[7]_i_35_n_0 ;
  wire \diff_csec[7]_i_36_n_0 ;
  wire \diff_csec[7]_i_37_n_0 ;
  wire \diff_csec[7]_i_38_n_0 ;
  wire \diff_csec[7]_i_39_n_0 ;
  wire \diff_csec[7]_i_3_n_0 ;
  wire \diff_csec[7]_i_40_n_0 ;
  wire \diff_csec[7]_i_41_n_0 ;
  wire \diff_csec[7]_i_42_n_0 ;
  wire \diff_csec[7]_i_43_n_0 ;
  wire \diff_csec[7]_i_46_n_0 ;
  wire \diff_csec[7]_i_47_n_0 ;
  wire \diff_csec[7]_i_48_n_0 ;
  wire \diff_csec[7]_i_4_n_0 ;
  wire \diff_csec[7]_i_50_n_0 ;
  wire \diff_csec[7]_i_51_n_0 ;
  wire \diff_csec[7]_i_52_n_0 ;
  wire \diff_csec[7]_i_53_n_0 ;
  wire \diff_csec[7]_i_54_n_0 ;
  wire \diff_csec[7]_i_55_n_0 ;
  wire \diff_csec[7]_i_56_n_0 ;
  wire \diff_csec[7]_i_57_n_0 ;
  wire \diff_csec[7]_i_58_n_0 ;
  wire \diff_csec[7]_i_59_n_0 ;
  wire \diff_csec[7]_i_5_n_0 ;
  wire \diff_csec[7]_i_60_n_0 ;
  wire \diff_csec[7]_i_61_n_0 ;
  wire \diff_csec[7]_i_62_n_0 ;
  wire \diff_csec[7]_i_63_n_0 ;
  wire \diff_csec[7]_i_64_n_0 ;
  wire \diff_csec[7]_i_65_n_0 ;
  wire \diff_csec[7]_i_66_n_0 ;
  wire \diff_csec[7]_i_67_n_0 ;
  wire \diff_csec[7]_i_68_n_0 ;
  wire \diff_csec[7]_i_69_n_0 ;
  wire \diff_csec[7]_i_6_n_0 ;
  wire \diff_csec[7]_i_70_n_0 ;
  wire \diff_csec[7]_i_71_n_0 ;
  wire \diff_csec[7]_i_72_n_0 ;
  wire \diff_csec[7]_i_73_n_0 ;
  wire \diff_csec[7]_i_74_n_0 ;
  wire \diff_csec[7]_i_75_n_0 ;
  wire \diff_csec[7]_i_76_n_0 ;
  wire \diff_csec[7]_i_77_n_0 ;
  wire \diff_csec[7]_i_78_n_0 ;
  wire \diff_csec[7]_i_79_n_0 ;
  wire \diff_csec[7]_i_7_n_0 ;
  wire \diff_csec[7]_i_80_n_0 ;
  wire \diff_csec[7]_i_81_n_0 ;
  wire \diff_csec[7]_i_82_n_0 ;
  wire \diff_csec[7]_i_83_n_0 ;
  wire \diff_csec[7]_i_84_n_0 ;
  wire \diff_csec[7]_i_85_n_0 ;
  wire \diff_csec[7]_i_86_n_0 ;
  wire \diff_csec[7]_i_88_n_0 ;
  wire \diff_csec[7]_i_89_n_0 ;
  wire \diff_csec[7]_i_90_n_0 ;
  wire \diff_csec[7]_i_91_n_0 ;
  wire \diff_csec[7]_i_92_n_0 ;
  wire \diff_csec[7]_i_93_n_0 ;
  wire \diff_csec[7]_i_94_n_0 ;
  wire \diff_csec[7]_i_95_n_0 ;
  wire \diff_csec[7]_i_96_n_0 ;
  wire \diff_csec[7]_i_97_n_0 ;
  wire \diff_csec[7]_i_98_n_0 ;
  wire \diff_csec[7]_i_99_n_0 ;
  wire \diff_csec[7]_i_9_n_0 ;
  wire \diff_csec_reg[0]_i_5_n_0 ;
  wire \diff_csec_reg[0]_i_5_n_1 ;
  wire \diff_csec_reg[0]_i_5_n_2 ;
  wire \diff_csec_reg[0]_i_5_n_3 ;
  wire \diff_csec_reg[0]_i_6_n_0 ;
  wire \diff_csec_reg[0]_i_6_n_1 ;
  wire \diff_csec_reg[0]_i_6_n_2 ;
  wire \diff_csec_reg[0]_i_6_n_3 ;
  wire \diff_csec_reg[1]_i_13_n_0 ;
  wire \diff_csec_reg[1]_i_13_n_1 ;
  wire \diff_csec_reg[1]_i_13_n_2 ;
  wire \diff_csec_reg[1]_i_13_n_3 ;
  wire \diff_csec_reg[1]_i_16_n_0 ;
  wire \diff_csec_reg[1]_i_16_n_1 ;
  wire \diff_csec_reg[1]_i_16_n_2 ;
  wire \diff_csec_reg[1]_i_16_n_3 ;
  wire \diff_csec_reg[1]_i_17_n_0 ;
  wire \diff_csec_reg[1]_i_17_n_1 ;
  wire \diff_csec_reg[1]_i_17_n_2 ;
  wire \diff_csec_reg[1]_i_17_n_3 ;
  wire \diff_csec_reg[1]_i_26_n_0 ;
  wire \diff_csec_reg[1]_i_26_n_1 ;
  wire \diff_csec_reg[1]_i_26_n_2 ;
  wire \diff_csec_reg[1]_i_26_n_3 ;
  wire \diff_csec_reg[1]_i_27_n_0 ;
  wire \diff_csec_reg[1]_i_27_n_1 ;
  wire \diff_csec_reg[1]_i_27_n_2 ;
  wire \diff_csec_reg[1]_i_27_n_3 ;
  wire \diff_csec_reg[1]_i_28_n_0 ;
  wire \diff_csec_reg[1]_i_28_n_1 ;
  wire \diff_csec_reg[1]_i_28_n_2 ;
  wire \diff_csec_reg[1]_i_28_n_3 ;
  wire \diff_csec_reg[1]_i_29_n_0 ;
  wire \diff_csec_reg[1]_i_29_n_1 ;
  wire \diff_csec_reg[1]_i_29_n_2 ;
  wire \diff_csec_reg[1]_i_29_n_3 ;
  wire \diff_csec_reg[1]_i_2_n_0 ;
  wire \diff_csec_reg[1]_i_2_n_1 ;
  wire \diff_csec_reg[1]_i_2_n_2 ;
  wire \diff_csec_reg[1]_i_2_n_3 ;
  wire \diff_csec_reg[1]_i_2_n_4 ;
  wire \diff_csec_reg[1]_i_2_n_5 ;
  wire \diff_csec_reg[1]_i_2_n_6 ;
  wire \diff_csec_reg[1]_i_30_n_0 ;
  wire \diff_csec_reg[1]_i_30_n_1 ;
  wire \diff_csec_reg[1]_i_30_n_2 ;
  wire \diff_csec_reg[1]_i_30_n_3 ;
  wire \diff_csec_reg[1]_i_31_n_0 ;
  wire \diff_csec_reg[1]_i_31_n_1 ;
  wire \diff_csec_reg[1]_i_31_n_2 ;
  wire \diff_csec_reg[1]_i_31_n_3 ;
  wire \diff_csec_reg[7]_i_24_n_0 ;
  wire \diff_csec_reg[7]_i_24_n_1 ;
  wire \diff_csec_reg[7]_i_24_n_2 ;
  wire \diff_csec_reg[7]_i_24_n_3 ;
  wire \diff_csec_reg[7]_i_25_n_0 ;
  wire \diff_csec_reg[7]_i_25_n_1 ;
  wire \diff_csec_reg[7]_i_25_n_2 ;
  wire \diff_csec_reg[7]_i_25_n_3 ;
  wire \diff_csec_reg[7]_i_26_n_0 ;
  wire \diff_csec_reg[7]_i_26_n_1 ;
  wire \diff_csec_reg[7]_i_26_n_2 ;
  wire \diff_csec_reg[7]_i_26_n_3 ;
  wire \diff_csec_reg[7]_i_27_n_0 ;
  wire \diff_csec_reg[7]_i_27_n_1 ;
  wire \diff_csec_reg[7]_i_27_n_2 ;
  wire \diff_csec_reg[7]_i_27_n_3 ;
  wire \diff_csec_reg[7]_i_28_n_0 ;
  wire \diff_csec_reg[7]_i_28_n_1 ;
  wire \diff_csec_reg[7]_i_28_n_2 ;
  wire \diff_csec_reg[7]_i_28_n_3 ;
  wire \diff_csec_reg[7]_i_29_n_0 ;
  wire \diff_csec_reg[7]_i_29_n_1 ;
  wire \diff_csec_reg[7]_i_29_n_2 ;
  wire \diff_csec_reg[7]_i_29_n_3 ;
  wire \diff_csec_reg[7]_i_30_n_0 ;
  wire \diff_csec_reg[7]_i_30_n_1 ;
  wire \diff_csec_reg[7]_i_30_n_2 ;
  wire \diff_csec_reg[7]_i_30_n_3 ;
  wire \diff_csec_reg[7]_i_31_n_0 ;
  wire \diff_csec_reg[7]_i_31_n_1 ;
  wire \diff_csec_reg[7]_i_31_n_2 ;
  wire \diff_csec_reg[7]_i_31_n_3 ;
  wire \diff_csec_reg[7]_i_44_n_0 ;
  wire \diff_csec_reg[7]_i_44_n_1 ;
  wire \diff_csec_reg[7]_i_44_n_2 ;
  wire \diff_csec_reg[7]_i_44_n_3 ;
  wire \diff_csec_reg[7]_i_45_n_0 ;
  wire \diff_csec_reg[7]_i_45_n_1 ;
  wire \diff_csec_reg[7]_i_45_n_2 ;
  wire \diff_csec_reg[7]_i_45_n_3 ;
  wire \diff_csec_reg[7]_i_8_n_0 ;
  wire \diff_csec_reg[7]_i_8_n_1 ;
  wire \diff_csec_reg[7]_i_8_n_2 ;
  wire \diff_csec_reg[7]_i_8_n_3 ;
  wire \diff_csec_reg[7]_i_8_n_4 ;
  wire \diff_csec_reg[7]_i_8_n_5 ;
  wire \diff_csec_reg[7]_i_8_n_6 ;
  wire \diff_csec_reg[7]_i_8_n_7 ;
  wire [3:0]diff_min;
  wire \diff_min[0]_i_10_n_0 ;
  wire \diff_min[0]_i_11_n_0 ;
  wire \diff_min[0]_i_12_n_0 ;
  wire \diff_min[0]_i_13_n_0 ;
  wire \diff_min[0]_i_14_n_0 ;
  wire \diff_min[0]_i_15_n_0 ;
  wire \diff_min[0]_i_16_n_0 ;
  wire \diff_min[0]_i_1_n_0 ;
  wire \diff_min[0]_i_2_n_0 ;
  wire \diff_min[0]_i_3_n_0 ;
  wire \diff_min[0]_i_4_n_0 ;
  wire \diff_min[0]_i_5_n_0 ;
  wire \diff_min[0]_i_6_n_0 ;
  wire \diff_min[0]_i_7_n_0 ;
  wire \diff_min[0]_i_8_n_0 ;
  wire \diff_min[0]_i_9_n_0 ;
  wire \diff_min[1]_i_10_n_0 ;
  wire \diff_min[1]_i_1_n_0 ;
  wire \diff_min[1]_i_2_n_0 ;
  wire \diff_min[1]_i_3_n_0 ;
  wire \diff_min[1]_i_4_n_0 ;
  wire \diff_min[1]_i_5_n_0 ;
  wire \diff_min[1]_i_6_n_0 ;
  wire \diff_min[1]_i_7_n_0 ;
  wire \diff_min[1]_i_8_n_0 ;
  wire \diff_min[1]_i_9_n_0 ;
  wire \diff_min[2]_i_1_n_0 ;
  wire \diff_min[2]_i_2_n_0 ;
  wire \diff_min[2]_i_3_n_0 ;
  wire \diff_min[2]_i_4_n_0 ;
  wire \diff_min[2]_i_5_n_0 ;
  wire \diff_min[2]_i_6_n_0 ;
  wire \diff_min[2]_i_7_n_0 ;
  wire \diff_min[2]_i_8_n_0 ;
  wire \diff_min[3]_i_10_n_0 ;
  wire \diff_min[3]_i_11_n_0 ;
  wire \diff_min[3]_i_12_n_0 ;
  wire \diff_min[3]_i_13_n_0 ;
  wire \diff_min[3]_i_14_n_0 ;
  wire \diff_min[3]_i_15_n_0 ;
  wire \diff_min[3]_i_16_n_0 ;
  wire \diff_min[3]_i_17_n_0 ;
  wire \diff_min[3]_i_18_n_0 ;
  wire \diff_min[3]_i_19_n_0 ;
  wire \diff_min[3]_i_20_n_0 ;
  wire \diff_min[3]_i_21_n_0 ;
  wire \diff_min[3]_i_22_n_0 ;
  wire \diff_min[3]_i_23_n_0 ;
  wire \diff_min[3]_i_24_n_0 ;
  wire \diff_min[3]_i_25_n_0 ;
  wire \diff_min[3]_i_28_n_0 ;
  wire \diff_min[3]_i_29_n_0 ;
  wire \diff_min[3]_i_2_n_0 ;
  wire \diff_min[3]_i_30_n_0 ;
  wire \diff_min[3]_i_31_n_0 ;
  wire \diff_min[3]_i_32_n_0 ;
  wire \diff_min[3]_i_33_n_0 ;
  wire \diff_min[3]_i_34_n_0 ;
  wire \diff_min[3]_i_39_n_0 ;
  wire \diff_min[3]_i_40_n_0 ;
  wire \diff_min[3]_i_41_n_0 ;
  wire \diff_min[3]_i_42_n_0 ;
  wire \diff_min[3]_i_43_n_0 ;
  wire \diff_min[3]_i_4_n_0 ;
  wire \diff_min[3]_i_5_n_0 ;
  wire \diff_min[3]_i_8_n_0 ;
  wire \diff_min_reg[3]_i_26_n_2 ;
  wire \diff_min_reg[3]_i_26_n_3 ;
  wire \diff_min_reg[3]_i_35_n_0 ;
  wire \diff_min_reg[3]_i_35_n_1 ;
  wire \diff_min_reg[3]_i_35_n_2 ;
  wire \diff_min_reg[3]_i_35_n_3 ;
  wire \diff_min_reg[3]_i_36_n_0 ;
  wire \diff_min_reg[3]_i_36_n_1 ;
  wire \diff_min_reg[3]_i_36_n_2 ;
  wire \diff_min_reg[3]_i_36_n_3 ;
  wire \diff_min_reg[3]_i_37_n_0 ;
  wire \diff_min_reg[3]_i_37_n_1 ;
  wire \diff_min_reg[3]_i_37_n_2 ;
  wire \diff_min_reg[3]_i_37_n_3 ;
  wire \diff_min_reg[3]_i_38_n_0 ;
  wire \diff_min_reg[3]_i_38_n_1 ;
  wire \diff_min_reg[3]_i_38_n_2 ;
  wire \diff_min_reg[3]_i_38_n_3 ;
  wire \diff_min_reg[3]_i_6_n_0 ;
  wire \diff_min_reg[3]_i_6_n_1 ;
  wire \diff_min_reg[3]_i_6_n_2 ;
  wire \diff_min_reg[3]_i_6_n_3 ;
  wire \diff_min_reg[3]_i_7_n_0 ;
  wire \diff_min_reg[3]_i_7_n_1 ;
  wire \diff_min_reg[3]_i_7_n_2 ;
  wire \diff_min_reg[3]_i_7_n_3 ;
  wire \diff_min_reg[3]_i_9_n_0 ;
  wire \diff_min_reg[3]_i_9_n_1 ;
  wire \diff_min_reg[3]_i_9_n_2 ;
  wire \diff_min_reg[3]_i_9_n_3 ;
  wire [5:0]diff_sec;
  wire \diff_sec[0]_i_10_n_0 ;
  wire \diff_sec[0]_i_11_n_0 ;
  wire \diff_sec[0]_i_12_n_0 ;
  wire \diff_sec[0]_i_13_n_0 ;
  wire \diff_sec[0]_i_14_n_0 ;
  wire \diff_sec[0]_i_15_n_0 ;
  wire \diff_sec[0]_i_16_n_0 ;
  wire \diff_sec[0]_i_17_n_0 ;
  wire \diff_sec[0]_i_18_n_0 ;
  wire \diff_sec[0]_i_19_n_0 ;
  wire \diff_sec[0]_i_1_n_0 ;
  wire \diff_sec[0]_i_20_n_0 ;
  wire \diff_sec[0]_i_21_n_0 ;
  wire \diff_sec[0]_i_22_n_0 ;
  wire \diff_sec[0]_i_23_n_0 ;
  wire \diff_sec[0]_i_24_n_0 ;
  wire \diff_sec[0]_i_25_n_0 ;
  wire \diff_sec[0]_i_26_n_0 ;
  wire \diff_sec[0]_i_27_n_0 ;
  wire \diff_sec[0]_i_28_n_0 ;
  wire \diff_sec[0]_i_29_n_0 ;
  wire \diff_sec[0]_i_2_n_0 ;
  wire \diff_sec[0]_i_30_n_0 ;
  wire \diff_sec[0]_i_31_n_0 ;
  wire \diff_sec[0]_i_32_n_0 ;
  wire \diff_sec[0]_i_33_n_0 ;
  wire \diff_sec[0]_i_34_n_0 ;
  wire \diff_sec[0]_i_35_n_0 ;
  wire \diff_sec[0]_i_36_n_0 ;
  wire \diff_sec[0]_i_37_n_0 ;
  wire \diff_sec[0]_i_38_n_0 ;
  wire \diff_sec[0]_i_39_n_0 ;
  wire \diff_sec[0]_i_3_n_0 ;
  wire \diff_sec[0]_i_40_n_0 ;
  wire \diff_sec[0]_i_41_n_0 ;
  wire \diff_sec[0]_i_42_n_0 ;
  wire \diff_sec[0]_i_43_n_0 ;
  wire \diff_sec[0]_i_44_n_0 ;
  wire \diff_sec[0]_i_45_n_0 ;
  wire \diff_sec[0]_i_46_n_0 ;
  wire \diff_sec[0]_i_47_n_0 ;
  wire \diff_sec[0]_i_48_n_0 ;
  wire \diff_sec[0]_i_49_n_0 ;
  wire \diff_sec[0]_i_4_n_0 ;
  wire \diff_sec[0]_i_50_n_0 ;
  wire \diff_sec[0]_i_5_n_0 ;
  wire \diff_sec[0]_i_6_n_0 ;
  wire \diff_sec[0]_i_7_n_0 ;
  wire \diff_sec[0]_i_8_n_0 ;
  wire \diff_sec[0]_i_9_n_0 ;
  wire \diff_sec[1]_i_10_n_0 ;
  wire \diff_sec[1]_i_11_n_0 ;
  wire \diff_sec[1]_i_12_n_0 ;
  wire \diff_sec[1]_i_13_n_0 ;
  wire \diff_sec[1]_i_14_n_0 ;
  wire \diff_sec[1]_i_15_n_0 ;
  wire \diff_sec[1]_i_16_n_0 ;
  wire \diff_sec[1]_i_17_n_0 ;
  wire \diff_sec[1]_i_18_n_0 ;
  wire \diff_sec[1]_i_19_n_0 ;
  wire \diff_sec[1]_i_1_n_0 ;
  wire \diff_sec[1]_i_20_n_0 ;
  wire \diff_sec[1]_i_21_n_0 ;
  wire \diff_sec[1]_i_22_n_0 ;
  wire \diff_sec[1]_i_23_n_0 ;
  wire \diff_sec[1]_i_24_n_0 ;
  wire \diff_sec[1]_i_25_n_0 ;
  wire \diff_sec[1]_i_26_n_0 ;
  wire \diff_sec[1]_i_27_n_0 ;
  wire \diff_sec[1]_i_28_n_0 ;
  wire \diff_sec[1]_i_29_n_0 ;
  wire \diff_sec[1]_i_2_n_0 ;
  wire \diff_sec[1]_i_30_n_0 ;
  wire \diff_sec[1]_i_31_n_0 ;
  wire \diff_sec[1]_i_32_n_0 ;
  wire \diff_sec[1]_i_33_n_0 ;
  wire \diff_sec[1]_i_34_n_0 ;
  wire \diff_sec[1]_i_35_n_0 ;
  wire \diff_sec[1]_i_36_n_0 ;
  wire \diff_sec[1]_i_37_n_0 ;
  wire \diff_sec[1]_i_38_n_0 ;
  wire \diff_sec[1]_i_39_n_0 ;
  wire \diff_sec[1]_i_3_n_0 ;
  wire \diff_sec[1]_i_40_n_0 ;
  wire \diff_sec[1]_i_41_n_0 ;
  wire \diff_sec[1]_i_4_n_0 ;
  wire \diff_sec[1]_i_5_n_0 ;
  wire \diff_sec[1]_i_6_n_0 ;
  wire \diff_sec[1]_i_7_n_0 ;
  wire \diff_sec[1]_i_8_n_0 ;
  wire \diff_sec[1]_i_9_n_0 ;
  wire \diff_sec[2]_i_10_n_0 ;
  wire \diff_sec[2]_i_11_n_0 ;
  wire \diff_sec[2]_i_12_n_0 ;
  wire \diff_sec[2]_i_13_n_0 ;
  wire \diff_sec[2]_i_14_n_0 ;
  wire \diff_sec[2]_i_15_n_0 ;
  wire \diff_sec[2]_i_16_n_0 ;
  wire \diff_sec[2]_i_17_n_0 ;
  wire \diff_sec[2]_i_18_n_0 ;
  wire \diff_sec[2]_i_19_n_0 ;
  wire \diff_sec[2]_i_1_n_0 ;
  wire \diff_sec[2]_i_20_n_0 ;
  wire \diff_sec[2]_i_2_n_0 ;
  wire \diff_sec[2]_i_3_n_0 ;
  wire \diff_sec[2]_i_4_n_0 ;
  wire \diff_sec[2]_i_5_n_0 ;
  wire \diff_sec[2]_i_6_n_0 ;
  wire \diff_sec[2]_i_7_n_0 ;
  wire \diff_sec[2]_i_8_n_0 ;
  wire \diff_sec[2]_i_9_n_0 ;
  wire \diff_sec[3]_i_10_n_0 ;
  wire \diff_sec[3]_i_11_n_0 ;
  wire \diff_sec[3]_i_12_n_0 ;
  wire \diff_sec[3]_i_13_n_0 ;
  wire \diff_sec[3]_i_14_n_0 ;
  wire \diff_sec[3]_i_15_n_0 ;
  wire \diff_sec[3]_i_16_n_0 ;
  wire \diff_sec[3]_i_17_n_0 ;
  wire \diff_sec[3]_i_18_n_0 ;
  wire \diff_sec[3]_i_1_n_0 ;
  wire \diff_sec[3]_i_2_n_0 ;
  wire \diff_sec[3]_i_3_n_0 ;
  wire \diff_sec[3]_i_4_n_0 ;
  wire \diff_sec[3]_i_5_n_0 ;
  wire \diff_sec[3]_i_6_n_0 ;
  wire \diff_sec[3]_i_7_n_0 ;
  wire \diff_sec[3]_i_8_n_0 ;
  wire \diff_sec[3]_i_9_n_0 ;
  wire \diff_sec[4]_i_100_n_0 ;
  wire \diff_sec[4]_i_101_n_0 ;
  wire \diff_sec[4]_i_102_n_0 ;
  wire \diff_sec[4]_i_103_n_0 ;
  wire \diff_sec[4]_i_104_n_0 ;
  wire \diff_sec[4]_i_105_n_0 ;
  wire \diff_sec[4]_i_106_n_0 ;
  wire \diff_sec[4]_i_107_n_0 ;
  wire \diff_sec[4]_i_108_n_0 ;
  wire \diff_sec[4]_i_109_n_0 ;
  wire \diff_sec[4]_i_10_n_0 ;
  wire \diff_sec[4]_i_110_n_0 ;
  wire \diff_sec[4]_i_111_n_0 ;
  wire \diff_sec[4]_i_112_n_0 ;
  wire \diff_sec[4]_i_113_n_0 ;
  wire \diff_sec[4]_i_114_n_0 ;
  wire \diff_sec[4]_i_115_n_0 ;
  wire \diff_sec[4]_i_116_n_0 ;
  wire \diff_sec[4]_i_117_n_0 ;
  wire \diff_sec[4]_i_118_n_0 ;
  wire \diff_sec[4]_i_119_n_0 ;
  wire \diff_sec[4]_i_11_n_0 ;
  wire \diff_sec[4]_i_120_n_0 ;
  wire \diff_sec[4]_i_121_n_0 ;
  wire \diff_sec[4]_i_122_n_0 ;
  wire \diff_sec[4]_i_123_n_0 ;
  wire \diff_sec[4]_i_124_n_0 ;
  wire \diff_sec[4]_i_125_n_0 ;
  wire \diff_sec[4]_i_126_n_0 ;
  wire \diff_sec[4]_i_127_n_0 ;
  wire \diff_sec[4]_i_128_n_0 ;
  wire \diff_sec[4]_i_129_n_0 ;
  wire \diff_sec[4]_i_12_n_0 ;
  wire \diff_sec[4]_i_13_n_0 ;
  wire \diff_sec[4]_i_14_n_0 ;
  wire \diff_sec[4]_i_15_n_0 ;
  wire \diff_sec[4]_i_16_n_0 ;
  wire \diff_sec[4]_i_17_n_0 ;
  wire \diff_sec[4]_i_18_n_0 ;
  wire \diff_sec[4]_i_19_n_0 ;
  wire \diff_sec[4]_i_1_n_0 ;
  wire \diff_sec[4]_i_20_n_0 ;
  wire \diff_sec[4]_i_21_n_0 ;
  wire \diff_sec[4]_i_22_n_0 ;
  wire \diff_sec[4]_i_23_n_0 ;
  wire \diff_sec[4]_i_24_n_0 ;
  wire \diff_sec[4]_i_25_n_0 ;
  wire \diff_sec[4]_i_26_n_0 ;
  wire \diff_sec[4]_i_27_n_0 ;
  wire \diff_sec[4]_i_29_n_0 ;
  wire \diff_sec[4]_i_2_n_0 ;
  wire \diff_sec[4]_i_30_n_0 ;
  wire \diff_sec[4]_i_31_n_0 ;
  wire \diff_sec[4]_i_32_n_0 ;
  wire \diff_sec[4]_i_34_n_0 ;
  wire \diff_sec[4]_i_35_n_0 ;
  wire \diff_sec[4]_i_36_n_0 ;
  wire \diff_sec[4]_i_37_n_0 ;
  wire \diff_sec[4]_i_38_n_0 ;
  wire \diff_sec[4]_i_39_n_0 ;
  wire \diff_sec[4]_i_3_n_0 ;
  wire \diff_sec[4]_i_40_n_0 ;
  wire \diff_sec[4]_i_41_n_0 ;
  wire \diff_sec[4]_i_42_n_0 ;
  wire \diff_sec[4]_i_43_n_0 ;
  wire \diff_sec[4]_i_44_n_0 ;
  wire \diff_sec[4]_i_45_n_0 ;
  wire \diff_sec[4]_i_46_n_0 ;
  wire \diff_sec[4]_i_47_n_0 ;
  wire \diff_sec[4]_i_48_n_0 ;
  wire \diff_sec[4]_i_49_n_0 ;
  wire \diff_sec[4]_i_4_n_0 ;
  wire \diff_sec[4]_i_50_n_0 ;
  wire \diff_sec[4]_i_51_n_0 ;
  wire \diff_sec[4]_i_52_n_0 ;
  wire \diff_sec[4]_i_5_n_0 ;
  wire \diff_sec[4]_i_61_n_0 ;
  wire \diff_sec[4]_i_62_n_0 ;
  wire \diff_sec[4]_i_63_n_0 ;
  wire \diff_sec[4]_i_64_n_0 ;
  wire \diff_sec[4]_i_65_n_0 ;
  wire \diff_sec[4]_i_66_n_0 ;
  wire \diff_sec[4]_i_67_n_0 ;
  wire \diff_sec[4]_i_68_n_0 ;
  wire \diff_sec[4]_i_69_n_0 ;
  wire \diff_sec[4]_i_6_n_0 ;
  wire \diff_sec[4]_i_70_n_0 ;
  wire \diff_sec[4]_i_71_n_0 ;
  wire \diff_sec[4]_i_72_n_0 ;
  wire \diff_sec[4]_i_73_n_0 ;
  wire \diff_sec[4]_i_74_n_0 ;
  wire \diff_sec[4]_i_75_n_0 ;
  wire \diff_sec[4]_i_76_n_0 ;
  wire \diff_sec[4]_i_77_n_0 ;
  wire \diff_sec[4]_i_78_n_0 ;
  wire \diff_sec[4]_i_79_n_0 ;
  wire \diff_sec[4]_i_7_n_0 ;
  wire \diff_sec[4]_i_80_n_0 ;
  wire \diff_sec[4]_i_81_n_0 ;
  wire \diff_sec[4]_i_82_n_0 ;
  wire \diff_sec[4]_i_83_n_0 ;
  wire \diff_sec[4]_i_84_n_0 ;
  wire \diff_sec[4]_i_85_n_0 ;
  wire \diff_sec[4]_i_86_n_0 ;
  wire \diff_sec[4]_i_87_n_0 ;
  wire \diff_sec[4]_i_88_n_0 ;
  wire \diff_sec[4]_i_89_n_0 ;
  wire \diff_sec[4]_i_8_n_0 ;
  wire \diff_sec[4]_i_90_n_0 ;
  wire \diff_sec[4]_i_91_n_0 ;
  wire \diff_sec[4]_i_92_n_0 ;
  wire \diff_sec[4]_i_93_n_0 ;
  wire \diff_sec[4]_i_94_n_0 ;
  wire \diff_sec[4]_i_95_n_0 ;
  wire \diff_sec[4]_i_96_n_0 ;
  wire \diff_sec[4]_i_97_n_0 ;
  wire \diff_sec[4]_i_98_n_0 ;
  wire \diff_sec[4]_i_99_n_0 ;
  wire \diff_sec[4]_i_9_n_0 ;
  wire \diff_sec[5]_i_100_n_0 ;
  wire \diff_sec[5]_i_101_n_0 ;
  wire \diff_sec[5]_i_102_n_0 ;
  wire \diff_sec[5]_i_103_n_0 ;
  wire \diff_sec[5]_i_104_n_0 ;
  wire \diff_sec[5]_i_105_n_0 ;
  wire \diff_sec[5]_i_106_n_0 ;
  wire \diff_sec[5]_i_107_n_0 ;
  wire \diff_sec[5]_i_108_n_0 ;
  wire \diff_sec[5]_i_109_n_0 ;
  wire \diff_sec[5]_i_10_n_0 ;
  wire \diff_sec[5]_i_110_n_0 ;
  wire \diff_sec[5]_i_111_n_0 ;
  wire \diff_sec[5]_i_112_n_0 ;
  wire \diff_sec[5]_i_113_n_0 ;
  wire \diff_sec[5]_i_114_n_0 ;
  wire \diff_sec[5]_i_115_n_0 ;
  wire \diff_sec[5]_i_116_n_0 ;
  wire \diff_sec[5]_i_117_n_0 ;
  wire \diff_sec[5]_i_118_n_0 ;
  wire \diff_sec[5]_i_119_n_0 ;
  wire \diff_sec[5]_i_11_n_0 ;
  wire \diff_sec[5]_i_120_n_0 ;
  wire \diff_sec[5]_i_121_n_0 ;
  wire \diff_sec[5]_i_122_n_0 ;
  wire \diff_sec[5]_i_123_n_0 ;
  wire \diff_sec[5]_i_124_n_0 ;
  wire \diff_sec[5]_i_125_n_0 ;
  wire \diff_sec[5]_i_126_n_0 ;
  wire \diff_sec[5]_i_127_n_0 ;
  wire \diff_sec[5]_i_128_n_0 ;
  wire \diff_sec[5]_i_129_n_0 ;
  wire \diff_sec[5]_i_12_n_0 ;
  wire \diff_sec[5]_i_130_n_0 ;
  wire \diff_sec[5]_i_131_n_0 ;
  wire \diff_sec[5]_i_132_n_0 ;
  wire \diff_sec[5]_i_133_n_0 ;
  wire \diff_sec[5]_i_134_n_0 ;
  wire \diff_sec[5]_i_135_n_0 ;
  wire \diff_sec[5]_i_136_n_0 ;
  wire \diff_sec[5]_i_137_n_0 ;
  wire \diff_sec[5]_i_138_n_0 ;
  wire \diff_sec[5]_i_139_n_0 ;
  wire \diff_sec[5]_i_13_n_0 ;
  wire \diff_sec[5]_i_140_n_0 ;
  wire \diff_sec[5]_i_141_n_0 ;
  wire \diff_sec[5]_i_142_n_0 ;
  wire \diff_sec[5]_i_143_n_0 ;
  wire \diff_sec[5]_i_144_n_0 ;
  wire \diff_sec[5]_i_145_n_0 ;
  wire \diff_sec[5]_i_146_n_0 ;
  wire \diff_sec[5]_i_147_n_0 ;
  wire \diff_sec[5]_i_148_n_0 ;
  wire \diff_sec[5]_i_149_n_0 ;
  wire \diff_sec[5]_i_14_n_0 ;
  wire \diff_sec[5]_i_150_n_0 ;
  wire \diff_sec[5]_i_151_n_0 ;
  wire \diff_sec[5]_i_152_n_0 ;
  wire \diff_sec[5]_i_153_n_0 ;
  wire \diff_sec[5]_i_154_n_0 ;
  wire \diff_sec[5]_i_155_n_0 ;
  wire \diff_sec[5]_i_156_n_0 ;
  wire \diff_sec[5]_i_157_n_0 ;
  wire \diff_sec[5]_i_158_n_0 ;
  wire \diff_sec[5]_i_159_n_0 ;
  wire \diff_sec[5]_i_15_n_0 ;
  wire \diff_sec[5]_i_160_n_0 ;
  wire \diff_sec[5]_i_161_n_0 ;
  wire \diff_sec[5]_i_162_n_0 ;
  wire \diff_sec[5]_i_17_n_0 ;
  wire \diff_sec[5]_i_18_n_0 ;
  wire \diff_sec[5]_i_19_n_0 ;
  wire \diff_sec[5]_i_1_n_0 ;
  wire \diff_sec[5]_i_20_n_0 ;
  wire \diff_sec[5]_i_21_n_0 ;
  wire \diff_sec[5]_i_22_n_0 ;
  wire \diff_sec[5]_i_23_n_0 ;
  wire \diff_sec[5]_i_24_n_0 ;
  wire \diff_sec[5]_i_25_n_0 ;
  wire \diff_sec[5]_i_26_n_0 ;
  wire \diff_sec[5]_i_27_n_0 ;
  wire \diff_sec[5]_i_28_n_0 ;
  wire \diff_sec[5]_i_29_n_0 ;
  wire \diff_sec[5]_i_2_n_0 ;
  wire \diff_sec[5]_i_30_n_0 ;
  wire \diff_sec[5]_i_31_n_0 ;
  wire \diff_sec[5]_i_32_n_0 ;
  wire \diff_sec[5]_i_33_n_0 ;
  wire \diff_sec[5]_i_34_n_0 ;
  wire \diff_sec[5]_i_3_n_0 ;
  wire \diff_sec[5]_i_43_n_0 ;
  wire \diff_sec[5]_i_44_n_0 ;
  wire \diff_sec[5]_i_45_n_0 ;
  wire \diff_sec[5]_i_46_n_0 ;
  wire \diff_sec[5]_i_47_n_0 ;
  wire \diff_sec[5]_i_48_n_0 ;
  wire \diff_sec[5]_i_49_n_0 ;
  wire \diff_sec[5]_i_4_n_0 ;
  wire \diff_sec[5]_i_50_n_0 ;
  wire \diff_sec[5]_i_59_n_0 ;
  wire \diff_sec[5]_i_5_n_0 ;
  wire \diff_sec[5]_i_60_n_0 ;
  wire \diff_sec[5]_i_61_n_0 ;
  wire \diff_sec[5]_i_62_n_0 ;
  wire \diff_sec[5]_i_63_n_0 ;
  wire \diff_sec[5]_i_64_n_0 ;
  wire \diff_sec[5]_i_65_n_0 ;
  wire \diff_sec[5]_i_66_n_0 ;
  wire \diff_sec[5]_i_67_n_0 ;
  wire \diff_sec[5]_i_68_n_0 ;
  wire \diff_sec[5]_i_69_n_0 ;
  wire \diff_sec[5]_i_6_n_0 ;
  wire \diff_sec[5]_i_70_n_0 ;
  wire \diff_sec[5]_i_71_n_0 ;
  wire \diff_sec[5]_i_72_n_0 ;
  wire \diff_sec[5]_i_73_n_0 ;
  wire \diff_sec[5]_i_74_n_0 ;
  wire \diff_sec[5]_i_75_n_0 ;
  wire \diff_sec[5]_i_76_n_0 ;
  wire \diff_sec[5]_i_77_n_0 ;
  wire \diff_sec[5]_i_78_n_0 ;
  wire \diff_sec[5]_i_79_n_0 ;
  wire \diff_sec[5]_i_7_n_0 ;
  wire \diff_sec[5]_i_80_n_0 ;
  wire \diff_sec[5]_i_81_n_0 ;
  wire \diff_sec[5]_i_82_n_0 ;
  wire \diff_sec[5]_i_83_n_0 ;
  wire \diff_sec[5]_i_84_n_0 ;
  wire \diff_sec[5]_i_85_n_0 ;
  wire \diff_sec[5]_i_86_n_0 ;
  wire \diff_sec[5]_i_87_n_0 ;
  wire \diff_sec[5]_i_88_n_0 ;
  wire \diff_sec[5]_i_89_n_0 ;
  wire \diff_sec[5]_i_8_n_0 ;
  wire \diff_sec[5]_i_90_n_0 ;
  wire \diff_sec[5]_i_91_n_0 ;
  wire \diff_sec[5]_i_92_n_0 ;
  wire \diff_sec[5]_i_93_n_0 ;
  wire \diff_sec[5]_i_94_n_0 ;
  wire \diff_sec[5]_i_95_n_0 ;
  wire \diff_sec[5]_i_96_n_0 ;
  wire \diff_sec[5]_i_97_n_0 ;
  wire \diff_sec[5]_i_98_n_0 ;
  wire \diff_sec[5]_i_99_n_0 ;
  wire \diff_sec[5]_i_9_n_0 ;
  wire \diff_sec_reg[4]_i_28_n_0 ;
  wire \diff_sec_reg[4]_i_28_n_1 ;
  wire \diff_sec_reg[4]_i_28_n_2 ;
  wire \diff_sec_reg[4]_i_28_n_3 ;
  wire \diff_sec_reg[4]_i_28_n_4 ;
  wire \diff_sec_reg[4]_i_28_n_5 ;
  wire \diff_sec_reg[4]_i_28_n_6 ;
  wire \diff_sec_reg[4]_i_28_n_7 ;
  wire \diff_sec_reg[4]_i_33_n_2 ;
  wire \diff_sec_reg[4]_i_33_n_3 ;
  wire \diff_sec_reg[4]_i_33_n_5 ;
  wire \diff_sec_reg[4]_i_33_n_6 ;
  wire \diff_sec_reg[4]_i_33_n_7 ;
  wire \diff_sec_reg[4]_i_53_n_0 ;
  wire \diff_sec_reg[4]_i_53_n_1 ;
  wire \diff_sec_reg[4]_i_53_n_2 ;
  wire \diff_sec_reg[4]_i_53_n_3 ;
  wire \diff_sec_reg[4]_i_54_n_0 ;
  wire \diff_sec_reg[4]_i_54_n_1 ;
  wire \diff_sec_reg[4]_i_54_n_2 ;
  wire \diff_sec_reg[4]_i_54_n_3 ;
  wire \diff_sec_reg[4]_i_55_n_0 ;
  wire \diff_sec_reg[4]_i_55_n_1 ;
  wire \diff_sec_reg[4]_i_55_n_2 ;
  wire \diff_sec_reg[4]_i_55_n_3 ;
  wire \diff_sec_reg[4]_i_56_n_0 ;
  wire \diff_sec_reg[4]_i_56_n_1 ;
  wire \diff_sec_reg[4]_i_56_n_2 ;
  wire \diff_sec_reg[4]_i_56_n_3 ;
  wire \diff_sec_reg[4]_i_57_n_0 ;
  wire \diff_sec_reg[4]_i_57_n_1 ;
  wire \diff_sec_reg[4]_i_57_n_2 ;
  wire \diff_sec_reg[4]_i_57_n_3 ;
  wire \diff_sec_reg[4]_i_58_n_0 ;
  wire \diff_sec_reg[4]_i_58_n_1 ;
  wire \diff_sec_reg[4]_i_58_n_2 ;
  wire \diff_sec_reg[4]_i_58_n_3 ;
  wire \diff_sec_reg[4]_i_59_n_0 ;
  wire \diff_sec_reg[4]_i_59_n_1 ;
  wire \diff_sec_reg[4]_i_59_n_2 ;
  wire \diff_sec_reg[4]_i_59_n_3 ;
  wire \diff_sec_reg[4]_i_60_n_0 ;
  wire \diff_sec_reg[4]_i_60_n_1 ;
  wire \diff_sec_reg[4]_i_60_n_2 ;
  wire \diff_sec_reg[4]_i_60_n_3 ;
  wire \diff_sec_reg[5]_i_16_n_0 ;
  wire \diff_sec_reg[5]_i_16_n_1 ;
  wire \diff_sec_reg[5]_i_16_n_2 ;
  wire \diff_sec_reg[5]_i_16_n_3 ;
  wire \diff_sec_reg[5]_i_16_n_4 ;
  wire \diff_sec_reg[5]_i_16_n_5 ;
  wire \diff_sec_reg[5]_i_16_n_6 ;
  wire \diff_sec_reg[5]_i_16_n_7 ;
  wire \diff_sec_reg[5]_i_35_n_0 ;
  wire \diff_sec_reg[5]_i_35_n_1 ;
  wire \diff_sec_reg[5]_i_35_n_2 ;
  wire \diff_sec_reg[5]_i_35_n_3 ;
  wire \diff_sec_reg[5]_i_36_n_0 ;
  wire \diff_sec_reg[5]_i_36_n_1 ;
  wire \diff_sec_reg[5]_i_36_n_2 ;
  wire \diff_sec_reg[5]_i_36_n_3 ;
  wire \diff_sec_reg[5]_i_37_n_0 ;
  wire \diff_sec_reg[5]_i_37_n_1 ;
  wire \diff_sec_reg[5]_i_37_n_2 ;
  wire \diff_sec_reg[5]_i_37_n_3 ;
  wire \diff_sec_reg[5]_i_38_n_0 ;
  wire \diff_sec_reg[5]_i_38_n_1 ;
  wire \diff_sec_reg[5]_i_38_n_2 ;
  wire \diff_sec_reg[5]_i_38_n_3 ;
  wire \diff_sec_reg[5]_i_39_n_0 ;
  wire \diff_sec_reg[5]_i_39_n_1 ;
  wire \diff_sec_reg[5]_i_39_n_2 ;
  wire \diff_sec_reg[5]_i_39_n_3 ;
  wire \diff_sec_reg[5]_i_40_n_0 ;
  wire \diff_sec_reg[5]_i_40_n_1 ;
  wire \diff_sec_reg[5]_i_40_n_2 ;
  wire \diff_sec_reg[5]_i_40_n_3 ;
  wire \diff_sec_reg[5]_i_41_n_0 ;
  wire \diff_sec_reg[5]_i_41_n_1 ;
  wire \diff_sec_reg[5]_i_41_n_2 ;
  wire \diff_sec_reg[5]_i_41_n_3 ;
  wire \diff_sec_reg[5]_i_42_n_0 ;
  wire \diff_sec_reg[5]_i_42_n_1 ;
  wire \diff_sec_reg[5]_i_42_n_2 ;
  wire \diff_sec_reg[5]_i_42_n_3 ;
  wire \diff_sec_reg[5]_i_51_n_2 ;
  wire \diff_sec_reg[5]_i_51_n_3 ;
  wire \diff_sec_reg[5]_i_52_n_2 ;
  wire \diff_sec_reg[5]_i_52_n_3 ;
  wire \diff_sec_reg[5]_i_53_n_2 ;
  wire \diff_sec_reg[5]_i_53_n_3 ;
  wire \diff_sec_reg[5]_i_54_n_2 ;
  wire \diff_sec_reg[5]_i_54_n_3 ;
  wire \diff_sec_reg[5]_i_55_n_2 ;
  wire \diff_sec_reg[5]_i_55_n_3 ;
  wire \diff_sec_reg[5]_i_56_n_2 ;
  wire \diff_sec_reg[5]_i_56_n_3 ;
  wire \diff_sec_reg[5]_i_57_n_2 ;
  wire \diff_sec_reg[5]_i_57_n_3 ;
  wire \diff_sec_reg[5]_i_58_n_2 ;
  wire \diff_sec_reg[5]_i_58_n_3 ;
  wire ed_clear_n_10;
  wire ed_clear_n_11;
  wire ed_clear_n_12;
  wire ed_clear_n_13;
  wire ed_clear_n_14;
  wire ed_clear_n_15;
  wire ed_clear_n_16;
  wire ed_clear_n_17;
  wire ed_clear_n_18;
  wire ed_clear_n_19;
  wire ed_clear_n_20;
  wire ed_clear_n_21;
  wire ed_clear_n_22;
  wire ed_clear_n_23;
  wire ed_clear_n_24;
  wire ed_clear_n_25;
  wire ed_clear_n_26;
  wire ed_clear_n_27;
  wire ed_clear_n_28;
  wire ed_clear_n_29;
  wire ed_clear_n_3;
  wire ed_clear_n_30;
  wire ed_clear_n_32;
  wire ed_clear_n_33;
  wire ed_clear_n_34;
  wire ed_clear_n_35;
  wire ed_clear_n_36;
  wire ed_clear_n_37;
  wire ed_clear_n_38;
  wire ed_clear_n_39;
  wire ed_clear_n_4;
  wire ed_clear_n_40;
  wire ed_clear_n_41;
  wire ed_clear_n_42;
  wire ed_clear_n_43;
  wire ed_clear_n_44;
  wire ed_clear_n_45;
  wire ed_clear_n_46;
  wire ed_clear_n_47;
  wire ed_clear_n_48;
  wire ed_clear_n_49;
  wire ed_clear_n_5;
  wire ed_clear_n_50;
  wire ed_clear_n_6;
  wire ed_clear_n_7;
  wire ed_clear_n_8;
  wire ed_clear_n_9;
  wire ed_start_n_2;
  wire ed_start_n_3;
  wire ed_start_n_4;
  wire ed_start_n_5;
  wire ed_start_n_6;
  wire ed_start_n_7;
  wire ed_start_n_8;
  wire ed_start_n_9;
  wire [7:0]lap_count;
  wire \lap_count[1]_i_1_n_0 ;
  wire \lap_count[2]_i_1_n_0 ;
  wire \lap_count[3]_i_1_n_0 ;
  wire \lap_count[4]_i_1_n_0 ;
  wire \lap_count[5]_i_1_n_0 ;
  wire \lap_count[5]_i_2_n_0 ;
  wire \lap_count[6]_i_1_n_0 ;
  wire \lap_count[7]_i_2_n_0 ;
  wire \lap_count[7]_i_4_n_0 ;
  wire \lap_count[7]_i_5_n_0 ;
  wire \lap_count_reg[1]_0 ;
  wire [6:0]lap_csec;
  wire \lap_csec[5]_i_2_n_0 ;
  wire \lap_csec[6]_i_4_n_0 ;
  wire \lap_csec[6]_i_5_n_0 ;
  wire lap_flag;
  wire lap_flag_reg_0;
  wire [5:0]lap_min;
  wire \lap_min[5]_i_3_n_0 ;
  wire \lap_min[5]_i_5_n_0 ;
  wire \lap_min[5]_i_7_n_0 ;
  wire [5:0]lap_sec;
  wire \lap_sec[5]_i_5_n_0 ;
  wire [5:0]min;
  wire \min[0]_i_1_n_0 ;
  wire \min[1]_i_1_n_0 ;
  wire \min[2]_i_1_n_0 ;
  wire \min[3]_i_1_n_0 ;
  wire \min[4]_i_1_n_0 ;
  wire \min[4]_i_2_n_0 ;
  wire \min[5]_i_2_n_0 ;
  wire \min[5]_i_3_n_0 ;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire [7:0]p_1_in;
  wire [6:0]prev_csec;
  wire [5:0]prev_min__0;
  wire [5:0]prev_sec;
  wire run;
  wire run_reg_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [27:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire [17:0]\s00_axi_rdata[19] ;
  wire [17:0]\s00_axi_rdata[19]_0 ;
  wire [17:0]\s00_axi_rdata[19]_1 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28] ;
  wire \s00_axi_rdata[29] ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30] ;
  wire \s00_axi_rdata[31] ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rdata_20_sn_1;
  wire s00_axi_rdata_21_sn_1;
  wire s00_axi_rdata_24_sn_1;
  wire s00_axi_rdata_25_sn_1;
  wire s00_axi_rdata_26_sn_1;
  wire s00_axi_rdata_27_sn_1;
  wire [5:0]sec;
  wire \sec[0]_i_1_n_0 ;
  wire \sec[1]_i_1_n_0 ;
  wire \sec[2]_i_1_n_0 ;
  wire \sec[3]_i_1_n_0 ;
  wire \sec[4]_i_1_n_0 ;
  wire \sec[4]_i_2_n_0 ;
  wire \sec[5]_i_2_n_0 ;
  wire \sec[5]_i_3_n_0 ;
  wire [2:0]sel0;
  wire sign_flag;
  wire sign_flag_i_10_n_0;
  wire sign_flag_i_11_n_0;
  wire sign_flag_i_12_n_0;
  wire sign_flag_i_13_n_0;
  wire sign_flag_i_14_n_0;
  wire sign_flag_i_15_n_0;
  wire sign_flag_i_16_n_0;
  wire sign_flag_i_19_n_0;
  wire sign_flag_i_20_n_0;
  wire sign_flag_i_21_n_0;
  wire sign_flag_i_22_n_0;
  wire sign_flag_i_23_n_0;
  wire sign_flag_i_24_n_0;
  wire sign_flag_i_25_n_0;
  wire sign_flag_i_26_n_0;
  wire sign_flag_i_4_n_0;
  wire sign_flag_i_5_n_0;
  wire sign_flag_i_6_n_0;
  wire sign_flag_i_7_n_0;
  wire sign_flag_i_9_n_0;
  wire sign_flag_reg_0;
  wire sign_flag_reg_i_17_n_2;
  wire sign_flag_reg_i_17_n_3;
  wire sign_flag_reg_i_18_n_2;
  wire sign_flag_reg_i_18_n_3;
  wire sign_flag_reg_i_2_n_3;
  wire sign_flag_reg_i_3_n_0;
  wire sign_flag_reg_i_3_n_1;
  wire sign_flag_reg_i_3_n_2;
  wire sign_flag_reg_i_3_n_3;
  wire sign_flag_reg_i_8_n_0;
  wire sign_flag_reg_i_8_n_1;
  wire sign_flag_reg_i_8_n_2;
  wire sign_flag_reg_i_8_n_3;
  wire start_p;
  wire [6:0]tmp_csec;
  wire [5:0]tmp_min__0;
  wire [5:0]tmp_sec;
  wire total_prev1_n_100;
  wire total_prev1_n_101;
  wire total_prev1_n_102;
  wire total_prev1_n_103;
  wire total_prev1_n_104;
  wire total_prev1_n_105;
  wire total_prev1_n_106;
  wire total_prev1_n_107;
  wire total_prev1_n_108;
  wire total_prev1_n_109;
  wire total_prev1_n_110;
  wire total_prev1_n_111;
  wire total_prev1_n_112;
  wire total_prev1_n_113;
  wire total_prev1_n_114;
  wire total_prev1_n_115;
  wire total_prev1_n_116;
  wire total_prev1_n_117;
  wire total_prev1_n_118;
  wire total_prev1_n_119;
  wire total_prev1_n_120;
  wire total_prev1_n_121;
  wire total_prev1_n_122;
  wire total_prev1_n_123;
  wire total_prev1_n_124;
  wire total_prev1_n_125;
  wire total_prev1_n_126;
  wire total_prev1_n_127;
  wire total_prev1_n_128;
  wire total_prev1_n_129;
  wire total_prev1_n_130;
  wire total_prev1_n_131;
  wire total_prev1_n_132;
  wire total_prev1_n_133;
  wire total_prev1_n_134;
  wire total_prev1_n_135;
  wire total_prev1_n_136;
  wire total_prev1_n_137;
  wire total_prev1_n_138;
  wire total_prev1_n_139;
  wire total_prev1_n_140;
  wire total_prev1_n_141;
  wire total_prev1_n_142;
  wire total_prev1_n_143;
  wire total_prev1_n_144;
  wire total_prev1_n_145;
  wire total_prev1_n_146;
  wire total_prev1_n_147;
  wire total_prev1_n_148;
  wire total_prev1_n_149;
  wire total_prev1_n_150;
  wire total_prev1_n_151;
  wire total_prev1_n_152;
  wire total_prev1_n_153;
  wire total_prev1_n_91;
  wire total_prev1_n_92;
  wire total_prev1_n_93;
  wire total_prev1_n_94;
  wire total_prev1_n_95;
  wire total_prev1_n_96;
  wire total_prev1_n_97;
  wire total_prev1_n_98;
  wire total_prev1_n_99;
  wire [18:0]total_prev__0;
  wire total_prev_n_100;
  wire total_prev_n_101;
  wire total_prev_n_102;
  wire total_prev_n_103;
  wire total_prev_n_104;
  wire total_prev_n_105;
  wire total_prev_n_87;
  wire total_prev_n_88;
  wire total_prev_n_89;
  wire total_prev_n_90;
  wire total_prev_n_91;
  wire total_prev_n_92;
  wire total_prev_n_93;
  wire total_prev_n_94;
  wire total_prev_n_95;
  wire total_prev_n_96;
  wire total_prev_n_97;
  wire total_prev_n_98;
  wire total_prev_n_99;
  wire total_tmp1_n_100;
  wire total_tmp1_n_101;
  wire total_tmp1_n_102;
  wire total_tmp1_n_103;
  wire total_tmp1_n_104;
  wire total_tmp1_n_105;
  wire total_tmp1_n_106;
  wire total_tmp1_n_107;
  wire total_tmp1_n_108;
  wire total_tmp1_n_109;
  wire total_tmp1_n_110;
  wire total_tmp1_n_111;
  wire total_tmp1_n_112;
  wire total_tmp1_n_113;
  wire total_tmp1_n_114;
  wire total_tmp1_n_115;
  wire total_tmp1_n_116;
  wire total_tmp1_n_117;
  wire total_tmp1_n_118;
  wire total_tmp1_n_119;
  wire total_tmp1_n_120;
  wire total_tmp1_n_121;
  wire total_tmp1_n_122;
  wire total_tmp1_n_123;
  wire total_tmp1_n_124;
  wire total_tmp1_n_125;
  wire total_tmp1_n_126;
  wire total_tmp1_n_127;
  wire total_tmp1_n_128;
  wire total_tmp1_n_129;
  wire total_tmp1_n_130;
  wire total_tmp1_n_131;
  wire total_tmp1_n_132;
  wire total_tmp1_n_133;
  wire total_tmp1_n_134;
  wire total_tmp1_n_135;
  wire total_tmp1_n_136;
  wire total_tmp1_n_137;
  wire total_tmp1_n_138;
  wire total_tmp1_n_139;
  wire total_tmp1_n_140;
  wire total_tmp1_n_141;
  wire total_tmp1_n_142;
  wire total_tmp1_n_143;
  wire total_tmp1_n_144;
  wire total_tmp1_n_145;
  wire total_tmp1_n_146;
  wire total_tmp1_n_147;
  wire total_tmp1_n_148;
  wire total_tmp1_n_149;
  wire total_tmp1_n_150;
  wire total_tmp1_n_151;
  wire total_tmp1_n_152;
  wire total_tmp1_n_153;
  wire total_tmp1_n_91;
  wire total_tmp1_n_92;
  wire total_tmp1_n_93;
  wire total_tmp1_n_94;
  wire total_tmp1_n_95;
  wire total_tmp1_n_96;
  wire total_tmp1_n_97;
  wire total_tmp1_n_98;
  wire total_tmp1_n_99;
  wire [18:0]total_tmp__0;
  wire total_tmp_n_100;
  wire total_tmp_n_101;
  wire total_tmp_n_102;
  wire total_tmp_n_103;
  wire total_tmp_n_104;
  wire total_tmp_n_105;
  wire total_tmp_n_87;
  wire total_tmp_n_88;
  wire total_tmp_n_89;
  wire total_tmp_n_90;
  wire total_tmp_n_91;
  wire total_tmp_n_92;
  wire total_tmp_n_93;
  wire total_tmp_n_94;
  wire total_tmp_n_95;
  wire total_tmp_n_96;
  wire total_tmp_n_97;
  wire total_tmp_n_98;
  wire total_tmp_n_99;
  wire [3:2]\NLW_cnt_sysclk1_reg[19]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_sysclk1_reg[19]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt_sysclk2_reg[19]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_sysclk2_reg[19]_i_4_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_13_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_16_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_17_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_27_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_28_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_29_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_30_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec_reg[1]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_min_reg[3]_i_26_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_min_reg[3]_i_26_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[4]_i_33_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[4]_i_33_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[5]_i_51_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[5]_i_51_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[5]_i_52_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[5]_i_52_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[5]_i_53_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[5]_i_53_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[5]_i_54_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[5]_i_54_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[5]_i_55_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[5]_i_55_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[5]_i_56_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[5]_i_56_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[5]_i_57_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[5]_i_57_O_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec_reg[5]_i_58_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[5]_i_58_O_UNCONNECTED ;
  wire [3:2]NLW_sign_flag_reg_i_17_CO_UNCONNECTED;
  wire [3:3]NLW_sign_flag_reg_i_17_O_UNCONNECTED;
  wire [3:2]NLW_sign_flag_reg_i_18_CO_UNCONNECTED;
  wire [3:3]NLW_sign_flag_reg_i_18_O_UNCONNECTED;
  wire [3:2]NLW_sign_flag_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_sign_flag_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_sign_flag_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_sign_flag_reg_i_8_O_UNCONNECTED;
  wire NLW_total_prev_CARRYCASCOUT_UNCONNECTED;
  wire NLW_total_prev_MULTSIGNOUT_UNCONNECTED;
  wire NLW_total_prev_OVERFLOW_UNCONNECTED;
  wire NLW_total_prev_PATTERNBDETECT_UNCONNECTED;
  wire NLW_total_prev_PATTERNDETECT_UNCONNECTED;
  wire NLW_total_prev_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_total_prev_ACOUT_UNCONNECTED;
  wire [17:0]NLW_total_prev_BCOUT_UNCONNECTED;
  wire [3:0]NLW_total_prev_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_total_prev_P_UNCONNECTED;
  wire [47:0]NLW_total_prev_PCOUT_UNCONNECTED;
  wire NLW_total_prev1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_total_prev1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_total_prev1_OVERFLOW_UNCONNECTED;
  wire NLW_total_prev1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_total_prev1_PATTERNDETECT_UNCONNECTED;
  wire NLW_total_prev1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_total_prev1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_total_prev1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_total_prev1_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_total_prev1_P_UNCONNECTED;
  wire NLW_total_tmp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_total_tmp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_total_tmp_OVERFLOW_UNCONNECTED;
  wire NLW_total_tmp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_total_tmp_PATTERNDETECT_UNCONNECTED;
  wire NLW_total_tmp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_total_tmp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_total_tmp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_total_tmp_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_total_tmp_P_UNCONNECTED;
  wire [47:0]NLW_total_tmp_PCOUT_UNCONNECTED;
  wire NLW_total_tmp1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_total_tmp1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_total_tmp1_OVERFLOW_UNCONNECTED;
  wire NLW_total_tmp1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_total_tmp1_PATTERNDETECT_UNCONNECTED;
  wire NLW_total_tmp1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_total_tmp1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_total_tmp1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_total_tmp1_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_total_tmp1_P_UNCONNECTED;

  assign s00_axi_rdata_20_sn_1 = s00_axi_rdata_20_sp_1;
  assign s00_axi_rdata_21_sn_1 = s00_axi_rdata_21_sp_1;
  assign s00_axi_rdata_24_sn_1 = s00_axi_rdata_24_sp_1;
  assign s00_axi_rdata_25_sn_1 = s00_axi_rdata_25_sp_1;
  assign s00_axi_rdata_26_sn_1 = s00_axi_rdata_26_sp_1;
  assign s00_axi_rdata_27_sn_1 = s00_axi_rdata_27_sp_1;
  (* FSM_ENCODED_STATES = "S_CAPTURE:010,S_DONE:100,S_IDLE:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_diff_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ed_start_n_6),
        .PRE(AR),
        .Q(\FSM_onehot_diff_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "S_CAPTURE:010,S_DONE:100,S_IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_diff_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ed_start_n_4),
        .Q(\FSM_onehot_diff_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "S_CAPTURE:010,S_DONE:100,S_IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_diff_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ed_start_n_2),
        .Q(\FSM_onehot_diff_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[0]_i_1 
       (.I0(\cnt_sysclk1[19]_i_4_n_0 ),
        .I1(cnt_sysclk1[0]),
        .O(\cnt_sysclk1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[10]_i_1 
       (.I0(cnt_sysclk10[10]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[11]_i_1 
       (.I0(cnt_sysclk10[11]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[12]_i_1 
       (.I0(cnt_sysclk10[12]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[13]_i_1 
       (.I0(cnt_sysclk10[13]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[14]_i_1 
       (.I0(cnt_sysclk10[14]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[15]_i_1 
       (.I0(cnt_sysclk10[15]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[16]_i_1 
       (.I0(cnt_sysclk10[16]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[17]_i_1 
       (.I0(cnt_sysclk10[17]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[18]_i_1 
       (.I0(cnt_sysclk10[18]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[19]_i_2 
       (.I0(cnt_sysclk10[19]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A888A8A)) 
    \cnt_sysclk1[19]_i_4 
       (.I0(run),
        .I1(\cnt_sysclk1[19]_i_5_n_0 ),
        .I2(cnt_sysclk1[15]),
        .I3(\cnt_sysclk1[19]_i_6_n_0 ),
        .I4(cnt_sysclk1[14]),
        .O(\cnt_sysclk1[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_sysclk1[19]_i_5 
       (.I0(cnt_sysclk1[17]),
        .I1(cnt_sysclk1[18]),
        .I2(cnt_sysclk1[16]),
        .I3(cnt_sysclk1[19]),
        .O(\cnt_sysclk1[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000100FFFF)) 
    \cnt_sysclk1[19]_i_6 
       (.I0(cnt_sysclk1[7]),
        .I1(cnt_sysclk1[6]),
        .I2(cnt_sysclk1[8]),
        .I3(\cnt_sysclk1[19]_i_7_n_0 ),
        .I4(cnt_sysclk1[9]),
        .I5(\cnt_sysclk1[19]_i_8_n_0 ),
        .O(\cnt_sysclk1[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_sysclk1[19]_i_7 
       (.I0(cnt_sysclk1[1]),
        .I1(cnt_sysclk1[5]),
        .I2(cnt_sysclk1[0]),
        .I3(cnt_sysclk1[2]),
        .I4(cnt_sysclk1[4]),
        .I5(cnt_sysclk1[3]),
        .O(\cnt_sysclk1[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_sysclk1[19]_i_8 
       (.I0(cnt_sysclk1[11]),
        .I1(cnt_sysclk1[12]),
        .I2(cnt_sysclk1[10]),
        .I3(cnt_sysclk1[13]),
        .O(\cnt_sysclk1[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[1]_i_1 
       (.I0(cnt_sysclk10[1]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[2]_i_1 
       (.I0(cnt_sysclk10[2]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[3]_i_1 
       (.I0(cnt_sysclk10[3]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[4]_i_1 
       (.I0(cnt_sysclk10[4]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[5]_i_1 
       (.I0(cnt_sysclk10[5]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[6]_i_1 
       (.I0(cnt_sysclk10[6]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[7]_i_1 
       (.I0(cnt_sysclk10[7]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[8]_i_1 
       (.I0(cnt_sysclk10[8]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk1[9]_i_1 
       (.I0(cnt_sysclk10[9]),
        .I1(\cnt_sysclk1[19]_i_4_n_0 ),
        .O(\cnt_sysclk1[9]_i_1_n_0 ));
  FDCE \cnt_sysclk1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[0]_i_1_n_0 ),
        .Q(cnt_sysclk1[0]));
  FDCE \cnt_sysclk1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[10]_i_1_n_0 ),
        .Q(cnt_sysclk1[10]));
  FDCE \cnt_sysclk1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[11]_i_1_n_0 ),
        .Q(cnt_sysclk1[11]));
  FDCE \cnt_sysclk1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[12]_i_1_n_0 ),
        .Q(cnt_sysclk1[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk1_reg[12]_i_2 
       (.CI(\cnt_sysclk1_reg[8]_i_2_n_0 ),
        .CO({\cnt_sysclk1_reg[12]_i_2_n_0 ,\cnt_sysclk1_reg[12]_i_2_n_1 ,\cnt_sysclk1_reg[12]_i_2_n_2 ,\cnt_sysclk1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[12:9]),
        .S(cnt_sysclk1[12:9]));
  FDCE \cnt_sysclk1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[13]_i_1_n_0 ),
        .Q(cnt_sysclk1[13]));
  FDCE \cnt_sysclk1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[14]_i_1_n_0 ),
        .Q(cnt_sysclk1[14]));
  FDCE \cnt_sysclk1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[15]_i_1_n_0 ),
        .Q(cnt_sysclk1[15]));
  FDCE \cnt_sysclk1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[16]_i_1_n_0 ),
        .Q(cnt_sysclk1[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk1_reg[16]_i_2 
       (.CI(\cnt_sysclk1_reg[12]_i_2_n_0 ),
        .CO({\cnt_sysclk1_reg[16]_i_2_n_0 ,\cnt_sysclk1_reg[16]_i_2_n_1 ,\cnt_sysclk1_reg[16]_i_2_n_2 ,\cnt_sysclk1_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[16:13]),
        .S(cnt_sysclk1[16:13]));
  FDCE \cnt_sysclk1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[17]_i_1_n_0 ),
        .Q(cnt_sysclk1[17]));
  FDCE \cnt_sysclk1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[18]_i_1_n_0 ),
        .Q(cnt_sysclk1[18]));
  FDCE \cnt_sysclk1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[19]_i_2_n_0 ),
        .Q(cnt_sysclk1[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk1_reg[19]_i_3 
       (.CI(\cnt_sysclk1_reg[16]_i_2_n_0 ),
        .CO({\NLW_cnt_sysclk1_reg[19]_i_3_CO_UNCONNECTED [3:2],\cnt_sysclk1_reg[19]_i_3_n_2 ,\cnt_sysclk1_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_sysclk1_reg[19]_i_3_O_UNCONNECTED [3],cnt_sysclk10[19:17]}),
        .S({1'b0,cnt_sysclk1[19:17]}));
  FDCE \cnt_sysclk1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[1]_i_1_n_0 ),
        .Q(cnt_sysclk1[1]));
  FDCE \cnt_sysclk1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[2]_i_1_n_0 ),
        .Q(cnt_sysclk1[2]));
  FDCE \cnt_sysclk1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[3]_i_1_n_0 ),
        .Q(cnt_sysclk1[3]));
  FDCE \cnt_sysclk1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[4]_i_1_n_0 ),
        .Q(cnt_sysclk1[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_sysclk1_reg[4]_i_2_n_0 ,\cnt_sysclk1_reg[4]_i_2_n_1 ,\cnt_sysclk1_reg[4]_i_2_n_2 ,\cnt_sysclk1_reg[4]_i_2_n_3 }),
        .CYINIT(cnt_sysclk1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[4:1]),
        .S(cnt_sysclk1[4:1]));
  FDCE \cnt_sysclk1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[5]_i_1_n_0 ),
        .Q(cnt_sysclk1[5]));
  FDCE \cnt_sysclk1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[6]_i_1_n_0 ),
        .Q(cnt_sysclk1[6]));
  FDCE \cnt_sysclk1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[7]_i_1_n_0 ),
        .Q(cnt_sysclk1[7]));
  FDCE \cnt_sysclk1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[8]_i_1_n_0 ),
        .Q(cnt_sysclk1[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk1_reg[8]_i_2 
       (.CI(\cnt_sysclk1_reg[4]_i_2_n_0 ),
        .CO({\cnt_sysclk1_reg[8]_i_2_n_0 ,\cnt_sysclk1_reg[8]_i_2_n_1 ,\cnt_sysclk1_reg[8]_i_2_n_2 ,\cnt_sysclk1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk10[8:5]),
        .S(cnt_sysclk1[8:5]));
  FDCE \cnt_sysclk1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(AR),
        .D(\cnt_sysclk1[9]_i_1_n_0 ),
        .Q(cnt_sysclk1[9]));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \cnt_sysclk2[19]_i_3 
       (.I0(\cnt_sysclk2[19]_i_5_n_0 ),
        .I1(\cnt_sysclk2_reg_n_0_[15] ),
        .I2(\cnt_sysclk2_reg_n_0_[19] ),
        .I3(\cnt_sysclk2_reg_n_0_[18] ),
        .I4(\cnt_sysclk2_reg_n_0_[17] ),
        .I5(\cnt_sysclk2_reg_n_0_[16] ),
        .O(\cnt_sysclk2[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \cnt_sysclk2[19]_i_5 
       (.I0(\cnt_sysclk2_reg_n_0_[14] ),
        .I1(\cnt_sysclk2_reg_n_0_[11] ),
        .I2(\cnt_sysclk2_reg_n_0_[12] ),
        .I3(\cnt_sysclk2_reg_n_0_[10] ),
        .I4(\cnt_sysclk2_reg_n_0_[13] ),
        .I5(\cnt_sysclk2[19]_i_6_n_0 ),
        .O(\cnt_sysclk2[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5555555D)) 
    \cnt_sysclk2[19]_i_6 
       (.I0(\cnt_sysclk2_reg_n_0_[9] ),
        .I1(\cnt_sysclk2[19]_i_7_n_0 ),
        .I2(\cnt_sysclk2_reg_n_0_[8] ),
        .I3(\cnt_sysclk2_reg_n_0_[6] ),
        .I4(\cnt_sysclk2_reg_n_0_[7] ),
        .O(\cnt_sysclk2[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_sysclk2[19]_i_7 
       (.I0(\cnt_sysclk2_reg_n_0_[1] ),
        .I1(\cnt_sysclk2_reg_n_0_[4] ),
        .I2(\cnt_sysclk2_reg_n_0_[0] ),
        .I3(\cnt_sysclk2_reg_n_0_[2] ),
        .I4(\cnt_sysclk2_reg_n_0_[5] ),
        .I5(\cnt_sysclk2_reg_n_0_[3] ),
        .O(\cnt_sysclk2[19]_i_7_n_0 ));
  FDCE \cnt_sysclk2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_26),
        .Q(\cnt_sysclk2_reg_n_0_[0] ));
  FDCE \cnt_sysclk2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_16),
        .Q(\cnt_sysclk2_reg_n_0_[10] ));
  FDCE \cnt_sysclk2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_15),
        .Q(\cnt_sysclk2_reg_n_0_[11] ));
  FDCE \cnt_sysclk2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_14),
        .Q(\cnt_sysclk2_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk2_reg[12]_i_2 
       (.CI(\cnt_sysclk2_reg[8]_i_2_n_0 ),
        .CO({\cnt_sysclk2_reg[12]_i_2_n_0 ,\cnt_sysclk2_reg[12]_i_2_n_1 ,\cnt_sysclk2_reg[12]_i_2_n_2 ,\cnt_sysclk2_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[12:9]),
        .S({\cnt_sysclk2_reg_n_0_[12] ,\cnt_sysclk2_reg_n_0_[11] ,\cnt_sysclk2_reg_n_0_[10] ,\cnt_sysclk2_reg_n_0_[9] }));
  FDCE \cnt_sysclk2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_13),
        .Q(\cnt_sysclk2_reg_n_0_[13] ));
  FDCE \cnt_sysclk2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_12),
        .Q(\cnt_sysclk2_reg_n_0_[14] ));
  FDCE \cnt_sysclk2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_11),
        .Q(\cnt_sysclk2_reg_n_0_[15] ));
  FDCE \cnt_sysclk2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_10),
        .Q(\cnt_sysclk2_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk2_reg[16]_i_2 
       (.CI(\cnt_sysclk2_reg[12]_i_2_n_0 ),
        .CO({\cnt_sysclk2_reg[16]_i_2_n_0 ,\cnt_sysclk2_reg[16]_i_2_n_1 ,\cnt_sysclk2_reg[16]_i_2_n_2 ,\cnt_sysclk2_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[16:13]),
        .S({\cnt_sysclk2_reg_n_0_[16] ,\cnt_sysclk2_reg_n_0_[15] ,\cnt_sysclk2_reg_n_0_[14] ,\cnt_sysclk2_reg_n_0_[13] }));
  FDCE \cnt_sysclk2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_9),
        .Q(\cnt_sysclk2_reg_n_0_[17] ));
  FDCE \cnt_sysclk2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_8),
        .Q(\cnt_sysclk2_reg_n_0_[18] ));
  FDCE \cnt_sysclk2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_7),
        .Q(\cnt_sysclk2_reg_n_0_[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk2_reg[19]_i_4 
       (.CI(\cnt_sysclk2_reg[16]_i_2_n_0 ),
        .CO({\NLW_cnt_sysclk2_reg[19]_i_4_CO_UNCONNECTED [3:2],\cnt_sysclk2_reg[19]_i_4_n_2 ,\cnt_sysclk2_reg[19]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_sysclk2_reg[19]_i_4_O_UNCONNECTED [3],cnt_sysclk20[19:17]}),
        .S({1'b0,\cnt_sysclk2_reg_n_0_[19] ,\cnt_sysclk2_reg_n_0_[18] ,\cnt_sysclk2_reg_n_0_[17] }));
  FDCE \cnt_sysclk2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_25),
        .Q(\cnt_sysclk2_reg_n_0_[1] ));
  FDCE \cnt_sysclk2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_24),
        .Q(\cnt_sysclk2_reg_n_0_[2] ));
  FDCE \cnt_sysclk2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_23),
        .Q(\cnt_sysclk2_reg_n_0_[3] ));
  FDCE \cnt_sysclk2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_22),
        .Q(\cnt_sysclk2_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk2_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_sysclk2_reg[4]_i_2_n_0 ,\cnt_sysclk2_reg[4]_i_2_n_1 ,\cnt_sysclk2_reg[4]_i_2_n_2 ,\cnt_sysclk2_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_sysclk2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[4:1]),
        .S({\cnt_sysclk2_reg_n_0_[4] ,\cnt_sysclk2_reg_n_0_[3] ,\cnt_sysclk2_reg_n_0_[2] ,\cnt_sysclk2_reg_n_0_[1] }));
  FDCE \cnt_sysclk2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_21),
        .Q(\cnt_sysclk2_reg_n_0_[5] ));
  FDCE \cnt_sysclk2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_20),
        .Q(\cnt_sysclk2_reg_n_0_[6] ));
  FDCE \cnt_sysclk2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_19),
        .Q(\cnt_sysclk2_reg_n_0_[7] ));
  FDCE \cnt_sysclk2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_18),
        .Q(\cnt_sysclk2_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_sysclk2_reg[8]_i_2 
       (.CI(\cnt_sysclk2_reg[4]_i_2_n_0 ),
        .CO({\cnt_sysclk2_reg[8]_i_2_n_0 ,\cnt_sysclk2_reg[8]_i_2_n_1 ,\cnt_sysclk2_reg[8]_i_2_n_2 ,\cnt_sysclk2_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[8:5]),
        .S({\cnt_sysclk2_reg_n_0_[8] ,\cnt_sysclk2_reg_n_0_[7] ,\cnt_sysclk2_reg_n_0_[6] ,\cnt_sysclk2_reg_n_0_[5] }));
  FDCE \cnt_sysclk2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(AR),
        .D(ed_clear_n_17),
        .Q(\cnt_sysclk2_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \csec[0]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[0]),
        .O(\csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \csec[1]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[1]),
        .I2(csec[0]),
        .O(\csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \csec[2]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[0]),
        .I2(csec[1]),
        .I3(csec[2]),
        .O(\csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \csec[3]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[1]),
        .I2(csec[0]),
        .I3(csec[2]),
        .I4(csec[3]),
        .O(\csec[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \csec[4]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[2]),
        .I2(csec[0]),
        .I3(csec[1]),
        .I4(csec[3]),
        .I5(csec[4]),
        .O(\csec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \csec[5]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[3]),
        .I2(\csec[5]_i_2_n_0 ),
        .I3(csec[2]),
        .I4(csec[4]),
        .I5(csec[5]),
        .O(\csec[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \csec[5]_i_2 
       (.I0(csec[0]),
        .I1(csec[1]),
        .O(\csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \csec[6]_i_2 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[6]),
        .I2(csec[5]),
        .I3(\csec[6]_i_4_n_0 ),
        .O(\csec[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \csec[6]_i_3 
       (.I0(run),
        .I1(csec[5]),
        .I2(csec[6]),
        .I3(\csec[6]_i_5_n_0 ),
        .O(\csec[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \csec[6]_i_4 
       (.I0(csec[3]),
        .I1(csec[1]),
        .I2(csec[0]),
        .I3(csec[2]),
        .I4(csec[4]),
        .O(\csec[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \csec[6]_i_5 
       (.I0(csec[0]),
        .I1(csec[1]),
        .I2(csec[2]),
        .I3(csec[4]),
        .I4(csec[3]),
        .O(\csec[6]_i_5_n_0 ));
  FDCE \csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(AR),
        .D(\csec[0]_i_1_n_0 ),
        .Q(csec[0]));
  FDCE \csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(AR),
        .D(\csec[1]_i_1_n_0 ),
        .Q(csec[1]));
  FDCE \csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(AR),
        .D(\csec[2]_i_1_n_0 ),
        .Q(csec[2]));
  FDCE \csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(AR),
        .D(\csec[3]_i_1_n_0 ),
        .Q(csec[3]));
  FDCE \csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(AR),
        .D(\csec[4]_i_1_n_0 ),
        .Q(csec[4]));
  FDCE \csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(AR),
        .D(\csec[5]_i_1_n_0 ),
        .Q(csec[5]));
  FDCE \csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(AR),
        .D(\csec[6]_i_2_n_0 ),
        .Q(csec[6]));
  LUT6 #(
    .INIT(64'hA2A2A2A2A202A222)) 
    \diff_csec[0]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[0]_i_2_n_0 ),
        .I2(\diff_min[0]_i_2_n_0 ),
        .I3(\diff_csec[0]_i_3_n_0 ),
        .I4(\diff_min[3]_i_4_n_0 ),
        .I5(\diff_csec[0]_i_4_n_0 ),
        .O(\diff_csec[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[0]_i_10 
       (.I0(prev_csec[1]),
        .I1(total_prev_n_104),
        .O(\diff_csec[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[0]_i_11 
       (.I0(prev_csec[0]),
        .I1(total_prev_n_105),
        .O(\diff_csec[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[0]_i_12 
       (.I0(tmp_csec[3]),
        .I1(total_tmp_n_102),
        .O(\diff_csec[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[0]_i_13 
       (.I0(tmp_csec[2]),
        .I1(total_tmp_n_103),
        .O(\diff_csec[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[0]_i_14 
       (.I0(tmp_csec[1]),
        .I1(total_tmp_n_104),
        .O(\diff_csec[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[0]_i_15 
       (.I0(tmp_csec[0]),
        .I1(total_tmp_n_105),
        .O(\diff_csec[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[0]_i_2 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h330033001300FFFF)) 
    \diff_csec[0]_i_3 
       (.I0(\diff_min[2]_i_3_n_0 ),
        .I1(\diff_csec[0]_i_2_n_0 ),
        .I2(\diff_min[0]_i_7_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(\diff_csec[0]_i_7_n_0 ),
        .I5(\diff_min[0]_i_6_n_0 ),
        .O(\diff_csec[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h07700550)) 
    \diff_csec[0]_i_4 
       (.I0(\diff_min[1]_i_4_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(total_tmp__0[0]),
        .I3(total_prev__0[0]),
        .I4(\diff_min[2]_i_2_n_0 ),
        .O(\diff_csec[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h41C3EBC3)) 
    \diff_csec[0]_i_7 
       (.I0(\diff_min[0]_i_5_n_0 ),
        .I1(total_prev__0[0]),
        .I2(total_tmp__0[0]),
        .I3(\diff_min[1]_i_2_n_0 ),
        .I4(data9[0]),
        .O(\diff_csec[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[0]_i_8 
       (.I0(prev_csec[3]),
        .I1(total_prev_n_102),
        .O(\diff_csec[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[0]_i_9 
       (.I0(prev_csec[2]),
        .I1(total_prev_n_103),
        .O(\diff_csec[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \diff_csec[1]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec_reg[1]_i_2_n_6 ),
        .I2(\diff_min[0]_i_2_n_0 ),
        .I3(\diff_csec[1]_i_3_n_0 ),
        .O(\diff_csec[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_10 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_11 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \diff_csec[1]_i_12 
       (.I0(\diff_min[1]_i_4_n_0 ),
        .I1(data2[1]),
        .I2(\diff_min[1]_i_3_n_0 ),
        .I3(data3[1]),
        .I4(\diff_min[2]_i_2_n_0 ),
        .O(\diff_csec[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4545550540405000)) 
    \diff_csec[1]_i_14 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data9[1]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(data8[1]),
        .I4(\diff_min[0]_i_5_n_0 ),
        .I5(data7[1]),
        .O(\diff_csec[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2A7F00002A7F7F7F)) 
    \diff_csec[1]_i_15 
       (.I0(\diff_min[2]_i_3_n_0 ),
        .I1(\diff_min[0]_i_6_n_0 ),
        .I2(data6[1]),
        .I3(data5[1]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data4[1]),
        .O(\diff_csec[1]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_18 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_19 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_20 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_21 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_22 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_23 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_24 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_25 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \diff_csec[1]_i_3 
       (.I0(\diff_csec[1]_i_12_n_0 ),
        .I1(data1[1]),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(\diff_csec[1]_i_14_n_0 ),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(\diff_csec[1]_i_15_n_0 ),
        .O(\diff_csec[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_32 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_33 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_34 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_35 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_36 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_37 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_38 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_39 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_4 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_40 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_41 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_42 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_43 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_44 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_45 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_46 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_47 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_48 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_49 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_5 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_50 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_51 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_52 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_53 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_54 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_55 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_56 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_57 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_58 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_59 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_6 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_60 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_61 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_62 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_63 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_64 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_65 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_66 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_67 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_68 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_69 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_7 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_70 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_71 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_71_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_72 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_73 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_74 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_74_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_75 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_76 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_77 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_78 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_79 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_8 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_80 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_81 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_82 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_82_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_83 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_84 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_85 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_86 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_87 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_87_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_88 
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(\diff_csec[1]_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_89 
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(\diff_csec[1]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_9 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_90 
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(\diff_csec[1]_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \diff_csec[1]_i_91 
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(\diff_csec[1]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_92 
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(\diff_csec[1]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_93 
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(\diff_csec[1]_i_93_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_94 
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(\diff_csec[1]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[1]_i_95 
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(\diff_csec[1]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888888A)) 
    \diff_csec[2]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[2]_i_2_n_0 ),
        .I2(\diff_csec[2]_i_3_n_0 ),
        .I3(\diff_csec[6]_i_5_n_0 ),
        .I4(\diff_csec[2]_i_4_n_0 ),
        .I5(\diff_csec[2]_i_5_n_0 ),
        .O(\diff_csec[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[2]_i_10 
       (.I0(\diff_sec[0]_i_20_n_0 ),
        .I1(\diff_sec[0]_i_9_n_0 ),
        .O(\diff_csec[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFF0080FFFF)) 
    \diff_csec[2]_i_11 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[4]_i_21_n_0 ),
        .I2(\diff_csec[2]_i_17_n_0 ),
        .I3(\diff_sec[4]_i_23_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[4]_i_24_n_0 ),
        .O(\diff_csec[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hD7D75555D7D7F55F)) 
    \diff_csec[2]_i_12 
       (.I0(\diff_csec[4]_i_42_n_0 ),
        .I1(\diff_csec[2]_i_18_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[2]_i_19_n_0 ),
        .I4(\diff_sec[1]_i_23_n_0 ),
        .I5(\diff_csec[6]_i_12_n_0 ),
        .O(\diff_csec[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h41FF)) 
    \diff_csec[2]_i_13 
       (.I0(\diff_csec[4]_i_42_n_0 ),
        .I1(\diff_csec[5]_i_37_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_sec[2]_i_7_n_0 ),
        .O(\diff_csec[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF3CFFCCFF66FF66)) 
    \diff_csec[2]_i_14 
       (.I0(\diff_sec[0]_i_23_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[2]_i_20_n_0 ),
        .I3(\diff_sec[2]_i_7_n_0 ),
        .I4(\diff_sec[0]_i_22_n_0 ),
        .I5(\diff_csec[5]_i_13_n_0 ),
        .O(\diff_csec[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0011001055555555)) 
    \diff_csec[2]_i_15 
       (.I0(\diff_sec[0]_i_31_n_0 ),
        .I1(\diff_sec[0]_i_30_n_0 ),
        .I2(\diff_sec[3]_i_12_n_0 ),
        .I3(\diff_csec[6]_i_76_n_0 ),
        .I4(\diff_csec[6]_i_77_n_0 ),
        .I5(\diff_sec[2]_i_11_n_0 ),
        .O(\diff_csec[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFAB)) 
    \diff_csec[2]_i_16 
       (.I0(\diff_sec[0]_i_28_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .I2(\diff_sec[4]_i_13_n_0 ),
        .I3(\diff_sec[4]_i_14_n_0 ),
        .O(\diff_csec[2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h4544)) 
    \diff_csec[2]_i_17 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_csec[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0404000400000000)) 
    \diff_csec[2]_i_18 
       (.I0(\diff_sec[5]_i_4_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[5]_i_6_n_0 ),
        .I3(\diff_csec[7]_i_6_n_0 ),
        .I4(\diff_csec[5]_i_55_n_0 ),
        .I5(\diff_sec[5]_i_3_n_0 ),
        .O(\diff_csec[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \diff_csec[2]_i_19 
       (.I0(\diff_sec[4]_i_18_n_0 ),
        .I1(\diff_sec[4]_i_19_n_0 ),
        .O(\diff_csec[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h22FFF20022FF22DD)) 
    \diff_csec[2]_i_2 
       (.I0(\diff_sec[1]_i_5_n_0 ),
        .I1(\diff_csec[7]_i_2_n_0 ),
        .I2(\diff_csec[6]_i_5_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .I4(\diff_sec[2]_i_2_n_0 ),
        .I5(\diff_sec[0]_i_5_n_0 ),
        .O(\diff_csec[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \diff_csec[2]_i_20 
       (.I0(\diff_sec[3]_i_5_n_0 ),
        .I1(\diff_sec[0]_i_25_n_0 ),
        .O(\diff_csec[2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \diff_csec[2]_i_3 
       (.I0(\diff_csec[2]_i_6_n_0 ),
        .I1(\diff_csec[2]_i_7_n_0 ),
        .I2(\diff_sec[1]_i_9_n_0 ),
        .I3(\diff_csec[2]_i_8_n_0 ),
        .O(\diff_csec[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1111111101111101)) 
    \diff_csec[2]_i_4 
       (.I0(\diff_csec[2]_i_9_n_0 ),
        .I1(\diff_csec[6]_i_11_n_0 ),
        .I2(\diff_sec[4]_i_6_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .I4(\diff_csec[2]_i_10_n_0 ),
        .I5(\diff_csec[2]_i_11_n_0 ),
        .O(\diff_csec[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \diff_csec[2]_i_5 
       (.I0(\diff_csec[6]_i_11_n_0 ),
        .I1(\diff_csec[2]_i_12_n_0 ),
        .I2(\diff_csec[2]_i_13_n_0 ),
        .I3(\diff_csec[2]_i_14_n_0 ),
        .O(\diff_csec[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD0F0000080A0F0D0)) 
    \diff_csec[2]_i_6 
       (.I0(\diff_sec[3]_i_8_n_0 ),
        .I1(\diff_sec[1]_i_9_n_0 ),
        .I2(\diff_csec[6]_i_12_n_0 ),
        .I3(\diff_sec[0]_i_26_n_0 ),
        .I4(\diff_csec[7]_i_14_n_0 ),
        .I5(\diff_csec[4]_i_10_n_0 ),
        .O(\diff_csec[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF08000700080F070)) 
    \diff_csec[2]_i_7 
       (.I0(\diff_csec[6]_i_55_n_0 ),
        .I1(\diff_sec[0]_i_34_n_0 ),
        .I2(\diff_sec[0]_i_14_n_0 ),
        .I3(\diff_sec[1]_i_18_n_0 ),
        .I4(\diff_csec[7]_i_14_n_0 ),
        .I5(\diff_sec[0]_i_15_n_0 ),
        .O(\diff_csec[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA53C)) 
    \diff_csec[2]_i_8 
       (.I0(\diff_csec[2]_i_15_n_0 ),
        .I1(\diff_csec[2]_i_16_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[4]_i_12_n_0 ),
        .I4(\diff_sec[0]_i_14_n_0 ),
        .O(\diff_csec[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F00DDF0F00022)) 
    \diff_csec[2]_i_9 
       (.I0(\diff_sec[1]_i_12_n_0 ),
        .I1(\diff_sec[0]_i_19_n_0 ),
        .I2(\diff_csec[5]_i_31_n_0 ),
        .I3(\diff_sec[4]_i_6_n_0 ),
        .I4(\diff_csec[2]_i_11_n_0 ),
        .I5(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_csec[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A8AA)) 
    \diff_csec[3]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[3]_i_2_n_0 ),
        .I2(\diff_csec[3]_i_3_n_0 ),
        .I3(\diff_csec[3]_i_4_n_0 ),
        .I4(\diff_csec[3]_i_5_n_0 ),
        .I5(\diff_csec[6]_i_5_n_0 ),
        .O(\diff_csec[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F090F0F0F0F0)) 
    \diff_csec[3]_i_10 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[5]_i_13_n_0 ),
        .I3(\diff_csec[3]_i_19_n_0 ),
        .I4(\diff_csec[3]_i_20_n_0 ),
        .I5(\diff_csec[3]_i_21_n_0 ),
        .O(\diff_csec[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEFFAE)) 
    \diff_csec[3]_i_11 
       (.I0(\diff_csec[6]_i_12_n_0 ),
        .I1(\diff_csec[3]_i_22_n_0 ),
        .I2(\diff_csec[3]_i_23_n_0 ),
        .I3(\diff_csec[2]_i_11_n_0 ),
        .I4(\diff_csec[3]_i_24_n_0 ),
        .O(\diff_csec[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF566AAAA)) 
    \diff_csec[3]_i_12 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[2]_i_11_n_0 ),
        .I3(\diff_csec[3]_i_25_n_0 ),
        .I4(\diff_sec[1]_i_8_n_0 ),
        .O(\diff_csec[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000019005F46)) 
    \diff_csec[3]_i_13 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[4]_i_32_n_0 ),
        .I3(\diff_csec[3]_i_26_n_0 ),
        .I4(\diff_csec[6]_i_48_n_0 ),
        .I5(\diff_csec[6]_i_50_n_0 ),
        .O(\diff_csec[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_csec[3]_i_14 
       (.I0(\diff_csec[3]_i_27_n_0 ),
        .I1(\diff_sec[1]_i_9_n_0 ),
        .O(\diff_csec[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E0F0E0F0E000E0)) 
    \diff_csec[3]_i_15 
       (.I0(\diff_csec[3]_i_28_n_0 ),
        .I1(\diff_csec[3]_i_29_n_0 ),
        .I2(\diff_sec[0]_i_14_n_0 ),
        .I3(\diff_sec[1]_i_18_n_0 ),
        .I4(\diff_csec[3]_i_30_n_0 ),
        .I5(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_csec[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0002FFFFFFFF)) 
    \diff_csec[3]_i_16 
       (.I0(\diff_sec[3]_i_8_n_0 ),
        .I1(\diff_sec[1]_i_9_n_0 ),
        .I2(\diff_csec[3]_i_31_n_0 ),
        .I3(\diff_csec[3]_i_32_n_0 ),
        .I4(\diff_csec[3]_i_33_n_0 ),
        .I5(\diff_csec[6]_i_12_n_0 ),
        .O(\diff_csec[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000006090605)) 
    \diff_csec[3]_i_17 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[1]_i_23_n_0 ),
        .I3(\diff_sec[4]_i_19_n_0 ),
        .I4(\diff_sec[4]_i_18_n_0 ),
        .I5(\diff_csec[6]_i_12_n_0 ),
        .O(\diff_csec[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA65AAF5AA65AA)) 
    \diff_csec[3]_i_18 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[4]_i_20_n_0 ),
        .I3(\diff_csec[7]_i_3_n_0 ),
        .I4(\diff_sec[5]_i_4_n_0 ),
        .I5(\diff_sec[5]_i_3_n_0 ),
        .O(\diff_csec[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \diff_csec[3]_i_19 
       (.I0(\diff_sec[0]_i_38_n_0 ),
        .I1(\diff_sec[1]_i_29_n_0 ),
        .I2(\diff_sec[1]_i_28_n_0 ),
        .O(\diff_csec[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00A099A066E6FFE6)) 
    \diff_csec[3]_i_2 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[1]_i_5_n_0 ),
        .I3(\diff_csec[7]_i_2_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .I5(\diff_csec[5]_i_21_n_0 ),
        .O(\diff_csec[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFBABA)) 
    \diff_csec[3]_i_20 
       (.I0(\diff_sec[1]_i_29_n_0 ),
        .I1(\diff_sec[1]_i_28_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[4]_i_48_n_0 ),
        .I4(\diff_sec[2]_i_6_n_0 ),
        .O(\diff_csec[3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF6F695F5)) 
    \diff_csec[3]_i_21 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[3]_i_5_n_0 ),
        .I3(\diff_sec[0]_i_37_n_0 ),
        .I4(\diff_sec[0]_i_25_n_0 ),
        .O(\diff_csec[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00006AF9FFFFFFFF)) 
    \diff_csec[3]_i_22 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[0]_i_9_n_0 ),
        .I3(\diff_sec[0]_i_20_n_0 ),
        .I4(\diff_csec[6]_i_11_n_0 ),
        .I5(\diff_sec[4]_i_6_n_0 ),
        .O(\diff_csec[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h09A90505)) 
    \diff_csec[3]_i_23 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[0]_i_19_n_0 ),
        .I3(\diff_sec[4]_i_6_n_0 ),
        .I4(\diff_sec[1]_i_12_n_0 ),
        .O(\diff_csec[3]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h66FA069A)) 
    \diff_csec[3]_i_24 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[6]_i_74_n_0 ),
        .I3(\diff_sec[1]_i_11_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .O(\diff_csec[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \diff_csec[3]_i_25 
       (.I0(\diff_sec[4]_i_9_n_0 ),
        .I1(\diff_sec[2]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_6_n_0 ),
        .I3(\diff_sec[4]_i_7_n_0 ),
        .O(\diff_csec[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004040404)) 
    \diff_csec[3]_i_26 
       (.I0(\diff_sec[4]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .I2(\diff_sec[4]_i_17_n_0 ),
        .I3(\diff_sec[1]_i_41_n_0 ),
        .I4(\diff_sec[5]_i_4_n_0 ),
        .I5(\diff_sec[3]_i_12_n_0 ),
        .O(\diff_csec[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000092A096F)) 
    \diff_csec[3]_i_27 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[4]_i_3_n_0 ),
        .I3(\diff_sec[0]_i_28_n_0 ),
        .I4(\diff_csec[3]_i_34_n_0 ),
        .I5(\diff_csec[4]_i_12_n_0 ),
        .O(\diff_csec[3]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h80882A22)) 
    \diff_csec[3]_i_28 
       (.I0(\diff_csec[6]_i_54_n_0 ),
        .I1(\diff_sec[1]_i_17_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[6]_i_57_n_0 ),
        .I4(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_csec[3]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00009A96)) 
    \diff_csec[3]_i_29 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[0]_i_35_n_0 ),
        .I3(\diff_csec[5]_i_56_n_0 ),
        .I4(\diff_csec[6]_i_54_n_0 ),
        .O(\diff_csec[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hD0905000F0B0F0A0)) 
    \diff_csec[3]_i_3 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[3]_i_6_n_0 ),
        .I3(\diff_sec[3]_i_4_n_0 ),
        .I4(\diff_sec[2]_i_2_n_0 ),
        .I5(\diff_csec[6]_i_26_n_0 ),
        .O(\diff_csec[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \diff_csec[3]_i_30 
       (.I0(\diff_sec[3]_i_7_n_0 ),
        .I1(\diff_sec[0]_i_33_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_csec[3]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h06050609)) 
    \diff_csec[3]_i_31 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[0]_i_43_n_0 ),
        .I3(\diff_sec[1]_i_16_n_0 ),
        .I4(\diff_sec[1]_i_15_n_0 ),
        .O(\diff_csec[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hF060A0A05060A0A0)) 
    \diff_csec[3]_i_32 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[0]_i_43_n_0 ),
        .I3(\diff_csec[6]_i_75_n_0 ),
        .I4(\diff_sec[2]_i_10_n_0 ),
        .I5(\diff_sec[1]_i_9_n_0 ),
        .O(\diff_csec[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h65606060AFAAAAAA)) 
    \diff_csec[3]_i_33 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[6]_i_46_n_0 ),
        .I3(\diff_csec[7]_i_3_n_0 ),
        .I4(\diff_csec[3]_i_35_n_0 ),
        .I5(\diff_csec[4]_i_7_n_0 ),
        .O(\diff_csec[3]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \diff_csec[3]_i_34 
       (.I0(\diff_sec[4]_i_14_n_0 ),
        .I1(\diff_sec[4]_i_13_n_0 ),
        .I2(\diff_sec[4]_i_12_n_0 ),
        .O(\diff_csec[3]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \diff_csec[3]_i_35 
       (.I0(\diff_sec[4]_i_40_n_0 ),
        .I1(\diff_sec[3]_i_11_n_0 ),
        .I2(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_csec[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF4F)) 
    \diff_csec[3]_i_4 
       (.I0(\diff_csec[3]_i_7_n_0 ),
        .I1(\diff_csec[3]_i_8_n_0 ),
        .I2(\diff_csec[6]_i_11_n_0 ),
        .I3(\diff_csec[3]_i_9_n_0 ),
        .I4(\diff_csec[3]_i_10_n_0 ),
        .I5(\diff_csec[3]_i_11_n_0 ),
        .O(\diff_csec[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFD0)) 
    \diff_csec[3]_i_5 
       (.I0(\diff_csec[3]_i_12_n_0 ),
        .I1(\diff_csec[3]_i_13_n_0 ),
        .I2(\diff_csec[4]_i_12_n_0 ),
        .I3(\diff_csec[3]_i_14_n_0 ),
        .I4(\diff_csec[3]_i_15_n_0 ),
        .I5(\diff_csec[3]_i_16_n_0 ),
        .O(\diff_csec[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \diff_csec[3]_i_6 
       (.I0(\diff_sec[0]_i_5_n_0 ),
        .I1(\diff_csec[6]_i_5_n_0 ),
        .O(\diff_csec[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAB09EF6FFFFFFFFF)) 
    \diff_csec[3]_i_7 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[1]_i_21_n_0 ),
        .I3(\diff_csec[5]_i_37_n_0 ),
        .I4(\diff_csec[5]_i_38_n_0 ),
        .I5(\diff_sec[2]_i_7_n_0 ),
        .O(\diff_csec[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h45FF)) 
    \diff_csec[3]_i_8 
       (.I0(\diff_csec[3]_i_17_n_0 ),
        .I1(\diff_csec[3]_i_18_n_0 ),
        .I2(\diff_sec[1]_i_23_n_0 ),
        .I3(\diff_csec[4]_i_42_n_0 ),
        .O(\diff_csec[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000556650FA)) 
    \diff_csec[3]_i_9 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[7]_i_3_n_0 ),
        .I3(\diff_sec[1]_i_31_n_0 ),
        .I4(\diff_sec[1]_i_30_n_0 ),
        .I5(\diff_csec[5]_i_13_n_0 ),
        .O(\diff_csec[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000A8AAAAAAAA)) 
    \diff_csec[4]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[4]_i_2_n_0 ),
        .I2(\diff_csec[4]_i_3_n_0 ),
        .I3(\diff_csec[4]_i_4_n_0 ),
        .I4(\diff_csec[6]_i_5_n_0 ),
        .I5(\diff_csec[4]_i_5_n_0 ),
        .O(\diff_csec[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \diff_csec[4]_i_10 
       (.I0(\diff_csec[6]_i_46_n_0 ),
        .I1(\diff_csec[4]_i_7_n_0 ),
        .O(\diff_csec[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000BFF0BFFFFFFFF)) 
    \diff_csec[4]_i_11 
       (.I0(\diff_csec[4]_i_25_n_0 ),
        .I1(\diff_csec[6]_i_54_n_0 ),
        .I2(\diff_csec[4]_i_26_n_0 ),
        .I3(\diff_sec[1]_i_18_n_0 ),
        .I4(\diff_csec[4]_i_27_n_0 ),
        .I5(\diff_sec[0]_i_14_n_0 ),
        .O(\diff_csec[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2020202020200020)) 
    \diff_csec[4]_i_12 
       (.I0(\diff_csec[4]_i_28_n_0 ),
        .I1(\diff_sec[4]_i_15_n_0 ),
        .I2(\diff_sec[4]_i_14_n_0 ),
        .I3(\diff_sec[3]_i_12_n_0 ),
        .I4(\diff_csec[4]_i_29_n_0 ),
        .I5(\diff_sec[3]_i_10_n_0 ),
        .O(\diff_csec[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505050505C5C5C50)) 
    \diff_csec[4]_i_13 
       (.I0(\diff_csec[4]_i_9_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_sec[0]_i_28_n_0 ),
        .I3(\diff_sec[4]_i_12_n_0 ),
        .I4(\diff_sec[4]_i_13_n_0 ),
        .I5(\diff_sec[4]_i_14_n_0 ),
        .O(\diff_csec[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_csec[4]_i_14 
       (.I0(\diff_sec[0]_i_29_n_0 ),
        .I1(\diff_csec[4]_i_30_n_0 ),
        .O(\diff_csec[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \diff_csec[4]_i_15 
       (.I0(\diff_csec[4]_i_31_n_0 ),
        .I1(\diff_csec[4]_i_8_n_0 ),
        .I2(\diff_csec[4]_i_32_n_0 ),
        .I3(\diff_csec[4]_i_9_n_0 ),
        .I4(\diff_csec[6]_i_48_n_0 ),
        .I5(\diff_csec[4]_i_33_n_0 ),
        .O(\diff_csec[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBA00BA00BAFFBA00)) 
    \diff_csec[4]_i_16 
       (.I0(\diff_csec[4]_i_34_n_0 ),
        .I1(\diff_csec[4]_i_35_n_0 ),
        .I2(\diff_csec[4]_i_36_n_0 ),
        .I3(\diff_csec[5]_i_13_n_0 ),
        .I4(\diff_csec[4]_i_37_n_0 ),
        .I5(\diff_csec[4]_i_38_n_0 ),
        .O(\diff_csec[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \diff_csec[4]_i_17 
       (.I0(\diff_csec[6]_i_12_n_0 ),
        .I1(\diff_csec[4]_i_8_n_0 ),
        .I2(\diff_csec[5]_i_37_n_0 ),
        .I3(\diff_csec[4]_i_39_n_0 ),
        .I4(\diff_csec[5]_i_38_n_0 ),
        .I5(\diff_csec[4]_i_9_n_0 ),
        .O(\diff_csec[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h55555100FFFFFFFF)) 
    \diff_csec[4]_i_18 
       (.I0(\diff_csec[4]_i_40_n_0 ),
        .I1(\diff_sec[1]_i_23_n_0 ),
        .I2(\diff_csec[4]_i_8_n_0 ),
        .I3(\diff_csec[5]_i_33_n_0 ),
        .I4(\diff_csec[4]_i_41_n_0 ),
        .I5(\diff_csec[4]_i_42_n_0 ),
        .O(\diff_csec[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAAAAAEFAAEF)) 
    \diff_csec[4]_i_19 
       (.I0(\diff_csec[6]_i_12_n_0 ),
        .I1(\diff_csec[4]_i_43_n_0 ),
        .I2(\diff_csec[4]_i_44_n_0 ),
        .I3(\diff_csec[4]_i_45_n_0 ),
        .I4(\diff_csec[4]_i_46_n_0 ),
        .I5(\diff_sec[4]_i_6_n_0 ),
        .O(\diff_csec[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFFFFFBBBFBBBF)) 
    \diff_csec[4]_i_2 
       (.I0(\diff_csec[4]_i_6_n_0 ),
        .I1(\diff_csec[6]_i_12_n_0 ),
        .I2(\diff_csec[4]_i_7_n_0 ),
        .I3(\diff_csec[4]_i_8_n_0 ),
        .I4(\diff_csec[4]_i_9_n_0 ),
        .I5(\diff_csec[4]_i_10_n_0 ),
        .O(\diff_csec[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00440F44)) 
    \diff_csec[4]_i_20 
       (.I0(\diff_csec[4]_i_8_n_0 ),
        .I1(\diff_sec[1]_i_5_n_0 ),
        .I2(\diff_csec[4]_i_30_n_0 ),
        .I3(\diff_csec[7]_i_2_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .O(\diff_csec[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h455503334555CFFF)) 
    \diff_csec[4]_i_21 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_2_n_0 ),
        .I2(\diff_csec[4]_i_8_n_0 ),
        .I3(\diff_csec[6]_i_5_n_0 ),
        .I4(\diff_sec[3]_i_4_n_0 ),
        .I5(\diff_csec[4]_i_30_n_0 ),
        .O(\diff_csec[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF0A0C0C000A0C0C0)) 
    \diff_csec[4]_i_22 
       (.I0(\diff_csec[4]_i_30_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_sec[0]_i_43_n_0 ),
        .I3(\diff_csec[6]_i_75_n_0 ),
        .I4(\diff_sec[2]_i_10_n_0 ),
        .I5(\diff_csec[4]_i_8_n_0 ),
        .O(\diff_csec[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1010151010151515)) 
    \diff_csec[4]_i_23 
       (.I0(\diff_sec[0]_i_43_n_0 ),
        .I1(\diff_csec[4]_i_30_n_0 ),
        .I2(\diff_sec[1]_i_16_n_0 ),
        .I3(\diff_sec[1]_i_15_n_0 ),
        .I4(\diff_csec[4]_i_8_n_0 ),
        .I5(\diff_csec[4]_i_9_n_0 ),
        .O(\diff_csec[4]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \diff_csec[4]_i_24 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .O(\diff_csec[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1DDD11111DDD1DDD)) 
    \diff_csec[4]_i_25 
       (.I0(\diff_csec[4]_i_8_n_0 ),
        .I1(\diff_sec[1]_i_17_n_0 ),
        .I2(\diff_csec[4]_i_9_n_0 ),
        .I3(\diff_csec[6]_i_57_n_0 ),
        .I4(\diff_csec[7]_i_12_n_0 ),
        .I5(\diff_sec[0]_i_47_n_0 ),
        .O(\diff_csec[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000003A3F3A30)) 
    \diff_csec[4]_i_26 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[4]_i_9_n_0 ),
        .I2(\diff_sec[0]_i_35_n_0 ),
        .I3(\diff_csec[5]_i_56_n_0 ),
        .I4(\diff_csec[4]_i_30_n_0 ),
        .I5(\diff_csec[6]_i_54_n_0 ),
        .O(\diff_csec[4]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h10D01FDF)) 
    \diff_csec[4]_i_27 
       (.I0(\diff_csec[4]_i_30_n_0 ),
        .I1(\diff_sec[0]_i_33_n_0 ),
        .I2(\diff_sec[3]_i_7_n_0 ),
        .I3(\diff_csec[4]_i_8_n_0 ),
        .I4(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_csec[4]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \diff_csec[4]_i_28 
       (.I0(\diff_sec[4]_i_16_n_0 ),
        .I1(\diff_sec[5]_i_9_n_0 ),
        .I2(\diff_sec[5]_i_8_n_0 ),
        .I3(\diff_sec[5]_i_7_n_0 ),
        .I4(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_csec[4]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF700FFFF)) 
    \diff_csec[4]_i_29 
       (.I0(\diff_csec[7]_i_14_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_csec[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hA8AA000020220000)) 
    \diff_csec[4]_i_3 
       (.I0(\diff_csec[4]_i_11_n_0 ),
        .I1(\diff_csec[4]_i_12_n_0 ),
        .I2(\diff_csec[4]_i_13_n_0 ),
        .I3(\diff_csec[4]_i_14_n_0 ),
        .I4(\diff_sec[1]_i_9_n_0 ),
        .I5(\diff_csec[4]_i_15_n_0 ),
        .O(\diff_csec[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \diff_csec[4]_i_30 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_csec[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFD0FFDF00D000)) 
    \diff_csec[4]_i_31 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_sec[2]_i_11_n_0 ),
        .I2(\diff_csec[3]_i_25_n_0 ),
        .I3(\diff_sec[1]_i_8_n_0 ),
        .I4(\diff_csec[4]_i_9_n_0 ),
        .I5(\diff_csec[4]_i_8_n_0 ),
        .O(\diff_csec[4]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0504)) 
    \diff_csec[4]_i_32 
       (.I0(\diff_sec[0]_i_30_n_0 ),
        .I1(\diff_sec[3]_i_12_n_0 ),
        .I2(\diff_csec[6]_i_76_n_0 ),
        .I3(\diff_csec[6]_i_77_n_0 ),
        .O(\diff_csec[4]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \diff_csec[4]_i_33 
       (.I0(\diff_csec[4]_i_30_n_0 ),
        .I1(\diff_csec[3]_i_26_n_0 ),
        .I2(\diff_sec[2]_i_11_n_0 ),
        .I3(\diff_sec[0]_i_14_n_0 ),
        .O(\diff_csec[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0333031100000311)) 
    \diff_csec[4]_i_34 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[4]_i_47_n_0 ),
        .I2(\diff_csec[4]_i_30_n_0 ),
        .I3(\diff_sec[3]_i_5_n_0 ),
        .I4(\diff_sec[0]_i_25_n_0 ),
        .I5(\diff_csec[4]_i_9_n_0 ),
        .O(\diff_csec[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8FFF8F8F8F8)) 
    \diff_csec[4]_i_35 
       (.I0(\diff_csec[6]_i_68_n_0 ),
        .I1(\diff_csec[4]_i_8_n_0 ),
        .I2(\diff_sec[1]_i_29_n_0 ),
        .I3(\diff_csec[7]_i_12_n_0 ),
        .I4(\diff_csec[4]_i_48_n_0 ),
        .I5(\diff_sec[2]_i_6_n_0 ),
        .O(\diff_csec[4]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \diff_csec[4]_i_36 
       (.I0(\diff_sec[1]_i_28_n_0 ),
        .I1(\diff_sec[1]_i_29_n_0 ),
        .I2(\diff_sec[0]_i_38_n_0 ),
        .I3(\diff_csec[4]_i_9_n_0 ),
        .O(\diff_csec[4]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \diff_csec[4]_i_37 
       (.I0(\diff_csec[4]_i_8_n_0 ),
        .I1(\diff_sec[1]_i_31_n_0 ),
        .O(\diff_csec[4]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \diff_csec[4]_i_38 
       (.I0(\diff_sec[2]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[4]_i_30_n_0 ),
        .I3(\diff_sec[0]_i_23_n_0 ),
        .O(\diff_csec[4]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \diff_csec[4]_i_39 
       (.I0(\diff_csec[4]_i_42_n_0 ),
        .I1(\diff_csec[4]_i_30_n_0 ),
        .I2(\diff_sec[1]_i_21_n_0 ),
        .O(\diff_csec[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBBBFBFB)) 
    \diff_csec[4]_i_4 
       (.I0(\diff_csec[4]_i_16_n_0 ),
        .I1(\diff_csec[6]_i_11_n_0 ),
        .I2(\diff_sec[2]_i_7_n_0 ),
        .I3(\diff_csec[4]_i_17_n_0 ),
        .I4(\diff_csec[4]_i_18_n_0 ),
        .I5(\diff_csec[4]_i_19_n_0 ),
        .O(\diff_csec[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1133113011001130)) 
    \diff_csec[4]_i_40 
       (.I0(\diff_csec[4]_i_9_n_0 ),
        .I1(\diff_sec[1]_i_23_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_sec[4]_i_19_n_0 ),
        .I4(\diff_sec[4]_i_18_n_0 ),
        .I5(\diff_csec[4]_i_30_n_0 ),
        .O(\diff_csec[4]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h88F0CCCC8800CCCC)) 
    \diff_csec[4]_i_41 
       (.I0(\diff_sec[5]_i_3_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[4]_i_30_n_0 ),
        .I3(\diff_sec[5]_i_4_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .I5(\diff_sec[4]_i_20_n_0 ),
        .O(\diff_csec[4]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0444444404040404)) 
    \diff_csec[4]_i_42 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[5]_i_3_n_0 ),
        .I3(\diff_csec[4]_i_49_n_0 ),
        .I4(\diff_csec[7]_i_4_n_0 ),
        .I5(\diff_sec[1]_i_34_n_0 ),
        .O(\diff_csec[4]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \diff_csec[4]_i_43 
       (.I0(\diff_sec[1]_i_11_n_0 ),
        .I1(\diff_csec[4]_i_30_n_0 ),
        .I2(\diff_csec[2]_i_11_n_0 ),
        .O(\diff_csec[4]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hFFEE0FEE)) 
    \diff_csec[4]_i_44 
       (.I0(\diff_sec[1]_i_11_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[4]_i_9_n_0 ),
        .I3(\diff_csec[6]_i_74_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .O(\diff_csec[4]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AF8CA08C)) 
    \diff_csec[4]_i_45 
       (.I0(\diff_csec[4]_i_50_n_0 ),
        .I1(\diff_csec[4]_i_8_n_0 ),
        .I2(\diff_sec[0]_i_19_n_0 ),
        .I3(\diff_sec[1]_i_12_n_0 ),
        .I4(\diff_csec[4]_i_9_n_0 ),
        .I5(\diff_csec[2]_i_11_n_0 ),
        .O(\diff_csec[4]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h5555504400445044)) 
    \diff_csec[4]_i_46 
       (.I0(\diff_csec[6]_i_11_n_0 ),
        .I1(\diff_csec[4]_i_30_n_0 ),
        .I2(\diff_csec[4]_i_8_n_0 ),
        .I3(\diff_sec[0]_i_20_n_0 ),
        .I4(\diff_sec[0]_i_9_n_0 ),
        .I5(\diff_csec[4]_i_9_n_0 ),
        .O(\diff_csec[4]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400404444)) 
    \diff_csec[4]_i_47 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[1]_i_40_n_0 ),
        .I3(\diff_csec[7]_i_4_n_0 ),
        .I4(\diff_sec[4]_i_12_n_0 ),
        .I5(\diff_sec[3]_i_13_n_0 ),
        .O(\diff_csec[4]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hAAAE)) 
    \diff_csec[4]_i_48 
       (.I0(\diff_sec[3]_i_13_n_0 ),
        .I1(\diff_sec[2]_i_14_n_0 ),
        .I2(\diff_sec[4]_i_12_n_0 ),
        .I3(\diff_sec[4]_i_13_n_0 ),
        .O(\diff_csec[4]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h44444044)) 
    \diff_csec[4]_i_49 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[7]_i_13_n_0 ),
        .I4(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_csec[4]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h54005454)) 
    \diff_csec[4]_i_5 
       (.I0(\diff_csec[4]_i_20_n_0 ),
        .I1(\diff_csec[5]_i_21_n_0 ),
        .I2(\diff_csec[4]_i_9_n_0 ),
        .I3(\diff_csec[4]_i_21_n_0 ),
        .I4(\diff_sec[0]_i_5_n_0 ),
        .O(\diff_csec[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555455505050505)) 
    \diff_csec[4]_i_50 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_24_n_0 ),
        .I2(\diff_sec[5]_i_5_n_0 ),
        .I3(\diff_csec[4]_i_51_n_0 ),
        .I4(\diff_sec[4]_i_21_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_csec[4]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \diff_csec[4]_i_51 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .O(\diff_csec[4]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h5050507000000020)) 
    \diff_csec[4]_i_6 
       (.I0(\diff_sec[3]_i_8_n_0 ),
        .I1(\diff_sec[1]_i_9_n_0 ),
        .I2(\diff_csec[6]_i_16_n_0 ),
        .I3(\diff_csec[4]_i_22_n_0 ),
        .I4(\diff_csec[4]_i_23_n_0 ),
        .I5(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_csec[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000040044444444)) 
    \diff_csec[4]_i_7 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[4]_i_13_n_0 ),
        .I3(\diff_csec[5]_i_44_n_0 ),
        .I4(\diff_csec[4]_i_24_n_0 ),
        .I5(\diff_sec[3]_i_15_n_0 ),
        .O(\diff_csec[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[4]_i_8 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_csec[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h2D)) 
    \diff_csec[4]_i_9 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_csec[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000A8AAAAAAAA)) 
    \diff_csec[5]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[5]_i_2_n_0 ),
        .I2(\diff_csec[5]_i_3_n_0 ),
        .I3(\diff_csec[5]_i_4_n_0 ),
        .I4(\diff_csec[6]_i_5_n_0 ),
        .I5(\diff_csec[5]_i_5_n_0 ),
        .O(\diff_csec[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABAFFBAFFFFFFFF)) 
    \diff_csec[5]_i_10 
       (.I0(\diff_csec[5]_i_36_n_0 ),
        .I1(\diff_csec[5]_i_28_n_0 ),
        .I2(\diff_csec[5]_i_37_n_0 ),
        .I3(\diff_csec[5]_i_20_n_0 ),
        .I4(\diff_csec[5]_i_38_n_0 ),
        .I5(\diff_sec[2]_i_7_n_0 ),
        .O(\diff_csec[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2F3F3E2E200F3)) 
    \diff_csec[5]_i_11 
       (.I0(\diff_csec[5]_i_32_n_0 ),
        .I1(\diff_sec[1]_i_31_n_0 ),
        .I2(\diff_csec[5]_i_39_n_0 ),
        .I3(\diff_csec[5]_i_30_n_0 ),
        .I4(\diff_sec[1]_i_30_n_0 ),
        .I5(\diff_csec[7]_i_3_n_0 ),
        .O(\diff_csec[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAA8AA)) 
    \diff_csec[5]_i_12 
       (.I0(\diff_csec[5]_i_40_n_0 ),
        .I1(\diff_sec[2]_i_7_n_0 ),
        .I2(\diff_csec[5]_i_41_n_0 ),
        .I3(\diff_csec[5]_i_42_n_0 ),
        .I4(\diff_csec[5]_i_26_n_0 ),
        .I5(\diff_csec[5]_i_43_n_0 ),
        .O(\diff_csec[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555DF5500000000)) 
    \diff_csec[5]_i_13 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_csec[5]_i_44_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_sec[2]_i_17_n_0 ),
        .I4(\diff_sec[2]_i_13_n_0 ),
        .I5(\diff_sec[5]_i_5_n_0 ),
        .O(\diff_csec[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00008808AAAAAAAA)) 
    \diff_csec[5]_i_14 
       (.I0(\diff_csec[4]_i_12_n_0 ),
        .I1(\diff_csec[5]_i_45_n_0 ),
        .I2(\diff_csec[6]_i_48_n_0 ),
        .I3(\diff_csec[5]_i_20_n_0 ),
        .I4(\diff_csec[6]_i_50_n_0 ),
        .I5(\diff_csec[5]_i_46_n_0 ),
        .O(\diff_csec[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000003F2E002E)) 
    \diff_csec[5]_i_15 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[0]_i_28_n_0 ),
        .I2(\diff_csec[5]_i_20_n_0 ),
        .I3(\diff_sec[4]_i_3_n_0 ),
        .I4(\diff_csec[5]_i_24_n_0 ),
        .I5(\diff_csec[4]_i_12_n_0 ),
        .O(\diff_csec[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEFE0000)) 
    \diff_csec[5]_i_16 
       (.I0(\diff_sec[1]_i_18_n_0 ),
        .I1(\diff_csec[5]_i_47_n_0 ),
        .I2(\diff_csec[6]_i_54_n_0 ),
        .I3(\diff_csec[5]_i_48_n_0 ),
        .I4(\diff_sec[0]_i_14_n_0 ),
        .I5(\diff_csec[5]_i_49_n_0 ),
        .O(\diff_csec[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h22F2FFFF)) 
    \diff_csec[5]_i_17 
       (.I0(\diff_csec[4]_i_10_n_0 ),
        .I1(\diff_csec[5]_i_20_n_0 ),
        .I2(\diff_csec[5]_i_28_n_0 ),
        .I3(\diff_csec[4]_i_7_n_0 ),
        .I4(\diff_csec[6]_i_12_n_0 ),
        .O(\diff_csec[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5050507000000020)) 
    \diff_csec[5]_i_18 
       (.I0(\diff_sec[3]_i_8_n_0 ),
        .I1(\diff_sec[1]_i_9_n_0 ),
        .I2(\diff_csec[6]_i_16_n_0 ),
        .I3(\diff_csec[5]_i_50_n_0 ),
        .I4(\diff_csec[5]_i_51_n_0 ),
        .I5(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[5]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00880F88)) 
    \diff_csec[5]_i_19 
       (.I0(\diff_csec[5]_i_28_n_0 ),
        .I1(\diff_sec[1]_i_5_n_0 ),
        .I2(\diff_csec[5]_i_32_n_0 ),
        .I3(\diff_csec[7]_i_2_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .O(\diff_csec[5]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \diff_csec[5]_i_2 
       (.I0(\diff_csec[6]_i_12_n_0 ),
        .I1(\diff_csec[5]_i_6_n_0 ),
        .I2(\diff_csec[5]_i_7_n_0 ),
        .I3(\diff_csec[5]_i_8_n_0 ),
        .I4(\diff_csec[6]_i_11_n_0 ),
        .O(\diff_csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[5]_i_20 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[0]_i_32_n_0 ),
        .O(\diff_csec[5]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \diff_csec[5]_i_21 
       (.I0(\diff_sec[1]_i_5_n_0 ),
        .I1(\diff_csec[5]_i_52_n_0 ),
        .O(\diff_csec[5]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \diff_csec[5]_i_22 
       (.I0(\diff_csec[5]_i_25_n_0 ),
        .I1(\diff_sec[4]_i_2_n_0 ),
        .I2(\diff_csec[6]_i_5_n_0 ),
        .O(\diff_csec[5]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFF808080)) 
    \diff_csec[5]_i_23 
       (.I0(\diff_csec[5]_i_24_n_0 ),
        .I1(\diff_sec[4]_i_2_n_0 ),
        .I2(\diff_sec[2]_i_5_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[3]_i_4_n_0 ),
        .O(\diff_csec[5]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \diff_csec[5]_i_24 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_41_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_csec[5]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[5]_i_25 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_41_n_0 ),
        .O(\diff_csec[5]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[5]_i_26 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[2]_i_12_n_0 ),
        .O(\diff_csec[5]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[5]_i_27 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_6_n_0 ),
        .O(\diff_csec[5]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[5]_i_28 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[1]_i_20_n_0 ),
        .O(\diff_csec[5]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \diff_csec[5]_i_29 
       (.I0(\diff_sec[0]_i_6_n_0 ),
        .I1(\diff_csec[5]_i_26_n_0 ),
        .O(\diff_csec[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00E0000000E000E0)) 
    \diff_csec[5]_i_3 
       (.I0(\diff_csec[5]_i_9_n_0 ),
        .I1(\diff_csec[5]_i_10_n_0 ),
        .I2(\diff_csec[6]_i_11_n_0 ),
        .I3(\diff_csec[5]_i_11_n_0 ),
        .I4(\diff_csec[5]_i_12_n_0 ),
        .I5(\diff_csec[5]_i_13_n_0 ),
        .O(\diff_csec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[5]_i_30 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_csec[5]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    \diff_csec[5]_i_31 
       (.I0(\diff_sec[1]_i_11_n_0 ),
        .I1(\diff_sec[3]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_4_n_0 ),
        .I3(\diff_sec[4]_i_10_n_0 ),
        .I4(\diff_csec[5]_i_53_n_0 ),
        .I5(\diff_csec[5]_i_54_n_0 ),
        .O(\diff_csec[5]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[5]_i_32 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_5_n_0 ),
        .O(\diff_csec[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000040044444444)) 
    \diff_csec[5]_i_33 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[5]_i_4_n_0 ),
        .I3(\diff_csec[7]_i_6_n_0 ),
        .I4(\diff_csec[5]_i_55_n_0 ),
        .I5(\diff_sec[5]_i_3_n_0 ),
        .O(\diff_csec[5]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h5655545500550055)) 
    \diff_csec[5]_i_34 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[5]_i_55_n_0 ),
        .I2(\diff_sec[5]_i_4_n_0 ),
        .I3(\diff_csec[7]_i_3_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_sec[5]_i_3_n_0 ),
        .O(\diff_csec[5]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFC5C0C5)) 
    \diff_csec[5]_i_35 
       (.I0(\diff_csec[5]_i_30_n_0 ),
        .I1(\diff_csec[5]_i_26_n_0 ),
        .I2(\diff_sec[4]_i_19_n_0 ),
        .I3(\diff_sec[4]_i_18_n_0 ),
        .I4(\diff_csec[5]_i_32_n_0 ),
        .I5(\diff_sec[1]_i_23_n_0 ),
        .O(\diff_csec[5]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[5]_i_36 
       (.I0(\diff_csec[5]_i_32_n_0 ),
        .I1(\diff_sec[1]_i_21_n_0 ),
        .O(\diff_csec[5]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_csec[5]_i_37 
       (.I0(\diff_sec[1]_i_21_n_0 ),
        .I1(\diff_sec[1]_i_22_n_0 ),
        .O(\diff_csec[5]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \diff_csec[5]_i_38 
       (.I0(\diff_sec[1]_i_22_n_0 ),
        .I1(\diff_sec[1]_i_21_n_0 ),
        .I2(\diff_csec[6]_i_69_n_0 ),
        .O(\diff_csec[5]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \diff_csec[5]_i_39 
       (.I0(\diff_csec[5]_i_28_n_0 ),
        .I1(\diff_csec[5]_i_13_n_0 ),
        .O(\diff_csec[5]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFFB)) 
    \diff_csec[5]_i_4 
       (.I0(\diff_csec[5]_i_14_n_0 ),
        .I1(\diff_sec[1]_i_9_n_0 ),
        .I2(\diff_csec[5]_i_15_n_0 ),
        .I3(\diff_csec[5]_i_16_n_0 ),
        .I4(\diff_csec[5]_i_17_n_0 ),
        .I5(\diff_csec[5]_i_18_n_0 ),
        .O(\diff_csec[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC0CCE2EEFFFFE2EE)) 
    \diff_csec[5]_i_40 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[3]_i_5_n_0 ),
        .I2(\diff_csec[5]_i_24_n_0 ),
        .I3(\diff_sec[0]_i_37_n_0 ),
        .I4(\diff_sec[0]_i_25_n_0 ),
        .I5(\diff_csec[5]_i_20_n_0 ),
        .O(\diff_csec[5]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hFFABFFBB)) 
    \diff_csec[5]_i_41 
       (.I0(\diff_sec[3]_i_9_n_0 ),
        .I1(\diff_csec[5]_i_25_n_0 ),
        .I2(\diff_sec[1]_i_28_n_0 ),
        .I3(\diff_sec[0]_i_37_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .O(\diff_csec[5]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFF9FDFBFFFFFFFF)) 
    \diff_csec[5]_i_42 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_sec[3]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_4_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_sec[2]_i_6_n_0 ),
        .O(\diff_csec[5]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \diff_csec[5]_i_43 
       (.I0(\diff_sec[0]_i_38_n_0 ),
        .I1(\diff_csec[7]_i_3_n_0 ),
        .I2(\diff_sec[0]_i_37_n_0 ),
        .I3(\diff_sec[1]_i_28_n_0 ),
        .O(\diff_csec[5]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \diff_csec[5]_i_44 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_csec[5]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA3A3AAAAA3AF)) 
    \diff_csec[5]_i_45 
       (.I0(\diff_csec[5]_i_32_n_0 ),
        .I1(\diff_csec[5]_i_28_n_0 ),
        .I2(\diff_sec[0]_i_30_n_0 ),
        .I3(\diff_sec[3]_i_12_n_0 ),
        .I4(\diff_csec[6]_i_76_n_0 ),
        .I5(\diff_csec[6]_i_77_n_0 ),
        .O(\diff_csec[5]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFEFFFE000EF00)) 
    \diff_csec[5]_i_46 
       (.I0(\diff_sec[2]_i_11_n_0 ),
        .I1(\diff_csec[5]_i_30_n_0 ),
        .I2(\diff_csec[3]_i_25_n_0 ),
        .I3(\diff_sec[1]_i_8_n_0 ),
        .I4(\diff_csec[5]_i_26_n_0 ),
        .I5(\diff_csec[5]_i_25_n_0 ),
        .O(\diff_csec[5]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h000000003A303A3F)) 
    \diff_csec[5]_i_47 
       (.I0(\diff_csec[5]_i_30_n_0 ),
        .I1(\diff_csec[5]_i_26_n_0 ),
        .I2(\diff_sec[0]_i_35_n_0 ),
        .I3(\diff_csec[5]_i_56_n_0 ),
        .I4(\diff_csec[5]_i_32_n_0 ),
        .I5(\diff_csec[6]_i_54_n_0 ),
        .O(\diff_csec[5]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hA10FA50FE00EE14B)) 
    \diff_csec[5]_i_48 
       (.I0(\diff_csec[6]_i_60_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .I3(\diff_sec[1]_i_20_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_sec[0]_i_32_n_0 ),
        .O(\diff_csec[5]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF40FF4F004000)) 
    \diff_csec[5]_i_49 
       (.I0(\diff_csec[5]_i_25_n_0 ),
        .I1(\diff_csec[5]_i_57_n_0 ),
        .I2(\diff_sec[0]_i_33_n_0 ),
        .I3(\diff_sec[3]_i_7_n_0 ),
        .I4(\diff_csec[5]_i_24_n_0 ),
        .I5(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[5]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000540054545454)) 
    \diff_csec[5]_i_5 
       (.I0(\diff_csec[5]_i_19_n_0 ),
        .I1(\diff_csec[5]_i_20_n_0 ),
        .I2(\diff_csec[5]_i_21_n_0 ),
        .I3(\diff_csec[5]_i_22_n_0 ),
        .I4(\diff_csec[5]_i_23_n_0 ),
        .I5(\diff_sec[0]_i_5_n_0 ),
        .O(\diff_csec[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA000C0C0A0F0C0C0)) 
    \diff_csec[5]_i_50 
       (.I0(\diff_csec[5]_i_28_n_0 ),
        .I1(\diff_csec[5]_i_30_n_0 ),
        .I2(\diff_sec[0]_i_43_n_0 ),
        .I3(\diff_csec[6]_i_75_n_0 ),
        .I4(\diff_sec[2]_i_10_n_0 ),
        .I5(\diff_csec[5]_i_32_n_0 ),
        .O(\diff_csec[5]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h000000003A303A3F)) 
    \diff_csec[5]_i_51 
       (.I0(\diff_csec[5]_i_25_n_0 ),
        .I1(\diff_csec[5]_i_24_n_0 ),
        .I2(\diff_sec[1]_i_16_n_0 ),
        .I3(\diff_sec[1]_i_15_n_0 ),
        .I4(\diff_csec[5]_i_26_n_0 ),
        .I5(\diff_sec[0]_i_43_n_0 ),
        .O(\diff_csec[5]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hCEEECECECEEECEEE)) 
    \diff_csec[5]_i_52 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[4]_i_15_n_0 ),
        .I2(\diff_sec[4]_i_16_n_0 ),
        .I3(\diff_sec[4]_i_14_n_0 ),
        .I4(\diff_sec[2]_i_13_n_0 ),
        .I5(\diff_sec[0]_i_17_n_0 ),
        .O(\diff_csec[5]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \diff_csec[5]_i_53 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_csec[5]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \diff_csec[5]_i_54 
       (.I0(\diff_sec[4]_i_7_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .I2(\diff_sec[5]_i_5_n_0 ),
        .O(\diff_csec[5]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \diff_csec[5]_i_55 
       (.I0(\diff_csec[7]_i_14_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_csec[5]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \diff_csec[5]_i_56 
       (.I0(\diff_sec[3]_i_10_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .I2(\diff_sec[2]_i_14_n_0 ),
        .O(\diff_csec[5]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8AAA8888)) 
    \diff_csec[5]_i_57 
       (.I0(\diff_sec[4]_i_22_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .I3(\diff_sec[4]_i_41_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_csec[5]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAA880A8800000A88)) 
    \diff_csec[5]_i_6 
       (.I0(\diff_sec[4]_i_6_n_0 ),
        .I1(\diff_csec[5]_i_24_n_0 ),
        .I2(\diff_csec[5]_i_25_n_0 ),
        .I3(\diff_sec[0]_i_20_n_0 ),
        .I4(\diff_sec[0]_i_9_n_0 ),
        .I5(\diff_csec[5]_i_26_n_0 ),
        .O(\diff_csec[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A08CAF8C)) 
    \diff_csec[5]_i_7 
       (.I0(\diff_csec[5]_i_27_n_0 ),
        .I1(\diff_csec[5]_i_28_n_0 ),
        .I2(\diff_sec[0]_i_19_n_0 ),
        .I3(\diff_sec[1]_i_12_n_0 ),
        .I4(\diff_csec[5]_i_20_n_0 ),
        .I5(\diff_csec[2]_i_11_n_0 ),
        .O(\diff_csec[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000222022202220)) 
    \diff_csec[5]_i_8 
       (.I0(\diff_csec[2]_i_11_n_0 ),
        .I1(\diff_csec[5]_i_29_n_0 ),
        .I2(\diff_csec[5]_i_30_n_0 ),
        .I3(\diff_csec[5]_i_31_n_0 ),
        .I4(\diff_sec[1]_i_11_n_0 ),
        .I5(\diff_csec[5]_i_32_n_0 ),
        .O(\diff_csec[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \diff_csec[5]_i_9 
       (.I0(\diff_csec[5]_i_33_n_0 ),
        .I1(\diff_csec[5]_i_25_n_0 ),
        .I2(\diff_sec[1]_i_23_n_0 ),
        .I3(\diff_csec[5]_i_34_n_0 ),
        .I4(\diff_csec[5]_i_35_n_0 ),
        .I5(\diff_csec[6]_i_35_n_0 ),
        .O(\diff_csec[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00008808AAAAAAAA)) 
    \diff_csec[6]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[6]_i_2_n_0 ),
        .I2(\diff_csec[6]_i_3_n_0 ),
        .I3(\diff_csec[6]_i_4_n_0 ),
        .I4(\diff_csec[6]_i_5_n_0 ),
        .I5(\diff_csec[6]_i_6_n_0 ),
        .O(\diff_csec[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4474777744444444)) 
    \diff_csec[6]_i_10 
       (.I0(\diff_csec[6]_i_40_n_0 ),
        .I1(\diff_csec[2]_i_11_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_sec[4]_i_6_n_0 ),
        .I4(\diff_sec[0]_i_19_n_0 ),
        .I5(\diff_csec[6]_i_41_n_0 ),
        .O(\diff_csec[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h88880800AAAAAAAA)) 
    \diff_csec[6]_i_11 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[2]_i_17_n_0 ),
        .I2(\diff_sec[2]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_6_n_0 ),
        .I4(\diff_sec[3]_i_10_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_csec[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000555500000051)) 
    \diff_csec[6]_i_12 
       (.I0(\diff_sec[4]_i_17_n_0 ),
        .I1(\diff_sec[4]_i_22_n_0 ),
        .I2(\diff_csec[6]_i_42_n_0 ),
        .I3(\diff_csec[6]_i_43_n_0 ),
        .I4(\diff_sec[4]_i_15_n_0 ),
        .I5(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_csec[6]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \diff_csec[6]_i_13 
       (.I0(\diff_csec[6]_i_44_n_0 ),
        .I1(\diff_csec[6]_i_45_n_0 ),
        .I2(\diff_sec[1]_i_9_n_0 ),
        .O(\diff_csec[6]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[6]_i_14 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    \diff_csec[6]_i_15 
       (.I0(\diff_sec[3]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_sec[3]_i_11_n_0 ),
        .I3(\diff_sec[4]_i_40_n_0 ),
        .O(\diff_csec[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[6]_i_16 
       (.I0(\diff_csec[7]_i_3_n_0 ),
        .I1(\diff_csec[6]_i_46_n_0 ),
        .O(\diff_csec[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00008808AAAAAAAA)) 
    \diff_csec[6]_i_17 
       (.I0(\diff_csec[4]_i_12_n_0 ),
        .I1(\diff_csec[6]_i_47_n_0 ),
        .I2(\diff_csec[6]_i_48_n_0 ),
        .I3(\diff_csec[6]_i_49_n_0 ),
        .I4(\diff_csec[6]_i_50_n_0 ),
        .I5(\diff_csec[6]_i_51_n_0 ),
        .O(\diff_csec[6]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_csec[6]_i_18 
       (.I0(\diff_csec[6]_i_52_n_0 ),
        .I1(\diff_sec[1]_i_9_n_0 ),
        .O(\diff_csec[6]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_csec[6]_i_19 
       (.I0(\diff_sec[0]_i_14_n_0 ),
        .I1(\diff_csec[6]_i_53_n_0 ),
        .I2(\diff_sec[1]_i_18_n_0 ),
        .O(\diff_csec[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF444400F0)) 
    \diff_csec[6]_i_2 
       (.I0(\diff_csec[6]_i_7_n_0 ),
        .I1(\diff_csec[6]_i_8_n_0 ),
        .I2(\diff_csec[6]_i_9_n_0 ),
        .I3(\diff_csec[6]_i_10_n_0 ),
        .I4(\diff_csec[6]_i_11_n_0 ),
        .I5(\diff_csec[6]_i_12_n_0 ),
        .O(\diff_csec[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABBAAAAAAAA)) 
    \diff_csec[6]_i_20 
       (.I0(\diff_sec[1]_i_18_n_0 ),
        .I1(\diff_csec[6]_i_54_n_0 ),
        .I2(\diff_csec[6]_i_55_n_0 ),
        .I3(\diff_sec[4]_i_10_n_0 ),
        .I4(\diff_sec[2]_i_14_n_0 ),
        .I5(\diff_csec[6]_i_56_n_0 ),
        .O(\diff_csec[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0C0D0FFFFFFFF)) 
    \diff_csec[6]_i_21 
       (.I0(\diff_csec[6]_i_57_n_0 ),
        .I1(\diff_csec[6]_i_58_n_0 ),
        .I2(\diff_csec[6]_i_59_n_0 ),
        .I3(\diff_csec[6]_i_60_n_0 ),
        .I4(\diff_csec[6]_i_61_n_0 ),
        .I5(\diff_csec[6]_i_54_n_0 ),
        .O(\diff_csec[6]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0EEE0000)) 
    \diff_csec[6]_i_22 
       (.I0(\diff_csec[6]_i_62_n_0 ),
        .I1(\diff_csec[4]_i_7_n_0 ),
        .I2(\diff_csec[4]_i_10_n_0 ),
        .I3(\diff_csec[6]_i_49_n_0 ),
        .I4(\diff_csec[6]_i_12_n_0 ),
        .O(\diff_csec[6]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0D00)) 
    \diff_csec[6]_i_23 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3A3A3F300A3A3)) 
    \diff_csec[6]_i_24 
       (.I0(\diff_csec[6]_i_62_n_0 ),
        .I1(\diff_csec[6]_i_49_n_0 ),
        .I2(\diff_sec[1]_i_5_n_0 ),
        .I3(\diff_csec[7]_i_3_n_0 ),
        .I4(\diff_csec[7]_i_2_n_0 ),
        .I5(\diff_csec[6]_i_63_n_0 ),
        .O(\diff_csec[6]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \diff_csec[6]_i_25 
       (.I0(\diff_csec[6]_i_14_n_0 ),
        .I1(\diff_sec[3]_i_4_n_0 ),
        .O(\diff_csec[6]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hBBFBFFFF)) 
    \diff_csec[6]_i_26 
       (.I0(\diff_sec[4]_i_8_n_0 ),
        .I1(\diff_sec[4]_i_9_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_sec[4]_i_11_n_0 ),
        .I4(\diff_csec[6]_i_5_n_0 ),
        .O(\diff_csec[6]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \diff_csec[6]_i_27 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_sec[4]_i_41_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \diff_csec[6]_i_28 
       (.I0(\diff_sec[3]_i_4_n_0 ),
        .I1(\diff_csec[6]_i_64_n_0 ),
        .I2(\diff_sec[4]_i_2_n_0 ),
        .O(\diff_csec[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h4777477747774070)) 
    \diff_csec[6]_i_29 
       (.I0(\diff_csec[6]_i_62_n_0 ),
        .I1(\diff_sec[1]_i_31_n_0 ),
        .I2(\diff_sec[1]_i_30_n_0 ),
        .I3(\diff_csec[6]_i_63_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .I5(\diff_csec[6]_i_65_n_0 ),
        .O(\diff_csec[6]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h0F44FFFF)) 
    \diff_csec[6]_i_3 
       (.I0(\diff_csec[6]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_3_n_0 ),
        .I2(\diff_csec[6]_i_14_n_0 ),
        .I3(\diff_csec[6]_i_15_n_0 ),
        .I4(\diff_csec[6]_i_16_n_0 ),
        .O(\diff_csec[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F332E2200002E22)) 
    \diff_csec[6]_i_30 
       (.I0(\diff_csec[6]_i_14_n_0 ),
        .I1(\diff_sec[3]_i_5_n_0 ),
        .I2(\diff_csec[6]_i_64_n_0 ),
        .I3(\diff_csec[6]_i_66_n_0 ),
        .I4(\diff_sec[0]_i_25_n_0 ),
        .I5(\diff_csec[6]_i_49_n_0 ),
        .O(\diff_csec[6]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \diff_csec[6]_i_31 
       (.I0(\diff_sec[0]_i_38_n_0 ),
        .I1(\diff_sec[1]_i_28_n_0 ),
        .I2(\diff_csec[6]_i_67_n_0 ),
        .I3(\diff_csec[6]_i_68_n_0 ),
        .I4(\diff_csec[6]_i_27_n_0 ),
        .I5(\diff_sec[1]_i_29_n_0 ),
        .O(\diff_csec[6]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \diff_csec[6]_i_32 
       (.I0(\diff_sec[2]_i_6_n_0 ),
        .I1(\diff_sec[2]_i_14_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_csec[6]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF088FFFFF0880000)) 
    \diff_csec[6]_i_33 
       (.I0(\diff_csec[6]_i_69_n_0 ),
        .I1(\diff_csec[6]_i_58_n_0 ),
        .I2(\diff_csec[6]_i_61_n_0 ),
        .I3(\diff_sec[1]_i_22_n_0 ),
        .I4(\diff_sec[1]_i_21_n_0 ),
        .I5(\diff_csec[6]_i_70_n_0 ),
        .O(\diff_csec[6]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \diff_csec[6]_i_34 
       (.I0(\diff_csec[6]_i_71_n_0 ),
        .I1(\diff_sec[1]_i_23_n_0 ),
        .I2(\diff_csec[6]_i_38_n_0 ),
        .I3(\diff_csec[5]_i_33_n_0 ),
        .O(\diff_csec[6]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_csec[6]_i_35 
       (.I0(\diff_csec[6]_i_12_n_0 ),
        .I1(\diff_csec[4]_i_42_n_0 ),
        .O(\diff_csec[6]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCC55CCF0)) 
    \diff_csec[6]_i_36 
       (.I0(\diff_csec[6]_i_63_n_0 ),
        .I1(\diff_csec[6]_i_39_n_0 ),
        .I2(\diff_csec[6]_i_65_n_0 ),
        .I3(\diff_sec[4]_i_19_n_0 ),
        .I4(\diff_sec[4]_i_18_n_0 ),
        .I5(\diff_sec[1]_i_23_n_0 ),
        .O(\diff_csec[6]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[6]_i_37 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[6]_i_72_n_0 ),
        .O(\diff_csec[6]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \diff_csec[6]_i_38 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_sec[4]_i_41_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \diff_csec[6]_i_39 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_sec[2]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h01110101FFFFFFFF)) 
    \diff_csec[6]_i_4 
       (.I0(\diff_csec[6]_i_17_n_0 ),
        .I1(\diff_csec[6]_i_18_n_0 ),
        .I2(\diff_csec[6]_i_19_n_0 ),
        .I3(\diff_csec[6]_i_20_n_0 ),
        .I4(\diff_csec[6]_i_21_n_0 ),
        .I5(\diff_csec[6]_i_22_n_0 ),
        .O(\diff_csec[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h550C550C550CF5FC)) 
    \diff_csec[6]_i_40 
       (.I0(\diff_csec[6]_i_70_n_0 ),
        .I1(\diff_csec[6]_i_73_n_0 ),
        .I2(\diff_csec[6]_i_74_n_0 ),
        .I3(\diff_sec[1]_i_11_n_0 ),
        .I4(\diff_csec[7]_i_3_n_0 ),
        .I5(\diff_csec[6]_i_67_n_0 ),
        .O(\diff_csec[6]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hFACA)) 
    \diff_csec[6]_i_41 
       (.I0(\diff_csec[6]_i_61_n_0 ),
        .I1(\diff_csec[6]_i_58_n_0 ),
        .I2(\diff_sec[1]_i_12_n_0 ),
        .I3(\diff_sec[0]_i_19_n_0 ),
        .O(\diff_csec[6]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00004500FFFFFFFF)) 
    \diff_csec[6]_i_42 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_csec[6]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \diff_csec[6]_i_43 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .O(\diff_csec[6]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0F3FAFAFFF3FAFAF)) 
    \diff_csec[6]_i_44 
       (.I0(\diff_csec[6]_i_73_n_0 ),
        .I1(\diff_csec[6]_i_70_n_0 ),
        .I2(\diff_sec[0]_i_43_n_0 ),
        .I3(\diff_csec[6]_i_75_n_0 ),
        .I4(\diff_sec[2]_i_10_n_0 ),
        .I5(\diff_csec[6]_i_61_n_0 ),
        .O(\diff_csec[6]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30353F35)) 
    \diff_csec[6]_i_45 
       (.I0(\diff_csec[6]_i_67_n_0 ),
        .I1(\diff_csec[6]_i_64_n_0 ),
        .I2(\diff_sec[1]_i_16_n_0 ),
        .I3(\diff_sec[1]_i_15_n_0 ),
        .I4(\diff_csec[6]_i_27_n_0 ),
        .I5(\diff_sec[0]_i_43_n_0 ),
        .O(\diff_csec[6]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hABBBAAAA)) 
    \diff_csec[6]_i_46 
       (.I0(\diff_sec[3]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_23_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .I3(\diff_sec[0]_i_32_n_0 ),
        .I4(\diff_sec[4]_i_40_n_0 ),
        .O(\diff_csec[6]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h555553535555535F)) 
    \diff_csec[6]_i_47 
       (.I0(\diff_csec[6]_i_63_n_0 ),
        .I1(\diff_csec[6]_i_62_n_0 ),
        .I2(\diff_sec[0]_i_30_n_0 ),
        .I3(\diff_sec[3]_i_12_n_0 ),
        .I4(\diff_csec[6]_i_76_n_0 ),
        .I5(\diff_csec[6]_i_77_n_0 ),
        .O(\diff_csec[6]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000888)) 
    \diff_csec[6]_i_48 
       (.I0(\diff_sec[4]_i_21_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_csec[7]_i_6_n_0 ),
        .I3(\diff_sec[0]_i_32_n_0 ),
        .I4(\diff_sec[0]_i_12_n_0 ),
        .O(\diff_csec[6]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \diff_csec[6]_i_49 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .I2(\diff_sec[0]_i_32_n_0 ),
        .O(\diff_csec[6]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0AFF8AFF8AFF8AFF)) 
    \diff_csec[6]_i_5 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[4]_i_7_n_0 ),
        .I2(\diff_sec[4]_i_16_n_0 ),
        .I3(\diff_sec[5]_i_5_n_0 ),
        .I4(\diff_sec[4]_i_9_n_0 ),
        .I5(\diff_csec[6]_i_23_n_0 ),
        .O(\diff_csec[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_csec[6]_i_50 
       (.I0(\diff_sec[0]_i_14_n_0 ),
        .I1(\diff_sec[2]_i_11_n_0 ),
        .O(\diff_csec[6]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hD000DF00D0FFDFFF)) 
    \diff_csec[6]_i_51 
       (.I0(\diff_csec[6]_i_65_n_0 ),
        .I1(\diff_sec[2]_i_11_n_0 ),
        .I2(\diff_csec[3]_i_25_n_0 ),
        .I3(\diff_sec[1]_i_8_n_0 ),
        .I4(\diff_csec[6]_i_39_n_0 ),
        .I5(\diff_csec[6]_i_38_n_0 ),
        .O(\diff_csec[6]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h000000000DDDD808)) 
    \diff_csec[6]_i_52 
       (.I0(\diff_sec[0]_i_28_n_0 ),
        .I1(\diff_csec[6]_i_58_n_0 ),
        .I2(\diff_sec[4]_i_3_n_0 ),
        .I3(\diff_csec[6]_i_72_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_csec[4]_i_12_n_0 ),
        .O(\diff_csec[6]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h3CCCCC335555CC33)) 
    \diff_csec[6]_i_53 
       (.I0(\diff_csec[6]_i_64_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .I2(\diff_sec[4]_i_41_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[3]_i_7_n_0 ),
        .I5(\diff_sec[0]_i_33_n_0 ),
        .O(\diff_csec[6]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0000000808080808)) 
    \diff_csec[6]_i_54 
       (.I0(\diff_sec[2]_i_17_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[5]_i_6_n_0 ),
        .I3(\diff_csec[7]_i_4_n_0 ),
        .I4(\diff_sec[1]_i_36_n_0 ),
        .I5(\diff_sec[4]_i_12_n_0 ),
        .O(\diff_csec[6]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \diff_csec[6]_i_55 
       (.I0(\diff_sec[0]_i_35_n_0 ),
        .I1(\diff_sec[2]_i_14_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_sec[3]_i_10_n_0 ),
        .O(\diff_csec[6]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h00D5D5D5)) 
    \diff_csec[6]_i_56 
       (.I0(\diff_csec[6]_i_67_n_0 ),
        .I1(\diff_csec[7]_i_3_n_0 ),
        .I2(\diff_sec[2]_i_17_n_0 ),
        .I3(\diff_csec[6]_i_70_n_0 ),
        .I4(\diff_sec[2]_i_9_n_0 ),
        .O(\diff_csec[6]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEFAAAA)) 
    \diff_csec[6]_i_57 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \diff_csec[6]_i_58 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_sec[0]_i_32_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_csec[6]_i_59 
       (.I0(\diff_sec[4]_i_13_n_0 ),
        .I1(\diff_sec[1]_i_17_n_0 ),
        .O(\diff_csec[6]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2E2E2E2EEEEEEE2E)) 
    \diff_csec[6]_i_6 
       (.I0(\diff_csec[6]_i_24_n_0 ),
        .I1(\diff_sec[0]_i_5_n_0 ),
        .I2(\diff_csec[6]_i_25_n_0 ),
        .I3(\diff_csec[6]_i_26_n_0 ),
        .I4(\diff_csec[6]_i_27_n_0 ),
        .I5(\diff_csec[6]_i_28_n_0 ),
        .O(\diff_csec[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \diff_csec[6]_i_60 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[1]_i_34_n_0 ),
        .I3(\diff_sec[4]_i_24_n_0 ),
        .O(\diff_csec[6]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \diff_csec[6]_i_61 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_sec[1]_i_20_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[6]_i_62 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[5]_i_44_n_0 ),
        .O(\diff_csec[6]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \diff_csec[6]_i_63 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_5_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[6]_i_64 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_sec[4]_i_11_n_0 ),
        .O(\diff_csec[6]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[6]_i_65 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_sec[4]_i_38_n_0 ),
        .O(\diff_csec[6]_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \diff_csec[6]_i_66 
       (.I0(\diff_sec[4]_i_12_n_0 ),
        .I1(\diff_sec[3]_i_12_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .I3(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_csec[6]_i_66_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[6]_i_67 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[5]_i_53_n_0 ),
        .O(\diff_csec[6]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22F2FFFF)) 
    \diff_csec[6]_i_68 
       (.I0(\diff_sec[1]_i_35_n_0 ),
        .I1(\diff_csec[6]_i_78_n_0 ),
        .I2(\diff_csec[6]_i_66_n_0 ),
        .I3(\diff_csec[6]_i_79_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_csec[6]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h5D550000)) 
    \diff_csec[6]_i_69 
       (.I0(\diff_sec[1]_i_34_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_sec[0]_i_32_n_0 ),
        .I3(\diff_sec[3]_i_11_n_0 ),
        .I4(\diff_sec[5]_i_3_n_0 ),
        .O(\diff_csec[6]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hCACACACACACACAFA)) 
    \diff_csec[6]_i_7 
       (.I0(\diff_csec[6]_i_29_n_0 ),
        .I1(\diff_csec[6]_i_30_n_0 ),
        .I2(\diff_csec[5]_i_13_n_0 ),
        .I3(\diff_csec[6]_i_31_n_0 ),
        .I4(\diff_csec[6]_i_32_n_0 ),
        .I5(\diff_sec[2]_i_7_n_0 ),
        .O(\diff_csec[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \diff_csec[6]_i_70 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_5_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_csec[6]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h0F2F0F0F0FFF0F0F)) 
    \diff_csec[6]_i_71 
       (.I0(\diff_csec[6]_i_72_n_0 ),
        .I1(\diff_sec[5]_i_4_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_sec[5]_i_6_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[5]_i_3_n_0 ),
        .O(\diff_csec[6]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \diff_csec[6]_i_72 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_csec[6]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[6]_i_73 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_sec[2]_i_14_n_0 ),
        .O(\diff_csec[6]_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hF7FFF7F7)) 
    \diff_csec[6]_i_74 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .I2(\diff_sec[4]_i_7_n_0 ),
        .I3(\diff_sec[0]_i_18_n_0 ),
        .I4(\diff_sec[3]_i_12_n_0 ),
        .O(\diff_csec[6]_i_74_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \diff_csec[6]_i_75 
       (.I0(\diff_sec[3]_i_11_n_0 ),
        .I1(\diff_csec[7]_i_5_n_0 ),
        .I2(\diff_csec[7]_i_4_n_0 ),
        .I3(\diff_csec[7]_i_7_n_0 ),
        .O(\diff_csec[6]_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \diff_csec[6]_i_76 
       (.I0(\diff_sec[4]_i_17_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .I2(\diff_sec[4]_i_15_n_0 ),
        .O(\diff_csec[6]_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \diff_csec[6]_i_77 
       (.I0(\diff_sec[3]_i_11_n_0 ),
        .I1(\diff_sec[1]_i_20_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .I3(\diff_sec[3]_i_10_n_0 ),
        .O(\diff_csec[6]_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hF7F7F7FF)) 
    \diff_csec[6]_i_78 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_22_n_0 ),
        .I2(\diff_sec[4]_i_16_n_0 ),
        .I3(\diff_sec[4]_i_12_n_0 ),
        .I4(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_csec[6]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FBFF)) 
    \diff_csec[6]_i_79 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .I3(\diff_csec[7]_i_12_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_csec[6]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hDDDFDDDD)) 
    \diff_csec[6]_i_8 
       (.I0(\diff_sec[2]_i_7_n_0 ),
        .I1(\diff_csec[6]_i_33_n_0 ),
        .I2(\diff_csec[6]_i_34_n_0 ),
        .I3(\diff_csec[6]_i_35_n_0 ),
        .I4(\diff_csec[6]_i_36_n_0 ),
        .O(\diff_csec[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0535FF35FFFFFFFF)) 
    \diff_csec[6]_i_9 
       (.I0(\diff_csec[6]_i_37_n_0 ),
        .I1(\diff_csec[6]_i_38_n_0 ),
        .I2(\diff_sec[0]_i_20_n_0 ),
        .I3(\diff_sec[0]_i_9_n_0 ),
        .I4(\diff_csec[6]_i_39_n_0 ),
        .I5(\diff_sec[4]_i_6_n_0 ),
        .O(\diff_csec[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h2000002020002000)) 
    \diff_csec[7]_i_1 
       (.I0(\diff_csec[7]_i_2_n_0 ),
        .I1(\diff_csec[7]_i_3_n_0 ),
        .I2(\lap_count_reg[1]_0 ),
        .I3(\diff_csec[7]_i_4_n_0 ),
        .I4(\diff_csec[7]_i_5_n_0 ),
        .I5(\diff_csec[7]_i_6_n_0 ),
        .O(\diff_csec[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_csec[7]_i_10 
       (.I0(data4[7]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[7]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[7]),
        .O(\diff_csec[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_100 
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .O(\diff_csec[7]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[7]_i_101 
       (.I0(total_prev__0[4]),
        .I1(total_tmp__0[4]),
        .O(\diff_csec[7]_i_101_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_csec[7]_i_102 
       (.I0(total_tmp__0[6]),
        .I1(CO),
        .I2(total_prev__0[6]),
        .O(\diff_csec[7]_i_102_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_csec[7]_i_103 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_csec[7]_i_103_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_104 
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .O(\diff_csec[7]_i_104_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_105 
       (.I0(total_tmp__0[4]),
        .I1(CO),
        .I2(total_prev__0[4]),
        .O(\diff_csec[7]_i_105_n_0 ));
  LUT5 #(
    .INIT(32'hA56996A5)) 
    \diff_csec[7]_i_106 
       (.I0(total_prev__0[7]),
        .I1(CO),
        .I2(total_tmp__0[7]),
        .I3(total_tmp__0[6]),
        .I4(total_prev__0[6]),
        .O(\diff_csec[7]_i_106_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_csec[7]_i_107 
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .I2(total_tmp__0[6]),
        .I3(CO),
        .I4(total_prev__0[6]),
        .O(\diff_csec[7]_i_107_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \diff_csec[7]_i_108 
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .I2(total_prev__0[4]),
        .I3(CO),
        .I4(total_tmp__0[4]),
        .O(\diff_csec[7]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_109 
       (.I0(total_tmp__0[4]),
        .I1(total_prev__0[4]),
        .O(\diff_csec[7]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h35350535F5F5C5F5)) 
    \diff_csec[7]_i_11 
       (.I0(data1[7]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[7]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[7]),
        .O(\diff_csec[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h88880008)) 
    \diff_csec[7]_i_110 
       (.I0(data5[4]),
        .I1(data9[14]),
        .I2(\diff_min[2]_i_5_n_0 ),
        .I3(\diff_min[2]_i_6_n_0 ),
        .I4(data9[13]),
        .O(\diff_csec[7]_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h88880008)) 
    \diff_csec[7]_i_111 
       (.I0(data5[3]),
        .I1(data9[14]),
        .I2(\diff_min[2]_i_5_n_0 ),
        .I3(\diff_min[2]_i_6_n_0 ),
        .I4(data9[13]),
        .O(\diff_csec[7]_i_111_n_0 ));
  LUT5 #(
    .INIT(32'h88880008)) 
    \diff_csec[7]_i_112 
       (.I0(data5[2]),
        .I1(data9[14]),
        .I2(\diff_min[2]_i_5_n_0 ),
        .I3(\diff_min[2]_i_6_n_0 ),
        .I4(data9[13]),
        .O(\diff_csec[7]_i_112_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_113 
       (.I0(prev_csec[6]),
        .I1(total_prev_n_99),
        .O(\diff_csec[7]_i_113_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_114 
       (.I0(prev_csec[5]),
        .I1(total_prev_n_100),
        .O(\diff_csec[7]_i_114_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_115 
       (.I0(prev_csec[4]),
        .I1(total_prev_n_101),
        .O(\diff_csec[7]_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_116 
       (.I0(tmp_csec[6]),
        .I1(total_tmp_n_99),
        .O(\diff_csec[7]_i_116_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_117 
       (.I0(tmp_csec[5]),
        .I1(total_tmp_n_100),
        .O(\diff_csec[7]_i_117_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_118 
       (.I0(tmp_csec[4]),
        .I1(total_tmp_n_101),
        .O(\diff_csec[7]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h0A3A0A0A3A3A3A3A)) 
    \diff_csec[7]_i_12 
       (.I0(\diff_csec_reg[7]_i_8_n_7 ),
        .I1(\diff_csec[7]_i_32_n_0 ),
        .I2(\diff_min[0]_i_2_n_0 ),
        .I3(\diff_csec[7]_i_33_n_0 ),
        .I4(\diff_csec[7]_i_34_n_0 ),
        .I5(\diff_min[1]_i_3_n_0 ),
        .O(\diff_csec[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFB00000FFB0FFFF)) 
    \diff_csec[7]_i_13 
       (.I0(\diff_csec[7]_i_35_n_0 ),
        .I1(\diff_csec[7]_i_36_n_0 ),
        .I2(\diff_min[1]_i_3_n_0 ),
        .I3(\diff_csec[7]_i_37_n_0 ),
        .I4(\diff_min[0]_i_2_n_0 ),
        .I5(\diff_csec_reg[1]_i_2_n_4 ),
        .O(\diff_csec[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A3A0A0A3A3A3A3A)) 
    \diff_csec[7]_i_14 
       (.I0(\diff_csec_reg[1]_i_2_n_5 ),
        .I1(\diff_csec[7]_i_38_n_0 ),
        .I2(\diff_min[0]_i_2_n_0 ),
        .I3(\diff_csec[7]_i_39_n_0 ),
        .I4(\diff_csec[7]_i_40_n_0 ),
        .I5(\diff_min[1]_i_3_n_0 ),
        .O(\diff_csec[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h220200002202FFFF)) 
    \diff_csec[7]_i_15 
       (.I0(\diff_csec[7]_i_41_n_0 ),
        .I1(\diff_csec[7]_i_42_n_0 ),
        .I2(\diff_min[1]_i_3_n_0 ),
        .I3(\diff_csec[7]_i_43_n_0 ),
        .I4(\diff_min[0]_i_2_n_0 ),
        .I5(\diff_csec_reg[7]_i_8_n_6 ),
        .O(\diff_csec[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \diff_csec[7]_i_16 
       (.I0(total_prev__0[6]),
        .I1(CO),
        .I2(total_tmp__0[6]),
        .O(\diff_csec[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \diff_csec[7]_i_17 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_csec[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \diff_csec[7]_i_18 
       (.I0(total_prev__0[4]),
        .I1(CO),
        .I2(total_tmp__0[4]),
        .O(\diff_csec[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_19 
       (.I0(total_tmp__0[4]),
        .I1(CO),
        .I2(total_prev__0[4]),
        .O(\diff_csec[7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \diff_csec[7]_i_2 
       (.I0(\diff_sec[4]_i_8_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_csec[7]_i_6_n_0 ),
        .I3(\diff_csec[7]_i_5_n_0 ),
        .I4(\diff_csec[7]_i_7_n_0 ),
        .O(\diff_csec[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_csec[7]_i_20 
       (.I0(total_tmp__0[6]),
        .I1(total_prev__0[6]),
        .I2(total_tmp__0[7]),
        .I3(CO),
        .I4(total_prev__0[7]),
        .O(\diff_csec[7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_csec[7]_i_21 
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .I2(total_tmp__0[6]),
        .I3(CO),
        .I4(total_prev__0[6]),
        .O(\diff_csec[7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    \diff_csec[7]_i_22 
       (.I0(total_tmp__0[4]),
        .I1(CO),
        .I2(total_prev__0[4]),
        .I3(total_prev__0[5]),
        .I4(total_tmp__0[5]),
        .O(\diff_csec[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_23 
       (.I0(total_tmp__0[4]),
        .I1(total_prev__0[4]),
        .O(\diff_csec[7]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[7]_i_3 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_csec[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F1100000F11FFFF)) 
    \diff_csec[7]_i_32 
       (.I0(data3[4]),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(data2[4]),
        .I3(\diff_min[2]_i_4_n_0 ),
        .I4(\diff_min[3]_i_4_n_0 ),
        .I5(data1[4]),
        .O(\diff_csec[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000000001D1D003F)) 
    \diff_csec[7]_i_33 
       (.I0(data8[4]),
        .I1(\diff_min[0]_i_5_n_0 ),
        .I2(data9[4]),
        .I3(data7[4]),
        .I4(\diff_min[1]_i_2_n_0 ),
        .I5(\diff_min[0]_i_6_n_0 ),
        .O(\diff_csec[7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD0D0D0FFD0)) 
    \diff_csec[7]_i_34 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data6[4]),
        .I2(\diff_min[2]_i_3_n_0 ),
        .I3(data4[4]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(\diff_csec[7]_i_110_n_0 ),
        .O(\diff_csec[7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000000001B1B00FF)) 
    \diff_csec[7]_i_35 
       (.I0(\diff_min[0]_i_5_n_0 ),
        .I1(data8[3]),
        .I2(data9[3]),
        .I3(data7[3]),
        .I4(\diff_min[1]_i_2_n_0 ),
        .I5(\diff_min[0]_i_6_n_0 ),
        .O(\diff_csec[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD0D0D0FFD0)) 
    \diff_csec[7]_i_36 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data6[3]),
        .I2(\diff_min[2]_i_3_n_0 ),
        .I3(data4[3]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(\diff_csec[7]_i_111_n_0 ),
        .O(\diff_csec[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0F1100000F11FFFF)) 
    \diff_csec[7]_i_37 
       (.I0(data3[3]),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(data2[3]),
        .I3(\diff_min[2]_i_4_n_0 ),
        .I4(\diff_min[3]_i_4_n_0 ),
        .I5(data1[3]),
        .O(\diff_csec[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0F1100000F11FFFF)) 
    \diff_csec[7]_i_38 
       (.I0(data3[2]),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(data2[2]),
        .I3(\diff_min[2]_i_4_n_0 ),
        .I4(\diff_min[3]_i_4_n_0 ),
        .I5(data1[2]),
        .O(\diff_csec[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h000000001B1B00FF)) 
    \diff_csec[7]_i_39 
       (.I0(\diff_min[0]_i_5_n_0 ),
        .I1(data8[2]),
        .I2(data9[2]),
        .I3(data7[2]),
        .I4(\diff_min[1]_i_2_n_0 ),
        .I5(\diff_min[0]_i_6_n_0 ),
        .O(\diff_csec[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2EEE2EEEEEEEE)) 
    \diff_csec[7]_i_4 
       (.I0(\diff_csec_reg[7]_i_8_n_4 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_csec[7]_i_9_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(\diff_csec[7]_i_10_n_0 ),
        .I5(\diff_csec[7]_i_11_n_0 ),
        .O(\diff_csec[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD0D0D0FFD0)) 
    \diff_csec[7]_i_40 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data6[2]),
        .I2(\diff_min[2]_i_3_n_0 ),
        .I3(data4[2]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(\diff_csec[7]_i_112_n_0 ),
        .O(\diff_csec[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h35350535F5F5C5F5)) 
    \diff_csec[7]_i_41 
       (.I0(data1[5]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[5]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[5]),
        .O(\diff_csec[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404045404)) 
    \diff_csec[7]_i_42 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[5]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(data8[5]),
        .I4(\diff_min[0]_i_5_n_0 ),
        .I5(data9[5]),
        .O(\diff_csec[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_csec[7]_i_43 
       (.I0(data4[5]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[5]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[5]),
        .O(\diff_csec[7]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \diff_csec[7]_i_46 
       (.I0(total_prev__0[6]),
        .I1(CO),
        .I2(total_tmp__0[6]),
        .O(\diff_csec[7]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_csec[7]_i_47 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_csec[7]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \diff_csec[7]_i_48 
       (.I0(total_prev__0[5]),
        .I1(CO),
        .I2(total_tmp__0[5]),
        .O(\diff_csec[7]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_49 
       (.I0(total_prev__0[4]),
        .I1(CO),
        .I2(total_tmp__0[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \diff_csec[7]_i_5 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_csec[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_csec[7]_i_50 
       (.I0(total_tmp__0[6]),
        .I1(total_prev__0[6]),
        .I2(total_tmp__0[7]),
        .I3(CO),
        .I4(total_prev__0[7]),
        .O(\diff_csec[7]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    \diff_csec[7]_i_51 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .I3(total_prev__0[6]),
        .I4(total_tmp__0[6]),
        .O(\diff_csec[7]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_52 
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .O(\diff_csec[7]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[7]_i_53 
       (.I0(total_prev__0[4]),
        .I1(total_tmp__0[4]),
        .O(\diff_csec[7]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_54 
       (.I0(total_tmp__0[7]),
        .I1(total_prev__0[7]),
        .O(\diff_csec[7]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \diff_csec[7]_i_55 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_csec[7]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \diff_csec[7]_i_56 
       (.I0(total_prev__0[4]),
        .I1(CO),
        .I2(total_tmp__0[4]),
        .O(\diff_csec[7]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_57 
       (.I0(total_tmp__0[4]),
        .I1(CO),
        .I2(total_prev__0[4]),
        .O(\diff_csec[7]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_csec[7]_i_58 
       (.I0(total_prev__0[7]),
        .I1(CO),
        .I2(total_tmp__0[7]),
        .I3(total_prev__0[6]),
        .I4(total_tmp__0[6]),
        .O(\diff_csec[7]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_csec[7]_i_59 
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .I2(total_tmp__0[6]),
        .I3(CO),
        .I4(total_prev__0[6]),
        .O(\diff_csec[7]_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[7]_i_6 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_csec[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    \diff_csec[7]_i_60 
       (.I0(total_tmp__0[4]),
        .I1(CO),
        .I2(total_prev__0[4]),
        .I3(total_prev__0[5]),
        .I4(total_tmp__0[5]),
        .O(\diff_csec[7]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_61 
       (.I0(total_tmp__0[4]),
        .I1(total_prev__0[4]),
        .O(\diff_csec[7]_i_61_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_csec[7]_i_62 
       (.I0(total_tmp__0[6]),
        .I1(CO),
        .I2(total_prev__0[6]),
        .O(\diff_csec[7]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_63 
       (.I0(total_tmp__0[6]),
        .I1(total_prev__0[6]),
        .O(\diff_csec[7]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \diff_csec[7]_i_64 
       (.I0(total_prev__0[4]),
        .I1(CO),
        .I2(total_tmp__0[4]),
        .O(\diff_csec[7]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_65 
       (.I0(total_tmp__0[4]),
        .I1(CO),
        .I2(total_prev__0[4]),
        .O(\diff_csec[7]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hA56996A5)) 
    \diff_csec[7]_i_66 
       (.I0(total_prev__0[7]),
        .I1(CO),
        .I2(total_tmp__0[7]),
        .I3(total_tmp__0[6]),
        .I4(total_prev__0[6]),
        .O(\diff_csec[7]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h5A69965A)) 
    \diff_csec[7]_i_67 
       (.I0(total_prev__0[6]),
        .I1(CO),
        .I2(total_tmp__0[6]),
        .I3(total_tmp__0[5]),
        .I4(total_prev__0[5]),
        .O(\diff_csec[7]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    \diff_csec[7]_i_68 
       (.I0(total_tmp__0[4]),
        .I1(CO),
        .I2(total_prev__0[4]),
        .I3(total_prev__0[5]),
        .I4(total_tmp__0[5]),
        .O(\diff_csec[7]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_69 
       (.I0(total_tmp__0[4]),
        .I1(total_prev__0[4]),
        .O(\diff_csec[7]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \diff_csec[7]_i_7 
       (.I0(\diff_sec[4]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_22_n_0 ),
        .I2(\diff_sec[3]_i_12_n_0 ),
        .O(\diff_csec[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_70 
       (.I0(total_tmp__0[7]),
        .I1(total_prev__0[7]),
        .O(\diff_csec[7]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_csec[7]_i_71 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_csec[7]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_72 
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .O(\diff_csec[7]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_73 
       (.I0(total_tmp__0[4]),
        .I1(CO),
        .I2(total_prev__0[4]),
        .O(\diff_csec[7]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_csec[7]_i_74 
       (.I0(total_prev__0[7]),
        .I1(CO),
        .I2(total_tmp__0[7]),
        .I3(total_prev__0[6]),
        .I4(total_tmp__0[6]),
        .O(\diff_csec[7]_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_csec[7]_i_75 
       (.I0(total_prev__0[6]),
        .I1(CO),
        .I2(total_tmp__0[6]),
        .I3(total_tmp__0[5]),
        .I4(total_prev__0[5]),
        .O(\diff_csec[7]_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \diff_csec[7]_i_76 
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .I2(total_prev__0[4]),
        .I3(CO),
        .I4(total_tmp__0[4]),
        .O(\diff_csec[7]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_77 
       (.I0(total_tmp__0[4]),
        .I1(total_prev__0[4]),
        .O(\diff_csec[7]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \diff_csec[7]_i_78 
       (.I0(total_prev__0[6]),
        .I1(CO),
        .I2(total_tmp__0[6]),
        .O(\diff_csec[7]_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_79 
       (.I0(total_tmp__0[6]),
        .I1(CO),
        .I2(total_prev__0[6]),
        .O(\diff_csec[7]_i_79_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_csec[7]_i_80 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_csec[7]_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_81 
       (.I0(total_prev__0[4]),
        .I1(CO),
        .I2(total_tmp__0[4]),
        .O(\diff_csec[7]_i_81_n_0 ));
  LUT5 #(
    .INIT(32'h3C5AC3A5)) 
    \diff_csec[7]_i_82 
       (.I0(total_prev__0[6]),
        .I1(total_tmp__0[6]),
        .I2(total_tmp__0[7]),
        .I3(CO),
        .I4(total_prev__0[7]),
        .O(\diff_csec[7]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_83 
       (.I0(total_tmp__0[6]),
        .I1(total_prev__0[6]),
        .O(\diff_csec[7]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[7]_i_84 
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .O(\diff_csec[7]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[7]_i_85 
       (.I0(total_prev__0[4]),
        .I1(total_tmp__0[4]),
        .O(\diff_csec[7]_i_85_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_86 
       (.I0(total_tmp__0[7]),
        .I1(CO),
        .I2(total_prev__0[7]),
        .O(\diff_csec[7]_i_86_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \diff_csec[7]_i_87 
       (.I0(total_tmp__0[6]),
        .I1(CO),
        .I2(total_prev__0[6]),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_csec[7]_i_88 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_csec[7]_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_89 
       (.I0(total_prev__0[4]),
        .I1(CO),
        .I2(total_tmp__0[4]),
        .O(\diff_csec[7]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404045404)) 
    \diff_csec[7]_i_9 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[7]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(data8[7]),
        .I4(\diff_min[0]_i_5_n_0 ),
        .I5(data9[7]),
        .O(\diff_csec[7]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_csec[7]_i_90 
       (.I0(total_tmp__0[7]),
        .I1(total_prev__0[7]),
        .O(\diff_csec[7]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[7]_i_91 
       (.I0(total_prev__0[6]),
        .I1(total_tmp__0[6]),
        .O(\diff_csec[7]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[7]_i_92 
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .O(\diff_csec[7]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[7]_i_93 
       (.I0(total_prev__0[4]),
        .I1(total_tmp__0[4]),
        .O(\diff_csec[7]_i_93_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_csec[7]_i_94 
       (.I0(total_tmp__0[6]),
        .I1(CO),
        .I2(total_prev__0[6]),
        .O(\diff_csec[7]_i_94_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_csec[7]_i_95 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_csec[7]_i_95_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \diff_csec[7]_i_96 
       (.I0(total_prev__0[5]),
        .I1(CO),
        .I2(total_tmp__0[5]),
        .O(\diff_csec[7]_i_96_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_csec[7]_i_97 
       (.I0(total_prev__0[4]),
        .I1(CO),
        .I2(total_tmp__0[4]),
        .O(\diff_csec[7]_i_97_n_0 ));
  LUT5 #(
    .INIT(32'h2D4BD2B4)) 
    \diff_csec[7]_i_98 
       (.I0(total_prev__0[6]),
        .I1(total_tmp__0[6]),
        .I2(total_tmp__0[7]),
        .I3(CO),
        .I4(total_prev__0[7]),
        .O(\diff_csec[7]_i_98_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \diff_csec[7]_i_99 
       (.I0(total_tmp__0[6]),
        .I1(total_prev__0[6]),
        .I2(total_prev__0[5]),
        .I3(CO),
        .I4(total_tmp__0[5]),
        .O(\diff_csec[7]_i_99_n_0 ));
  FDCE \diff_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_csec[0]_i_1_n_0 ),
        .Q(diff_csec[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_csec_reg[0]_i_5 
       (.CI(1'b0),
        .CO({\diff_csec_reg[0]_i_5_n_0 ,\diff_csec_reg[0]_i_5_n_1 ,\diff_csec_reg[0]_i_5_n_2 ,\diff_csec_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(prev_csec[3:0]),
        .O(total_prev__0[3:0]),
        .S({\diff_csec[0]_i_8_n_0 ,\diff_csec[0]_i_9_n_0 ,\diff_csec[0]_i_10_n_0 ,\diff_csec[0]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_csec_reg[0]_i_6 
       (.CI(1'b0),
        .CO({\diff_csec_reg[0]_i_6_n_0 ,\diff_csec_reg[0]_i_6_n_1 ,\diff_csec_reg[0]_i_6_n_2 ,\diff_csec_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(tmp_csec[3:0]),
        .O(total_tmp__0[3:0]),
        .S({\diff_csec[0]_i_12_n_0 ,\diff_csec[0]_i_13_n_0 ,\diff_csec[0]_i_14_n_0 ,\diff_csec[0]_i_15_n_0 }));
  FDCE \diff_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_csec[1]_i_1_n_0 ),
        .Q(diff_csec[1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_13 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_13_n_0 ,\diff_csec_reg[1]_i_13_n_1 ,\diff_csec_reg[1]_i_13_n_2 ,\diff_csec_reg[1]_i_13_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_18_n_0 ,\diff_csec[1]_i_19_n_0 ,\diff_csec[1]_i_20_n_0 ,\diff_csec[1]_i_21_n_0 }),
        .O({data1[3:1],\NLW_diff_csec_reg[1]_i_13_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_22_n_0 ,\diff_csec[1]_i_23_n_0 ,\diff_csec[1]_i_24_n_0 ,\diff_csec[1]_i_25_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_16 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_16_n_0 ,\diff_csec_reg[1]_i_16_n_1 ,\diff_csec_reg[1]_i_16_n_2 ,\diff_csec_reg[1]_i_16_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_32_n_0 ,\diff_csec[1]_i_33_n_0 ,\diff_csec[1]_i_34_n_0 ,\diff_csec[1]_i_35_n_0 }),
        .O({data2[3:1],\NLW_diff_csec_reg[1]_i_16_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_36_n_0 ,\diff_csec[1]_i_37_n_0 ,\diff_csec[1]_i_38_n_0 ,\diff_csec[1]_i_39_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_17 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_17_n_0 ,\diff_csec_reg[1]_i_17_n_1 ,\diff_csec_reg[1]_i_17_n_2 ,\diff_csec_reg[1]_i_17_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_40_n_0 ,\diff_csec[1]_i_41_n_0 ,\diff_csec[1]_i_42_n_0 ,\diff_csec[1]_i_43_n_0 }),
        .O({data3[3:1],\NLW_diff_csec_reg[1]_i_17_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_44_n_0 ,\diff_csec[1]_i_45_n_0 ,\diff_csec[1]_i_46_n_0 ,\diff_csec[1]_i_47_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_2_n_0 ,\diff_csec_reg[1]_i_2_n_1 ,\diff_csec_reg[1]_i_2_n_2 ,\diff_csec_reg[1]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_4_n_0 ,\diff_csec[1]_i_5_n_0 ,\diff_csec[1]_i_6_n_0 ,\diff_csec[1]_i_7_n_0 }),
        .O({\diff_csec_reg[1]_i_2_n_4 ,\diff_csec_reg[1]_i_2_n_5 ,\diff_csec_reg[1]_i_2_n_6 ,\NLW_diff_csec_reg[1]_i_2_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_8_n_0 ,\diff_csec[1]_i_9_n_0 ,\diff_csec[1]_i_10_n_0 ,\diff_csec[1]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_26 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_26_n_0 ,\diff_csec_reg[1]_i_26_n_1 ,\diff_csec_reg[1]_i_26_n_2 ,\diff_csec_reg[1]_i_26_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_48_n_0 ,\diff_csec[1]_i_49_n_0 ,\diff_csec[1]_i_50_n_0 ,\diff_csec[1]_i_51_n_0 }),
        .O(data9[3:0]),
        .S({\diff_csec[1]_i_52_n_0 ,\diff_csec[1]_i_53_n_0 ,\diff_csec[1]_i_54_n_0 ,\diff_csec[1]_i_55_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_27 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_27_n_0 ,\diff_csec_reg[1]_i_27_n_1 ,\diff_csec_reg[1]_i_27_n_2 ,\diff_csec_reg[1]_i_27_n_3 }),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O({data8[3:1],\NLW_diff_csec_reg[1]_i_27_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_60_n_0 ,\diff_csec[1]_i_61_n_0 ,\diff_csec[1]_i_62_n_0 ,\diff_csec[1]_i_63_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_28 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_28_n_0 ,\diff_csec_reg[1]_i_28_n_1 ,\diff_csec_reg[1]_i_28_n_2 ,\diff_csec_reg[1]_i_28_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_64_n_0 ,\diff_csec[1]_i_65_n_0 ,\diff_csec[1]_i_66_n_0 ,\diff_csec[1]_i_67_n_0 }),
        .O({data7[3:1],\NLW_diff_csec_reg[1]_i_28_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_68_n_0 ,\diff_csec[1]_i_69_n_0 ,\diff_csec[1]_i_70_n_0 ,\diff_csec[1]_i_71_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_29 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_29_n_0 ,\diff_csec_reg[1]_i_29_n_1 ,\diff_csec_reg[1]_i_29_n_2 ,\diff_csec_reg[1]_i_29_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_72_n_0 ,\diff_csec[1]_i_73_n_0 ,\diff_csec[1]_i_74_n_0 ,\diff_csec[1]_i_75_n_0 }),
        .O({data6[3:1],\NLW_diff_csec_reg[1]_i_29_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_76_n_0 ,\diff_csec[1]_i_77_n_0 ,\diff_csec[1]_i_78_n_0 ,\diff_csec[1]_i_79_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_30 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_30_n_0 ,\diff_csec_reg[1]_i_30_n_1 ,\diff_csec_reg[1]_i_30_n_2 ,\diff_csec_reg[1]_i_30_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_80_n_0 ,\diff_csec[1]_i_81_n_0 ,\diff_csec[1]_i_82_n_0 ,\diff_csec[1]_i_83_n_0 }),
        .O({data5[3:1],\NLW_diff_csec_reg[1]_i_30_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_84_n_0 ,\diff_csec[1]_i_85_n_0 ,\diff_csec[1]_i_86_n_0 ,\diff_csec[1]_i_87_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[1]_i_31 
       (.CI(1'b0),
        .CO({\diff_csec_reg[1]_i_31_n_0 ,\diff_csec_reg[1]_i_31_n_1 ,\diff_csec_reg[1]_i_31_n_2 ,\diff_csec_reg[1]_i_31_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[1]_i_88_n_0 ,\diff_csec[1]_i_89_n_0 ,\diff_csec[1]_i_90_n_0 ,\diff_csec[1]_i_91_n_0 }),
        .O({data4[3:1],\NLW_diff_csec_reg[1]_i_31_O_UNCONNECTED [0]}),
        .S({\diff_csec[1]_i_92_n_0 ,\diff_csec[1]_i_93_n_0 ,\diff_csec[1]_i_94_n_0 ,\diff_csec[1]_i_95_n_0 }));
  FDCE \diff_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_csec[2]_i_1_n_0 ),
        .Q(diff_csec[2]));
  FDCE \diff_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_csec[3]_i_1_n_0 ),
        .Q(diff_csec[3]));
  FDCE \diff_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_csec[4]_i_1_n_0 ),
        .Q(diff_csec[4]));
  FDCE \diff_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_csec[5]_i_1_n_0 ),
        .Q(diff_csec[5]));
  FDCE \diff_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_csec[6]_i_1_n_0 ),
        .Q(diff_csec[6]));
  FDCE \diff_csec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_csec[7]_i_1_n_0 ),
        .Q(diff_csec[7]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_24 
       (.CI(\diff_csec_reg[1]_i_28_n_0 ),
        .CO({\diff_csec_reg[7]_i_24_n_0 ,\diff_csec_reg[7]_i_24_n_1 ,\diff_csec_reg[7]_i_24_n_2 ,\diff_csec_reg[7]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_46_n_0 ,\diff_csec[7]_i_47_n_0 ,\diff_csec[7]_i_48_n_0 ,p_1_in[4]}),
        .O(data7[7:4]),
        .S({\diff_csec[7]_i_50_n_0 ,\diff_csec[7]_i_51_n_0 ,\diff_csec[7]_i_52_n_0 ,\diff_csec[7]_i_53_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_25 
       (.CI(\diff_csec_reg[1]_i_27_n_0 ),
        .CO({\diff_csec_reg[7]_i_25_n_0 ,\diff_csec_reg[7]_i_25_n_1 ,\diff_csec_reg[7]_i_25_n_2 ,\diff_csec_reg[7]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_54_n_0 ,\diff_csec[7]_i_55_n_0 ,\diff_csec[7]_i_56_n_0 ,\diff_csec[7]_i_57_n_0 }),
        .O(data8[7:4]),
        .S({\diff_csec[7]_i_58_n_0 ,\diff_csec[7]_i_59_n_0 ,\diff_csec[7]_i_60_n_0 ,\diff_csec[7]_i_61_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_26 
       (.CI(\diff_csec_reg[1]_i_31_n_0 ),
        .CO({\diff_csec_reg[7]_i_26_n_0 ,\diff_csec_reg[7]_i_26_n_1 ,\diff_csec_reg[7]_i_26_n_2 ,\diff_csec_reg[7]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_62_n_0 ,\diff_csec[7]_i_63_n_0 ,\diff_csec[7]_i_64_n_0 ,\diff_csec[7]_i_65_n_0 }),
        .O(data4[7:4]),
        .S({\diff_csec[7]_i_66_n_0 ,\diff_csec[7]_i_67_n_0 ,\diff_csec[7]_i_68_n_0 ,\diff_csec[7]_i_69_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_27 
       (.CI(\diff_csec_reg[1]_i_29_n_0 ),
        .CO({\diff_csec_reg[7]_i_27_n_0 ,\diff_csec_reg[7]_i_27_n_1 ,\diff_csec_reg[7]_i_27_n_2 ,\diff_csec_reg[7]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_70_n_0 ,\diff_csec[7]_i_71_n_0 ,\diff_csec[7]_i_72_n_0 ,\diff_csec[7]_i_73_n_0 }),
        .O(data6[7:4]),
        .S({\diff_csec[7]_i_74_n_0 ,\diff_csec[7]_i_75_n_0 ,\diff_csec[7]_i_76_n_0 ,\diff_csec[7]_i_77_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_28 
       (.CI(\diff_csec_reg[1]_i_30_n_0 ),
        .CO({\diff_csec_reg[7]_i_28_n_0 ,\diff_csec_reg[7]_i_28_n_1 ,\diff_csec_reg[7]_i_28_n_2 ,\diff_csec_reg[7]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_78_n_0 ,\diff_csec[7]_i_79_n_0 ,\diff_csec[7]_i_80_n_0 ,\diff_csec[7]_i_81_n_0 }),
        .O(data5[7:4]),
        .S({\diff_csec[7]_i_82_n_0 ,\diff_csec[7]_i_83_n_0 ,\diff_csec[7]_i_84_n_0 ,\diff_csec[7]_i_85_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_29 
       (.CI(\diff_csec_reg[1]_i_13_n_0 ),
        .CO({\diff_csec_reg[7]_i_29_n_0 ,\diff_csec_reg[7]_i_29_n_1 ,\diff_csec_reg[7]_i_29_n_2 ,\diff_csec_reg[7]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_86_n_0 ,p_1_in[6],\diff_csec[7]_i_88_n_0 ,\diff_csec[7]_i_89_n_0 }),
        .O(data1[7:4]),
        .S({\diff_csec[7]_i_90_n_0 ,\diff_csec[7]_i_91_n_0 ,\diff_csec[7]_i_92_n_0 ,\diff_csec[7]_i_93_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_30 
       (.CI(\diff_csec_reg[1]_i_17_n_0 ),
        .CO({\diff_csec_reg[7]_i_30_n_0 ,\diff_csec_reg[7]_i_30_n_1 ,\diff_csec_reg[7]_i_30_n_2 ,\diff_csec_reg[7]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_94_n_0 ,\diff_csec[7]_i_95_n_0 ,\diff_csec[7]_i_96_n_0 ,\diff_csec[7]_i_97_n_0 }),
        .O(data3[7:4]),
        .S({\diff_csec[7]_i_98_n_0 ,\diff_csec[7]_i_99_n_0 ,\diff_csec[7]_i_100_n_0 ,\diff_csec[7]_i_101_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_31 
       (.CI(\diff_csec_reg[1]_i_16_n_0 ),
        .CO({\diff_csec_reg[7]_i_31_n_0 ,\diff_csec_reg[7]_i_31_n_1 ,\diff_csec_reg[7]_i_31_n_2 ,\diff_csec_reg[7]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_102_n_0 ,\diff_csec[7]_i_103_n_0 ,\diff_csec[7]_i_104_n_0 ,\diff_csec[7]_i_105_n_0 }),
        .O(data2[7:4]),
        .S({\diff_csec[7]_i_106_n_0 ,\diff_csec[7]_i_107_n_0 ,\diff_csec[7]_i_108_n_0 ,\diff_csec[7]_i_109_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_csec_reg[7]_i_44 
       (.CI(\diff_csec_reg[0]_i_5_n_0 ),
        .CO({\diff_csec_reg[7]_i_44_n_0 ,\diff_csec_reg[7]_i_44_n_1 ,\diff_csec_reg[7]_i_44_n_2 ,\diff_csec_reg[7]_i_44_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,prev_csec[6:4]}),
        .O(total_prev__0[7:4]),
        .S({total_prev_n_98,\diff_csec[7]_i_113_n_0 ,\diff_csec[7]_i_114_n_0 ,\diff_csec[7]_i_115_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_csec_reg[7]_i_45 
       (.CI(\diff_csec_reg[0]_i_6_n_0 ),
        .CO({\diff_csec_reg[7]_i_45_n_0 ,\diff_csec_reg[7]_i_45_n_1 ,\diff_csec_reg[7]_i_45_n_2 ,\diff_csec_reg[7]_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_csec[6:4]}),
        .O(total_tmp__0[7:4]),
        .S({total_tmp_n_98,\diff_csec[7]_i_116_n_0 ,\diff_csec[7]_i_117_n_0 ,\diff_csec[7]_i_118_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_8 
       (.CI(\diff_csec_reg[1]_i_2_n_0 ),
        .CO({\diff_csec_reg[7]_i_8_n_0 ,\diff_csec_reg[7]_i_8_n_1 ,\diff_csec_reg[7]_i_8_n_2 ,\diff_csec_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_csec[7]_i_16_n_0 ,\diff_csec[7]_i_17_n_0 ,\diff_csec[7]_i_18_n_0 ,\diff_csec[7]_i_19_n_0 }),
        .O({\diff_csec_reg[7]_i_8_n_4 ,\diff_csec_reg[7]_i_8_n_5 ,\diff_csec_reg[7]_i_8_n_6 ,\diff_csec_reg[7]_i_8_n_7 }),
        .S({\diff_csec[7]_i_20_n_0 ,\diff_csec[7]_i_21_n_0 ,\diff_csec[7]_i_22_n_0 ,\diff_csec[7]_i_23_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \diff_min[0]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_min[1]_i_4_n_0 ),
        .I3(\diff_min[0]_i_3_n_0 ),
        .O(\diff_min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \diff_min[0]_i_10 
       (.I0(data9[7]),
        .I1(data9[4]),
        .I2(data9[5]),
        .O(\diff_min[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \diff_min[0]_i_11 
       (.I0(data9[13]),
        .I1(data9[15]),
        .I2(data9[17]),
        .I3(data9[16]),
        .I4(data9[18]),
        .I5(data9[14]),
        .O(\diff_min[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7777777F)) 
    \diff_min[0]_i_12 
       (.I0(data9[9]),
        .I1(data9[10]),
        .I2(data9[7]),
        .I3(data9[8]),
        .I4(data9[6]),
        .O(\diff_min[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \diff_min[0]_i_13 
       (.I0(data9[8]),
        .I1(data9[7]),
        .I2(data9[4]),
        .I3(data9[5]),
        .O(\diff_min[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \diff_min[0]_i_14 
       (.I0(data9[13]),
        .I1(data9[12]),
        .I2(data9[14]),
        .O(\diff_min[0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \diff_min[0]_i_15 
       (.I0(data9[8]),
        .I1(data9[9]),
        .O(\diff_min[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \diff_min[0]_i_16 
       (.I0(data9[9]),
        .I1(data9[6]),
        .I2(data9[5]),
        .I3(data9[4]),
        .I4(data9[7]),
        .O(\diff_min[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1515155555555555)) 
    \diff_min[0]_i_2 
       (.I0(\diff_min[1]_i_10_n_0 ),
        .I1(data9[14]),
        .I2(data9[15]),
        .I3(data9[13]),
        .I4(data9[12]),
        .I5(\diff_min[0]_i_4_n_0 ),
        .O(\diff_min[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0BFF00000BFF0BFF)) 
    \diff_min[0]_i_3 
       (.I0(\diff_min[0]_i_5_n_0 ),
        .I1(\diff_min[1]_i_2_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(\diff_min[2]_i_3_n_0 ),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(\diff_min[1]_i_3_n_0 ),
        .O(\diff_min[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \diff_min[0]_i_4 
       (.I0(data9[7]),
        .I1(data9[6]),
        .I2(data9[4]),
        .I3(data9[5]),
        .I4(data9[9]),
        .I5(\diff_min[0]_i_8_n_0 ),
        .O(\diff_min[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555F7FF)) 
    \diff_min[0]_i_5 
       (.I0(data9[12]),
        .I1(\diff_min[0]_i_9_n_0 ),
        .I2(\diff_min[0]_i_10_n_0 ),
        .I3(data9[8]),
        .I4(data9[11]),
        .I5(\diff_min[0]_i_11_n_0 ),
        .O(\diff_min[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFABAAAAAAAA)) 
    \diff_min[0]_i_6 
       (.I0(\diff_min[2]_i_7_n_0 ),
        .I1(\diff_min[0]_i_12_n_0 ),
        .I2(\diff_min[0]_i_13_n_0 ),
        .I3(\diff_min[1]_i_7_n_0 ),
        .I4(data9[11]),
        .I5(data9[14]),
        .O(\diff_min[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4544454545454545)) 
    \diff_min[0]_i_7 
       (.I0(\diff_min[2]_i_7_n_0 ),
        .I1(\diff_min[0]_i_14_n_0 ),
        .I2(data9[11]),
        .I3(\diff_min[0]_i_15_n_0 ),
        .I4(data9[10]),
        .I5(\diff_min[0]_i_16_n_0 ),
        .O(\diff_min[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \diff_min[0]_i_8 
       (.I0(data9[13]),
        .I1(data9[10]),
        .I2(data9[11]),
        .I3(data9[8]),
        .I4(data9[9]),
        .O(\diff_min[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \diff_min[0]_i_9 
       (.I0(data9[7]),
        .I1(data9[6]),
        .I2(data9[9]),
        .I3(data9[10]),
        .O(\diff_min[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \diff_min[1]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_min[1]_i_2_n_0 ),
        .I2(\diff_min[2]_i_3_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(\diff_min[2]_i_2_n_0 ),
        .I5(\diff_min[1]_i_4_n_0 ),
        .O(\diff_min[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \diff_min[1]_i_10 
       (.I0(data9[18]),
        .I1(data9[16]),
        .I2(data9[17]),
        .O(\diff_min[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000DDD)) 
    \diff_min[1]_i_2 
       (.I0(\diff_min[1]_i_5_n_0 ),
        .I1(\diff_min[1]_i_6_n_0 ),
        .I2(data9[12]),
        .I3(data9[13]),
        .I4(data9[14]),
        .I5(\diff_min[2]_i_7_n_0 ),
        .O(\diff_min[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000011100000FFFF)) 
    \diff_min[1]_i_3 
       (.I0(data9[14]),
        .I1(\diff_min[1]_i_7_n_0 ),
        .I2(\diff_min[1]_i_8_n_0 ),
        .I3(\diff_min[1]_i_9_n_0 ),
        .I4(\diff_min[1]_i_10_n_0 ),
        .I5(data9[15]),
        .O(\diff_min[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \diff_min[1]_i_4 
       (.I0(\diff_min[3]_i_4_n_0 ),
        .I1(\diff_min[2]_i_4_n_0 ),
        .O(\diff_min[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \diff_min[1]_i_5 
       (.I0(data9[7]),
        .I1(data9[8]),
        .I2(data9[5]),
        .O(\diff_min[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \diff_min[1]_i_6 
       (.I0(data9[8]),
        .I1(data9[6]),
        .I2(data9[13]),
        .I3(data9[9]),
        .I4(data9[10]),
        .I5(data9[11]),
        .O(\diff_min[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \diff_min[1]_i_7 
       (.I0(data9[12]),
        .I1(data9[13]),
        .O(\diff_min[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \diff_min[1]_i_8 
       (.I0(data9[10]),
        .I1(data9[11]),
        .O(\diff_min[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00010033)) 
    \diff_min[1]_i_9 
       (.I0(data9[6]),
        .I1(data9[9]),
        .I2(data9[5]),
        .I3(data9[8]),
        .I4(data9[7]),
        .O(\diff_min[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h08A8)) 
    \diff_min[2]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_min[3]_i_4_n_0 ),
        .I2(\diff_min[2]_i_2_n_0 ),
        .I3(\diff_min[2]_i_3_n_0 ),
        .O(\diff_min[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \diff_min[2]_i_2 
       (.I0(\diff_min[3]_i_4_n_0 ),
        .I1(\diff_min[2]_i_4_n_0 ),
        .O(\diff_min[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000055FD)) 
    \diff_min[2]_i_3 
       (.I0(data9[14]),
        .I1(\diff_min[2]_i_5_n_0 ),
        .I2(\diff_min[2]_i_6_n_0 ),
        .I3(data9[13]),
        .I4(\diff_min[2]_i_7_n_0 ),
        .O(\diff_min[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4000000000000)) 
    \diff_min[2]_i_4 
       (.I0(\diff_min[2]_i_8_n_0 ),
        .I1(data9[10]),
        .I2(data9[11]),
        .I3(data9[12]),
        .I4(data9[13]),
        .I5(data9[15]),
        .O(\diff_min[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h7F7F7FFF)) 
    \diff_min[2]_i_5 
       (.I0(data9[11]),
        .I1(data9[10]),
        .I2(data9[12]),
        .I3(data9[8]),
        .I4(data9[9]),
        .O(\diff_min[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \diff_min[2]_i_6 
       (.I0(data9[9]),
        .I1(data9[7]),
        .I2(data9[6]),
        .O(\diff_min[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \diff_min[2]_i_7 
       (.I0(data9[15]),
        .I1(data9[17]),
        .I2(data9[16]),
        .I3(data9[18]),
        .O(\diff_min[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \diff_min[2]_i_8 
       (.I0(data9[5]),
        .I1(data9[4]),
        .I2(data9[7]),
        .I3(data9[8]),
        .I4(data9[9]),
        .I5(data9[6]),
        .O(\diff_min[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_10 
       (.I0(total_tmp__0[15]),
        .I1(CO),
        .I2(total_prev__0[15]),
        .O(\diff_min[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_11 
       (.I0(total_tmp__0[14]),
        .I1(CO),
        .I2(total_prev__0[14]),
        .O(\diff_min[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_12 
       (.I0(total_tmp__0[13]),
        .I1(CO),
        .I2(total_prev__0[13]),
        .O(\diff_min[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_13 
       (.I0(total_tmp__0[12]),
        .I1(CO),
        .I2(total_prev__0[12]),
        .O(\diff_min[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_14 
       (.I0(total_prev__0[15]),
        .I1(total_tmp__0[15]),
        .O(\diff_min[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_15 
       (.I0(total_prev__0[14]),
        .I1(total_tmp__0[14]),
        .O(\diff_min[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_16 
       (.I0(total_prev__0[13]),
        .I1(total_tmp__0[13]),
        .O(\diff_min[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_17 
       (.I0(total_prev__0[12]),
        .I1(total_tmp__0[12]),
        .O(\diff_min[3]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_18 
       (.I0(total_tmp__0[11]),
        .I1(CO),
        .I2(total_prev__0[11]),
        .O(\diff_min[3]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_19 
       (.I0(total_tmp__0[10]),
        .I1(CO),
        .I2(total_prev__0[10]),
        .O(\diff_min[3]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_min[3]_i_2 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_min[3]_i_4_n_0 ),
        .O(\diff_min[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_20 
       (.I0(total_tmp__0[9]),
        .I1(CO),
        .I2(total_prev__0[9]),
        .O(\diff_min[3]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_21 
       (.I0(total_tmp__0[8]),
        .I1(CO),
        .I2(total_prev__0[8]),
        .O(\diff_min[3]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_22 
       (.I0(total_prev__0[11]),
        .I1(total_tmp__0[11]),
        .O(\diff_min[3]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_23 
       (.I0(total_prev__0[10]),
        .I1(total_tmp__0[10]),
        .O(\diff_min[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_24 
       (.I0(total_prev__0[9]),
        .I1(total_tmp__0[9]),
        .O(\diff_min[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_25 
       (.I0(total_prev__0[8]),
        .I1(total_tmp__0[8]),
        .O(\diff_min[3]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \diff_min[3]_i_27 
       (.I0(total_tmp__0[7]),
        .I1(CO),
        .I2(total_prev__0[7]),
        .O(p_1_in[7]));
  LUT3 #(
    .INIT(8'h1D)) 
    \diff_min[3]_i_28 
       (.I0(total_tmp__0[6]),
        .I1(CO),
        .I2(total_prev__0[6]),
        .O(\diff_min[3]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_29 
       (.I0(total_tmp__0[5]),
        .I1(CO),
        .I2(total_prev__0[5]),
        .O(\diff_min[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \diff_min[3]_i_3 
       (.I0(\lap_count[7]_i_5_n_0 ),
        .I1(lap_count[1]),
        .I2(lap_count[0]),
        .I3(lap_count[2]),
        .I4(lap_count[3]),
        .O(\lap_count_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \diff_min[3]_i_30 
       (.I0(total_prev__0[4]),
        .I1(CO),
        .I2(total_tmp__0[4]),
        .O(\diff_min[3]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_31 
       (.I0(total_prev__0[7]),
        .I1(total_tmp__0[7]),
        .O(\diff_min[3]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_32 
       (.I0(total_prev__0[6]),
        .I1(total_tmp__0[6]),
        .O(\diff_min[3]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_33 
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .O(\diff_min[3]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_34 
       (.I0(total_prev__0[4]),
        .I1(total_tmp__0[4]),
        .O(\diff_min[3]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_39 
       (.I0(total_tmp__0[17]),
        .I1(CO),
        .I2(total_prev__0[17]),
        .O(\diff_min[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \diff_min[3]_i_4 
       (.I0(\diff_min[3]_i_5_n_0 ),
        .I1(data9[12]),
        .I2(data9[11]),
        .I3(data9[13]),
        .I4(data9[15]),
        .I5(\diff_min[3]_i_8_n_0 ),
        .O(\diff_min[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_min[3]_i_40 
       (.I0(total_tmp__0[16]),
        .I1(CO),
        .I2(total_prev__0[16]),
        .O(\diff_min[3]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_41 
       (.I0(total_prev__0[18]),
        .I1(total_tmp__0[18]),
        .O(\diff_min[3]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_42 
       (.I0(total_prev__0[17]),
        .I1(total_tmp__0[17]),
        .O(\diff_min[3]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_min[3]_i_43 
       (.I0(total_prev__0[16]),
        .I1(total_tmp__0[16]),
        .O(\diff_min[3]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \diff_min[3]_i_5 
       (.I0(data9[10]),
        .I1(data9[8]),
        .I2(data9[9]),
        .I3(data9[7]),
        .O(\diff_min[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \diff_min[3]_i_8 
       (.I0(data9[14]),
        .I1(data9[15]),
        .I2(data9[17]),
        .I3(data9[16]),
        .I4(data9[18]),
        .O(\diff_min[3]_i_8_n_0 ));
  FDCE \diff_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_min[0]_i_1_n_0 ),
        .Q(diff_min[0]));
  FDCE \diff_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_min[1]_i_1_n_0 ),
        .Q(diff_min[1]));
  FDCE \diff_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_min[2]_i_1_n_0 ),
        .Q(diff_min[2]));
  FDCE \diff_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_min[3]_i_2_n_0 ),
        .Q(diff_min[3]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_min_reg[3]_i_26 
       (.CI(\diff_min_reg[3]_i_6_n_0 ),
        .CO({\NLW_diff_min_reg[3]_i_26_CO_UNCONNECTED [3:2],\diff_min_reg[3]_i_26_n_2 ,\diff_min_reg[3]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_min[3]_i_39_n_0 ,\diff_min[3]_i_40_n_0 }),
        .O({\NLW_diff_min_reg[3]_i_26_O_UNCONNECTED [3],data9[18:16]}),
        .S({1'b0,\diff_min[3]_i_41_n_0 ,\diff_min[3]_i_42_n_0 ,\diff_min[3]_i_43_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_min_reg[3]_i_35 
       (.CI(\diff_min_reg[3]_i_37_n_0 ),
        .CO({\diff_min_reg[3]_i_35_n_0 ,\diff_min_reg[3]_i_35_n_1 ,\diff_min_reg[3]_i_35_n_2 ,\diff_min_reg[3]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(total_tmp__0[15:12]),
        .S({total_tmp_n_90,total_tmp_n_91,total_tmp_n_92,total_tmp_n_93}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_min_reg[3]_i_36 
       (.CI(\diff_min_reg[3]_i_38_n_0 ),
        .CO({\diff_min_reg[3]_i_36_n_0 ,\diff_min_reg[3]_i_36_n_1 ,\diff_min_reg[3]_i_36_n_2 ,\diff_min_reg[3]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(total_prev__0[15:12]),
        .S({total_prev_n_90,total_prev_n_91,total_prev_n_92,total_prev_n_93}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_min_reg[3]_i_37 
       (.CI(\diff_csec_reg[7]_i_45_n_0 ),
        .CO({\diff_min_reg[3]_i_37_n_0 ,\diff_min_reg[3]_i_37_n_1 ,\diff_min_reg[3]_i_37_n_2 ,\diff_min_reg[3]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(total_tmp__0[11:8]),
        .S({total_tmp_n_94,total_tmp_n_95,total_tmp_n_96,total_tmp_n_97}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_min_reg[3]_i_38 
       (.CI(\diff_csec_reg[7]_i_44_n_0 ),
        .CO({\diff_min_reg[3]_i_38_n_0 ,\diff_min_reg[3]_i_38_n_1 ,\diff_min_reg[3]_i_38_n_2 ,\diff_min_reg[3]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(total_prev__0[11:8]),
        .S({total_prev_n_94,total_prev_n_95,total_prev_n_96,total_prev_n_97}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_min_reg[3]_i_6 
       (.CI(\diff_min_reg[3]_i_7_n_0 ),
        .CO({\diff_min_reg[3]_i_6_n_0 ,\diff_min_reg[3]_i_6_n_1 ,\diff_min_reg[3]_i_6_n_2 ,\diff_min_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_min[3]_i_10_n_0 ,\diff_min[3]_i_11_n_0 ,\diff_min[3]_i_12_n_0 ,\diff_min[3]_i_13_n_0 }),
        .O(data9[15:12]),
        .S({\diff_min[3]_i_14_n_0 ,\diff_min[3]_i_15_n_0 ,\diff_min[3]_i_16_n_0 ,\diff_min[3]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_min_reg[3]_i_7 
       (.CI(\diff_min_reg[3]_i_9_n_0 ),
        .CO({\diff_min_reg[3]_i_7_n_0 ,\diff_min_reg[3]_i_7_n_1 ,\diff_min_reg[3]_i_7_n_2 ,\diff_min_reg[3]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_min[3]_i_18_n_0 ,\diff_min[3]_i_19_n_0 ,\diff_min[3]_i_20_n_0 ,\diff_min[3]_i_21_n_0 }),
        .O(data9[11:8]),
        .S({\diff_min[3]_i_22_n_0 ,\diff_min[3]_i_23_n_0 ,\diff_min[3]_i_24_n_0 ,\diff_min[3]_i_25_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_min_reg[3]_i_9 
       (.CI(\diff_csec_reg[1]_i_26_n_0 ),
        .CO({\diff_min_reg[3]_i_9_n_0 ,\diff_min_reg[3]_i_9_n_1 ,\diff_min_reg[3]_i_9_n_2 ,\diff_min_reg[3]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({p_1_in[7],\diff_min[3]_i_28_n_0 ,\diff_min[3]_i_29_n_0 ,\diff_min[3]_i_30_n_0 }),
        .O(data9[7:4]),
        .S({\diff_min[3]_i_31_n_0 ,\diff_min[3]_i_32_n_0 ,\diff_min[3]_i_33_n_0 ,\diff_min[3]_i_34_n_0 }));
  LUT5 #(
    .INIT(32'hA8AAA8A8)) 
    \diff_sec[0]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[0]_i_2_n_0 ),
        .I2(\diff_sec[0]_i_3_n_0 ),
        .I3(\diff_sec[0]_i_4_n_0 ),
        .I4(\diff_sec[4]_i_4_n_0 ),
        .O(\diff_sec[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000070007000700)) 
    \diff_sec[0]_i_10 
       (.I0(\diff_sec[0]_i_22_n_0 ),
        .I1(\diff_sec[3]_i_5_n_0 ),
        .I2(\diff_sec[0]_i_23_n_0 ),
        .I3(\diff_csec[6]_i_11_n_0 ),
        .I4(\diff_sec[0]_i_24_n_0 ),
        .I5(\diff_sec[0]_i_25_n_0 ),
        .O(\diff_sec[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4044)) 
    \diff_sec[0]_i_11 
       (.I0(\diff_csec[4]_i_10_n_0 ),
        .I1(\diff_csec[6]_i_12_n_0 ),
        .I2(\diff_sec[0]_i_26_n_0 ),
        .I3(\diff_sec[3]_i_8_n_0 ),
        .O(\diff_sec[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF10)) 
    \diff_sec[0]_i_12 
       (.I0(\diff_sec[3]_i_10_n_0 ),
        .I1(\diff_sec[0]_i_27_n_0 ),
        .I2(\diff_sec[3]_i_11_n_0 ),
        .I3(\diff_sec[4]_i_17_n_0 ),
        .I4(\diff_sec[1]_i_19_n_0 ),
        .I5(\diff_sec[3]_i_12_n_0 ),
        .O(\diff_sec[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8A8A8A)) 
    \diff_sec[0]_i_13 
       (.I0(\diff_sec[1]_i_9_n_0 ),
        .I1(\diff_sec[0]_i_28_n_0 ),
        .I2(\diff_sec[0]_i_29_n_0 ),
        .I3(\diff_sec[0]_i_30_n_0 ),
        .I4(\diff_sec[2]_i_11_n_0 ),
        .I5(\diff_sec[0]_i_31_n_0 ),
        .O(\diff_sec[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101000000)) 
    \diff_sec[0]_i_14 
       (.I0(\diff_sec[4]_i_17_n_0 ),
        .I1(\diff_sec[1]_i_19_n_0 ),
        .I2(\diff_sec[3]_i_12_n_0 ),
        .I3(\diff_sec[0]_i_32_n_0 ),
        .I4(\diff_csec[7]_i_6_n_0 ),
        .I5(\diff_sec[1]_i_25_n_0 ),
        .O(\diff_sec[0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[0]_i_15 
       (.I0(\diff_sec[3]_i_7_n_0 ),
        .I1(\diff_sec[0]_i_33_n_0 ),
        .O(\diff_sec[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFAA08AA08)) 
    \diff_sec[0]_i_16 
       (.I0(\diff_sec[0]_i_34_n_0 ),
        .I1(\diff_sec[2]_i_14_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_sec[3]_i_10_n_0 ),
        .I4(\diff_sec[1]_i_18_n_0 ),
        .I5(\diff_sec[0]_i_35_n_0 ),
        .O(\diff_sec[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \diff_sec[0]_i_17 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[0]_i_32_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000BFBBFFFFFFFF)) 
    \diff_sec[0]_i_18 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[7]_i_13_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .I5(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_sec[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h55550000777F0000)) 
    \diff_sec[0]_i_19 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[4]_i_21_n_0 ),
        .I2(\diff_sec[0]_i_36_n_0 ),
        .I3(\diff_csec[7]_i_4_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[4]_i_24_n_0 ),
        .O(\diff_sec[0]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF0FD)) 
    \diff_sec[0]_i_2 
       (.I0(\diff_sec[1]_i_5_n_0 ),
        .I1(\diff_csec[7]_i_2_n_0 ),
        .I2(\diff_sec[2]_i_2_n_0 ),
        .I3(\diff_sec[0]_i_5_n_0 ),
        .O(\diff_sec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A8AAA8A)) 
    \diff_sec[0]_i_20 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[2]_i_17_n_0 ),
        .I2(\diff_sec[5]_i_6_n_0 ),
        .I3(\diff_csec[4]_i_29_n_0 ),
        .I4(\diff_sec[4]_i_24_n_0 ),
        .I5(\diff_sec[2]_i_13_n_0 ),
        .O(\diff_sec[0]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[0]_i_21 
       (.I0(\diff_csec[4]_i_42_n_0 ),
        .I1(\diff_csec[2]_i_18_n_0 ),
        .O(\diff_sec[0]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFEFAFAFA)) 
    \diff_sec[0]_i_22 
       (.I0(\diff_sec[3]_i_9_n_0 ),
        .I1(\diff_sec[1]_i_28_n_0 ),
        .I2(\diff_sec[0]_i_37_n_0 ),
        .I3(\diff_csec[7]_i_3_n_0 ),
        .I4(\diff_sec[0]_i_38_n_0 ),
        .O(\diff_sec[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4040400000000000)) 
    \diff_sec[0]_i_23 
       (.I0(\diff_sec[0]_i_39_n_0 ),
        .I1(\diff_sec[2]_i_17_n_0 ),
        .I2(\diff_sec[5]_i_5_n_0 ),
        .I3(\diff_sec[0]_i_40_n_0 ),
        .I4(\diff_sec[0]_i_41_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[0]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h20200020)) 
    \diff_sec[0]_i_24 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[2]_i_13_n_0 ),
        .I2(\diff_sec[2]_i_17_n_0 ),
        .I3(\diff_sec[4]_i_10_n_0 ),
        .I4(\diff_csec[5]_i_44_n_0 ),
        .O(\diff_sec[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAFFFFFFFF)) 
    \diff_sec[0]_i_25 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[2]_i_17_n_0 ),
        .I2(\diff_sec[2]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_6_n_0 ),
        .I4(\diff_sec[0]_i_32_n_0 ),
        .I5(\diff_sec[5]_i_5_n_0 ),
        .O(\diff_sec[0]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \diff_sec[0]_i_26 
       (.I0(\diff_sec[0]_i_42_n_0 ),
        .I1(\diff_sec[0]_i_43_n_0 ),
        .I2(\diff_sec[0]_i_44_n_0 ),
        .O(\diff_sec[0]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \diff_sec[0]_i_27 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .O(\diff_sec[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \diff_sec[0]_i_28 
       (.I0(\diff_sec[1]_i_19_n_0 ),
        .I1(\diff_sec[4]_i_17_n_0 ),
        .I2(\diff_sec[4]_i_14_n_0 ),
        .I3(\diff_sec[0]_i_36_n_0 ),
        .I4(\diff_csec[7]_i_4_n_0 ),
        .I5(\diff_csec[7]_i_7_n_0 ),
        .O(\diff_sec[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_sec[0]_i_29 
       (.I0(\diff_csec[4]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_3_n_0 ),
        .O(\diff_sec[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFFFFFF2)) 
    \diff_sec[0]_i_3 
       (.I0(\diff_sec[0]_i_6_n_0 ),
        .I1(\diff_csec[6]_i_5_n_0 ),
        .I2(\diff_sec[0]_i_7_n_0 ),
        .I3(\diff_sec[0]_i_8_n_0 ),
        .I4(\diff_sec[0]_i_9_n_0 ),
        .I5(\diff_sec[0]_i_10_n_0 ),
        .O(\diff_sec[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hA8AA8888)) 
    \diff_sec[0]_i_30 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[5]_i_4_n_0 ),
        .I2(\diff_csec[7]_i_5_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \diff_sec[0]_i_31 
       (.I0(\diff_sec[0]_i_45_n_0 ),
        .I1(\diff_sec[4]_i_17_n_0 ),
        .I2(\diff_sec[1]_i_19_n_0 ),
        .I3(\diff_sec[4]_i_7_n_0 ),
        .I4(\diff_sec[0]_i_46_n_0 ),
        .I5(\diff_sec[4]_i_9_n_0 ),
        .O(\diff_sec[0]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \diff_sec[0]_i_32 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_sec[0]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h005DFFFF)) 
    \diff_sec[0]_i_33 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[4]_i_11_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_sec[4]_i_12_n_0 ),
        .I4(\diff_sec[4]_i_22_n_0 ),
        .O(\diff_sec[0]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \diff_sec[0]_i_34 
       (.I0(\diff_sec[0]_i_47_n_0 ),
        .I1(\diff_sec[1]_i_17_n_0 ),
        .I2(\diff_csec[6]_i_54_n_0 ),
        .O(\diff_sec[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08FFFFFF)) 
    \diff_sec[0]_i_35 
       (.I0(\diff_sec[2]_i_12_n_0 ),
        .I1(\diff_sec[3]_i_11_n_0 ),
        .I2(\diff_sec[3]_i_10_n_0 ),
        .I3(\diff_sec[2]_i_17_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[0]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    \diff_sec[0]_i_36 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .I4(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_sec[0]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h44404444)) 
    \diff_sec[0]_i_37 
       (.I0(\diff_sec[3]_i_13_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_4_n_0 ),
        .I3(\diff_sec[4]_i_10_n_0 ),
        .I4(\diff_sec[4]_i_11_n_0 ),
        .O(\diff_sec[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h5444)) 
    \diff_sec[0]_i_38 
       (.I0(\diff_sec[3]_i_13_n_0 ),
        .I1(\diff_sec[2]_i_13_n_0 ),
        .I2(\diff_sec[2]_i_12_n_0 ),
        .I3(\diff_sec[3]_i_11_n_0 ),
        .O(\diff_sec[0]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hA8AAA8A8)) 
    \diff_sec[0]_i_39 
       (.I0(\diff_sec[4]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_sec[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h080808080808AA08)) 
    \diff_sec[0]_i_4 
       (.I0(\diff_sec[0]_i_11_n_0 ),
        .I1(\diff_sec[0]_i_12_n_0 ),
        .I2(\diff_sec[0]_i_13_n_0 ),
        .I3(\diff_sec[0]_i_14_n_0 ),
        .I4(\diff_sec[0]_i_15_n_0 ),
        .I5(\diff_sec[0]_i_16_n_0 ),
        .O(\diff_sec[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888888808088808)) 
    \diff_sec[0]_i_40 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .I4(\diff_csec[7]_i_13_n_0 ),
        .I5(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_sec[0]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \diff_sec[0]_i_41 
       (.I0(\diff_sec[4]_i_16_n_0 ),
        .I1(\diff_sec[3]_i_12_n_0 ),
        .I2(\diff_sec[4]_i_12_n_0 ),
        .I3(\diff_sec[4]_i_22_n_0 ),
        .O(\diff_sec[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \diff_sec[0]_i_42 
       (.I0(\diff_sec[0]_i_48_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .I2(\diff_sec[1]_i_32_n_0 ),
        .I3(\diff_sec[0]_i_49_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000555500000001)) 
    \diff_sec[0]_i_43 
       (.I0(\diff_sec[4]_i_17_n_0 ),
        .I1(\diff_csec[5]_i_53_n_0 ),
        .I2(\diff_sec[4]_i_13_n_0 ),
        .I3(\diff_sec[1]_i_32_n_0 ),
        .I4(\diff_sec[4]_i_15_n_0 ),
        .I5(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0100030001000000)) 
    \diff_sec[0]_i_44 
       (.I0(\diff_sec[2]_i_19_n_0 ),
        .I1(\diff_sec[4]_i_17_n_0 ),
        .I2(\diff_sec[1]_i_19_n_0 ),
        .I3(\diff_csec[7]_i_7_n_0 ),
        .I4(\diff_csec[7]_i_4_n_0 ),
        .I5(\diff_sec[0]_i_50_n_0 ),
        .O(\diff_sec[0]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \diff_sec[0]_i_45 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_sec[0]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00750000)) 
    \diff_sec[0]_i_46 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_sec[4]_i_10_n_0 ),
        .I4(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_sec[0]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \diff_sec[0]_i_47 
       (.I0(\diff_sec[4]_i_24_n_0 ),
        .I1(\diff_sec[1]_i_34_n_0 ),
        .I2(\diff_sec[5]_i_5_n_0 ),
        .I3(\diff_sec[5]_i_6_n_0 ),
        .I4(\diff_csec[6]_i_57_n_0 ),
        .O(\diff_sec[0]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h2022FFFF)) 
    \diff_sec[0]_i_48 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_12_n_0 ),
        .I4(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_sec[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \diff_sec[0]_i_49 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .I4(\diff_csec[7]_i_15_n_0 ),
        .I5(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_sec[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA08AAAAAAAA)) 
    \diff_sec[0]_i_5 
       (.I0(\diff_sec[1]_i_24_n_0 ),
        .I1(\diff_sec[0]_i_17_n_0 ),
        .I2(\diff_sec[2]_i_13_n_0 ),
        .I3(\diff_sec[4]_i_14_n_0 ),
        .I4(\diff_sec[1]_i_19_n_0 ),
        .I5(\diff_sec[1]_i_27_n_0 ),
        .O(\diff_sec[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h40444040)) 
    \diff_sec[0]_i_50 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_13_n_0 ),
        .I4(\diff_csec[7]_i_14_n_0 ),
        .O(\diff_sec[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hF2FF0000FFFFFFFF)) 
    \diff_sec[0]_i_6 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[0]_i_18_n_0 ),
        .I2(\diff_sec[4]_i_7_n_0 ),
        .I3(\diff_sec[4]_i_16_n_0 ),
        .I4(\diff_sec[5]_i_6_n_0 ),
        .I5(\diff_sec[5]_i_5_n_0 ),
        .O(\diff_sec[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2F220F000F00)) 
    \diff_sec[0]_i_7 
       (.I0(\diff_sec[1]_i_12_n_0 ),
        .I1(\diff_sec[0]_i_19_n_0 ),
        .I2(\diff_sec[0]_i_20_n_0 ),
        .I3(\diff_sec[4]_i_6_n_0 ),
        .I4(\diff_csec[2]_i_11_n_0 ),
        .I5(\diff_sec[1]_i_11_n_0 ),
        .O(\diff_sec[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h50725072FFFF5072)) 
    \diff_sec[0]_i_8 
       (.I0(\diff_sec[1]_i_21_n_0 ),
        .I1(\diff_sec[1]_i_22_n_0 ),
        .I2(\diff_sec[2]_i_7_n_0 ),
        .I3(\diff_sec[0]_i_21_n_0 ),
        .I4(\diff_sec[4]_i_19_n_0 ),
        .I5(\diff_sec[1]_i_23_n_0 ),
        .O(\diff_sec[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF555500000000)) 
    \diff_sec[0]_i_9 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[3]_i_10_n_0 ),
        .I2(\diff_sec[3]_i_11_n_0 ),
        .I3(\diff_sec[4]_i_41_n_0 ),
        .I4(\diff_sec[2]_i_17_n_0 ),
        .I5(\diff_sec[5]_i_5_n_0 ),
        .O(\diff_sec[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88A888A888A8AAAA)) 
    \diff_sec[1]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[1]_i_2_n_0 ),
        .I2(\diff_sec[4]_i_4_n_0 ),
        .I3(\diff_sec[1]_i_3_n_0 ),
        .I4(\diff_sec[1]_i_4_n_0 ),
        .I5(\diff_sec[4]_i_2_n_0 ),
        .O(\diff_sec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0022022200FFFFFF)) 
    \diff_sec[1]_i_10 
       (.I0(\diff_sec[1]_i_21_n_0 ),
        .I1(\diff_sec[1]_i_22_n_0 ),
        .I2(\diff_sec[1]_i_23_n_0 ),
        .I3(\diff_sec[5]_i_2_n_0 ),
        .I4(\diff_sec[4]_i_20_n_0 ),
        .I5(\diff_sec[2]_i_7_n_0 ),
        .O(\diff_sec[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h22A222A222A2A2A2)) 
    \diff_sec[1]_i_11 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[5]_i_6_n_0 ),
        .I2(\diff_sec[4]_i_16_n_0 ),
        .I3(\diff_sec[3]_i_12_n_0 ),
        .I4(\diff_sec[5]_i_4_n_0 ),
        .I5(\diff_sec[2]_i_19_n_0 ),
        .O(\diff_sec[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000A8AAAAAAAA)) 
    \diff_sec[1]_i_12 
       (.I0(\diff_sec[1]_i_24_n_0 ),
        .I1(\diff_sec[1]_i_25_n_0 ),
        .I2(\diff_sec[1]_i_26_n_0 ),
        .I3(\diff_sec[1]_i_19_n_0 ),
        .I4(\diff_sec[3]_i_12_n_0 ),
        .I5(\diff_sec[1]_i_27_n_0 ),
        .O(\diff_sec[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0FFD0FFFFFFD0)) 
    \diff_sec[1]_i_13 
       (.I0(\diff_sec[1]_i_28_n_0 ),
        .I1(\diff_sec[1]_i_29_n_0 ),
        .I2(\diff_sec[3]_i_5_n_0 ),
        .I3(\diff_sec[1]_i_30_n_0 ),
        .I4(\diff_sec[1]_i_31_n_0 ),
        .I5(\diff_csec[5]_i_13_n_0 ),
        .O(\diff_sec[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \diff_sec[1]_i_14 
       (.I0(\diff_sec[4]_i_14_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_csec[5]_i_44_n_0 ),
        .I3(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h45554444)) 
    \diff_sec[1]_i_15 
       (.I0(\diff_sec[4]_i_16_n_0 ),
        .I1(\diff_sec[1]_i_32_n_0 ),
        .I2(\diff_csec[7]_i_6_n_0 ),
        .I3(\diff_sec[4]_i_41_n_0 ),
        .I4(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_sec[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBFFFFBBBF)) 
    \diff_sec[1]_i_16 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[4]_i_11_n_0 ),
        .I3(\diff_sec[4]_i_23_n_0 ),
        .I4(\diff_sec[1]_i_32_n_0 ),
        .I5(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000007000000)) 
    \diff_sec[1]_i_17 
       (.I0(\diff_sec[1]_i_33_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_sec[4]_i_24_n_0 ),
        .I3(\diff_sec[1]_i_34_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hE0FFFFFF)) 
    \diff_sec[1]_i_18 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[1]_i_35_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .I3(\diff_sec[0]_i_33_n_0 ),
        .I4(\diff_sec[3]_i_7_n_0 ),
        .O(\diff_sec[1]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \diff_sec[1]_i_19 
       (.I0(\diff_sec[5]_i_10_n_0 ),
        .I1(\diff_sec[5]_i_11_n_0 ),
        .I2(\diff_sec[5]_i_12_n_0 ),
        .I3(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[1]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \diff_sec[1]_i_2 
       (.I0(\diff_sec[2]_i_2_n_0 ),
        .I1(\diff_sec[1]_i_5_n_0 ),
        .O(\diff_sec[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[1]_i_20 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_sec[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h4040404000404040)) 
    \diff_sec[1]_i_21 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[3]_i_13_n_0 ),
        .I3(\diff_sec[1]_i_36_n_0 ),
        .I4(\diff_sec[5]_i_3_n_0 ),
        .I5(\diff_sec[3]_i_10_n_0 ),
        .O(\diff_sec[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00005DDD00000000)) 
    \diff_sec[1]_i_22 
       (.I0(\diff_sec[4]_i_9_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .I2(\diff_sec[1]_i_20_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[1]_i_34_n_0 ),
        .I5(\diff_sec[5]_i_3_n_0 ),
        .O(\diff_sec[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF01FFFF)) 
    \diff_sec[1]_i_23 
       (.I0(\diff_sec[1]_i_25_n_0 ),
        .I1(\diff_sec[1]_i_37_n_0 ),
        .I2(\diff_sec[4]_i_16_n_0 ),
        .I3(\diff_sec[5]_i_3_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C111D)) 
    \diff_sec[1]_i_24 
       (.I0(\diff_sec_reg[5]_i_16_n_4 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_sec[1]_i_38_n_0 ),
        .I3(\diff_sec[1]_i_39_n_0 ),
        .I4(\diff_sec_reg[5]_i_16_n_5 ),
        .I5(\diff_sec[5]_i_7_n_0 ),
        .O(\diff_sec[1]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \diff_sec[1]_i_25 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .O(\diff_sec[1]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \diff_sec[1]_i_26 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_sec[1]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \diff_sec[1]_i_27 
       (.I0(\diff_sec[5]_i_10_n_0 ),
        .I1(\diff_sec[5]_i_11_n_0 ),
        .I2(\diff_sec[5]_i_12_n_0 ),
        .I3(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFFDFDFDF)) 
    \diff_sec[1]_i_28 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[3]_i_13_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .I3(\diff_sec[4]_i_41_n_0 ),
        .I4(\diff_csec[7]_i_15_n_0 ),
        .I5(\diff_sec[4]_i_12_n_0 ),
        .O(\diff_sec[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBFFBFBBBB)) 
    \diff_sec[1]_i_29 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[1]_i_40_n_0 ),
        .I3(\diff_csec[7]_i_4_n_0 ),
        .I4(\diff_sec[4]_i_12_n_0 ),
        .I5(\diff_sec[3]_i_13_n_0 ),
        .O(\diff_sec[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \diff_sec[1]_i_3 
       (.I0(\diff_sec[1]_i_6_n_0 ),
        .I1(\diff_sec[1]_i_7_n_0 ),
        .I2(\diff_sec[4]_i_3_n_0 ),
        .I3(\diff_sec[1]_i_8_n_0 ),
        .I4(\diff_sec[2]_i_11_n_0 ),
        .I5(\diff_sec[1]_i_9_n_0 ),
        .O(\diff_sec[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08880808)) 
    \diff_sec[1]_i_30 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[2]_i_17_n_0 ),
        .I2(\diff_sec[4]_i_12_n_0 ),
        .I3(\diff_sec[4]_i_13_n_0 ),
        .I4(\diff_sec[4]_i_38_n_0 ),
        .O(\diff_sec[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h5D555D5D00000000)) 
    \diff_sec[1]_i_31 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[1]_i_34_n_0 ),
        .I2(\diff_sec[4]_i_24_n_0 ),
        .I3(\diff_sec[1]_i_41_n_0 ),
        .I4(\diff_csec[7]_i_4_n_0 ),
        .I5(\diff_sec[5]_i_5_n_0 ),
        .O(\diff_sec[1]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \diff_sec[1]_i_32 
       (.I0(\diff_sec[4]_i_22_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .I2(\diff_sec[3]_i_12_n_0 ),
        .O(\diff_sec[1]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hA2AA)) 
    \diff_sec[1]_i_33 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_sec[1]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \diff_sec[1]_i_34 
       (.I0(\diff_sec[4]_i_22_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .O(\diff_sec[1]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hBBFBAAAA)) 
    \diff_sec[1]_i_35 
       (.I0(\diff_sec[4]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_13_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[1]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hAAAAFFAE)) 
    \diff_sec[1]_i_36 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_12_n_0 ),
        .I4(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_sec[1]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    \diff_sec[1]_i_37 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_sec[1]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hAEFF)) 
    \diff_sec[1]_i_38 
       (.I0(\diff_sec[5]_i_23_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_24_n_0 ),
        .I3(\diff_sec[5]_i_25_n_0 ),
        .O(\diff_sec[1]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \diff_sec[1]_i_39 
       (.I0(\diff_sec[5]_i_20_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_21_n_0 ),
        .I3(\diff_sec[5]_i_22_n_0 ),
        .O(\diff_sec[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \diff_sec[1]_i_4 
       (.I0(\diff_sec[1]_i_10_n_0 ),
        .I1(\diff_sec[3]_i_6_n_0 ),
        .I2(\diff_sec[1]_i_11_n_0 ),
        .I3(\diff_sec[1]_i_12_n_0 ),
        .I4(\diff_csec[6]_i_5_n_0 ),
        .I5(\diff_sec[1]_i_13_n_0 ),
        .O(\diff_sec[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h55555155)) 
    \diff_sec[1]_i_40 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .I4(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_sec[1]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h4500FFFF)) 
    \diff_sec[1]_i_41 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[1]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h5455)) 
    \diff_sec[1]_i_5 
       (.I0(\diff_csec[7]_i_3_n_0 ),
        .I1(\diff_sec[4]_i_8_n_0 ),
        .I2(\diff_csec[7]_i_7_n_0 ),
        .I3(\diff_sec[1]_i_14_n_0 ),
        .O(\diff_sec[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h001000F0)) 
    \diff_sec[1]_i_6 
       (.I0(\diff_sec[1]_i_15_n_0 ),
        .I1(\diff_sec[1]_i_16_n_0 ),
        .I2(\diff_csec[4]_i_7_n_0 ),
        .I3(\diff_sec[2]_i_10_n_0 ),
        .I4(\diff_sec[3]_i_8_n_0 ),
        .O(\diff_sec[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAAAA)) 
    \diff_sec[1]_i_7 
       (.I0(\diff_sec[0]_i_12_n_0 ),
        .I1(\diff_sec[2]_i_9_n_0 ),
        .I2(\diff_sec[1]_i_17_n_0 ),
        .I3(\diff_sec[1]_i_18_n_0 ),
        .I4(\diff_sec[3]_i_7_n_0 ),
        .O(\diff_sec[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1000101011111111)) 
    \diff_sec[1]_i_8 
       (.I0(\diff_sec[1]_i_19_n_0 ),
        .I1(\diff_sec[4]_i_17_n_0 ),
        .I2(\diff_sec[4]_i_9_n_0 ),
        .I3(\diff_sec[4]_i_41_n_0 ),
        .I4(\diff_sec[3]_i_11_n_0 ),
        .I5(\diff_sec[4]_i_7_n_0 ),
        .O(\diff_sec[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0400000004040404)) 
    \diff_sec[1]_i_9 
       (.I0(\diff_sec[4]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .I2(\diff_sec[4]_i_17_n_0 ),
        .I3(\diff_sec[3]_i_14_n_0 ),
        .I4(\diff_sec[1]_i_20_n_0 ),
        .I5(\diff_csec[7]_i_7_n_0 ),
        .O(\diff_sec[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888888888A8A888A)) 
    \diff_sec[2]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[2]_i_2_n_0 ),
        .I2(\diff_sec[2]_i_3_n_0 ),
        .I3(\diff_sec[4]_i_4_n_0 ),
        .I4(\diff_sec[2]_i_4_n_0 ),
        .I5(\diff_sec[4]_i_2_n_0 ),
        .O(\diff_sec[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004040404040404)) 
    \diff_sec[2]_i_10 
       (.I0(\diff_sec[4]_i_15_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .I2(\diff_sec[4]_i_17_n_0 ),
        .I3(\diff_csec[7]_i_4_n_0 ),
        .I4(\diff_sec[2]_i_19_n_0 ),
        .I5(\diff_csec[7]_i_7_n_0 ),
        .O(\diff_sec[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \diff_sec[2]_i_11 
       (.I0(\diff_sec[4]_i_7_n_0 ),
        .I1(\diff_sec[2]_i_20_n_0 ),
        .I2(\diff_sec[4]_i_17_n_0 ),
        .I3(\diff_sec[4]_i_16_n_0 ),
        .I4(\diff_sec[4]_i_15_n_0 ),
        .O(\diff_sec[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sec[2]_i_12 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_sec[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \diff_sec[2]_i_13 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .O(\diff_sec[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[2]_i_14 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_sec[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5DFF555500000000)) 
    \diff_sec[2]_i_15 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[4]_i_38_n_0 ),
        .I2(\diff_sec[4]_i_13_n_0 ),
        .I3(\diff_sec[4]_i_12_n_0 ),
        .I4(\diff_sec[2]_i_17_n_0 ),
        .I5(\diff_sec[5]_i_5_n_0 ),
        .O(\diff_sec[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \diff_sec[2]_i_16 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .I2(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \diff_sec[2]_i_17 
       (.I0(\diff_sec[4]_i_16_n_0 ),
        .I1(\diff_sec[4]_i_22_n_0 ),
        .I2(\diff_sec[3]_i_12_n_0 ),
        .O(\diff_sec[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFF75FFFF)) 
    \diff_sec[2]_i_18 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sec[2]_i_19 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_sec[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_sec[2]_i_2 
       (.I0(\diff_sec[4]_i_2_n_0 ),
        .I1(\diff_sec[2]_i_5_n_0 ),
        .O(\diff_sec[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h88880080)) 
    \diff_sec[2]_i_20 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .I2(\diff_csec[7]_i_12_n_0 ),
        .I3(\diff_csec[7]_i_15_n_0 ),
        .I4(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[2]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h000000D5)) 
    \diff_sec[2]_i_3 
       (.I0(\diff_sec[2]_i_6_n_0 ),
        .I1(\diff_sec[4]_i_5_n_0 ),
        .I2(\diff_sec[2]_i_7_n_0 ),
        .I3(\diff_sec[2]_i_8_n_0 ),
        .I4(\diff_sec[4]_i_4_n_0 ),
        .O(\diff_sec[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \diff_sec[2]_i_4 
       (.I0(\diff_sec[2]_i_9_n_0 ),
        .I1(\diff_sec[3]_i_7_n_0 ),
        .I2(\diff_sec[3]_i_8_n_0 ),
        .I3(\diff_sec[2]_i_10_n_0 ),
        .I4(\diff_sec[4]_i_3_n_0 ),
        .I5(\diff_sec[2]_i_11_n_0 ),
        .O(\diff_sec[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h44440444)) 
    \diff_sec[2]_i_5 
       (.I0(\diff_sec[4]_i_8_n_0 ),
        .I1(\diff_sec[4]_i_14_n_0 ),
        .I2(\diff_sec[3]_i_12_n_0 ),
        .I3(\diff_sec[3]_i_11_n_0 ),
        .I4(\diff_sec[3]_i_10_n_0 ),
        .O(\diff_sec[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400000444)) 
    \diff_sec[2]_i_6 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[3]_i_11_n_0 ),
        .I3(\diff_sec[2]_i_12_n_0 ),
        .I4(\diff_sec[2]_i_13_n_0 ),
        .I5(\diff_sec[3]_i_13_n_0 ),
        .O(\diff_sec[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hA88AA8A8)) 
    \diff_sec[2]_i_7 
       (.I0(\diff_sec[2]_i_6_n_0 ),
        .I1(\diff_sec[3]_i_13_n_0 ),
        .I2(\diff_csec[7]_i_4_n_0 ),
        .I3(\diff_sec[4]_i_10_n_0 ),
        .I4(\diff_sec[2]_i_14_n_0 ),
        .O(\diff_sec[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h75FF75FFFFFF00FF)) 
    \diff_sec[2]_i_8 
       (.I0(\diff_sec[2]_i_15_n_0 ),
        .I1(\diff_sec[2]_i_6_n_0 ),
        .I2(\diff_sec[3]_i_5_n_0 ),
        .I3(\diff_sec[1]_i_11_n_0 ),
        .I4(\diff_sec[4]_i_6_n_0 ),
        .I5(\diff_sec[0]_i_9_n_0 ),
        .O(\diff_sec[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3000200030000000)) 
    \diff_sec[2]_i_9 
       (.I0(\diff_sec[2]_i_16_n_0 ),
        .I1(\diff_sec[5]_i_6_n_0 ),
        .I2(\diff_sec[5]_i_5_n_0 ),
        .I3(\diff_sec[2]_i_17_n_0 ),
        .I4(\diff_sec[3]_i_10_n_0 ),
        .I5(\diff_sec[2]_i_18_n_0 ),
        .O(\diff_sec[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA002A)) 
    \diff_sec[3]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[3]_i_2_n_0 ),
        .I2(\diff_sec[4]_i_5_n_0 ),
        .I3(\diff_sec[3]_i_3_n_0 ),
        .I4(\diff_sec[3]_i_4_n_0 ),
        .O(\diff_sec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \diff_sec[3]_i_10 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .O(\diff_sec[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[3]_i_11 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .O(\diff_sec[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFFFFFAEFF0000)) 
    \diff_sec[3]_i_12 
       (.I0(\diff_sec[3]_i_16_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[3]_i_17_n_0 ),
        .I3(\diff_sec[3]_i_18_n_0 ),
        .I4(\diff_min[0]_i_2_n_0 ),
        .I5(\diff_sec_reg[4]_i_28_n_5 ),
        .O(\diff_sec[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \diff_sec[3]_i_13 
       (.I0(\diff_sec[4]_i_16_n_0 ),
        .I1(\diff_sec[4]_i_22_n_0 ),
        .I2(\diff_sec[3]_i_12_n_0 ),
        .O(\diff_sec[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \diff_sec[3]_i_14 
       (.I0(\diff_sec[4]_i_10_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .I2(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_sec[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \diff_sec[3]_i_15 
       (.I0(\diff_sec[4]_i_22_n_0 ),
        .I1(\diff_sec[3]_i_12_n_0 ),
        .I2(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5505454555004040)) 
    \diff_sec[3]_i_16 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data8[10]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(data9[10]),
        .I4(\diff_min[0]_i_5_n_0 ),
        .I5(data7[10]),
        .O(\diff_sec[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[3]_i_17 
       (.I0(data4[10]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[10]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[10]),
        .O(\diff_sec[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h35350535F5F5C5F5)) 
    \diff_sec[3]_i_18 
       (.I0(data1[10]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[10]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[10]),
        .O(\diff_sec[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0051)) 
    \diff_sec[3]_i_2 
       (.I0(\diff_sec[4]_i_4_n_0 ),
        .I1(\diff_sec[4]_i_6_n_0 ),
        .I2(\diff_sec[3]_i_5_n_0 ),
        .I3(\diff_sec[3]_i_6_n_0 ),
        .O(\diff_sec[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \diff_sec[3]_i_3 
       (.I0(\diff_sec[4]_i_2_n_0 ),
        .I1(\diff_sec[4]_i_3_n_0 ),
        .I2(\diff_sec[3]_i_7_n_0 ),
        .I3(\diff_sec[3]_i_8_n_0 ),
        .O(\diff_sec[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2000AAAA)) 
    \diff_sec[3]_i_4 
       (.I0(\diff_sec[3]_i_9_n_0 ),
        .I1(\diff_sec[3]_i_10_n_0 ),
        .I2(\diff_sec[3]_i_11_n_0 ),
        .I3(\diff_sec[3]_i_12_n_0 ),
        .I4(\diff_sec[4]_i_14_n_0 ),
        .I5(\diff_sec[4]_i_8_n_0 ),
        .O(\diff_sec[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    \diff_sec[3]_i_5 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_csec[7]_i_6_n_0 ),
        .I3(\diff_sec[3]_i_13_n_0 ),
        .I4(\diff_sec[3]_i_10_n_0 ),
        .O(\diff_sec[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[3]_i_6 
       (.I0(\diff_sec[4]_i_6_n_0 ),
        .I1(\diff_sec[0]_i_9_n_0 ),
        .O(\diff_sec[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000040004)) 
    \diff_sec[3]_i_7 
       (.I0(\diff_sec[4]_i_17_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .I2(\diff_sec[4]_i_15_n_0 ),
        .I3(\diff_sec[3]_i_12_n_0 ),
        .I4(\diff_sec[3]_i_14_n_0 ),
        .I5(\diff_sec[4]_i_21_n_0 ),
        .O(\diff_sec[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004040444)) 
    \diff_sec[3]_i_8 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_5_n_0 ),
        .I2(\diff_sec[4]_i_40_n_0 ),
        .I3(\diff_sec[3]_i_11_n_0 ),
        .I4(\diff_csec[7]_i_4_n_0 ),
        .I5(\diff_sec[3]_i_15_n_0 ),
        .O(\diff_sec[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \diff_sec[3]_i_9 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAAAAAAAAAA)) 
    \diff_sec[4]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[4]_i_2_n_0 ),
        .I2(\diff_sec[4]_i_3_n_0 ),
        .I3(\diff_sec[4]_i_4_n_0 ),
        .I4(\diff_sec[4]_i_5_n_0 ),
        .I5(\diff_sec[4]_i_6_n_0 ),
        .O(\diff_sec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE2EEE2EEEEEEE2)) 
    \diff_sec[4]_i_10 
       (.I0(\diff_csec_reg[7]_i_8_n_5 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_sec[4]_i_25_n_0 ),
        .I3(\diff_sec[4]_i_26_n_0 ),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(\diff_sec[4]_i_27_n_0 ),
        .O(\diff_sec[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_100 
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .O(\diff_sec[4]_i_100_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \diff_sec[4]_i_101 
       (.I0(total_prev__0[7]),
        .I1(CO),
        .I2(total_tmp__0[7]),
        .O(\diff_sec[4]_i_101_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_sec[4]_i_102 
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[11]),
        .I3(CO),
        .I4(total_prev__0[11]),
        .O(\diff_sec[4]_i_102_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[4]_i_103 
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[10]),
        .I3(CO),
        .I4(total_prev__0[10]),
        .O(\diff_sec[4]_i_103_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[4]_i_104 
       (.I0(total_prev__0[9]),
        .I1(CO),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[8]),
        .I4(total_tmp__0[8]),
        .O(\diff_sec[4]_i_104_n_0 ));
  LUT5 #(
    .INIT(32'hBD4242BD)) 
    \diff_sec[4]_i_105 
       (.I0(total_prev__0[7]),
        .I1(CO),
        .I2(total_tmp__0[7]),
        .I3(total_prev__0[8]),
        .I4(total_tmp__0[8]),
        .O(\diff_sec[4]_i_105_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_106 
       (.I0(CO),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[10]),
        .O(\diff_sec[4]_i_106_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_107 
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .O(\diff_sec[4]_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[4]_i_108 
       (.I0(CO),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[8]),
        .O(\diff_sec[4]_i_108_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \diff_sec[4]_i_109 
       (.I0(total_prev__0[7]),
        .I1(CO),
        .I2(total_tmp__0[7]),
        .O(\diff_sec[4]_i_109_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \diff_sec[4]_i_11 
       (.I0(\diff_csec[7]_i_12_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .I2(\diff_csec[7]_i_14_n_0 ),
        .I3(\diff_csec[7]_i_13_n_0 ),
        .O(\diff_sec[4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[4]_i_110 
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[11]),
        .I3(CO),
        .I4(total_prev__0[11]),
        .O(\diff_sec[4]_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[4]_i_111 
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[9]),
        .I4(CO),
        .O(\diff_sec[4]_i_111_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_sec[4]_i_112 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[9]),
        .I3(CO),
        .I4(total_prev__0[9]),
        .O(\diff_sec[4]_i_112_n_0 ));
  LUT5 #(
    .INIT(32'h3C5AC3A5)) 
    \diff_sec[4]_i_113 
       (.I0(total_prev__0[7]),
        .I1(total_tmp__0[7]),
        .I2(total_tmp__0[8]),
        .I3(CO),
        .I4(total_prev__0[8]),
        .O(\diff_sec[4]_i_113_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[4]_i_114 
       (.I0(CO),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[10]),
        .O(\diff_sec[4]_i_114_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_115 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .O(\diff_sec[4]_i_115_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_116 
       (.I0(CO),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[8]),
        .O(\diff_sec[4]_i_116_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_117 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .O(\diff_sec[4]_i_117_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_sec[4]_i_118 
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[11]),
        .I3(CO),
        .I4(total_prev__0[11]),
        .O(\diff_sec[4]_i_118_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[4]_i_119 
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[10]),
        .I3(CO),
        .I4(total_prev__0[10]),
        .O(\diff_sec[4]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2EEE2EEEEEEEE)) 
    \diff_sec[4]_i_12 
       (.I0(\diff_sec_reg[4]_i_28_n_7 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_sec[4]_i_29_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(\diff_sec[4]_i_30_n_0 ),
        .I5(\diff_sec[4]_i_31_n_0 ),
        .O(\diff_sec[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[4]_i_120 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[9]),
        .I3(CO),
        .I4(total_prev__0[9]),
        .O(\diff_sec[4]_i_120_n_0 ));
  LUT5 #(
    .INIT(32'h66699666)) 
    \diff_sec[4]_i_121 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[7]),
        .I3(CO),
        .I4(total_prev__0[7]),
        .O(\diff_sec[4]_i_121_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_122 
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .O(\diff_sec[4]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_123 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .O(\diff_sec[4]_i_123_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_124 
       (.I0(CO),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[8]),
        .O(\diff_sec[4]_i_124_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_sec[4]_i_125 
       (.I0(total_tmp__0[7]),
        .I1(CO),
        .I2(total_prev__0[7]),
        .O(\diff_sec[4]_i_125_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[4]_i_126 
       (.I0(total_prev__0[11]),
        .I1(CO),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[10]),
        .I4(total_tmp__0[10]),
        .O(\diff_sec[4]_i_126_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[4]_i_127 
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[10]),
        .I3(CO),
        .I4(total_prev__0[10]),
        .O(\diff_sec[4]_i_127_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[4]_i_128 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[9]),
        .I3(CO),
        .I4(total_prev__0[9]),
        .O(\diff_sec[4]_i_128_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_sec[4]_i_129 
       (.I0(total_prev__0[7]),
        .I1(total_tmp__0[7]),
        .I2(total_tmp__0[8]),
        .I3(CO),
        .I4(total_prev__0[8]),
        .O(\diff_sec[4]_i_129_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \diff_sec[4]_i_13 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \diff_sec[4]_i_14 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_22_n_0 ),
        .O(\diff_sec[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \diff_sec[4]_i_15 
       (.I0(\diff_sec[4]_i_32_n_0 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_sec_reg[4]_i_33_n_7 ),
        .I3(\diff_sec[4]_i_34_n_0 ),
        .I4(\diff_sec_reg[4]_i_33_n_6 ),
        .I5(\diff_sec[5]_i_10_n_0 ),
        .O(\diff_sec[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D111D11111111)) 
    \diff_sec[4]_i_16 
       (.I0(\diff_sec_reg[4]_i_28_n_4 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_sec[4]_i_35_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(\diff_sec[4]_i_36_n_0 ),
        .I5(\diff_sec[4]_i_37_n_0 ),
        .O(\diff_sec[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \diff_sec[4]_i_17 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[5]_i_7_n_0 ),
        .I2(\diff_sec[5]_i_8_n_0 ),
        .I3(\diff_sec[5]_i_9_n_0 ),
        .O(\diff_sec[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111101)) 
    \diff_sec[4]_i_18 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_21_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .I3(\diff_sec[4]_i_23_n_0 ),
        .I4(\diff_sec[4]_i_38_n_0 ),
        .I5(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF40FFFF)) 
    \diff_sec[4]_i_19 
       (.I0(\diff_sec[4]_i_39_n_0 ),
        .I1(\diff_sec[4]_i_40_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .I3(\diff_sec[5]_i_3_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CECEEECE)) 
    \diff_sec[4]_i_2 
       (.I0(\diff_sec[4]_i_7_n_0 ),
        .I1(\diff_sec[4]_i_8_n_0 ),
        .I2(\diff_sec[4]_i_9_n_0 ),
        .I3(\diff_sec[4]_i_10_n_0 ),
        .I4(\diff_sec[4]_i_11_n_0 ),
        .I5(\diff_csec[7]_i_3_n_0 ),
        .O(\diff_sec[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \diff_sec[4]_i_20 
       (.I0(\diff_sec[5]_i_3_n_0 ),
        .I1(\diff_csec[7]_i_14_n_0 ),
        .I2(\diff_sec[4]_i_41_n_0 ),
        .I3(\diff_csec[7]_i_6_n_0 ),
        .O(\diff_sec[4]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \diff_sec[4]_i_21 
       (.I0(\diff_sec[4]_i_22_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .O(\diff_sec[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2EEE2EEEEEEEE)) 
    \diff_sec[4]_i_22 
       (.I0(\diff_sec_reg[4]_i_28_n_6 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_sec[4]_i_42_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(\diff_sec[4]_i_43_n_0 ),
        .I5(\diff_sec[4]_i_44_n_0 ),
        .O(\diff_sec[4]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \diff_sec[4]_i_23 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[4]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_sec[4]_i_24 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFACA0A0A3A0A)) 
    \diff_sec[4]_i_25 
       (.I0(data1[6]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[6]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[6]),
        .O(\diff_sec[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404045404)) 
    \diff_sec[4]_i_26 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[6]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(data8[6]),
        .I4(\diff_min[0]_i_5_n_0 ),
        .I5(data9[6]),
        .O(\diff_sec[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[4]_i_27 
       (.I0(data4[6]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[6]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[6]),
        .O(\diff_sec[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404045404)) 
    \diff_sec[4]_i_29 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[8]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(data8[8]),
        .I4(\diff_min[0]_i_5_n_0 ),
        .I5(data9[8]),
        .O(\diff_sec[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F10000)) 
    \diff_sec[4]_i_3 
       (.I0(\diff_sec[4]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_13_n_0 ),
        .I2(\diff_sec[4]_i_14_n_0 ),
        .I3(\diff_sec[4]_i_15_n_0 ),
        .I4(\diff_sec[4]_i_16_n_0 ),
        .I5(\diff_sec[4]_i_17_n_0 ),
        .O(\diff_sec[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[4]_i_30 
       (.I0(data4[8]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[8]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[8]),
        .O(\diff_sec[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h35350535F5F5C5F5)) 
    \diff_sec[4]_i_31 
       (.I0(data1[8]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[8]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[8]),
        .O(\diff_sec[4]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \diff_sec[4]_i_32 
       (.I0(\diff_sec[5]_i_32_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_33_n_0 ),
        .I3(\diff_sec[5]_i_34_n_0 ),
        .O(\diff_sec[4]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \diff_sec[4]_i_34 
       (.I0(\diff_sec[5]_i_29_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_30_n_0 ),
        .I3(\diff_sec[5]_i_31_n_0 ),
        .O(\diff_sec[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404045404)) 
    \diff_sec[4]_i_35 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[11]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(data8[11]),
        .I4(\diff_min[0]_i_5_n_0 ),
        .I5(data9[11]),
        .O(\diff_sec[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[4]_i_36 
       (.I0(data4[11]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[11]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[11]),
        .O(\diff_sec[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h35350535F5F5C5F5)) 
    \diff_sec[4]_i_37 
       (.I0(data1[11]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[11]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[11]),
        .O(\diff_sec[4]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_sec[4]_i_38 
       (.I0(\diff_csec[7]_i_15_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_sec[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0040444455555555)) 
    \diff_sec[4]_i_39 
       (.I0(\diff_csec[7]_i_4_n_0 ),
        .I1(\diff_csec[7]_i_15_n_0 ),
        .I2(\diff_csec[7]_i_13_n_0 ),
        .I3(\diff_csec[7]_i_14_n_0 ),
        .I4(\diff_csec[7]_i_12_n_0 ),
        .I5(\diff_sec[4]_i_10_n_0 ),
        .O(\diff_sec[4]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[4]_i_4 
       (.I0(\diff_sec[4]_i_18_n_0 ),
        .I1(\diff_sec[4]_i_19_n_0 ),
        .O(\diff_sec[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[4]_i_40 
       (.I0(\diff_sec[4]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[4]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_sec[4]_i_41 
       (.I0(\diff_csec[7]_i_13_n_0 ),
        .I1(\diff_csec[7]_i_12_n_0 ),
        .O(\diff_sec[4]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h5505454555004040)) 
    \diff_sec[4]_i_42 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data8[9]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(data9[9]),
        .I4(\diff_min[0]_i_5_n_0 ),
        .I5(data7[9]),
        .O(\diff_sec[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[4]_i_43 
       (.I0(data4[9]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[9]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[9]),
        .O(\diff_sec[4]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h35350535F5F5C5F5)) 
    \diff_sec[4]_i_44 
       (.I0(data1[9]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[9]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[9]),
        .O(\diff_sec[4]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_45 
       (.I0(CO),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[10]),
        .O(\diff_sec[4]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_46 
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .O(\diff_sec[4]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_47 
       (.I0(CO),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[8]),
        .O(\diff_sec[4]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_48 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .O(\diff_sec[4]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hA59669A5)) 
    \diff_sec[4]_i_49 
       (.I0(total_prev__0[11]),
        .I1(CO),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[10]),
        .I4(total_tmp__0[10]),
        .O(\diff_sec[4]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'h3B)) 
    \diff_sec[4]_i_5 
       (.I0(\diff_sec[4]_i_4_n_0 ),
        .I1(\diff_sec[5]_i_2_n_0 ),
        .I2(\diff_sec[4]_i_20_n_0 ),
        .O(\diff_sec[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[4]_i_50 
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[9]),
        .I4(CO),
        .O(\diff_sec[4]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h5A69965A)) 
    \diff_sec[4]_i_51 
       (.I0(total_prev__0[9]),
        .I1(CO),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[8]),
        .I4(total_tmp__0[8]),
        .O(\diff_sec[4]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h66699666)) 
    \diff_sec[4]_i_52 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[7]),
        .I3(CO),
        .I4(total_prev__0[7]),
        .O(\diff_sec[4]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h5555000077570000)) 
    \diff_sec[4]_i_6 
       (.I0(\diff_sec[5]_i_6_n_0 ),
        .I1(\diff_sec[4]_i_21_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .I3(\diff_sec[4]_i_23_n_0 ),
        .I4(\diff_sec[5]_i_5_n_0 ),
        .I5(\diff_sec[4]_i_24_n_0 ),
        .O(\diff_sec[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_61 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[4]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_62 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .O(\diff_sec[4]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[4]_i_63 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[4]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[4]_i_64 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[4]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[4]_i_65 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[15]),
        .I4(CO),
        .O(\diff_sec[4]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[4]_i_66 
       (.I0(CO),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[10]),
        .O(\diff_sec[4]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[4]_i_67 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .O(\diff_sec[4]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_68 
       (.I0(CO),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[8]),
        .O(\diff_sec[4]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_69 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .O(\diff_sec[4]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \diff_sec[4]_i_7 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .I2(\diff_sec[4]_i_22_n_0 ),
        .O(\diff_sec[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_sec[4]_i_70 
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[11]),
        .I3(CO),
        .I4(total_prev__0[11]),
        .O(\diff_sec[4]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hDB2424DB)) 
    \diff_sec[4]_i_71 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[10]),
        .I4(total_tmp__0[10]),
        .O(\diff_sec[4]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h5A69965A)) 
    \diff_sec[4]_i_72 
       (.I0(total_prev__0[9]),
        .I1(CO),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[8]),
        .I4(total_tmp__0[8]),
        .O(\diff_sec[4]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h66699666)) 
    \diff_sec[4]_i_73 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[7]),
        .I3(CO),
        .I4(total_prev__0[7]),
        .O(\diff_sec[4]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_74 
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .O(\diff_sec[4]_i_74_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[4]_i_75 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .O(\diff_sec[4]_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[4]_i_76 
       (.I0(CO),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[8]),
        .O(\diff_sec[4]_i_76_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_sec[4]_i_77 
       (.I0(total_tmp__0[7]),
        .I1(CO),
        .I2(total_prev__0[7]),
        .O(\diff_sec[4]_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[4]_i_78 
       (.I0(total_prev__0[11]),
        .I1(CO),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[10]),
        .I4(total_tmp__0[10]),
        .O(\diff_sec[4]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'hDB2424DB)) 
    \diff_sec[4]_i_79 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[10]),
        .I4(total_tmp__0[10]),
        .O(\diff_sec[4]_i_79_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \diff_sec[4]_i_8 
       (.I0(\diff_sec[5]_i_5_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_sec[4]_i_80 
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[9]),
        .I3(CO),
        .I4(total_prev__0[9]),
        .O(\diff_sec[4]_i_80_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[4]_i_81 
       (.I0(total_prev__0[8]),
        .I1(CO),
        .I2(total_tmp__0[8]),
        .I3(total_tmp__0[7]),
        .I4(total_prev__0[7]),
        .O(\diff_sec[4]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_82 
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .O(\diff_sec[4]_i_82_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_83 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .O(\diff_sec[4]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_84 
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .O(\diff_sec[4]_i_84_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_sec[4]_i_85 
       (.I0(total_tmp__0[7]),
        .I1(CO),
        .I2(total_prev__0[7]),
        .O(\diff_sec[4]_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[4]_i_86 
       (.I0(total_prev__0[11]),
        .I1(CO),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[10]),
        .I4(total_tmp__0[10]),
        .O(\diff_sec[4]_i_86_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[4]_i_87 
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[10]),
        .I3(CO),
        .I4(total_prev__0[10]),
        .O(\diff_sec[4]_i_87_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[4]_i_88 
       (.I0(total_prev__0[9]),
        .I1(CO),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[8]),
        .I4(total_tmp__0[8]),
        .O(\diff_sec[4]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[4]_i_89 
       (.I0(total_prev__0[8]),
        .I1(CO),
        .I2(total_tmp__0[8]),
        .I3(total_tmp__0[7]),
        .I4(total_prev__0[7]),
        .O(\diff_sec[4]_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \diff_sec[4]_i_9 
       (.I0(\diff_sec[4]_i_22_n_0 ),
        .I1(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_sec[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[4]_i_90 
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .O(\diff_sec[4]_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[4]_i_91 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .O(\diff_sec[4]_i_91_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_92 
       (.I0(CO),
        .I1(total_prev__0[8]),
        .I2(total_tmp__0[8]),
        .O(\diff_sec[4]_i_92_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \diff_sec[4]_i_93 
       (.I0(total_tmp__0[7]),
        .I1(CO),
        .I2(total_prev__0[7]),
        .O(\diff_sec[4]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[4]_i_94 
       (.I0(total_prev__0[11]),
        .I1(CO),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[10]),
        .I4(total_tmp__0[10]),
        .O(\diff_sec[4]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'hDB2424DB)) 
    \diff_sec[4]_i_95 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[10]),
        .I4(total_tmp__0[10]),
        .O(\diff_sec[4]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'h5A69965A)) 
    \diff_sec[4]_i_96 
       (.I0(total_prev__0[9]),
        .I1(CO),
        .I2(total_tmp__0[9]),
        .I3(total_prev__0[8]),
        .I4(total_tmp__0[8]),
        .O(\diff_sec[4]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_sec[4]_i_97 
       (.I0(total_prev__0[7]),
        .I1(total_tmp__0[7]),
        .I2(total_tmp__0[8]),
        .I3(CO),
        .I4(total_prev__0[8]),
        .O(\diff_sec[4]_i_97_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[4]_i_98 
       (.I0(CO),
        .I1(total_prev__0[10]),
        .I2(total_tmp__0[10]),
        .O(\diff_sec[4]_i_98_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[4]_i_99 
       (.I0(CO),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[9]),
        .O(\diff_sec[4]_i_99_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[5]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[5]_i_2_n_0 ),
        .O(\diff_sec[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D111D11111111)) 
    \diff_sec[5]_i_10 
       (.I0(\diff_sec_reg[4]_i_33_n_5 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_sec[5]_i_26_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(\diff_sec[5]_i_27_n_0 ),
        .I5(\diff_sec[5]_i_28_n_0 ),
        .O(\diff_sec[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_100 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .O(\diff_sec[5]_i_100_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[5]_i_101 
       (.I0(CO),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[12]),
        .O(\diff_sec[5]_i_101_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[5]_i_102 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .O(\diff_sec[5]_i_102_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_103 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[15]),
        .I3(CO),
        .I4(total_prev__0[15]),
        .O(\diff_sec[5]_i_103_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_104 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[13]),
        .I3(total_prev__0[13]),
        .I4(CO),
        .O(\diff_sec[5]_i_104_n_0 ));
  LUT5 #(
    .INIT(32'hDB2424DB)) 
    \diff_sec[5]_i_105 
       (.I0(CO),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[13]),
        .I4(total_tmp__0[13]),
        .O(\diff_sec[5]_i_105_n_0 ));
  LUT5 #(
    .INIT(32'hDB2424DB)) 
    \diff_sec[5]_i_106 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[12]),
        .I4(total_tmp__0[12]),
        .O(\diff_sec[5]_i_106_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_107 
       (.I0(CO),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[14]),
        .O(\diff_sec[5]_i_107_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_108 
       (.I0(CO),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[13]),
        .O(\diff_sec[5]_i_108_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_109 
       (.I0(CO),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[12]),
        .O(\diff_sec[5]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAE0000)) 
    \diff_sec[5]_i_11 
       (.I0(\diff_sec[5]_i_29_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_30_n_0 ),
        .I3(\diff_sec[5]_i_31_n_0 ),
        .I4(\diff_min[0]_i_2_n_0 ),
        .I5(\diff_sec_reg[4]_i_33_n_6 ),
        .O(\diff_sec[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_110 
       (.I0(total_tmp__0[12]),
        .I1(total_prev__0[12]),
        .O(\diff_sec[5]_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_111 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[15]),
        .I3(CO),
        .I4(total_prev__0[15]),
        .O(\diff_sec[5]_i_111_n_0 ));
  LUT5 #(
    .INIT(32'hA59669A5)) 
    \diff_sec[5]_i_112 
       (.I0(total_prev__0[14]),
        .I1(CO),
        .I2(total_tmp__0[14]),
        .I3(total_prev__0[13]),
        .I4(total_tmp__0[13]),
        .O(\diff_sec[5]_i_112_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_113 
       (.I0(total_tmp__0[12]),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[13]),
        .I3(CO),
        .I4(total_prev__0[13]),
        .O(\diff_sec[5]_i_113_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_114 
       (.I0(total_tmp__0[12]),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[11]),
        .I4(CO),
        .O(\diff_sec[5]_i_114_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_115 
       (.I0(CO),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[14]),
        .O(\diff_sec[5]_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_116 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .O(\diff_sec[5]_i_116_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_117 
       (.I0(CO),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[12]),
        .O(\diff_sec[5]_i_117_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_118 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .O(\diff_sec[5]_i_118_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_119 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[15]),
        .I3(CO),
        .I4(total_prev__0[15]),
        .O(\diff_sec[5]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAE0000)) 
    \diff_sec[5]_i_12 
       (.I0(\diff_sec[5]_i_32_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_33_n_0 ),
        .I3(\diff_sec[5]_i_34_n_0 ),
        .I4(\diff_min[0]_i_2_n_0 ),
        .I5(\diff_sec_reg[4]_i_33_n_7 ),
        .O(\diff_sec[5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_120 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[13]),
        .I3(total_prev__0[13]),
        .I4(CO),
        .O(\diff_sec[5]_i_120_n_0 ));
  LUT5 #(
    .INIT(32'h5A69965A)) 
    \diff_sec[5]_i_121 
       (.I0(total_prev__0[13]),
        .I1(CO),
        .I2(total_tmp__0[13]),
        .I3(total_prev__0[12]),
        .I4(total_tmp__0[12]),
        .O(\diff_sec[5]_i_121_n_0 ));
  LUT5 #(
    .INIT(32'hA59669A5)) 
    \diff_sec[5]_i_122 
       (.I0(total_prev__0[12]),
        .I1(CO),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[11]),
        .I4(total_tmp__0[11]),
        .O(\diff_sec[5]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_123 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[5]_i_123_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_124 
       (.I0(CO),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[15]),
        .O(\diff_sec[5]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[5]_i_125 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_125_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_126 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_126_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_127 
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[16]),
        .I3(CO),
        .I4(total_prev__0[16]),
        .O(\diff_sec[5]_i_127_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_128 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[5]_i_128_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_129 
       (.I0(CO),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[15]),
        .O(\diff_sec[5]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h5404540454040404)) 
    \diff_sec[5]_i_13 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[12]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(\diff_min[1]_i_7_n_0 ),
        .I4(data8[12]),
        .I5(\diff_min[0]_i_5_n_0 ),
        .O(\diff_sec[5]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[5]_i_130 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_130_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_131 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_131_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_132 
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[16]),
        .I3(CO),
        .I4(total_prev__0[16]),
        .O(\diff_sec[5]_i_132_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_133 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[5]_i_133_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_134 
       (.I0(CO),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[15]),
        .O(\diff_sec[5]_i_134_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[5]_i_135 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_135_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_136 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_136_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_137 
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[16]),
        .I3(CO),
        .I4(total_prev__0[16]),
        .O(\diff_sec[5]_i_137_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_138 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[5]_i_138_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_139 
       (.I0(CO),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[15]),
        .O(\diff_sec[5]_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[5]_i_14 
       (.I0(data4[12]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[12]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[12]),
        .O(\diff_sec[5]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[5]_i_140 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_140_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_141 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_141_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_142 
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[16]),
        .I3(CO),
        .I4(total_prev__0[16]),
        .O(\diff_sec[5]_i_142_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_143 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[5]_i_143_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_144 
       (.I0(CO),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[15]),
        .O(\diff_sec[5]_i_144_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[5]_i_145 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_145_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_146 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_146_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_147 
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[16]),
        .I3(CO),
        .I4(total_prev__0[16]),
        .O(\diff_sec[5]_i_147_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_148 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[5]_i_148_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_149 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .O(\diff_sec[5]_i_149_n_0 ));
  LUT6 #(
    .INIT(64'h35350535F5F5C5F5)) 
    \diff_sec[5]_i_15 
       (.I0(data1[12]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[12]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[12]),
        .O(\diff_sec[5]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[5]_i_150 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_150_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_151 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_151_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_152 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[15]),
        .I4(CO),
        .O(\diff_sec[5]_i_152_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_153 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[5]_i_153_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_154 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .O(\diff_sec[5]_i_154_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[5]_i_155 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_155_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_156 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_156_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_157 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[15]),
        .I4(CO),
        .O(\diff_sec[5]_i_157_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_158 
       (.I0(CO),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[16]),
        .O(\diff_sec[5]_i_158_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_159 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .O(\diff_sec[5]_i_159_n_0 ));
  LUT5 #(
    .INIT(32'h96999969)) 
    \diff_sec[5]_i_160 
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_160_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_161 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[17]),
        .I3(CO),
        .I4(total_prev__0[17]),
        .O(\diff_sec[5]_i_161_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_162 
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[15]),
        .I4(CO),
        .O(\diff_sec[5]_i_162_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFACA0A0A3A0A)) 
    \diff_sec[5]_i_17 
       (.I0(data1[13]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[13]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[13]),
        .O(\diff_sec[5]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h04540404)) 
    \diff_sec[5]_i_18 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[13]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(\diff_min[0]_i_5_n_0 ),
        .I4(data8[13]),
        .O(\diff_sec[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[5]_i_19 
       (.I0(data4[13]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[13]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[13]),
        .O(\diff_sec[5]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \diff_sec[5]_i_2 
       (.I0(\diff_sec[5]_i_3_n_0 ),
        .I1(\diff_sec[5]_i_4_n_0 ),
        .I2(\diff_sec[5]_i_5_n_0 ),
        .I3(\diff_sec[5]_i_6_n_0 ),
        .O(\diff_sec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFACA0A0A3A0A)) 
    \diff_sec[5]_i_20 
       (.I0(data1[14]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[14]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[14]),
        .O(\diff_sec[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[5]_i_21 
       (.I0(data4[14]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[14]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[14]),
        .O(\diff_sec[5]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h05450040)) 
    \diff_sec[5]_i_22 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data8[14]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(\diff_min[0]_i_5_n_0 ),
        .I4(data7[14]),
        .O(\diff_sec[5]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h04540404)) 
    \diff_sec[5]_i_23 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[15]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(\diff_min[0]_i_5_n_0 ),
        .I4(data8[15]),
        .O(\diff_sec[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[5]_i_24 
       (.I0(data4[15]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[15]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[15]),
        .O(\diff_sec[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h35053535F5C5F5F5)) 
    \diff_sec[5]_i_25 
       (.I0(data1[15]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(data3[15]),
        .I5(data2[15]),
        .O(\diff_sec[5]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h04540404)) 
    \diff_sec[5]_i_26 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[18]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(\diff_min[0]_i_5_n_0 ),
        .I4(data8[18]),
        .O(\diff_sec[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[5]_i_27 
       (.I0(data4[18]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[18]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[18]),
        .O(\diff_sec[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h35350535F5F5C5F5)) 
    \diff_sec[5]_i_28 
       (.I0(data1[18]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[18]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[18]),
        .O(\diff_sec[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFACA0A0A3A0A)) 
    \diff_sec[5]_i_29 
       (.I0(data1[17]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[17]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[17]),
        .O(\diff_sec[5]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[5]_i_3 
       (.I0(\diff_sec[3]_i_12_n_0 ),
        .I1(\diff_sec[4]_i_16_n_0 ),
        .O(\diff_sec[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[5]_i_30 
       (.I0(data4[17]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[17]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[17]),
        .O(\diff_sec[5]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h05450040)) 
    \diff_sec[5]_i_31 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data8[17]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(\diff_min[0]_i_5_n_0 ),
        .I4(data7[17]),
        .O(\diff_sec[5]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFACA0A0A3A0A)) 
    \diff_sec[5]_i_32 
       (.I0(data1[16]),
        .I1(\diff_min[2]_i_4_n_0 ),
        .I2(\diff_min[3]_i_4_n_0 ),
        .I3(data3[16]),
        .I4(\diff_min[1]_i_3_n_0 ),
        .I5(data2[16]),
        .O(\diff_sec[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC15553FFF1555)) 
    \diff_sec[5]_i_33 
       (.I0(data4[16]),
        .I1(\diff_min[2]_i_3_n_0 ),
        .I2(\diff_min[0]_i_6_n_0 ),
        .I3(data6[16]),
        .I4(\diff_min[0]_i_7_n_0 ),
        .I5(data5[16]),
        .O(\diff_sec[5]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h04540404)) 
    \diff_sec[5]_i_34 
       (.I0(\diff_min[0]_i_6_n_0 ),
        .I1(data7[16]),
        .I2(\diff_min[1]_i_2_n_0 ),
        .I3(\diff_min[0]_i_5_n_0 ),
        .I4(data8[16]),
        .O(\diff_sec[5]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \diff_sec[5]_i_4 
       (.I0(\diff_sec[4]_i_22_n_0 ),
        .I1(\diff_sec[4]_i_12_n_0 ),
        .I2(\diff_csec[7]_i_4_n_0 ),
        .O(\diff_sec[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[5]_i_43 
       (.I0(CO),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[14]),
        .O(\diff_sec[5]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_44 
       (.I0(CO),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[13]),
        .O(\diff_sec[5]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_45 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .O(\diff_sec[5]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_46 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .O(\diff_sec[5]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hD2B42D4B)) 
    \diff_sec[5]_i_47 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[15]),
        .I3(CO),
        .I4(total_prev__0[15]),
        .O(\diff_sec[5]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_48 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[14]),
        .I3(CO),
        .I4(total_prev__0[14]),
        .O(\diff_sec[5]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_49 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[12]),
        .I4(CO),
        .O(\diff_sec[5]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \diff_sec[5]_i_5 
       (.I0(\diff_sec[5]_i_7_n_0 ),
        .I1(\diff_sec[5]_i_8_n_0 ),
        .I2(\diff_sec[5]_i_9_n_0 ),
        .I3(\diff_sec[5]_i_10_n_0 ),
        .I4(\diff_sec[5]_i_11_n_0 ),
        .I5(\diff_sec[5]_i_12_n_0 ),
        .O(\diff_sec[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_50 
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[12]),
        .I3(CO),
        .I4(total_prev__0[12]),
        .O(\diff_sec[5]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_59 
       (.I0(CO),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[14]),
        .O(\diff_sec[5]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFFFFFAEFF0000)) 
    \diff_sec[5]_i_6 
       (.I0(\diff_sec[5]_i_13_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_14_n_0 ),
        .I3(\diff_sec[5]_i_15_n_0 ),
        .I4(\diff_min[0]_i_2_n_0 ),
        .I5(\diff_sec_reg[5]_i_16_n_7 ),
        .O(\diff_sec[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_60 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .O(\diff_sec[5]_i_60_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_61 
       (.I0(CO),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[12]),
        .O(\diff_sec[5]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_62 
       (.I0(total_tmp__0[12]),
        .I1(total_prev__0[12]),
        .O(\diff_sec[5]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hA59669A5)) 
    \diff_sec[5]_i_63 
       (.I0(total_prev__0[15]),
        .I1(CO),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[14]),
        .I4(total_tmp__0[14]),
        .O(\diff_sec[5]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_64 
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[13]),
        .I3(total_prev__0[13]),
        .I4(CO),
        .O(\diff_sec[5]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h5A69965A)) 
    \diff_sec[5]_i_65 
       (.I0(total_prev__0[13]),
        .I1(CO),
        .I2(total_tmp__0[13]),
        .I3(total_prev__0[12]),
        .I4(total_tmp__0[12]),
        .O(\diff_sec[5]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_66 
       (.I0(total_tmp__0[12]),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[11]),
        .I4(CO),
        .O(\diff_sec[5]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_67 
       (.I0(CO),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[14]),
        .O(\diff_sec[5]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_68 
       (.I0(CO),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[13]),
        .O(\diff_sec[5]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_69 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .O(\diff_sec[5]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \diff_sec[5]_i_7 
       (.I0(\diff_sec[5]_i_17_n_0 ),
        .I1(\diff_sec[5]_i_18_n_0 ),
        .I2(\diff_min[1]_i_3_n_0 ),
        .I3(\diff_sec[5]_i_19_n_0 ),
        .I4(\diff_min[0]_i_2_n_0 ),
        .I5(\diff_sec_reg[5]_i_16_n_6 ),
        .O(\diff_sec[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_70 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .O(\diff_sec[5]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hA59669A5)) 
    \diff_sec[5]_i_71 
       (.I0(total_prev__0[15]),
        .I1(CO),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[14]),
        .I4(total_tmp__0[14]),
        .O(\diff_sec[5]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hA59669A5)) 
    \diff_sec[5]_i_72 
       (.I0(total_prev__0[14]),
        .I1(CO),
        .I2(total_tmp__0[14]),
        .I3(total_prev__0[13]),
        .I4(total_tmp__0[13]),
        .O(\diff_sec[5]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_73 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[12]),
        .I4(CO),
        .O(\diff_sec[5]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_74 
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[12]),
        .I3(CO),
        .I4(total_prev__0[12]),
        .O(\diff_sec[5]_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_75 
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .O(\diff_sec[5]_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[5]_i_76 
       (.I0(CO),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[13]),
        .O(\diff_sec[5]_i_76_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[5]_i_77 
       (.I0(CO),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[12]),
        .O(\diff_sec[5]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_78 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .O(\diff_sec[5]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[5]_i_79 
       (.I0(total_prev__0[15]),
        .I1(CO),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[14]),
        .I4(total_tmp__0[14]),
        .O(\diff_sec[5]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAE0000)) 
    \diff_sec[5]_i_8 
       (.I0(\diff_sec[5]_i_20_n_0 ),
        .I1(\diff_min[1]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_21_n_0 ),
        .I3(\diff_sec[5]_i_22_n_0 ),
        .I4(\diff_min[0]_i_2_n_0 ),
        .I5(\diff_sec_reg[5]_i_16_n_5 ),
        .O(\diff_sec[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hDB2424DB)) 
    \diff_sec[5]_i_80 
       (.I0(CO),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[13]),
        .I3(total_prev__0[14]),
        .I4(total_tmp__0[14]),
        .O(\diff_sec[5]_i_80_n_0 ));
  LUT5 #(
    .INIT(32'hDB2424DB)) 
    \diff_sec[5]_i_81 
       (.I0(CO),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[13]),
        .I4(total_tmp__0[13]),
        .O(\diff_sec[5]_i_81_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_82 
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[12]),
        .I3(CO),
        .I4(total_prev__0[12]),
        .O(\diff_sec[5]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_83 
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .O(\diff_sec[5]_i_83_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_84 
       (.I0(CO),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[13]),
        .O(\diff_sec[5]_i_84_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_85 
       (.I0(CO),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[12]),
        .O(\diff_sec[5]_i_85_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_86 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .O(\diff_sec[5]_i_86_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[5]_i_87 
       (.I0(total_prev__0[15]),
        .I1(CO),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[14]),
        .I4(total_tmp__0[14]),
        .O(\diff_sec[5]_i_87_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_88 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[14]),
        .I3(CO),
        .I4(total_prev__0[14]),
        .O(\diff_sec[5]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'hB4D24B2D)) 
    \diff_sec[5]_i_89 
       (.I0(total_tmp__0[12]),
        .I1(total_prev__0[12]),
        .I2(total_tmp__0[13]),
        .I3(CO),
        .I4(total_prev__0[13]),
        .O(\diff_sec[5]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D111D11111111)) 
    \diff_sec[5]_i_9 
       (.I0(\diff_sec_reg[5]_i_16_n_4 ),
        .I1(\diff_min[0]_i_2_n_0 ),
        .I2(\diff_sec[5]_i_23_n_0 ),
        .I3(\diff_min[1]_i_3_n_0 ),
        .I4(\diff_sec[5]_i_24_n_0 ),
        .I5(\diff_sec[5]_i_25_n_0 ),
        .O(\diff_sec[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hA59669A5)) 
    \diff_sec[5]_i_90 
       (.I0(total_prev__0[12]),
        .I1(CO),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[11]),
        .I4(total_tmp__0[11]),
        .O(\diff_sec[5]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_91 
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .O(\diff_sec[5]_i_91_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_92 
       (.I0(CO),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[13]),
        .O(\diff_sec[5]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[5]_i_93 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .O(\diff_sec[5]_i_93_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \diff_sec[5]_i_94 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .O(\diff_sec[5]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'h5A96695A)) 
    \diff_sec[5]_i_95 
       (.I0(total_prev__0[15]),
        .I1(CO),
        .I2(total_tmp__0[15]),
        .I3(total_prev__0[14]),
        .I4(total_tmp__0[14]),
        .O(\diff_sec[5]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'h4B2DB4D2)) 
    \diff_sec[5]_i_96 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[14]),
        .I3(CO),
        .I4(total_prev__0[14]),
        .O(\diff_sec[5]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'h66966966)) 
    \diff_sec[5]_i_97 
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[12]),
        .I4(CO),
        .O(\diff_sec[5]_i_97_n_0 ));
  LUT5 #(
    .INIT(32'hDB2424DB)) 
    \diff_sec[5]_i_98 
       (.I0(CO),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[11]),
        .I3(total_prev__0[12]),
        .I4(total_tmp__0[12]),
        .O(\diff_sec[5]_i_98_n_0 ));
  LUT3 #(
    .INIT(8'hE7)) 
    \diff_sec[5]_i_99 
       (.I0(CO),
        .I1(total_prev__0[14]),
        .I2(total_tmp__0[14]),
        .O(\diff_sec[5]_i_99_n_0 ));
  FDCE \diff_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_sec[0]_i_1_n_0 ),
        .Q(diff_sec[0]));
  FDCE \diff_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_sec[1]_i_1_n_0 ),
        .Q(diff_sec[1]));
  FDCE \diff_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_sec[2]_i_1_n_0 ),
        .Q(diff_sec[2]));
  FDCE \diff_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_sec[3]_i_1_n_0 ),
        .Q(diff_sec[3]));
  FDCE \diff_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_sec[4]_i_1_n_0 ),
        .Q(diff_sec[4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_28 
       (.CI(\diff_csec_reg[7]_i_8_n_0 ),
        .CO({\diff_sec_reg[4]_i_28_n_0 ,\diff_sec_reg[4]_i_28_n_1 ,\diff_sec_reg[4]_i_28_n_2 ,\diff_sec_reg[4]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_45_n_0 ,\diff_sec[4]_i_46_n_0 ,\diff_sec[4]_i_47_n_0 ,\diff_sec[4]_i_48_n_0 }),
        .O({\diff_sec_reg[4]_i_28_n_4 ,\diff_sec_reg[4]_i_28_n_5 ,\diff_sec_reg[4]_i_28_n_6 ,\diff_sec_reg[4]_i_28_n_7 }),
        .S({\diff_sec[4]_i_49_n_0 ,\diff_sec[4]_i_50_n_0 ,\diff_sec[4]_i_51_n_0 ,\diff_sec[4]_i_52_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_33 
       (.CI(\diff_sec_reg[5]_i_16_n_0 ),
        .CO({\NLW_diff_sec_reg[4]_i_33_CO_UNCONNECTED [3:2],\diff_sec_reg[4]_i_33_n_2 ,\diff_sec_reg[4]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[4]_i_61_n_0 ,\diff_sec[4]_i_62_n_0 }),
        .O({\NLW_diff_sec_reg[4]_i_33_O_UNCONNECTED [3],\diff_sec_reg[4]_i_33_n_5 ,\diff_sec_reg[4]_i_33_n_6 ,\diff_sec_reg[4]_i_33_n_7 }),
        .S({1'b0,\diff_sec[4]_i_63_n_0 ,\diff_sec[4]_i_64_n_0 ,\diff_sec[4]_i_65_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_53 
       (.CI(\diff_csec_reg[7]_i_24_n_0 ),
        .CO({\diff_sec_reg[4]_i_53_n_0 ,\diff_sec_reg[4]_i_53_n_1 ,\diff_sec_reg[4]_i_53_n_2 ,\diff_sec_reg[4]_i_53_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_66_n_0 ,\diff_sec[4]_i_67_n_0 ,\diff_sec[4]_i_68_n_0 ,\diff_sec[4]_i_69_n_0 }),
        .O(data7[11:8]),
        .S({\diff_sec[4]_i_70_n_0 ,\diff_sec[4]_i_71_n_0 ,\diff_sec[4]_i_72_n_0 ,\diff_sec[4]_i_73_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_54 
       (.CI(\diff_csec_reg[7]_i_25_n_0 ),
        .CO({\diff_sec_reg[4]_i_54_n_0 ,\diff_sec_reg[4]_i_54_n_1 ,\diff_sec_reg[4]_i_54_n_2 ,\diff_sec_reg[4]_i_54_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_74_n_0 ,\diff_sec[4]_i_75_n_0 ,\diff_sec[4]_i_76_n_0 ,\diff_sec[4]_i_77_n_0 }),
        .O(data8[11:8]),
        .S({\diff_sec[4]_i_78_n_0 ,\diff_sec[4]_i_79_n_0 ,\diff_sec[4]_i_80_n_0 ,\diff_sec[4]_i_81_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_55 
       (.CI(\diff_csec_reg[7]_i_26_n_0 ),
        .CO({\diff_sec_reg[4]_i_55_n_0 ,\diff_sec_reg[4]_i_55_n_1 ,\diff_sec_reg[4]_i_55_n_2 ,\diff_sec_reg[4]_i_55_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_82_n_0 ,\diff_sec[4]_i_83_n_0 ,\diff_sec[4]_i_84_n_0 ,\diff_sec[4]_i_85_n_0 }),
        .O(data4[11:8]),
        .S({\diff_sec[4]_i_86_n_0 ,\diff_sec[4]_i_87_n_0 ,\diff_sec[4]_i_88_n_0 ,\diff_sec[4]_i_89_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_56 
       (.CI(\diff_csec_reg[7]_i_27_n_0 ),
        .CO({\diff_sec_reg[4]_i_56_n_0 ,\diff_sec_reg[4]_i_56_n_1 ,\diff_sec_reg[4]_i_56_n_2 ,\diff_sec_reg[4]_i_56_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_90_n_0 ,\diff_sec[4]_i_91_n_0 ,\diff_sec[4]_i_92_n_0 ,\diff_sec[4]_i_93_n_0 }),
        .O(data6[11:8]),
        .S({\diff_sec[4]_i_94_n_0 ,\diff_sec[4]_i_95_n_0 ,\diff_sec[4]_i_96_n_0 ,\diff_sec[4]_i_97_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_57 
       (.CI(\diff_csec_reg[7]_i_28_n_0 ),
        .CO({\diff_sec_reg[4]_i_57_n_0 ,\diff_sec_reg[4]_i_57_n_1 ,\diff_sec_reg[4]_i_57_n_2 ,\diff_sec_reg[4]_i_57_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_98_n_0 ,\diff_sec[4]_i_99_n_0 ,\diff_sec[4]_i_100_n_0 ,\diff_sec[4]_i_101_n_0 }),
        .O(data5[11:8]),
        .S({\diff_sec[4]_i_102_n_0 ,\diff_sec[4]_i_103_n_0 ,\diff_sec[4]_i_104_n_0 ,\diff_sec[4]_i_105_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_58 
       (.CI(\diff_csec_reg[7]_i_29_n_0 ),
        .CO({\diff_sec_reg[4]_i_58_n_0 ,\diff_sec_reg[4]_i_58_n_1 ,\diff_sec_reg[4]_i_58_n_2 ,\diff_sec_reg[4]_i_58_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_106_n_0 ,\diff_sec[4]_i_107_n_0 ,\diff_sec[4]_i_108_n_0 ,\diff_sec[4]_i_109_n_0 }),
        .O(data1[11:8]),
        .S({\diff_sec[4]_i_110_n_0 ,\diff_sec[4]_i_111_n_0 ,\diff_sec[4]_i_112_n_0 ,\diff_sec[4]_i_113_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_59 
       (.CI(\diff_csec_reg[7]_i_30_n_0 ),
        .CO({\diff_sec_reg[4]_i_59_n_0 ,\diff_sec_reg[4]_i_59_n_1 ,\diff_sec_reg[4]_i_59_n_2 ,\diff_sec_reg[4]_i_59_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_114_n_0 ,\diff_sec[4]_i_115_n_0 ,\diff_sec[4]_i_116_n_0 ,\diff_sec[4]_i_117_n_0 }),
        .O(data3[11:8]),
        .S({\diff_sec[4]_i_118_n_0 ,\diff_sec[4]_i_119_n_0 ,\diff_sec[4]_i_120_n_0 ,\diff_sec[4]_i_121_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[4]_i_60 
       (.CI(\diff_csec_reg[7]_i_31_n_0 ),
        .CO({\diff_sec_reg[4]_i_60_n_0 ,\diff_sec_reg[4]_i_60_n_1 ,\diff_sec_reg[4]_i_60_n_2 ,\diff_sec_reg[4]_i_60_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[4]_i_122_n_0 ,\diff_sec[4]_i_123_n_0 ,\diff_sec[4]_i_124_n_0 ,\diff_sec[4]_i_125_n_0 }),
        .O(data2[11:8]),
        .S({\diff_sec[4]_i_126_n_0 ,\diff_sec[4]_i_127_n_0 ,\diff_sec[4]_i_128_n_0 ,\diff_sec[4]_i_129_n_0 }));
  FDCE \diff_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_7),
        .CLR(AR),
        .D(\diff_sec[5]_i_1_n_0 ),
        .Q(diff_sec[5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_16 
       (.CI(\diff_sec_reg[4]_i_28_n_0 ),
        .CO({\diff_sec_reg[5]_i_16_n_0 ,\diff_sec_reg[5]_i_16_n_1 ,\diff_sec_reg[5]_i_16_n_2 ,\diff_sec_reg[5]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_43_n_0 ,\diff_sec[5]_i_44_n_0 ,\diff_sec[5]_i_45_n_0 ,\diff_sec[5]_i_46_n_0 }),
        .O({\diff_sec_reg[5]_i_16_n_4 ,\diff_sec_reg[5]_i_16_n_5 ,\diff_sec_reg[5]_i_16_n_6 ,\diff_sec_reg[5]_i_16_n_7 }),
        .S({\diff_sec[5]_i_47_n_0 ,\diff_sec[5]_i_48_n_0 ,\diff_sec[5]_i_49_n_0 ,\diff_sec[5]_i_50_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_35 
       (.CI(\diff_sec_reg[4]_i_53_n_0 ),
        .CO({\diff_sec_reg[5]_i_35_n_0 ,\diff_sec_reg[5]_i_35_n_1 ,\diff_sec_reg[5]_i_35_n_2 ,\diff_sec_reg[5]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_59_n_0 ,\diff_sec[5]_i_60_n_0 ,\diff_sec[5]_i_61_n_0 ,\diff_sec[5]_i_62_n_0 }),
        .O(data7[15:12]),
        .S({\diff_sec[5]_i_63_n_0 ,\diff_sec[5]_i_64_n_0 ,\diff_sec[5]_i_65_n_0 ,\diff_sec[5]_i_66_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_36 
       (.CI(\diff_sec_reg[4]_i_54_n_0 ),
        .CO({\diff_sec_reg[5]_i_36_n_0 ,\diff_sec_reg[5]_i_36_n_1 ,\diff_sec_reg[5]_i_36_n_2 ,\diff_sec_reg[5]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_67_n_0 ,\diff_sec[5]_i_68_n_0 ,\diff_sec[5]_i_69_n_0 ,\diff_sec[5]_i_70_n_0 }),
        .O(data8[15:12]),
        .S({\diff_sec[5]_i_71_n_0 ,\diff_sec[5]_i_72_n_0 ,\diff_sec[5]_i_73_n_0 ,\diff_sec[5]_i_74_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_37 
       (.CI(\diff_sec_reg[4]_i_55_n_0 ),
        .CO({\diff_sec_reg[5]_i_37_n_0 ,\diff_sec_reg[5]_i_37_n_1 ,\diff_sec_reg[5]_i_37_n_2 ,\diff_sec_reg[5]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_75_n_0 ,\diff_sec[5]_i_76_n_0 ,\diff_sec[5]_i_77_n_0 ,\diff_sec[5]_i_78_n_0 }),
        .O(data4[15:12]),
        .S({\diff_sec[5]_i_79_n_0 ,\diff_sec[5]_i_80_n_0 ,\diff_sec[5]_i_81_n_0 ,\diff_sec[5]_i_82_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_38 
       (.CI(\diff_sec_reg[4]_i_56_n_0 ),
        .CO({\diff_sec_reg[5]_i_38_n_0 ,\diff_sec_reg[5]_i_38_n_1 ,\diff_sec_reg[5]_i_38_n_2 ,\diff_sec_reg[5]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_83_n_0 ,\diff_sec[5]_i_84_n_0 ,\diff_sec[5]_i_85_n_0 ,\diff_sec[5]_i_86_n_0 }),
        .O(data6[15:12]),
        .S({\diff_sec[5]_i_87_n_0 ,\diff_sec[5]_i_88_n_0 ,\diff_sec[5]_i_89_n_0 ,\diff_sec[5]_i_90_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_39 
       (.CI(\diff_sec_reg[4]_i_57_n_0 ),
        .CO({\diff_sec_reg[5]_i_39_n_0 ,\diff_sec_reg[5]_i_39_n_1 ,\diff_sec_reg[5]_i_39_n_2 ,\diff_sec_reg[5]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_91_n_0 ,\diff_sec[5]_i_92_n_0 ,\diff_sec[5]_i_93_n_0 ,\diff_sec[5]_i_94_n_0 }),
        .O(data5[15:12]),
        .S({\diff_sec[5]_i_95_n_0 ,\diff_sec[5]_i_96_n_0 ,\diff_sec[5]_i_97_n_0 ,\diff_sec[5]_i_98_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_40 
       (.CI(\diff_sec_reg[4]_i_58_n_0 ),
        .CO({\diff_sec_reg[5]_i_40_n_0 ,\diff_sec_reg[5]_i_40_n_1 ,\diff_sec_reg[5]_i_40_n_2 ,\diff_sec_reg[5]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_99_n_0 ,\diff_sec[5]_i_100_n_0 ,\diff_sec[5]_i_101_n_0 ,\diff_sec[5]_i_102_n_0 }),
        .O(data1[15:12]),
        .S({\diff_sec[5]_i_103_n_0 ,\diff_sec[5]_i_104_n_0 ,\diff_sec[5]_i_105_n_0 ,\diff_sec[5]_i_106_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_41 
       (.CI(\diff_sec_reg[4]_i_59_n_0 ),
        .CO({\diff_sec_reg[5]_i_41_n_0 ,\diff_sec_reg[5]_i_41_n_1 ,\diff_sec_reg[5]_i_41_n_2 ,\diff_sec_reg[5]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_107_n_0 ,\diff_sec[5]_i_108_n_0 ,\diff_sec[5]_i_109_n_0 ,\diff_sec[5]_i_110_n_0 }),
        .O(data3[15:12]),
        .S({\diff_sec[5]_i_111_n_0 ,\diff_sec[5]_i_112_n_0 ,\diff_sec[5]_i_113_n_0 ,\diff_sec[5]_i_114_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_42 
       (.CI(\diff_sec_reg[4]_i_60_n_0 ),
        .CO({\diff_sec_reg[5]_i_42_n_0 ,\diff_sec_reg[5]_i_42_n_1 ,\diff_sec_reg[5]_i_42_n_2 ,\diff_sec_reg[5]_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_115_n_0 ,\diff_sec[5]_i_116_n_0 ,\diff_sec[5]_i_117_n_0 ,\diff_sec[5]_i_118_n_0 }),
        .O(data2[15:12]),
        .S({\diff_sec[5]_i_119_n_0 ,\diff_sec[5]_i_120_n_0 ,\diff_sec[5]_i_121_n_0 ,\diff_sec[5]_i_122_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_51 
       (.CI(\diff_sec_reg[5]_i_35_n_0 ),
        .CO({\NLW_diff_sec_reg[5]_i_51_CO_UNCONNECTED [3:2],\diff_sec_reg[5]_i_51_n_2 ,\diff_sec_reg[5]_i_51_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[5]_i_123_n_0 ,\diff_sec[5]_i_124_n_0 }),
        .O({\NLW_diff_sec_reg[5]_i_51_O_UNCONNECTED [3],data7[18:16]}),
        .S({1'b0,\diff_sec[5]_i_125_n_0 ,\diff_sec[5]_i_126_n_0 ,\diff_sec[5]_i_127_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_52 
       (.CI(\diff_sec_reg[5]_i_36_n_0 ),
        .CO({\NLW_diff_sec_reg[5]_i_52_CO_UNCONNECTED [3:2],\diff_sec_reg[5]_i_52_n_2 ,\diff_sec_reg[5]_i_52_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[5]_i_128_n_0 ,\diff_sec[5]_i_129_n_0 }),
        .O({\NLW_diff_sec_reg[5]_i_52_O_UNCONNECTED [3],data8[18:16]}),
        .S({1'b0,\diff_sec[5]_i_130_n_0 ,\diff_sec[5]_i_131_n_0 ,\diff_sec[5]_i_132_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_53 
       (.CI(\diff_sec_reg[5]_i_37_n_0 ),
        .CO({\NLW_diff_sec_reg[5]_i_53_CO_UNCONNECTED [3:2],\diff_sec_reg[5]_i_53_n_2 ,\diff_sec_reg[5]_i_53_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[5]_i_133_n_0 ,\diff_sec[5]_i_134_n_0 }),
        .O({\NLW_diff_sec_reg[5]_i_53_O_UNCONNECTED [3],data4[18:16]}),
        .S({1'b0,\diff_sec[5]_i_135_n_0 ,\diff_sec[5]_i_136_n_0 ,\diff_sec[5]_i_137_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_54 
       (.CI(\diff_sec_reg[5]_i_38_n_0 ),
        .CO({\NLW_diff_sec_reg[5]_i_54_CO_UNCONNECTED [3:2],\diff_sec_reg[5]_i_54_n_2 ,\diff_sec_reg[5]_i_54_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[5]_i_138_n_0 ,\diff_sec[5]_i_139_n_0 }),
        .O({\NLW_diff_sec_reg[5]_i_54_O_UNCONNECTED [3],data6[18:16]}),
        .S({1'b0,\diff_sec[5]_i_140_n_0 ,\diff_sec[5]_i_141_n_0 ,\diff_sec[5]_i_142_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_55 
       (.CI(\diff_sec_reg[5]_i_39_n_0 ),
        .CO({\NLW_diff_sec_reg[5]_i_55_CO_UNCONNECTED [3:2],\diff_sec_reg[5]_i_55_n_2 ,\diff_sec_reg[5]_i_55_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[5]_i_143_n_0 ,\diff_sec[5]_i_144_n_0 }),
        .O({\NLW_diff_sec_reg[5]_i_55_O_UNCONNECTED [3],data5[18:16]}),
        .S({1'b0,\diff_sec[5]_i_145_n_0 ,\diff_sec[5]_i_146_n_0 ,\diff_sec[5]_i_147_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_56 
       (.CI(\diff_sec_reg[5]_i_40_n_0 ),
        .CO({\NLW_diff_sec_reg[5]_i_56_CO_UNCONNECTED [3:2],\diff_sec_reg[5]_i_56_n_2 ,\diff_sec_reg[5]_i_56_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[5]_i_148_n_0 ,\diff_sec[5]_i_149_n_0 }),
        .O({\NLW_diff_sec_reg[5]_i_56_O_UNCONNECTED [3],data1[18:16]}),
        .S({1'b0,\diff_sec[5]_i_150_n_0 ,\diff_sec[5]_i_151_n_0 ,\diff_sec[5]_i_152_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_57 
       (.CI(\diff_sec_reg[5]_i_41_n_0 ),
        .CO({\NLW_diff_sec_reg[5]_i_57_CO_UNCONNECTED [3:2],\diff_sec_reg[5]_i_57_n_2 ,\diff_sec_reg[5]_i_57_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[5]_i_153_n_0 ,\diff_sec[5]_i_154_n_0 }),
        .O({\NLW_diff_sec_reg[5]_i_57_O_UNCONNECTED [3],data3[18:16]}),
        .S({1'b0,\diff_sec[5]_i_155_n_0 ,\diff_sec[5]_i_156_n_0 ,\diff_sec[5]_i_157_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[5]_i_58 
       (.CI(\diff_sec_reg[5]_i_42_n_0 ),
        .CO({\NLW_diff_sec_reg[5]_i_58_CO_UNCONNECTED [3:2],\diff_sec_reg[5]_i_58_n_2 ,\diff_sec_reg[5]_i_58_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\diff_sec[5]_i_158_n_0 ,\diff_sec[5]_i_159_n_0 }),
        .O({\NLW_diff_sec_reg[5]_i_58_O_UNCONNECTED [3],data2[18:16]}),
        .S({1'b0,\diff_sec[5]_i_160_n_0 ,\diff_sec[5]_i_161_n_0 ,\diff_sec[5]_i_162_n_0 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p ed_clear
       (.AR(AR),
        .D({ed_clear_n_7,ed_clear_n_8,ed_clear_n_9,ed_clear_n_10,ed_clear_n_11,ed_clear_n_12,ed_clear_n_13,ed_clear_n_14,ed_clear_n_15,ed_clear_n_16,ed_clear_n_17,ed_clear_n_18,ed_clear_n_19,ed_clear_n_20,ed_clear_n_21,ed_clear_n_22,ed_clear_n_23,ed_clear_n_24,ed_clear_n_25,ed_clear_n_26}),
        .E(ed_clear_n_4),
        .Q(Q[1]),
        .cnt_sysclk20(cnt_sysclk20),
        .\cnt_sysclk2_reg[0] (\cnt_sysclk2_reg_n_0_[0] ),
        .\cnt_sysclk2_reg[19] (ed_start_n_9),
        .\csec_reg[6] (\cnt_sysclk1[19]_i_4_n_0 ),
        .ff_cur_reg_0(ed_clear_n_3),
        .ff_cur_reg_1(ed_clear_n_5),
        .ff_cur_reg_2(ed_clear_n_6),
        .ff_cur_reg_3(ed_clear_n_27),
        .ff_cur_reg_4(ed_clear_n_28),
        .ff_cur_reg_5(ed_clear_n_29),
        .ff_cur_reg_6(cnt_sysclk2),
        .ff_old_reg_0(ed_clear_n_30),
        .\lap_csec_reg[0] (\cnt_sysclk2[19]_i_3_n_0 ),
        .\lap_csec_reg[5] ({ed_clear_n_44,ed_clear_n_45,ed_clear_n_46,ed_clear_n_47,ed_clear_n_48,ed_clear_n_49,ed_clear_n_50}),
        .\lap_csec_reg[5]_0 (\lap_csec[5]_i_2_n_0 ),
        .\lap_csec_reg[6] (lap_csec),
        .\lap_csec_reg[6]_0 (\lap_csec[6]_i_4_n_0 ),
        .\lap_csec_reg[6]_1 (\lap_csec[6]_i_5_n_0 ),
        .\lap_min_reg[0] (\lap_min[5]_i_3_n_0 ),
        .\lap_min_reg[3] ({ed_clear_n_32,ed_clear_n_33,ed_clear_n_34,ed_clear_n_35,ed_clear_n_36,ed_clear_n_37}),
        .\lap_min_reg[5] (lap_min),
        .\lap_min_reg[5]_0 (\lap_min[5]_i_5_n_0 ),
        .\lap_min_reg[5]_1 (\lap_min[5]_i_7_n_0 ),
        .\lap_sec_reg[3] ({ed_clear_n_38,ed_clear_n_39,ed_clear_n_40,ed_clear_n_41,ed_clear_n_42,ed_clear_n_43}),
        .\lap_sec_reg[5] (lap_sec),
        .\lap_sec_reg[5]_0 (\lap_sec[5]_i_5_n_0 ),
        .\min_reg[0] (\csec[6]_i_3_n_0 ),
        .\min_reg[0]_0 (\sec[4]_i_2_n_0 ),
        .p_0_in(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sec_reg[0] (run));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 ed_start
       (.AR(AR),
        .D(ed_start_n_8),
        .E(ed_start_n_5),
        .\FSM_onehot_diff_state_reg[0] (ed_start_n_4),
        .\FSM_onehot_diff_state_reg[1] (ed_start_n_7),
        .\FSM_onehot_diff_state_reg[2] (ed_start_n_6),
        .Q({Q[2],Q[0]}),
        .\diff_csec_reg[0] (\FSM_onehot_diff_state_reg[1]_0 ),
        .ff_cur_reg_0(p_0_in[1]),
        .ff_cur_reg_1(ed_start_n_3),
        .ff_old_reg_0(p_0_in[0]),
        .\lap_count_reg[0] (lap_count[3:0]),
        .\lap_count_reg[0]_0 (run),
        .\lap_count_reg[0]_1 (\lap_count[7]_i_5_n_0 ),
        .\lap_count_reg[3] (ed_start_n_9),
        .p_0_in(p_0_in_0),
        .\prev_csec_reg[0] (\FSM_onehot_diff_state_reg[2]_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg0_reg[2] (ed_start_n_2),
        .start_p(start_p),
        .\tmp_csec_reg[0] (\FSM_onehot_diff_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \lap_count[1]_i_1 
       (.I0(lap_count[1]),
        .I1(lap_count[0]),
        .I2(run),
        .O(\lap_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_count[2]_i_1 
       (.I0(run),
        .I1(lap_count[0]),
        .I2(lap_count[1]),
        .I3(lap_count[2]),
        .O(\lap_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_count[3]_i_1 
       (.I0(run),
        .I1(lap_count[1]),
        .I2(lap_count[0]),
        .I3(lap_count[2]),
        .I4(lap_count[3]),
        .O(\lap_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_count[4]_i_1 
       (.I0(run),
        .I1(lap_count[2]),
        .I2(lap_count[0]),
        .I3(lap_count[1]),
        .I4(lap_count[3]),
        .I5(lap_count[4]),
        .O(\lap_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_count[5]_i_1 
       (.I0(run),
        .I1(\lap_count[5]_i_2_n_0 ),
        .I2(lap_count[5]),
        .O(\lap_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \lap_count[5]_i_2 
       (.I0(lap_count[3]),
        .I1(lap_count[1]),
        .I2(lap_count[0]),
        .I3(lap_count[2]),
        .I4(lap_count[4]),
        .O(\lap_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \lap_count[6]_i_1 
       (.I0(\lap_count[7]_i_4_n_0 ),
        .I1(lap_count[6]),
        .I2(run),
        .O(\lap_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_count[7]_i_2 
       (.I0(run),
        .I1(lap_count[6]),
        .I2(\lap_count[7]_i_4_n_0 ),
        .I3(lap_count[7]),
        .O(\lap_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lap_count[7]_i_4 
       (.I0(lap_count[4]),
        .I1(lap_count[2]),
        .I2(lap_count[0]),
        .I3(lap_count[1]),
        .I4(lap_count[3]),
        .I5(lap_count[5]),
        .O(\lap_count[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lap_count[7]_i_5 
       (.I0(lap_count[7]),
        .I1(lap_count[5]),
        .I2(lap_count[6]),
        .I3(lap_count[4]),
        .O(\lap_count[7]_i_5_n_0 ));
  FDCE \lap_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_30),
        .CLR(AR),
        .D(ed_start_n_8),
        .Q(lap_count[0]));
  FDCE \lap_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_30),
        .CLR(AR),
        .D(\lap_count[1]_i_1_n_0 ),
        .Q(lap_count[1]));
  FDCE \lap_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_30),
        .CLR(AR),
        .D(\lap_count[2]_i_1_n_0 ),
        .Q(lap_count[2]));
  FDCE \lap_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_30),
        .CLR(AR),
        .D(\lap_count[3]_i_1_n_0 ),
        .Q(lap_count[3]));
  FDCE \lap_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_30),
        .CLR(AR),
        .D(\lap_count[4]_i_1_n_0 ),
        .Q(lap_count[4]));
  FDCE \lap_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_30),
        .CLR(AR),
        .D(\lap_count[5]_i_1_n_0 ),
        .Q(lap_count[5]));
  FDCE \lap_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_30),
        .CLR(AR),
        .D(\lap_count[6]_i_1_n_0 ),
        .Q(lap_count[6]));
  FDCE \lap_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_30),
        .CLR(AR),
        .D(\lap_count[7]_i_2_n_0 ),
        .Q(lap_count[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \lap_csec[5]_i_2 
       (.I0(lap_csec[0]),
        .I1(lap_csec[1]),
        .O(\lap_csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \lap_csec[6]_i_4 
       (.I0(lap_csec[3]),
        .I1(lap_csec[1]),
        .I2(lap_csec[0]),
        .I3(lap_csec[2]),
        .I4(lap_csec[4]),
        .O(\lap_csec[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \lap_csec[6]_i_5 
       (.I0(lap_csec[0]),
        .I1(lap_csec[1]),
        .I2(lap_csec[2]),
        .I3(lap_csec[3]),
        .I4(lap_csec[4]),
        .O(\lap_csec[6]_i_5_n_0 ));
  FDCE \lap_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_29),
        .CLR(AR),
        .D(ed_clear_n_50),
        .Q(lap_csec[0]));
  FDCE \lap_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_29),
        .CLR(AR),
        .D(ed_clear_n_49),
        .Q(lap_csec[1]));
  FDCE \lap_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_29),
        .CLR(AR),
        .D(ed_clear_n_48),
        .Q(lap_csec[2]));
  FDCE \lap_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_29),
        .CLR(AR),
        .D(ed_clear_n_47),
        .Q(lap_csec[3]));
  FDCE \lap_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_29),
        .CLR(AR),
        .D(ed_clear_n_46),
        .Q(lap_csec[4]));
  FDCE \lap_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_29),
        .CLR(AR),
        .D(ed_clear_n_45),
        .Q(lap_csec[5]));
  FDCE \lap_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_29),
        .CLR(AR),
        .D(ed_clear_n_44),
        .Q(lap_csec[6]));
  FDCE lap_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(lap_flag_reg_0),
        .Q(lap_flag));
  LUT6 #(
    .INIT(64'hF800000000000000)) 
    \lap_min[5]_i_3 
       (.I0(lap_sec[0]),
        .I1(lap_sec[1]),
        .I2(lap_sec[2]),
        .I3(lap_sec[4]),
        .I4(lap_sec[3]),
        .I5(lap_sec[5]),
        .O(\lap_min[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \lap_min[5]_i_5 
       (.I0(lap_min[1]),
        .I1(lap_min[0]),
        .I2(lap_min[2]),
        .O(\lap_min[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_min[5]_i_7 
       (.I0(lap_min[0]),
        .I1(lap_min[1]),
        .O(\lap_min[5]_i_7_n_0 ));
  FDCE \lap_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(AR),
        .D(ed_clear_n_37),
        .Q(lap_min[0]));
  FDCE \lap_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(AR),
        .D(ed_clear_n_36),
        .Q(lap_min[1]));
  FDCE \lap_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(AR),
        .D(ed_clear_n_35),
        .Q(lap_min[2]));
  FDCE \lap_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(AR),
        .D(ed_clear_n_34),
        .Q(lap_min[3]));
  FDCE \lap_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(AR),
        .D(ed_clear_n_33),
        .Q(lap_min[4]));
  FDCE \lap_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(AR),
        .D(ed_clear_n_32),
        .Q(lap_min[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \lap_sec[5]_i_5 
       (.I0(lap_sec[0]),
        .I1(lap_sec[1]),
        .O(\lap_sec[5]_i_5_n_0 ));
  FDCE \lap_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(AR),
        .D(ed_clear_n_43),
        .Q(lap_sec[0]));
  FDCE \lap_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(AR),
        .D(ed_clear_n_42),
        .Q(lap_sec[1]));
  FDCE \lap_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(AR),
        .D(ed_clear_n_41),
        .Q(lap_sec[2]));
  FDCE \lap_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(AR),
        .D(ed_clear_n_40),
        .Q(lap_sec[3]));
  FDCE \lap_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(AR),
        .D(ed_clear_n_39),
        .Q(lap_sec[4]));
  FDCE \lap_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(AR),
        .D(ed_clear_n_38),
        .Q(lap_sec[5]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min[0]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[0]),
        .O(\min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \min[1]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[1]),
        .I2(min[0]),
        .O(\min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \min[2]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[0]),
        .I2(min[1]),
        .I3(min[2]),
        .O(\min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \min[3]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[1]),
        .I2(min[0]),
        .I3(min[2]),
        .I4(min[3]),
        .O(\min[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \min[4]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[2]),
        .I2(min[0]),
        .I3(min[1]),
        .I4(min[3]),
        .I5(min[4]),
        .O(\min[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2AAA2AAAAAAA)) 
    \min[4]_i_2 
       (.I0(run),
        .I1(min[3]),
        .I2(min[4]),
        .I3(min[5]),
        .I4(min[2]),
        .I5(\min[5]_i_3_n_0 ),
        .O(\min[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAA80000000)) 
    \min[5]_i_2 
       (.I0(run),
        .I1(min[2]),
        .I2(\min[5]_i_3_n_0 ),
        .I3(min[3]),
        .I4(min[4]),
        .I5(min[5]),
        .O(\min[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \min[5]_i_3 
       (.I0(min[0]),
        .I1(min[1]),
        .O(\min[5]_i_3_n_0 ));
  FDCE \min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_27),
        .CLR(AR),
        .D(\min[0]_i_1_n_0 ),
        .Q(min[0]));
  FDCE \min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_27),
        .CLR(AR),
        .D(\min[1]_i_1_n_0 ),
        .Q(min[1]));
  FDCE \min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_27),
        .CLR(AR),
        .D(\min[2]_i_1_n_0 ),
        .Q(min[2]));
  FDCE \min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_27),
        .CLR(AR),
        .D(\min[3]_i_1_n_0 ),
        .Q(min[3]));
  FDCE \min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_27),
        .CLR(AR),
        .D(\min[4]_i_1_n_0 ),
        .Q(min[4]));
  FDCE \min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_27),
        .CLR(AR),
        .D(\min[5]_i_2_n_0 ),
        .Q(min[5]));
  FDCE \prev_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_csec[0]),
        .Q(prev_csec[0]));
  FDCE \prev_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_csec[1]),
        .Q(prev_csec[1]));
  FDCE \prev_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_csec[2]),
        .Q(prev_csec[2]));
  FDCE \prev_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_csec[3]),
        .Q(prev_csec[3]));
  FDCE \prev_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_csec[4]),
        .Q(prev_csec[4]));
  FDCE \prev_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_csec[5]),
        .Q(prev_csec[5]));
  FDCE \prev_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_csec[6]),
        .Q(prev_csec[6]));
  FDCE \prev_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_min__0[0]),
        .Q(prev_min__0[0]));
  FDCE \prev_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_min__0[1]),
        .Q(prev_min__0[1]));
  FDCE \prev_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_min__0[2]),
        .Q(prev_min__0[2]));
  FDCE \prev_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_min__0[3]),
        .Q(prev_min__0[3]));
  FDCE \prev_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_min__0[4]),
        .Q(prev_min__0[4]));
  FDCE \prev_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_min__0[5]),
        .Q(prev_min__0[5]));
  FDCE \prev_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_sec[0]),
        .Q(prev_sec[0]));
  FDCE \prev_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_sec[1]),
        .Q(prev_sec[1]));
  FDCE \prev_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_sec[2]),
        .Q(prev_sec[2]));
  FDCE \prev_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_sec[3]),
        .Q(prev_sec[3]));
  FDCE \prev_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_sec[4]),
        .Q(prev_sec[4]));
  FDCE \prev_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_5),
        .CLR(AR),
        .D(tmp_sec[5]),
        .Q(prev_sec[5]));
  FDCE run_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(run_reg_0),
        .Q(run));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(lap_csec[0]),
        .I1(csec[0]),
        .I2(sel0[1]),
        .I3(run),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [0]),
        .I1(\s00_axi_rdata[19]_0 [0]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [0]),
        .I4(sel0[0]),
        .I5(diff_csec[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(lap_sec[2]),
        .I1(sec[2]),
        .I2(sel0[1]),
        .I3(Q[10]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [10]),
        .I1(\s00_axi_rdata[19]_0 [10]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [10]),
        .I4(sel0[0]),
        .I5(diff_sec[2]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(lap_sec[3]),
        .I1(sec[3]),
        .I2(sel0[1]),
        .I3(Q[11]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [11]),
        .I1(\s00_axi_rdata[19]_0 [11]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [11]),
        .I4(sel0[0]),
        .I5(diff_sec[3]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(lap_sec[4]),
        .I1(sec[4]),
        .I2(sel0[1]),
        .I3(Q[12]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [12]),
        .I1(\s00_axi_rdata[19]_0 [12]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [12]),
        .I4(sel0[0]),
        .I5(diff_sec[4]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[13]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(lap_sec[5]),
        .I1(sec[5]),
        .I2(sel0[1]),
        .I3(Q[13]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [13]),
        .I1(\s00_axi_rdata[19]_0 [13]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [13]),
        .I4(sel0[0]),
        .I5(diff_sec[5]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[14]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(lap_min[0]),
        .I1(min[0]),
        .I2(sel0[1]),
        .I3(Q[14]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [14]),
        .I1(\s00_axi_rdata[19]_0 [14]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [14]),
        .I4(sel0[0]),
        .I5(diff_min[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[15]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(lap_min[1]),
        .I1(min[1]),
        .I2(sel0[1]),
        .I3(Q[15]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [15]),
        .I1(\s00_axi_rdata[19]_0 [15]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [15]),
        .I4(sel0[0]),
        .I5(diff_min[1]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[16]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(lap_min[2]),
        .I1(min[2]),
        .I2(sel0[1]),
        .I3(Q[16]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [16]),
        .I1(\s00_axi_rdata[19]_0 [16]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [16]),
        .I4(sel0[0]),
        .I5(diff_min[2]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[17]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(lap_min[3]),
        .I1(min[3]),
        .I2(sel0[1]),
        .I3(Q[17]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [17]),
        .I1(\s00_axi_rdata[19]_0 [17]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [17]),
        .I4(sel0[0]),
        .I5(diff_min[3]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(lap_csec[1]),
        .I1(csec[1]),
        .I2(sel0[1]),
        .I3(lap_flag),
        .I4(sel0[0]),
        .I5(Q[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [1]),
        .I1(\s00_axi_rdata[19]_0 [1]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [1]),
        .I4(sel0[0]),
        .I5(diff_csec[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_20_sn_1),
        .O(s00_axi_rdata[18]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(lap_min[4]),
        .I1(min[4]),
        .I2(sel0[1]),
        .I3(Q[18]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(s00_axi_rdata_21_sn_1),
        .O(s00_axi_rdata[19]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(lap_min[5]),
        .I1(min[5]),
        .I2(sel0[1]),
        .I3(Q[19]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(s00_axi_rdata_24_sn_1),
        .I1(sel0[2]),
        .I2(lap_count[0]),
        .I3(sel0[1]),
        .I4(Q[20]),
        .I5(sel0[0]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(s00_axi_rdata_25_sn_1),
        .I1(sel0[2]),
        .I2(lap_count[1]),
        .I3(sel0[1]),
        .I4(Q[21]),
        .I5(sel0[0]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(s00_axi_rdata_26_sn_1),
        .I1(sel0[2]),
        .I2(lap_count[2]),
        .I3(sel0[1]),
        .I4(Q[22]),
        .I5(sel0[0]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(s00_axi_rdata_27_sn_1),
        .I1(sel0[2]),
        .I2(lap_count[3]),
        .I3(sel0[1]),
        .I4(Q[23]),
        .I5(sel0[0]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28] ),
        .I1(sel0[2]),
        .I2(lap_count[4]),
        .I3(sel0[1]),
        .I4(Q[24]),
        .I5(sel0[0]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29] ),
        .I1(sel0[2]),
        .I2(lap_count[5]),
        .I3(sel0[1]),
        .I4(Q[25]),
        .I5(sel0[0]),
        .O(s00_axi_rdata[25]));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(lap_csec[2]),
        .I1(csec[2]),
        .I2(sel0[1]),
        .I3(sign_flag),
        .I4(sel0[0]),
        .I5(Q[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [2]),
        .I1(\s00_axi_rdata[19]_0 [2]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [2]),
        .I4(sel0[0]),
        .I5(diff_csec[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30] ),
        .I1(sel0[2]),
        .I2(lap_count[6]),
        .I3(sel0[1]),
        .I4(Q[26]),
        .I5(sel0[0]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31] ),
        .I1(sel0[2]),
        .I2(lap_count[7]),
        .I3(sel0[1]),
        .I4(Q[27]),
        .I5(sel0[0]),
        .O(s00_axi_rdata[27]));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(lap_csec[3]),
        .I1(csec[3]),
        .I2(sel0[1]),
        .I3(Q[3]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [3]),
        .I1(\s00_axi_rdata[19]_0 [3]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [3]),
        .I4(sel0[0]),
        .I5(diff_csec[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(lap_csec[4]),
        .I1(csec[4]),
        .I2(sel0[1]),
        .I3(Q[4]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [4]),
        .I1(\s00_axi_rdata[19]_0 [4]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [4]),
        .I4(sel0[0]),
        .I5(diff_csec[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(lap_csec[5]),
        .I1(csec[5]),
        .I2(sel0[1]),
        .I3(Q[5]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [5]),
        .I1(\s00_axi_rdata[19]_0 [5]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [5]),
        .I4(sel0[0]),
        .I5(diff_csec[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(lap_csec[6]),
        .I1(csec[6]),
        .I2(sel0[1]),
        .I3(Q[6]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [6]),
        .I1(\s00_axi_rdata[19]_0 [6]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [6]),
        .I4(sel0[0]),
        .I5(diff_csec[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(Q[7]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\s00_axi_rdata[19] [7]),
        .I1(\s00_axi_rdata[19]_0 [7]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [7]),
        .I4(sel0[0]),
        .I5(diff_csec[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(lap_sec[0]),
        .I1(sec[0]),
        .I2(sel0[1]),
        .I3(Q[8]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [8]),
        .I1(\s00_axi_rdata[19]_0 [8]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [8]),
        .I4(sel0[0]),
        .I5(diff_sec[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(lap_sec[1]),
        .I1(sec[1]),
        .I2(sel0[1]),
        .I3(Q[9]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19] [9]),
        .I1(\s00_axi_rdata[19]_0 [9]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[19]_1 [9]),
        .I4(sel0[0]),
        .I5(diff_sec[1]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sec[0]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[0]),
        .O(\sec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \sec[1]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[1]),
        .I2(sec[0]),
        .O(\sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \sec[2]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[0]),
        .I2(sec[1]),
        .I3(sec[2]),
        .O(\sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \sec[3]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[1]),
        .I2(sec[0]),
        .I3(sec[2]),
        .I4(sec[3]),
        .O(\sec[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \sec[4]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[2]),
        .I2(sec[0]),
        .I3(sec[1]),
        .I4(sec[3]),
        .I5(sec[4]),
        .O(\sec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2AAA2AAAAAAA)) 
    \sec[4]_i_2 
       (.I0(run),
        .I1(sec[5]),
        .I2(sec[4]),
        .I3(sec[3]),
        .I4(sec[2]),
        .I5(\sec[5]_i_3_n_0 ),
        .O(\sec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888088808888888)) 
    \sec[5]_i_2 
       (.I0(run),
        .I1(sec[5]),
        .I2(sec[4]),
        .I3(sec[3]),
        .I4(\sec[5]_i_3_n_0 ),
        .I5(sec[2]),
        .O(\sec[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sec[5]_i_3 
       (.I0(sec[0]),
        .I1(sec[1]),
        .O(\sec[5]_i_3_n_0 ));
  FDCE \sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_28),
        .CLR(AR),
        .D(\sec[0]_i_1_n_0 ),
        .Q(sec[0]));
  FDCE \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_28),
        .CLR(AR),
        .D(\sec[1]_i_1_n_0 ),
        .Q(sec[1]));
  FDCE \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_28),
        .CLR(AR),
        .D(\sec[2]_i_1_n_0 ),
        .Q(sec[2]));
  FDCE \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_28),
        .CLR(AR),
        .D(\sec[3]_i_1_n_0 ),
        .Q(sec[3]));
  FDCE \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_28),
        .CLR(AR),
        .D(\sec[4]_i_1_n_0 ),
        .Q(sec[4]));
  FDCE \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_28),
        .CLR(AR),
        .D(\sec[5]_i_2_n_0 ),
        .Q(sec[5]));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_10
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[12]),
        .O(sign_flag_i_10_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_11
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[10]),
        .I3(total_prev__0[10]),
        .O(sign_flag_i_11_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_12
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[8]),
        .I3(total_prev__0[8]),
        .O(sign_flag_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_13
       (.I0(total_prev__0[15]),
        .I1(total_tmp__0[15]),
        .I2(total_prev__0[14]),
        .I3(total_tmp__0[14]),
        .O(sign_flag_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_14
       (.I0(total_prev__0[13]),
        .I1(total_tmp__0[13]),
        .I2(total_prev__0[12]),
        .I3(total_tmp__0[12]),
        .O(sign_flag_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_15
       (.I0(total_prev__0[11]),
        .I1(total_tmp__0[11]),
        .I2(total_prev__0[10]),
        .I3(total_tmp__0[10]),
        .O(sign_flag_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_16
       (.I0(total_prev__0[9]),
        .I1(total_tmp__0[9]),
        .I2(total_prev__0[8]),
        .I3(total_tmp__0[8]),
        .O(sign_flag_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_19
       (.I0(total_tmp__0[7]),
        .I1(total_prev__0[7]),
        .I2(total_tmp__0[6]),
        .I3(total_prev__0[6]),
        .O(sign_flag_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_20
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .I2(total_tmp__0[4]),
        .I3(total_prev__0[4]),
        .O(sign_flag_i_20_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_21
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(total_tmp__0[2]),
        .I3(total_prev__0[2]),
        .O(sign_flag_i_21_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_22
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(total_tmp__0[0]),
        .I3(total_prev__0[0]),
        .O(sign_flag_i_22_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_23
       (.I0(total_prev__0[7]),
        .I1(total_tmp__0[7]),
        .I2(total_prev__0[6]),
        .I3(total_tmp__0[6]),
        .O(sign_flag_i_23_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_24
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .I2(total_prev__0[4]),
        .I3(total_tmp__0[4]),
        .O(sign_flag_i_24_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_25
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .I2(total_prev__0[2]),
        .I3(total_tmp__0[2]),
        .O(sign_flag_i_25_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_26
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .I2(total_prev__0[0]),
        .I3(total_tmp__0[0]),
        .O(sign_flag_i_26_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sign_flag_i_4
       (.I0(total_tmp__0[18]),
        .I1(total_prev__0[18]),
        .O(sign_flag_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_5
       (.I0(total_tmp__0[17]),
        .I1(total_prev__0[17]),
        .I2(total_tmp__0[16]),
        .I3(total_prev__0[16]),
        .O(sign_flag_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sign_flag_i_6
       (.I0(total_prev__0[18]),
        .I1(total_tmp__0[18]),
        .O(sign_flag_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_flag_i_7
       (.I0(total_prev__0[17]),
        .I1(total_tmp__0[17]),
        .I2(total_prev__0[16]),
        .I3(total_tmp__0[16]),
        .O(sign_flag_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_flag_i_9
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[14]),
        .I3(total_prev__0[14]),
        .O(sign_flag_i_9_n_0));
  FDCE sign_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(sign_flag_reg_0),
        .Q(sign_flag));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_flag_reg_i_17
       (.CI(\diff_min_reg[3]_i_35_n_0 ),
        .CO({NLW_sign_flag_reg_i_17_CO_UNCONNECTED[3:2],sign_flag_reg_i_17_n_2,sign_flag_reg_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sign_flag_reg_i_17_O_UNCONNECTED[3],total_tmp__0[18:16]}),
        .S({1'b0,total_tmp_n_87,total_tmp_n_88,total_tmp_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_flag_reg_i_18
       (.CI(\diff_min_reg[3]_i_36_n_0 ),
        .CO({NLW_sign_flag_reg_i_18_CO_UNCONNECTED[3:2],sign_flag_reg_i_18_n_2,sign_flag_reg_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sign_flag_reg_i_18_O_UNCONNECTED[3],total_prev__0[18:16]}),
        .S({1'b0,total_prev_n_87,total_prev_n_88,total_prev_n_89}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sign_flag_reg_i_2
       (.CI(sign_flag_reg_i_3_n_0),
        .CO({NLW_sign_flag_reg_i_2_CO_UNCONNECTED[3:2],CO,sign_flag_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sign_flag_i_4_n_0,sign_flag_i_5_n_0}),
        .O(NLW_sign_flag_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,sign_flag_i_6_n_0,sign_flag_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sign_flag_reg_i_3
       (.CI(sign_flag_reg_i_8_n_0),
        .CO({sign_flag_reg_i_3_n_0,sign_flag_reg_i_3_n_1,sign_flag_reg_i_3_n_2,sign_flag_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({sign_flag_i_9_n_0,sign_flag_i_10_n_0,sign_flag_i_11_n_0,sign_flag_i_12_n_0}),
        .O(NLW_sign_flag_reg_i_3_O_UNCONNECTED[3:0]),
        .S({sign_flag_i_13_n_0,sign_flag_i_14_n_0,sign_flag_i_15_n_0,sign_flag_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sign_flag_reg_i_8
       (.CI(1'b0),
        .CO({sign_flag_reg_i_8_n_0,sign_flag_reg_i_8_n_1,sign_flag_reg_i_8_n_2,sign_flag_reg_i_8_n_3}),
        .CYINIT(1'b1),
        .DI({sign_flag_i_19_n_0,sign_flag_i_20_n_0,sign_flag_i_21_n_0,sign_flag_i_22_n_0}),
        .O(NLW_sign_flag_reg_i_8_O_UNCONNECTED[3:0]),
        .S({sign_flag_i_23_n_0,sign_flag_i_24_n_0,sign_flag_i_25_n_0,sign_flag_i_26_n_0}));
  FDCE \tmp_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_csec[0]),
        .Q(tmp_csec[0]));
  FDCE \tmp_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_csec[1]),
        .Q(tmp_csec[1]));
  FDCE \tmp_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_csec[2]),
        .Q(tmp_csec[2]));
  FDCE \tmp_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_csec[3]),
        .Q(tmp_csec[3]));
  FDCE \tmp_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_csec[4]),
        .Q(tmp_csec[4]));
  FDCE \tmp_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_csec[5]),
        .Q(tmp_csec[5]));
  FDCE \tmp_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_csec[6]),
        .Q(tmp_csec[6]));
  FDCE \tmp_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_min[0]),
        .Q(tmp_min__0[0]));
  FDCE \tmp_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_min[1]),
        .Q(tmp_min__0[1]));
  FDCE \tmp_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_min[2]),
        .Q(tmp_min__0[2]));
  FDCE \tmp_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_min[3]),
        .Q(tmp_min__0[3]));
  FDCE \tmp_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_min[4]),
        .Q(tmp_min__0[4]));
  FDCE \tmp_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_min[5]),
        .Q(tmp_min__0[5]));
  FDCE \tmp_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_sec[0]),
        .Q(tmp_sec[0]));
  FDCE \tmp_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_sec[1]),
        .Q(tmp_sec[1]));
  FDCE \tmp_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_sec[2]),
        .Q(tmp_sec[2]));
  FDCE \tmp_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_sec[3]),
        .Q(tmp_sec[3]));
  FDCE \tmp_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_sec[4]),
        .Q(tmp_sec[4]));
  FDCE \tmp_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_start_n_3),
        .CLR(AR),
        .D(lap_sec[5]),
        .Q(tmp_sec[5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    total_prev
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_total_prev_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,prev_min__0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_total_prev_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_total_prev_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_total_prev_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_total_prev_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_total_prev_OVERFLOW_UNCONNECTED),
        .P({NLW_total_prev_P_UNCONNECTED[47:19],total_prev_n_87,total_prev_n_88,total_prev_n_89,total_prev_n_90,total_prev_n_91,total_prev_n_92,total_prev_n_93,total_prev_n_94,total_prev_n_95,total_prev_n_96,total_prev_n_97,total_prev_n_98,total_prev_n_99,total_prev_n_100,total_prev_n_101,total_prev_n_102,total_prev_n_103,total_prev_n_104,total_prev_n_105}),
        .PATTERNBDETECT(NLW_total_prev_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_total_prev_PATTERNDETECT_UNCONNECTED),
        .PCIN({total_prev1_n_106,total_prev1_n_107,total_prev1_n_108,total_prev1_n_109,total_prev1_n_110,total_prev1_n_111,total_prev1_n_112,total_prev1_n_113,total_prev1_n_114,total_prev1_n_115,total_prev1_n_116,total_prev1_n_117,total_prev1_n_118,total_prev1_n_119,total_prev1_n_120,total_prev1_n_121,total_prev1_n_122,total_prev1_n_123,total_prev1_n_124,total_prev1_n_125,total_prev1_n_126,total_prev1_n_127,total_prev1_n_128,total_prev1_n_129,total_prev1_n_130,total_prev1_n_131,total_prev1_n_132,total_prev1_n_133,total_prev1_n_134,total_prev1_n_135,total_prev1_n_136,total_prev1_n_137,total_prev1_n_138,total_prev1_n_139,total_prev1_n_140,total_prev1_n_141,total_prev1_n_142,total_prev1_n_143,total_prev1_n_144,total_prev1_n_145,total_prev1_n_146,total_prev1_n_147,total_prev1_n_148,total_prev1_n_149,total_prev1_n_150,total_prev1_n_151,total_prev1_n_152,total_prev1_n_153}),
        .PCOUT(NLW_total_prev_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_total_prev_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    total_prev1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,prev_sec}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_total_prev1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_total_prev1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_total_prev1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_total_prev1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_total_prev1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_total_prev1_OVERFLOW_UNCONNECTED),
        .P({NLW_total_prev1_P_UNCONNECTED[47:15],total_prev1_n_91,total_prev1_n_92,total_prev1_n_93,total_prev1_n_94,total_prev1_n_95,total_prev1_n_96,total_prev1_n_97,total_prev1_n_98,total_prev1_n_99,total_prev1_n_100,total_prev1_n_101,total_prev1_n_102,total_prev1_n_103,total_prev1_n_104,total_prev1_n_105}),
        .PATTERNBDETECT(NLW_total_prev1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_total_prev1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({total_prev1_n_106,total_prev1_n_107,total_prev1_n_108,total_prev1_n_109,total_prev1_n_110,total_prev1_n_111,total_prev1_n_112,total_prev1_n_113,total_prev1_n_114,total_prev1_n_115,total_prev1_n_116,total_prev1_n_117,total_prev1_n_118,total_prev1_n_119,total_prev1_n_120,total_prev1_n_121,total_prev1_n_122,total_prev1_n_123,total_prev1_n_124,total_prev1_n_125,total_prev1_n_126,total_prev1_n_127,total_prev1_n_128,total_prev1_n_129,total_prev1_n_130,total_prev1_n_131,total_prev1_n_132,total_prev1_n_133,total_prev1_n_134,total_prev1_n_135,total_prev1_n_136,total_prev1_n_137,total_prev1_n_138,total_prev1_n_139,total_prev1_n_140,total_prev1_n_141,total_prev1_n_142,total_prev1_n_143,total_prev1_n_144,total_prev1_n_145,total_prev1_n_146,total_prev1_n_147,total_prev1_n_148,total_prev1_n_149,total_prev1_n_150,total_prev1_n_151,total_prev1_n_152,total_prev1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_total_prev1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    total_tmp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_total_tmp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_min__0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_total_tmp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_total_tmp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_total_tmp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_total_tmp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_total_tmp_OVERFLOW_UNCONNECTED),
        .P({NLW_total_tmp_P_UNCONNECTED[47:19],total_tmp_n_87,total_tmp_n_88,total_tmp_n_89,total_tmp_n_90,total_tmp_n_91,total_tmp_n_92,total_tmp_n_93,total_tmp_n_94,total_tmp_n_95,total_tmp_n_96,total_tmp_n_97,total_tmp_n_98,total_tmp_n_99,total_tmp_n_100,total_tmp_n_101,total_tmp_n_102,total_tmp_n_103,total_tmp_n_104,total_tmp_n_105}),
        .PATTERNBDETECT(NLW_total_tmp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_total_tmp_PATTERNDETECT_UNCONNECTED),
        .PCIN({total_tmp1_n_106,total_tmp1_n_107,total_tmp1_n_108,total_tmp1_n_109,total_tmp1_n_110,total_tmp1_n_111,total_tmp1_n_112,total_tmp1_n_113,total_tmp1_n_114,total_tmp1_n_115,total_tmp1_n_116,total_tmp1_n_117,total_tmp1_n_118,total_tmp1_n_119,total_tmp1_n_120,total_tmp1_n_121,total_tmp1_n_122,total_tmp1_n_123,total_tmp1_n_124,total_tmp1_n_125,total_tmp1_n_126,total_tmp1_n_127,total_tmp1_n_128,total_tmp1_n_129,total_tmp1_n_130,total_tmp1_n_131,total_tmp1_n_132,total_tmp1_n_133,total_tmp1_n_134,total_tmp1_n_135,total_tmp1_n_136,total_tmp1_n_137,total_tmp1_n_138,total_tmp1_n_139,total_tmp1_n_140,total_tmp1_n_141,total_tmp1_n_142,total_tmp1_n_143,total_tmp1_n_144,total_tmp1_n_145,total_tmp1_n_146,total_tmp1_n_147,total_tmp1_n_148,total_tmp1_n_149,total_tmp1_n_150,total_tmp1_n_151,total_tmp1_n_152,total_tmp1_n_153}),
        .PCOUT(NLW_total_tmp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_total_tmp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    total_tmp1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tmp_sec}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_total_tmp1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_total_tmp1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_total_tmp1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_total_tmp1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_total_tmp1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_total_tmp1_OVERFLOW_UNCONNECTED),
        .P({NLW_total_tmp1_P_UNCONNECTED[47:15],total_tmp1_n_91,total_tmp1_n_92,total_tmp1_n_93,total_tmp1_n_94,total_tmp1_n_95,total_tmp1_n_96,total_tmp1_n_97,total_tmp1_n_98,total_tmp1_n_99,total_tmp1_n_100,total_tmp1_n_101,total_tmp1_n_102,total_tmp1_n_103,total_tmp1_n_104,total_tmp1_n_105}),
        .PATTERNBDETECT(NLW_total_tmp1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_total_tmp1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({total_tmp1_n_106,total_tmp1_n_107,total_tmp1_n_108,total_tmp1_n_109,total_tmp1_n_110,total_tmp1_n_111,total_tmp1_n_112,total_tmp1_n_113,total_tmp1_n_114,total_tmp1_n_115,total_tmp1_n_116,total_tmp1_n_117,total_tmp1_n_118,total_tmp1_n_119,total_tmp1_n_120,total_tmp1_n_121,total_tmp1_n_122,total_tmp1_n_123,total_tmp1_n_124,total_tmp1_n_125,total_tmp1_n_126,total_tmp1_n_127,total_tmp1_n_128,total_tmp1_n_129,total_tmp1_n_130,total_tmp1_n_131,total_tmp1_n_132,total_tmp1_n_133,total_tmp1_n_134,total_tmp1_n_135,total_tmp1_n_136,total_tmp1_n_137,total_tmp1_n_138,total_tmp1_n_139,total_tmp1_n_140,total_tmp1_n_141,total_tmp1_n_142,total_tmp1_n_143,total_tmp1_n_144,total_tmp1_n_145,total_tmp1_n_146,total_tmp1_n_147,total_tmp1_n_148,total_tmp1_n_149,total_tmp1_n_150,total_tmp1_n_151,total_tmp1_n_152,total_tmp1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_total_tmp1_UNDERFLOW_UNCONNECTED));
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
