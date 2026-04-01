// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Mar  7 14:53:00 2026
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
   (ff_cur_reg_0,
    AR,
    ff_old_reg_0,
    ff_cur_reg_1,
    E,
    ff_cur_reg_2,
    ff_cur_reg_3,
    ff_old_reg_1,
    ff_cur_reg_4,
    ff_old_reg_2,
    \slv_reg0_reg[2] ,
    ff_cur_reg_5,
    ff_cur_reg_6,
    D,
    \lap_min_reg[3] ,
    \lap_sec_reg[3] ,
    \lap_csec_reg[5] ,
    Q,
    s00_axi_aclk,
    \cnt_sysclk2_reg[19] ,
    \cnt_sysclk2_reg[19]_0 ,
    \csec_reg[0] ,
    \sec_reg[0] ,
    \min_reg[0] ,
    s00_axi_aresetn,
    \lap_min_reg[0] ,
    \lap_min_reg[0]_0 ,
    \prev_csec_reg[0] ,
    \prev_csec_reg[0]_0 ,
    \cnt_sysclk2_reg[0] ,
    cnt_sysclk20,
    \lap_min_reg[5] ,
    \lap_min_reg[5]_0 ,
    \lap_min_reg[5]_1 ,
    \lap_sec_reg[5] ,
    \lap_sec_reg[5]_0 ,
    \lap_csec_reg[6] ,
    \lap_csec_reg[5]_0 ,
    \lap_csec_reg[6]_0 ,
    \lap_csec_reg[6]_1 );
  output ff_cur_reg_0;
  output [0:0]AR;
  output ff_old_reg_0;
  output ff_cur_reg_1;
  output [0:0]E;
  output [0:0]ff_cur_reg_2;
  output [0:0]ff_cur_reg_3;
  output [0:0]ff_old_reg_1;
  output [0:0]ff_cur_reg_4;
  output [0:0]ff_old_reg_2;
  output [0:0]\slv_reg0_reg[2] ;
  output [0:0]ff_cur_reg_5;
  output [0:0]ff_cur_reg_6;
  output [19:0]D;
  output [5:0]\lap_min_reg[3] ;
  output [5:0]\lap_sec_reg[3] ;
  output [6:0]\lap_csec_reg[5] ;
  input [1:0]Q;
  input s00_axi_aclk;
  input \cnt_sysclk2_reg[19] ;
  input \cnt_sysclk2_reg[19]_0 ;
  input \csec_reg[0] ;
  input \sec_reg[0] ;
  input \min_reg[0] ;
  input s00_axi_aresetn;
  input \lap_min_reg[0] ;
  input \lap_min_reg[0]_0 ;
  input \prev_csec_reg[0] ;
  input \prev_csec_reg[0]_0 ;
  input [0:0]\cnt_sysclk2_reg[0] ;
  input [18:0]cnt_sysclk20;
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
  wire [1:0]Q;
  wire [18:0]cnt_sysclk20;
  wire [0:0]\cnt_sysclk2_reg[0] ;
  wire \cnt_sysclk2_reg[19] ;
  wire \cnt_sysclk2_reg[19]_0 ;
  wire \csec_reg[0] ;
  wire ff_cur_reg_0;
  wire ff_cur_reg_1;
  wire [0:0]ff_cur_reg_2;
  wire [0:0]ff_cur_reg_3;
  wire [0:0]ff_cur_reg_4;
  wire [0:0]ff_cur_reg_5;
  wire [0:0]ff_cur_reg_6;
  wire ff_old_reg_0;
  wire [0:0]ff_old_reg_1;
  wire [0:0]ff_old_reg_2;
  wire \lap_csec[6]_i_3_n_0 ;
  wire [6:0]\lap_csec_reg[5] ;
  wire \lap_csec_reg[5]_0 ;
  wire [6:0]\lap_csec_reg[6] ;
  wire \lap_csec_reg[6]_0 ;
  wire \lap_csec_reg[6]_1 ;
  wire \lap_min[5]_i_4_n_0 ;
  wire \lap_min[5]_i_6_n_0 ;
  wire \lap_min_reg[0] ;
  wire \lap_min_reg[0]_0 ;
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
  wire \prev_csec_reg[0] ;
  wire \prev_csec_reg[0]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \sec_reg[0] ;
  wire [0:0]\slv_reg0_reg[2] ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \cnt_sysclk1[19]_i_1 
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .I2(\cnt_sysclk2_reg[19] ),
        .O(ff_cur_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004044)) 
    \cnt_sysclk2[0]_i_1 
       (.I0(\cnt_sysclk2_reg[0] ),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[10]_i_1 
       (.I0(cnt_sysclk20[9]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[11]_i_1 
       (.I0(cnt_sysclk20[10]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[12]_i_1 
       (.I0(cnt_sysclk20[11]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[13]_i_1 
       (.I0(cnt_sysclk20[12]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[14]_i_1 
       (.I0(cnt_sysclk20[13]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[15]_i_1 
       (.I0(cnt_sysclk20[14]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[16]_i_1 
       (.I0(cnt_sysclk20[15]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[17]_i_1 
       (.I0(cnt_sysclk20[16]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[18]_i_1 
       (.I0(cnt_sysclk20[17]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    \cnt_sysclk2[19]_i_1 
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .I2(\cnt_sysclk2_reg[19] ),
        .I3(\cnt_sysclk2_reg[19]_0 ),
        .O(ff_cur_reg_1));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[19]_i_2 
       (.I0(cnt_sysclk20[18]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[1]_i_1 
       (.I0(cnt_sysclk20[0]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[2]_i_1 
       (.I0(cnt_sysclk20[1]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[3]_i_1 
       (.I0(cnt_sysclk20[2]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[4]_i_1 
       (.I0(cnt_sysclk20[3]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[5]_i_1 
       (.I0(cnt_sysclk20[4]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[6]_i_1 
       (.I0(cnt_sysclk20[5]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[7]_i_1 
       (.I0(cnt_sysclk20[6]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[8]_i_1 
       (.I0(cnt_sysclk20[7]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \cnt_sysclk2[9]_i_1 
       (.I0(cnt_sysclk20[8]),
        .I1(\cnt_sysclk2_reg[19] ),
        .I2(ff_old_reg_0),
        .I3(ff_cur_reg_0),
        .I4(\lap_min_reg[0] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \csec[6]_i_1 
       (.I0(\csec_reg[0] ),
        .I1(ff_cur_reg_0),
        .I2(ff_old_reg_0),
        .I3(\cnt_sysclk2_reg[19] ),
        .O(ff_cur_reg_6));
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
    .INIT(8'hF4)) 
    \lap_count[7]_i_1 
       (.I0(ff_old_reg_0),
        .I1(ff_cur_reg_0),
        .I2(\cnt_sysclk2_reg[19]_0 ),
        .O(ff_old_reg_2));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h88A8)) 
    \lap_csec[6]_i_1 
       (.I0(ff_cur_reg_1),
        .I1(\lap_min_reg[0] ),
        .I2(ff_cur_reg_0),
        .I3(ff_old_reg_0),
        .O(ff_cur_reg_4));
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
       (.I0(\cnt_sysclk2_reg[19] ),
        .I1(\lap_csec_reg[6]_1 ),
        .I2(\lap_csec_reg[6] [5]),
        .I3(\lap_csec_reg[6] [6]),
        .I4(ff_cur_reg_0),
        .I5(ff_old_reg_0),
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
    .INIT(64'h8000800088888000)) 
    \lap_min[5]_i_1 
       (.I0(\lap_sec[5]_i_3_n_0 ),
        .I1(ff_cur_reg_1),
        .I2(\lap_min_reg[0] ),
        .I3(\lap_min_reg[0]_0 ),
        .I4(ff_cur_reg_0),
        .I5(ff_old_reg_0),
        .O(ff_cur_reg_3));
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_min[5]_i_6 
       (.I0(\cnt_sysclk2_reg[19] ),
        .I1(ff_old_reg_0),
        .I2(ff_cur_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF4000000)) 
    \lap_sec[5]_i_1 
       (.I0(ff_old_reg_0),
        .I1(ff_cur_reg_0),
        .I2(\lap_min_reg[0] ),
        .I3(ff_cur_reg_1),
        .I4(\lap_sec[5]_i_3_n_0 ),
        .O(ff_old_reg_1));
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
       (.I0(ff_old_reg_0),
        .I1(ff_cur_reg_0),
        .I2(\lap_csec_reg[6] [6]),
        .I3(\lap_csec_reg[6] [5]),
        .I4(\lap_csec_reg[6]_1 ),
        .O(\lap_sec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \lap_sec[5]_i_4 
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .I2(\cnt_sysclk2_reg[19] ),
        .I3(\lap_min_reg[0]_0 ),
        .O(\lap_sec[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA08)) 
    \min[5]_i_1 
       (.I0(\csec_reg[0] ),
        .I1(ff_cur_reg_0),
        .I2(ff_old_reg_0),
        .I3(\cnt_sysclk2_reg[19] ),
        .I4(\sec_reg[0] ),
        .I5(\min_reg[0] ),
        .O(ff_cur_reg_2));
  LUT5 #(
    .INIT(32'h5D005D5D)) 
    \prev_min[5]_i_1 
       (.I0(Q[1]),
        .I1(ff_cur_reg_0),
        .I2(ff_old_reg_0),
        .I3(\prev_csec_reg[0] ),
        .I4(\prev_csec_reg[0]_0 ),
        .O(\slv_reg0_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000AA08)) 
    \sec[5]_i_1 
       (.I0(\csec_reg[0] ),
        .I1(ff_cur_reg_0),
        .I2(ff_old_reg_0),
        .I3(\cnt_sysclk2_reg[19] ),
        .I4(\sec_reg[0] ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
   (ff_cur_reg_0,
    ff_old_reg_0,
    E,
    D,
    \lap_count_reg[1] ,
    Q,
    s00_axi_aclk,
    AR,
    \diff_csec_reg[0] ,
    \diff_csec_reg[0]_0 ,
    \lap_count_reg[0] ,
    \lap_count_reg[0]_0 ,
    \lap_count_reg[0]_1 );
  output ff_cur_reg_0;
  output ff_old_reg_0;
  output [0:0]E;
  output [0:0]D;
  output \lap_count_reg[1] ;
  input [1:0]Q;
  input s00_axi_aclk;
  input [0:0]AR;
  input \diff_csec_reg[0] ;
  input \diff_csec_reg[0]_0 ;
  input [3:0]\lap_count_reg[0] ;
  input \lap_count_reg[0]_0 ;
  input \lap_count_reg[0]_1 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \diff_csec_reg[0] ;
  wire \diff_csec_reg[0]_0 ;
  wire ff_cur_reg_0;
  wire ff_old_reg_0;
  wire [3:0]\lap_count_reg[0] ;
  wire \lap_count_reg[0]_0 ;
  wire \lap_count_reg[0]_1 ;
  wire \lap_count_reg[1] ;
  wire s00_axi_aclk;
  wire start_p;

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
       (.I0(\lap_count_reg[1] ),
        .I1(\lap_count_reg[0] [0]),
        .I2(\lap_count_reg[0]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \lap_count[7]_i_3 
       (.I0(start_p),
        .I1(\lap_count_reg[0] [1]),
        .I2(\lap_count_reg[0] [0]),
        .I3(\lap_count_reg[0] [3]),
        .I4(\lap_count_reg[0] [2]),
        .I5(\lap_count_reg[0]_1 ),
        .O(\lap_count_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_count[7]_i_5 
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .O(start_p));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hD000D0D0)) 
    \tmp_min[5]_i_1 
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .I2(Q[1]),
        .I3(\diff_csec_reg[0] ),
        .I4(\diff_csec_reg[0]_0 ),
        .O(E));
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

  wire axi_arready_i_1_n_0;
  wire axi_arready_reg;
  wire axi_awready0__0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg;
  wire axi_wready_i_1_n_0;
  wire lap_flag;
  wire lap_flag_i_1_n_0;
  wire myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_13;
  wire myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_20;
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
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sign_flag;
  wire sign_flag_i_1_n_0;
  wire [2:2]slv_reg0;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire [1:0]\stop_watch_inst/ed_clear/p_0_in ;
  wire [1:0]\stop_watch_inst/ed_start/p_0_in ;
  wire \stop_watch_inst/tmp_min ;

  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  LUT5 #(
    .INIT(32'hCCC4FFCF)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_2_n_0));
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
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg),
        .O(axi_rvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFFFBFBFB000B0B0)) 
    lap_flag_i_1
       (.I0(\stop_watch_inst/ed_clear/p_0_in [0]),
        .I1(\stop_watch_inst/ed_clear/p_0_in [1]),
        .I2(slv_reg0),
        .I3(\stop_watch_inst/ed_start/p_0_in [0]),
        .I4(\stop_watch_inst/ed_start/p_0_in [1]),
        .I5(lap_flag),
        .O(lap_flag_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI myip_stopwatch_slave_lite_v1_0_S00_AXI_inst
       (.CO(myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_20),
        .E(\stop_watch_inst/tmp_min ),
        .Q(slv_reg0),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_arready_reg_1(axi_arready_i_1_n_0),
        .axi_awready0__0(axi_awready0__0),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_awready_reg_1(axi_awready_i_2_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(axi_wready_i_1_n_0),
        .\lap_count_reg[1] (myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_13),
        .lap_flag(lap_flag),
        .lap_flag_reg(lap_flag_i_1_n_0),
        .p_0_in(\stop_watch_inst/ed_start/p_0_in ),
        .p_0_in_0(\stop_watch_inst/ed_clear/p_0_in ),
        .run(run),
        .run_reg(run_i_1_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sign_flag(sign_flag),
        .sign_flag_reg(sign_flag_i_1_n_0),
        .state_read(state_read),
        .state_write(state_write));
  LUT3 #(
    .INIT(8'hB4)) 
    run_i_1
       (.I0(\stop_watch_inst/ed_start/p_0_in [0]),
        .I1(\stop_watch_inst/ed_start/p_0_in [1]),
        .I2(run),
        .O(run_i_1_n_0));
  LUT4 #(
    .INIT(16'hF704)) 
    sign_flag_i_1
       (.I0(myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_20),
        .I1(\stop_watch_inst/tmp_min ),
        .I2(myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_13),
        .I3(sign_flag),
        .O(sign_flag_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI
   (p_0_in,
    Q,
    p_0_in_0,
    run,
    lap_flag,
    sign_flag,
    s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    \lap_count_reg[1] ,
    E,
    state_write,
    state_read,
    axi_awready0__0,
    CO,
    s00_axi_rdata,
    s00_axi_aclk,
    run_reg,
    lap_flag_reg,
    sign_flag_reg,
    axi_bvalid_reg_0,
    axi_awready_reg_1,
    axi_wready_reg_0,
    axi_rvalid_reg_1,
    axi_arready_reg_1,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn);
  output [1:0]p_0_in;
  output [0:0]Q;
  output [1:0]p_0_in_0;
  output run;
  output lap_flag;
  output sign_flag;
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output \lap_count_reg[1] ;
  output [0:0]E;
  output [1:0]state_write;
  output [1:0]state_read;
  output axi_awready0__0;
  output [0:0]CO;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input run_reg;
  input lap_flag_reg;
  input sign_flag_reg;
  input axi_bvalid_reg_0;
  input axi_awready_reg_1;
  input axi_wready_reg_0;
  input axi_rvalid_reg_1;
  input axi_arready_reg_1;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [0:0]Q;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_reg_0;
  wire axi_arready_reg_1;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready0__0;
  wire axi_awready_reg_0;
  wire axi_awready_reg_1;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_reg_0;
  wire axi_rvalid_reg_1;
  wire axi_wready_reg_0;
  wire \lap_count_reg[1] ;
  wire lap_flag;
  wire lap_flag_reg;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire run;
  wire run_reg;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
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
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire sign_flag;
  wire sign_flag_reg;
  wire [1:0]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire [31:3]slv_reg0__0;
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
  wire stop_watch_inst_n_1;

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
        .R(stop_watch_inst_n_1));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(stop_watch_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
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
        .R(stop_watch_inst_n_1));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(stop_watch_inst_n_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
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
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_1),
        .Q(axi_arready_reg_0),
        .R(stop_watch_inst_n_1));
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
        .R(stop_watch_inst_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(stop_watch_inst_n_1));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(stop_watch_inst_n_1));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_reg_1),
        .Q(axi_awready_reg_0),
        .R(stop_watch_inst_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(stop_watch_inst_n_1));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_1),
        .Q(axi_rvalid_reg_0),
        .R(stop_watch_inst_n_1));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_wready),
        .R(stop_watch_inst_n_1));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg0__0[15]),
        .I4(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg5[15]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(slv_reg6[15]),
        .I4(slv_reg7[15]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
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
    .INIT(32'hFFFF0100)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg0__0[22]),
        .I4(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg5[22]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(slv_reg6[22]),
        .I4(slv_reg7[22]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg0__0[23]),
        .I4(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg5[23]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(slv_reg6[23]),
        .I4(slv_reg7[23]),
        .I5(sel0[2]),
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
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg0__0[7]),
        .I4(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg5[7]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(slv_reg6[7]),
        .I4(slv_reg7[7]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
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
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0__0[10]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0__0[11]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0__0[12]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0__0[13]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0__0[14]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0__0[15]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0__0[16]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0__0[17]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0__0[18]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0__0[19]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0__0[20]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0__0[21]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0__0[22]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0__0[23]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0__0[24]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0__0[25]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0__0[26]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0__0[27]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0__0[28]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0__0[29]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(Q),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0__0[30]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0__0[31]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0__0[3]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0__0[4]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0__0[5]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0__0[6]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0__0[7]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0__0[8]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0__0[9]),
        .R(stop_watch_inst_n_1));
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
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(stop_watch_inst_n_1));
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
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
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
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(stop_watch_inst_n_1));
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
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(stop_watch_inst_n_1));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(stop_watch_inst_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip stop_watch_inst
       (.CO(CO),
        .E(E),
        .Q({slv_reg0__0[31:24],slv_reg0__0[21:16],slv_reg0__0[14:8],slv_reg0__0[6:3],Q,slv_reg0}),
        .SR(stop_watch_inst_n_1),
        .ff_cur_reg(p_0_in[1]),
        .ff_cur_reg_0(p_0_in_0[1]),
        .ff_old_reg(p_0_in[0]),
        .ff_old_reg_0(p_0_in_0[0]),
        .\lap_count_reg[1]_0 (\lap_count_reg[1] ),
        .lap_flag(lap_flag),
        .lap_flag_reg_0(lap_flag_reg),
        .run_reg_0(run),
        .run_reg_1(run_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata({s00_axi_rdata[31:24],s00_axi_rdata[21:16],s00_axi_rdata[14:8],s00_axi_rdata[6:0]}),
        .\s00_axi_rdata[20] ({slv_reg7[20:16],slv_reg7[14:8],slv_reg7[6:0]}),
        .\s00_axi_rdata[20]_0 ({slv_reg6[20:16],slv_reg6[14:8],slv_reg6[6:0]}),
        .\s00_axi_rdata[20]_1 ({slv_reg5[20:16],slv_reg5[14:8],slv_reg5[6:0]}),
        .\s00_axi_rdata[28] (\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .\s00_axi_rdata[29] (\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .\s00_axi_rdata[30] (\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .\s00_axi_rdata[31] (\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_21_sp_1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_24_sp_1(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_25_sp_1(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_26_sp_1(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_27_sp_1(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .sel0(sel0),
        .sign_flag(sign_flag),
        .sign_flag_reg_0(sign_flag_reg));
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
   (ff_cur_reg,
    SR,
    ff_old_reg,
    ff_cur_reg_0,
    ff_old_reg_0,
    run_reg_0,
    lap_flag,
    sign_flag,
    CO,
    \lap_count_reg[1]_0 ,
    E,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    run_reg_1,
    lap_flag_reg_0,
    sign_flag_reg_0,
    s00_axi_aresetn,
    \s00_axi_rdata[31] ,
    sel0,
    \s00_axi_rdata[30] ,
    \s00_axi_rdata[29] ,
    \s00_axi_rdata[28] ,
    s00_axi_rdata_27_sp_1,
    s00_axi_rdata_26_sp_1,
    s00_axi_rdata_25_sp_1,
    s00_axi_rdata_24_sp_1,
    s00_axi_rdata_21_sp_1,
    \s00_axi_rdata[20] ,
    \s00_axi_rdata[20]_0 ,
    \s00_axi_rdata[20]_1 );
  output ff_cur_reg;
  output [0:0]SR;
  output ff_old_reg;
  output ff_cur_reg_0;
  output ff_old_reg_0;
  output run_reg_0;
  output lap_flag;
  output sign_flag;
  output [0:0]CO;
  output \lap_count_reg[1]_0 ;
  output [0:0]E;
  output [27:0]s00_axi_rdata;
  input [27:0]Q;
  input s00_axi_aclk;
  input run_reg_1;
  input lap_flag_reg_0;
  input sign_flag_reg_0;
  input s00_axi_aresetn;
  input \s00_axi_rdata[31] ;
  input [2:0]sel0;
  input \s00_axi_rdata[30] ;
  input \s00_axi_rdata[29] ;
  input \s00_axi_rdata[28] ;
  input s00_axi_rdata_27_sp_1;
  input s00_axi_rdata_26_sp_1;
  input s00_axi_rdata_25_sp_1;
  input s00_axi_rdata_24_sp_1;
  input s00_axi_rdata_21_sp_1;
  input [18:0]\s00_axi_rdata[20] ;
  input [18:0]\s00_axi_rdata[20]_0 ;
  input [18:0]\s00_axi_rdata[20]_1 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire [27:0]Q;
  wire [0:0]SR;
  wire [16:0]abs_diff;
  wire [1:0]calc_diff_csec;
  wire calc_diff_csec__105_carry__0_i_1_n_0;
  wire calc_diff_csec__105_carry__0_i_2_n_0;
  wire calc_diff_csec__105_carry__0_i_3_n_0;
  wire calc_diff_csec__105_carry__0_i_4_n_0;
  wire calc_diff_csec__105_carry__0_n_1;
  wire calc_diff_csec__105_carry__0_n_2;
  wire calc_diff_csec__105_carry__0_n_3;
  wire calc_diff_csec__105_carry__0_n_4;
  wire calc_diff_csec__105_carry__0_n_5;
  wire calc_diff_csec__105_carry__0_n_6;
  wire calc_diff_csec__105_carry__0_n_7;
  wire calc_diff_csec__105_carry_i_1_n_0;
  wire calc_diff_csec__105_carry_i_2_n_0;
  wire calc_diff_csec__105_carry_i_3_n_0;
  wire calc_diff_csec__105_carry_i_4_n_0;
  wire calc_diff_csec__105_carry_n_0;
  wire calc_diff_csec__105_carry_n_1;
  wire calc_diff_csec__105_carry_n_2;
  wire calc_diff_csec__105_carry_n_3;
  wire calc_diff_csec__105_carry_n_4;
  wire calc_diff_csec__105_carry_n_5;
  wire calc_diff_csec__55_carry__0_i_1_n_0;
  wire calc_diff_csec__55_carry__0_i_2_n_0;
  wire calc_diff_csec__55_carry__0_i_3_n_0;
  wire calc_diff_csec__55_carry__0_i_4_n_0;
  wire calc_diff_csec__55_carry__0_i_5_n_0;
  wire calc_diff_csec__55_carry__0_i_6_n_0;
  wire calc_diff_csec__55_carry__0_n_0;
  wire calc_diff_csec__55_carry__0_n_1;
  wire calc_diff_csec__55_carry__0_n_2;
  wire calc_diff_csec__55_carry__0_n_3;
  wire calc_diff_csec__55_carry__1_i_10_n_0;
  wire calc_diff_csec__55_carry__1_i_11_n_0;
  wire calc_diff_csec__55_carry__1_i_12_n_0;
  wire calc_diff_csec__55_carry__1_i_1_n_0;
  wire calc_diff_csec__55_carry__1_i_2_n_0;
  wire calc_diff_csec__55_carry__1_i_3_n_0;
  wire calc_diff_csec__55_carry__1_i_4_n_0;
  wire calc_diff_csec__55_carry__1_i_5_n_0;
  wire calc_diff_csec__55_carry__1_i_6_n_0;
  wire calc_diff_csec__55_carry__1_i_7_n_0;
  wire calc_diff_csec__55_carry__1_i_8_n_0;
  wire calc_diff_csec__55_carry__1_i_9_n_0;
  wire calc_diff_csec__55_carry__1_n_0;
  wire calc_diff_csec__55_carry__1_n_1;
  wire calc_diff_csec__55_carry__1_n_2;
  wire calc_diff_csec__55_carry__1_n_3;
  wire calc_diff_csec__55_carry__2_i_10_n_0;
  wire calc_diff_csec__55_carry__2_i_11_n_0;
  wire calc_diff_csec__55_carry__2_i_12_n_0;
  wire calc_diff_csec__55_carry__2_i_1_n_0;
  wire calc_diff_csec__55_carry__2_i_2_n_0;
  wire calc_diff_csec__55_carry__2_i_3_n_0;
  wire calc_diff_csec__55_carry__2_i_4_n_0;
  wire calc_diff_csec__55_carry__2_i_5_n_0;
  wire calc_diff_csec__55_carry__2_i_6_n_0;
  wire calc_diff_csec__55_carry__2_i_7_n_0;
  wire calc_diff_csec__55_carry__2_i_8_n_0;
  wire calc_diff_csec__55_carry__2_i_9_n_0;
  wire calc_diff_csec__55_carry__2_n_0;
  wire calc_diff_csec__55_carry__2_n_1;
  wire calc_diff_csec__55_carry__2_n_2;
  wire calc_diff_csec__55_carry__2_n_3;
  wire calc_diff_csec__55_carry__2_n_4;
  wire calc_diff_csec__55_carry__2_n_5;
  wire calc_diff_csec__55_carry__3_i_10_n_0;
  wire calc_diff_csec__55_carry__3_i_11_n_0;
  wire calc_diff_csec__55_carry__3_i_1_n_0;
  wire calc_diff_csec__55_carry__3_i_2_n_0;
  wire calc_diff_csec__55_carry__3_i_3_n_0;
  wire calc_diff_csec__55_carry__3_i_4_n_0;
  wire calc_diff_csec__55_carry__3_i_5_n_0;
  wire calc_diff_csec__55_carry__3_i_6_n_0;
  wire calc_diff_csec__55_carry__3_i_7_n_0;
  wire calc_diff_csec__55_carry__3_i_8_n_0;
  wire calc_diff_csec__55_carry__3_i_9_n_0;
  wire calc_diff_csec__55_carry__3_n_1;
  wire calc_diff_csec__55_carry__3_n_2;
  wire calc_diff_csec__55_carry__3_n_3;
  wire calc_diff_csec__55_carry__3_n_4;
  wire calc_diff_csec__55_carry__3_n_5;
  wire calc_diff_csec__55_carry__3_n_6;
  wire calc_diff_csec__55_carry__3_n_7;
  wire calc_diff_csec__55_carry_i_1_n_0;
  wire calc_diff_csec__55_carry_i_2_n_0;
  wire calc_diff_csec__55_carry_i_3_n_0;
  wire calc_diff_csec__55_carry_n_0;
  wire calc_diff_csec__55_carry_n_1;
  wire calc_diff_csec__55_carry_n_2;
  wire calc_diff_csec__55_carry_n_3;
  wire calc_diff_csec__99_carry_i_1_n_0;
  wire calc_diff_csec__99_carry_i_2_n_0;
  wire calc_diff_csec__99_carry_i_3_n_0;
  wire calc_diff_csec__99_carry_i_4_n_0;
  wire calc_diff_csec__99_carry_n_2;
  wire calc_diff_csec__99_carry_n_3;
  wire calc_diff_csec__99_carry_n_5;
  wire calc_diff_csec__99_carry_n_6;
  wire calc_diff_csec__99_carry_n_7;
  wire calc_diff_csec_carry__0_i_1_n_0;
  wire calc_diff_csec_carry__0_i_2_n_0;
  wire calc_diff_csec_carry__0_i_3_n_0;
  wire calc_diff_csec_carry__0_i_4_n_0;
  wire calc_diff_csec_carry__0_n_0;
  wire calc_diff_csec_carry__0_n_1;
  wire calc_diff_csec_carry__0_n_2;
  wire calc_diff_csec_carry__0_n_3;
  wire calc_diff_csec_carry__0_n_4;
  wire calc_diff_csec_carry__0_n_5;
  wire calc_diff_csec_carry__0_n_6;
  wire calc_diff_csec_carry__0_n_7;
  wire calc_diff_csec_carry__1_i_1_n_0;
  wire calc_diff_csec_carry__1_i_2_n_0;
  wire calc_diff_csec_carry__1_i_3_n_0;
  wire calc_diff_csec_carry__1_i_4_n_0;
  wire calc_diff_csec_carry__1_n_0;
  wire calc_diff_csec_carry__1_n_1;
  wire calc_diff_csec_carry__1_n_2;
  wire calc_diff_csec_carry__1_n_3;
  wire calc_diff_csec_carry__1_n_4;
  wire calc_diff_csec_carry__1_n_5;
  wire calc_diff_csec_carry__1_n_6;
  wire calc_diff_csec_carry__1_n_7;
  wire calc_diff_csec_carry__2_i_1_n_0;
  wire calc_diff_csec_carry__2_i_2_n_0;
  wire calc_diff_csec_carry__2_i_3_n_0;
  wire calc_diff_csec_carry__2_i_4_n_0;
  wire calc_diff_csec_carry__2_n_0;
  wire calc_diff_csec_carry__2_n_1;
  wire calc_diff_csec_carry__2_n_2;
  wire calc_diff_csec_carry__2_n_3;
  wire calc_diff_csec_carry__2_n_4;
  wire calc_diff_csec_carry__2_n_5;
  wire calc_diff_csec_carry__2_n_6;
  wire calc_diff_csec_carry__2_n_7;
  wire calc_diff_csec_carry__3_i_1_n_0;
  wire calc_diff_csec_carry__3_i_2_n_0;
  wire calc_diff_csec_carry__3_i_3_n_0;
  wire calc_diff_csec_carry__3_i_4_n_0;
  wire calc_diff_csec_carry__3_n_0;
  wire calc_diff_csec_carry__3_n_1;
  wire calc_diff_csec_carry__3_n_2;
  wire calc_diff_csec_carry__3_n_3;
  wire calc_diff_csec_carry__3_n_4;
  wire calc_diff_csec_carry__3_n_5;
  wire calc_diff_csec_carry__3_n_6;
  wire calc_diff_csec_carry__3_n_7;
  wire calc_diff_csec_carry__4_n_7;
  wire calc_diff_csec_carry_i_1_n_0;
  wire calc_diff_csec_carry_i_2_n_0;
  wire calc_diff_csec_carry_i_3_n_0;
  wire calc_diff_csec_carry_n_0;
  wire calc_diff_csec_carry_n_1;
  wire calc_diff_csec_carry_n_2;
  wire calc_diff_csec_carry_n_3;
  wire calc_diff_csec_carry_n_4;
  wire calc_diff_csec_carry_n_5;
  wire calc_diff_min0_carry__0_i_1_n_0;
  wire calc_diff_min0_carry__0_i_2_n_0;
  wire calc_diff_min0_carry__0_i_3_n_0;
  wire calc_diff_min0_carry__0_i_4_n_0;
  wire calc_diff_min0_carry__0_i_5_n_0;
  wire calc_diff_min0_carry__0_i_6_n_0;
  wire calc_diff_min0_carry__0_i_7_n_0;
  wire calc_diff_min0_carry__0_i_8_n_0;
  wire calc_diff_min0_carry__0_n_0;
  wire calc_diff_min0_carry__0_n_1;
  wire calc_diff_min0_carry__0_n_2;
  wire calc_diff_min0_carry__0_n_3;
  wire calc_diff_min0_carry__1_i_1_n_0;
  wire calc_diff_min0_carry__1_i_2_n_0;
  wire calc_diff_min0_carry__1_i_3_n_0;
  wire calc_diff_min0_carry__1_i_4_n_0;
  wire calc_diff_min0_carry__1_i_5_n_0;
  wire calc_diff_min0_carry__1_i_6_n_0;
  wire calc_diff_min0_carry__1_i_7_n_0;
  wire calc_diff_min0_carry__1_i_8_n_0;
  wire calc_diff_min0_carry__1_n_0;
  wire calc_diff_min0_carry__1_n_1;
  wire calc_diff_min0_carry__1_n_2;
  wire calc_diff_min0_carry__1_n_3;
  wire calc_diff_min0_carry__2_i_1_n_0;
  wire calc_diff_min0_carry__2_i_2_n_0;
  wire calc_diff_min0_carry__2_i_3_n_0;
  wire calc_diff_min0_carry__2_i_4_n_0;
  wire calc_diff_min0_carry__2_i_5_n_0;
  wire calc_diff_min0_carry__2_i_6_n_0;
  wire calc_diff_min0_carry__2_i_7_n_0;
  wire calc_diff_min0_carry__2_i_8_n_0;
  wire calc_diff_min0_carry__2_n_0;
  wire calc_diff_min0_carry__2_n_1;
  wire calc_diff_min0_carry__2_n_2;
  wire calc_diff_min0_carry__2_n_3;
  wire calc_diff_min0_carry__3_i_1_n_0;
  wire calc_diff_min0_carry_i_1_n_0;
  wire calc_diff_min0_carry_i_2_n_0;
  wire calc_diff_min0_carry_i_3_n_0;
  wire calc_diff_min0_carry_i_4_n_0;
  wire calc_diff_min0_carry_i_5_n_0;
  wire calc_diff_min0_carry_i_6_n_0;
  wire calc_diff_min0_carry_i_7_n_0;
  wire calc_diff_min0_carry_i_8_n_0;
  wire calc_diff_min0_carry_n_0;
  wire calc_diff_min0_carry_n_1;
  wire calc_diff_min0_carry_n_2;
  wire calc_diff_min0_carry_n_3;
  wire calc_diff_min__23_carry__0_i_1_n_0;
  wire calc_diff_min__23_carry__0_i_2_n_0;
  wire calc_diff_min__23_carry__0_i_3_n_0;
  wire calc_diff_min__23_carry__0_i_4_n_0;
  wire calc_diff_min__23_carry__0_i_5_n_0;
  wire calc_diff_min__23_carry__0_i_6_n_0;
  wire calc_diff_min__23_carry__0_i_7_n_0;
  wire calc_diff_min__23_carry__0_n_0;
  wire calc_diff_min__23_carry__0_n_1;
  wire calc_diff_min__23_carry__0_n_2;
  wire calc_diff_min__23_carry__0_n_3;
  wire calc_diff_min__23_carry__0_n_4;
  wire calc_diff_min__23_carry__0_n_5;
  wire calc_diff_min__23_carry__0_n_6;
  wire calc_diff_min__23_carry__0_n_7;
  wire calc_diff_min__23_carry__1_n_2;
  wire calc_diff_min__23_carry__1_n_7;
  wire calc_diff_min__23_carry_i_1_n_0;
  wire calc_diff_min__23_carry_i_2_n_0;
  wire calc_diff_min__23_carry_i_3_n_0;
  wire calc_diff_min__23_carry_i_4_n_0;
  wire calc_diff_min__23_carry_i_5_n_0;
  wire calc_diff_min__23_carry_i_6_n_0;
  wire calc_diff_min__23_carry_i_7_n_0;
  wire calc_diff_min__23_carry_i_8_n_0;
  wire calc_diff_min__23_carry_n_0;
  wire calc_diff_min__23_carry_n_1;
  wire calc_diff_min__23_carry_n_2;
  wire calc_diff_min__23_carry_n_3;
  wire calc_diff_min__23_carry_n_4;
  wire calc_diff_min__23_carry_n_5;
  wire calc_diff_min__23_carry_n_6;
  wire calc_diff_min__23_carry_n_7;
  wire calc_diff_min__46_carry__0_i_1_n_0;
  wire calc_diff_min__46_carry__0_i_2_n_0;
  wire calc_diff_min__46_carry__0_i_3_n_0;
  wire calc_diff_min__46_carry__0_i_4_n_0;
  wire calc_diff_min__46_carry__0_i_5_n_0;
  wire calc_diff_min__46_carry__0_i_6_n_0;
  wire calc_diff_min__46_carry__0_i_7_n_0;
  wire calc_diff_min__46_carry__0_i_8_n_0;
  wire calc_diff_min__46_carry__0_n_0;
  wire calc_diff_min__46_carry__0_n_1;
  wire calc_diff_min__46_carry__0_n_2;
  wire calc_diff_min__46_carry__0_n_3;
  wire calc_diff_min__46_carry__0_n_4;
  wire calc_diff_min__46_carry__0_n_5;
  wire calc_diff_min__46_carry__0_n_6;
  wire calc_diff_min__46_carry__0_n_7;
  wire calc_diff_min__46_carry__1_i_1_n_0;
  wire calc_diff_min__46_carry__1_n_7;
  wire calc_diff_min__46_carry_i_1_n_0;
  wire calc_diff_min__46_carry_i_2_n_0;
  wire calc_diff_min__46_carry_i_3_n_0;
  wire calc_diff_min__46_carry_i_4_n_0;
  wire calc_diff_min__46_carry_i_5_n_0;
  wire calc_diff_min__46_carry_i_6_n_0;
  wire calc_diff_min__46_carry_i_7_n_0;
  wire calc_diff_min__46_carry_i_8_n_0;
  wire calc_diff_min__46_carry_n_0;
  wire calc_diff_min__46_carry_n_1;
  wire calc_diff_min__46_carry_n_2;
  wire calc_diff_min__46_carry_n_3;
  wire calc_diff_min__46_carry_n_4;
  wire calc_diff_min__46_carry_n_5;
  wire calc_diff_min__46_carry_n_6;
  wire calc_diff_min__46_carry_n_7;
  wire calc_diff_min__71_carry__0_i_1_n_0;
  wire calc_diff_min__71_carry__0_i_2_n_0;
  wire calc_diff_min__71_carry__0_i_3_n_0;
  wire calc_diff_min__71_carry__0_i_4_n_0;
  wire calc_diff_min__71_carry__0_i_5_n_0;
  wire calc_diff_min__71_carry__0_i_6_n_0;
  wire calc_diff_min__71_carry__0_i_7_n_0;
  wire calc_diff_min__71_carry__0_i_8_n_0;
  wire calc_diff_min__71_carry__0_n_0;
  wire calc_diff_min__71_carry__0_n_1;
  wire calc_diff_min__71_carry__0_n_2;
  wire calc_diff_min__71_carry__0_n_3;
  wire calc_diff_min__71_carry__1_i_1_n_0;
  wire calc_diff_min__71_carry__1_i_2_n_0;
  wire calc_diff_min__71_carry__1_i_3_n_0;
  wire calc_diff_min__71_carry__1_i_4_n_0;
  wire calc_diff_min__71_carry__1_i_5_n_0;
  wire calc_diff_min__71_carry__1_i_6_n_0;
  wire calc_diff_min__71_carry__1_i_7_n_0;
  wire calc_diff_min__71_carry__1_i_8_n_0;
  wire calc_diff_min__71_carry__1_n_0;
  wire calc_diff_min__71_carry__1_n_1;
  wire calc_diff_min__71_carry__1_n_2;
  wire calc_diff_min__71_carry__1_n_3;
  wire calc_diff_min__71_carry_i_1_n_0;
  wire calc_diff_min__71_carry_i_2_n_0;
  wire calc_diff_min__71_carry_i_3_n_0;
  wire calc_diff_min__71_carry_i_4_n_0;
  wire calc_diff_min__71_carry_i_5_n_0;
  wire calc_diff_min__71_carry_i_6_n_0;
  wire calc_diff_min__71_carry_i_7_n_0;
  wire calc_diff_min__71_carry_i_8_n_0;
  wire calc_diff_min__71_carry_n_0;
  wire calc_diff_min__71_carry_n_1;
  wire calc_diff_min__71_carry_n_2;
  wire calc_diff_min__71_carry_n_3;
  wire calc_diff_min_carry__0_i_1_n_0;
  wire calc_diff_min_carry__0_i_2_n_0;
  wire calc_diff_min_carry__0_i_3_n_0;
  wire calc_diff_min_carry__0_i_4_n_0;
  wire calc_diff_min_carry__0_i_5_n_0;
  wire calc_diff_min_carry__0_i_6_n_0;
  wire calc_diff_min_carry__0_i_7_n_0;
  wire calc_diff_min_carry__0_i_8_n_0;
  wire calc_diff_min_carry__0_n_0;
  wire calc_diff_min_carry__0_n_1;
  wire calc_diff_min_carry__0_n_2;
  wire calc_diff_min_carry__0_n_3;
  wire calc_diff_min_carry__1_i_1_n_0;
  wire calc_diff_min_carry__1_i_2_n_0;
  wire calc_diff_min_carry__1_i_3_n_0;
  wire calc_diff_min_carry__1_i_4_n_0;
  wire calc_diff_min_carry__1_i_5_n_0;
  wire calc_diff_min_carry__1_i_6_n_0;
  wire calc_diff_min_carry__1_i_7_n_0;
  wire calc_diff_min_carry__1_i_8_n_0;
  wire calc_diff_min_carry__1_n_0;
  wire calc_diff_min_carry__1_n_1;
  wire calc_diff_min_carry__1_n_2;
  wire calc_diff_min_carry__1_n_3;
  wire calc_diff_min_carry__2_i_1_n_0;
  wire calc_diff_min_carry__2_i_2_n_0;
  wire calc_diff_min_carry__2_i_3_n_0;
  wire calc_diff_min_carry__2_i_4_n_0;
  wire calc_diff_min_carry__2_i_5_n_0;
  wire calc_diff_min_carry__2_i_6_n_0;
  wire calc_diff_min_carry__2_i_7_n_0;
  wire calc_diff_min_carry__2_i_8_n_0;
  wire calc_diff_min_carry__2_n_0;
  wire calc_diff_min_carry__2_n_1;
  wire calc_diff_min_carry__2_n_2;
  wire calc_diff_min_carry__2_n_3;
  wire calc_diff_min_carry__3_i_1_n_0;
  wire calc_diff_min_carry__3_i_2_n_0;
  wire calc_diff_min_carry__3_i_3_n_0;
  wire calc_diff_min_carry__3_i_4_n_0;
  wire calc_diff_min_carry__3_i_5_n_0;
  wire calc_diff_min_carry__3_n_0;
  wire calc_diff_min_carry__3_n_1;
  wire calc_diff_min_carry__3_n_2;
  wire calc_diff_min_carry__3_n_3;
  wire calc_diff_min_carry__3_n_4;
  wire calc_diff_min_carry__3_n_5;
  wire calc_diff_min_carry__3_n_6;
  wire calc_diff_min_carry__3_n_7;
  wire calc_diff_min_carry_i_1_n_0;
  wire calc_diff_min_carry_i_2_n_0;
  wire calc_diff_min_carry_i_3_n_0;
  wire calc_diff_min_carry_n_0;
  wire calc_diff_min_carry_n_1;
  wire calc_diff_min_carry_n_2;
  wire calc_diff_min_carry_n_3;
  wire [12:1]calc_diff_sec0;
  wire calc_diff_sec0__106_carry__0_i_1_n_0;
  wire calc_diff_sec0__106_carry__0_n_0;
  wire calc_diff_sec0__106_carry__0_n_1;
  wire calc_diff_sec0__106_carry__0_n_2;
  wire calc_diff_sec0__106_carry__0_n_3;
  wire calc_diff_sec0__106_carry__0_n_4;
  wire calc_diff_sec0__106_carry__0_n_5;
  wire calc_diff_sec0__106_carry__0_n_6;
  wire calc_diff_sec0__106_carry__0_n_7;
  wire calc_diff_sec0__106_carry__1_i_1_n_0;
  wire calc_diff_sec0__106_carry__1_n_2;
  wire calc_diff_sec0__106_carry__1_n_3;
  wire calc_diff_sec0__106_carry__1_n_7;
  wire calc_diff_sec0__106_carry_i_1_n_0;
  wire calc_diff_sec0__106_carry_n_0;
  wire calc_diff_sec0__106_carry_n_1;
  wire calc_diff_sec0__106_carry_n_2;
  wire calc_diff_sec0__106_carry_n_3;
  wire calc_diff_sec0__106_carry_n_4;
  wire calc_diff_sec0__106_carry_n_5;
  wire calc_diff_sec0__106_carry_n_6;
  wire calc_diff_sec0__106_carry_n_7;
  wire calc_diff_sec0__23_carry__0_i_1_n_0;
  wire calc_diff_sec0__23_carry__0_i_2_n_0;
  wire calc_diff_sec0__23_carry__0_i_3_n_0;
  wire calc_diff_sec0__23_carry__0_i_4_n_0;
  wire calc_diff_sec0__23_carry__0_i_5_n_0;
  wire calc_diff_sec0__23_carry__0_i_6_n_0;
  wire calc_diff_sec0__23_carry__0_i_7_n_0;
  wire calc_diff_sec0__23_carry__0_n_0;
  wire calc_diff_sec0__23_carry__0_n_1;
  wire calc_diff_sec0__23_carry__0_n_2;
  wire calc_diff_sec0__23_carry__0_n_3;
  wire calc_diff_sec0__23_carry__0_n_4;
  wire calc_diff_sec0__23_carry__0_n_5;
  wire calc_diff_sec0__23_carry__0_n_6;
  wire calc_diff_sec0__23_carry__0_n_7;
  wire calc_diff_sec0__23_carry__1_i_1_n_0;
  wire calc_diff_sec0__23_carry__1_n_7;
  wire calc_diff_sec0__23_carry_i_1_n_0;
  wire calc_diff_sec0__23_carry_i_2_n_0;
  wire calc_diff_sec0__23_carry_i_3_n_0;
  wire calc_diff_sec0__23_carry_i_4_n_0;
  wire calc_diff_sec0__23_carry_i_5_n_0;
  wire calc_diff_sec0__23_carry_i_6_n_0;
  wire calc_diff_sec0__23_carry_i_7_n_0;
  wire calc_diff_sec0__23_carry_n_0;
  wire calc_diff_sec0__23_carry_n_1;
  wire calc_diff_sec0__23_carry_n_2;
  wire calc_diff_sec0__23_carry_n_3;
  wire calc_diff_sec0__23_carry_n_4;
  wire calc_diff_sec0__23_carry_n_5;
  wire calc_diff_sec0__23_carry_n_6;
  wire calc_diff_sec0__23_carry_n_7;
  wire calc_diff_sec0__45_carry__0_i_1_n_0;
  wire calc_diff_sec0__45_carry__0_i_2_n_0;
  wire calc_diff_sec0__45_carry__0_i_3_n_0;
  wire calc_diff_sec0__45_carry__0_i_4_n_0;
  wire calc_diff_sec0__45_carry__0_i_5_n_0;
  wire calc_diff_sec0__45_carry__0_i_6_n_0;
  wire calc_diff_sec0__45_carry__0_i_7_n_0;
  wire calc_diff_sec0__45_carry__0_i_8_n_3;
  wire calc_diff_sec0__45_carry__0_n_0;
  wire calc_diff_sec0__45_carry__0_n_1;
  wire calc_diff_sec0__45_carry__0_n_2;
  wire calc_diff_sec0__45_carry__0_n_3;
  wire calc_diff_sec0__45_carry__0_n_4;
  wire calc_diff_sec0__45_carry__0_n_5;
  wire calc_diff_sec0__45_carry__0_n_6;
  wire calc_diff_sec0__45_carry__0_n_7;
  wire calc_diff_sec0__45_carry__1_i_1_n_0;
  wire calc_diff_sec0__45_carry__1_i_2_n_0;
  wire calc_diff_sec0__45_carry__1_i_3_n_0;
  wire calc_diff_sec0__45_carry__1_i_4_n_0;
  wire calc_diff_sec0__45_carry__1_i_5_n_0;
  wire calc_diff_sec0__45_carry__1_n_2;
  wire calc_diff_sec0__45_carry__1_n_3;
  wire calc_diff_sec0__45_carry__1_n_5;
  wire calc_diff_sec0__45_carry__1_n_6;
  wire calc_diff_sec0__45_carry__1_n_7;
  wire calc_diff_sec0__45_carry_n_0;
  wire calc_diff_sec0__45_carry_n_1;
  wire calc_diff_sec0__45_carry_n_2;
  wire calc_diff_sec0__45_carry_n_3;
  wire calc_diff_sec0__45_carry_n_4;
  wire calc_diff_sec0__45_carry_n_5;
  wire calc_diff_sec0__45_carry_n_6;
  wire calc_diff_sec0__70_carry__0_i_1_n_0;
  wire calc_diff_sec0__70_carry__0_i_2_n_0;
  wire calc_diff_sec0__70_carry__0_i_3_n_0;
  wire calc_diff_sec0__70_carry__0_i_4_n_0;
  wire calc_diff_sec0__70_carry__0_n_0;
  wire calc_diff_sec0__70_carry__0_n_1;
  wire calc_diff_sec0__70_carry__0_n_2;
  wire calc_diff_sec0__70_carry__0_n_3;
  wire calc_diff_sec0__70_carry__0_n_4;
  wire calc_diff_sec0__70_carry__0_n_5;
  wire calc_diff_sec0__70_carry__0_n_6;
  wire calc_diff_sec0__70_carry__0_n_7;
  wire calc_diff_sec0__70_carry__1_i_1_n_0;
  wire calc_diff_sec0__70_carry__1_i_2_n_0;
  wire calc_diff_sec0__70_carry__1_i_3_n_0;
  wire calc_diff_sec0__70_carry__1_i_4_n_0;
  wire calc_diff_sec0__70_carry__1_n_0;
  wire calc_diff_sec0__70_carry__1_n_1;
  wire calc_diff_sec0__70_carry__1_n_2;
  wire calc_diff_sec0__70_carry__1_n_3;
  wire calc_diff_sec0__70_carry__1_n_4;
  wire calc_diff_sec0__70_carry__1_n_5;
  wire calc_diff_sec0__70_carry__1_n_6;
  wire calc_diff_sec0__70_carry__1_n_7;
  wire calc_diff_sec0__70_carry__2_i_1_n_0;
  wire calc_diff_sec0__70_carry__2_i_2_n_0;
  wire calc_diff_sec0__70_carry__2_n_3;
  wire calc_diff_sec0__70_carry__2_n_6;
  wire calc_diff_sec0__70_carry__2_n_7;
  wire calc_diff_sec0__70_carry_i_1_n_0;
  wire calc_diff_sec0__70_carry_i_2_n_0;
  wire calc_diff_sec0__70_carry_i_3_n_0;
  wire calc_diff_sec0__70_carry_i_4_n_0;
  wire calc_diff_sec0__70_carry_n_0;
  wire calc_diff_sec0__70_carry_n_1;
  wire calc_diff_sec0__70_carry_n_2;
  wire calc_diff_sec0__70_carry_n_3;
  wire calc_diff_sec0_carry__0_i_1_n_0;
  wire calc_diff_sec0_carry__0_i_2_n_0;
  wire calc_diff_sec0_carry__0_i_3_n_0;
  wire calc_diff_sec0_carry__0_i_4_n_0;
  wire calc_diff_sec0_carry__0_n_0;
  wire calc_diff_sec0_carry__0_n_1;
  wire calc_diff_sec0_carry__0_n_2;
  wire calc_diff_sec0_carry__0_n_3;
  wire calc_diff_sec0_carry__1_i_1_n_0;
  wire calc_diff_sec0_carry__1_i_2_n_0;
  wire calc_diff_sec0_carry__1_i_3_n_0;
  wire calc_diff_sec0_carry__1_i_4_n_0;
  wire calc_diff_sec0_carry__1_n_0;
  wire calc_diff_sec0_carry__1_n_1;
  wire calc_diff_sec0_carry__1_n_2;
  wire calc_diff_sec0_carry__1_n_3;
  wire calc_diff_sec0_carry__2_i_1_n_0;
  wire calc_diff_sec0_carry__2_i_2_n_0;
  wire calc_diff_sec0_carry__2_i_3_n_0;
  wire calc_diff_sec0_carry__2_i_4_n_0;
  wire calc_diff_sec0_carry__2_n_0;
  wire calc_diff_sec0_carry__2_n_1;
  wire calc_diff_sec0_carry__2_n_2;
  wire calc_diff_sec0_carry__2_n_3;
  wire calc_diff_sec0_carry__3_i_1_n_0;
  wire calc_diff_sec0_carry__3_i_2_n_0;
  wire calc_diff_sec0_carry__3_i_3_n_0;
  wire calc_diff_sec0_carry__3_i_4_n_0;
  wire calc_diff_sec0_carry__3_i_5_n_0;
  wire calc_diff_sec0_carry__3_n_0;
  wire calc_diff_sec0_carry__3_n_1;
  wire calc_diff_sec0_carry__3_n_2;
  wire calc_diff_sec0_carry__3_n_3;
  wire calc_diff_sec0_carry__3_n_4;
  wire calc_diff_sec0_carry__3_n_5;
  wire calc_diff_sec0_carry__3_n_6;
  wire calc_diff_sec0_carry__3_n_7;
  wire calc_diff_sec0_carry_i_1_n_0;
  wire calc_diff_sec0_carry_i_2_n_0;
  wire calc_diff_sec0_carry_i_3_n_0;
  wire calc_diff_sec0_carry_n_0;
  wire calc_diff_sec0_carry_n_1;
  wire calc_diff_sec0_carry_n_2;
  wire calc_diff_sec0_carry_n_3;
  wire calc_diff_sec__1_carry__0_i_1_n_0;
  wire calc_diff_sec__1_carry__0_i_2_n_0;
  wire calc_diff_sec__1_carry__0_i_3_n_0;
  wire calc_diff_sec__1_carry__0_i_4_n_0;
  wire calc_diff_sec__1_carry__0_i_5_n_0;
  wire calc_diff_sec__1_carry__0_i_6_n_0;
  wire calc_diff_sec__1_carry__0_i_7_n_0;
  wire calc_diff_sec__1_carry__0_i_8_n_0;
  wire calc_diff_sec__1_carry__0_n_0;
  wire calc_diff_sec__1_carry__0_n_1;
  wire calc_diff_sec__1_carry__0_n_2;
  wire calc_diff_sec__1_carry__0_n_3;
  wire calc_diff_sec__1_carry__1_i_10_n_0;
  wire calc_diff_sec__1_carry__1_i_1_n_0;
  wire calc_diff_sec__1_carry__1_i_2_n_0;
  wire calc_diff_sec__1_carry__1_i_3_n_0;
  wire calc_diff_sec__1_carry__1_i_4_n_0;
  wire calc_diff_sec__1_carry__1_i_5_n_0;
  wire calc_diff_sec__1_carry__1_i_6_n_0;
  wire calc_diff_sec__1_carry__1_i_7_n_0;
  wire calc_diff_sec__1_carry__1_i_8_n_0;
  wire calc_diff_sec__1_carry__1_i_9_n_0;
  wire calc_diff_sec__1_carry__1_n_0;
  wire calc_diff_sec__1_carry__1_n_1;
  wire calc_diff_sec__1_carry__1_n_2;
  wire calc_diff_sec__1_carry__1_n_3;
  wire calc_diff_sec__1_carry__1_n_4;
  wire calc_diff_sec__1_carry__1_n_5;
  wire calc_diff_sec__1_carry__2_i_2_n_0;
  wire calc_diff_sec__1_carry__2_i_3_n_0;
  wire calc_diff_sec__1_carry__2_i_4_n_0;
  wire calc_diff_sec__1_carry__2_i_5_n_0;
  wire calc_diff_sec__1_carry__2_i_6_n_0;
  wire calc_diff_sec__1_carry__2_i_7_n_0;
  wire calc_diff_sec__1_carry__2_i_8_n_0;
  wire calc_diff_sec__1_carry__2_n_0;
  wire calc_diff_sec__1_carry__2_n_1;
  wire calc_diff_sec__1_carry__2_n_2;
  wire calc_diff_sec__1_carry__2_n_3;
  wire calc_diff_sec__1_carry__2_n_4;
  wire calc_diff_sec__1_carry__2_n_5;
  wire calc_diff_sec__1_carry__2_n_6;
  wire calc_diff_sec__1_carry__2_n_7;
  wire calc_diff_sec__1_carry_i_1_n_0;
  wire calc_diff_sec__1_carry_i_2_n_0;
  wire calc_diff_sec__1_carry_i_3_n_0;
  wire calc_diff_sec__1_carry_i_4_n_0;
  wire calc_diff_sec__1_carry_i_5_n_0;
  wire calc_diff_sec__1_carry_i_6_n_0;
  wire calc_diff_sec__1_carry_n_0;
  wire calc_diff_sec__1_carry_n_1;
  wire calc_diff_sec__1_carry_n_2;
  wire calc_diff_sec__1_carry_n_3;
  wire calc_diff_sec__38_carry__0_i_1_n_0;
  wire calc_diff_sec__38_carry__0_i_2_n_0;
  wire calc_diff_sec__38_carry__0_i_3_n_0;
  wire calc_diff_sec__38_carry__0_i_4_n_0;
  wire calc_diff_sec__38_carry__0_i_5_n_0;
  wire calc_diff_sec__38_carry__0_i_6_n_0;
  wire calc_diff_sec__38_carry__0_i_7_n_0;
  wire calc_diff_sec__38_carry__0_n_1;
  wire calc_diff_sec__38_carry__0_n_2;
  wire calc_diff_sec__38_carry__0_n_3;
  wire calc_diff_sec__38_carry__0_n_4;
  wire calc_diff_sec__38_carry__0_n_5;
  wire calc_diff_sec__38_carry__0_n_6;
  wire calc_diff_sec__38_carry__0_n_7;
  wire calc_diff_sec__38_carry_i_1_n_0;
  wire calc_diff_sec__38_carry_i_2_n_0;
  wire calc_diff_sec__38_carry_i_3_n_0;
  wire calc_diff_sec__38_carry_i_4_n_0;
  wire calc_diff_sec__38_carry_i_5_n_0;
  wire calc_diff_sec__38_carry_i_6_n_0;
  wire calc_diff_sec__38_carry_i_7_n_0;
  wire calc_diff_sec__38_carry_n_0;
  wire calc_diff_sec__38_carry_n_1;
  wire calc_diff_sec__38_carry_n_2;
  wire calc_diff_sec__38_carry_n_3;
  wire calc_diff_sec__38_carry_n_4;
  wire calc_diff_sec__38_carry_n_5;
  wire calc_diff_sec__38_carry_n_6;
  wire calc_diff_sec__38_carry_n_7;
  wire calc_diff_sec__59_carry__0_i_1_n_0;
  wire calc_diff_sec__59_carry__0_i_2_n_0;
  wire calc_diff_sec__59_carry__0_i_3_n_0;
  wire calc_diff_sec__59_carry__0_i_4_n_0;
  wire calc_diff_sec__59_carry__0_i_5_n_0;
  wire calc_diff_sec__59_carry__0_i_6_n_0;
  wire calc_diff_sec__59_carry__0_i_7_n_0;
  wire calc_diff_sec__59_carry__0_i_8_n_0;
  wire calc_diff_sec__59_carry__0_n_0;
  wire calc_diff_sec__59_carry__0_n_1;
  wire calc_diff_sec__59_carry__0_n_2;
  wire calc_diff_sec__59_carry__0_n_3;
  wire calc_diff_sec__59_carry__1_i_1_n_0;
  wire calc_diff_sec__59_carry__1_i_2_n_0;
  wire calc_diff_sec__59_carry__1_i_3_n_0;
  wire calc_diff_sec__59_carry__1_i_4_n_0;
  wire calc_diff_sec__59_carry__1_n_2;
  wire calc_diff_sec__59_carry__1_n_3;
  wire calc_diff_sec__59_carry_i_1_n_0;
  wire calc_diff_sec__59_carry_i_2_n_0;
  wire calc_diff_sec__59_carry_i_3_n_0;
  wire calc_diff_sec__59_carry_i_4_n_0;
  wire calc_diff_sec__59_carry_i_5_n_0;
  wire calc_diff_sec__59_carry_i_6_n_0;
  wire calc_diff_sec__59_carry_i_7_n_0;
  wire calc_diff_sec__59_carry_i_8_n_0;
  wire calc_diff_sec__59_carry_n_0;
  wire calc_diff_sec__59_carry_n_1;
  wire calc_diff_sec__59_carry_n_2;
  wire calc_diff_sec__59_carry_n_3;
  wire [19:0]cnt_sysclk1;
  wire [19:1]cnt_sysclk10;
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
  wire cnt_sysclk10_carry__3_n_2;
  wire cnt_sysclk10_carry__3_n_3;
  wire cnt_sysclk10_carry_n_0;
  wire cnt_sysclk10_carry_n_1;
  wire cnt_sysclk10_carry_n_2;
  wire cnt_sysclk10_carry_n_3;
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
  wire \cnt_sysclk1[19]_i_3_n_0 ;
  wire \cnt_sysclk1[19]_i_4_n_0 ;
  wire \cnt_sysclk1[19]_i_5_n_0 ;
  wire \cnt_sysclk1[19]_i_6_n_0 ;
  wire \cnt_sysclk1[19]_i_7_n_0 ;
  wire \cnt_sysclk1[1]_i_1_n_0 ;
  wire \cnt_sysclk1[2]_i_1_n_0 ;
  wire \cnt_sysclk1[3]_i_1_n_0 ;
  wire \cnt_sysclk1[4]_i_1_n_0 ;
  wire \cnt_sysclk1[5]_i_1_n_0 ;
  wire \cnt_sysclk1[6]_i_1_n_0 ;
  wire \cnt_sysclk1[7]_i_1_n_0 ;
  wire \cnt_sysclk1[8]_i_1_n_0 ;
  wire \cnt_sysclk1[9]_i_1_n_0 ;
  wire cnt_sysclk2;
  wire [19:1]cnt_sysclk20;
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
  wire cnt_sysclk20_carry__3_n_2;
  wire cnt_sysclk20_carry__3_n_3;
  wire cnt_sysclk20_carry_n_0;
  wire cnt_sysclk20_carry_n_1;
  wire cnt_sysclk20_carry_n_2;
  wire cnt_sysclk20_carry_n_3;
  wire \cnt_sysclk2[19]_i_3_n_0 ;
  wire \cnt_sysclk2[19]_i_4_n_0 ;
  wire \cnt_sysclk2[19]_i_5_n_0 ;
  wire \cnt_sysclk2[19]_i_6_n_0 ;
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
  wire [6:0]diff_csec;
  wire \diff_csec[0]_i_1_n_0 ;
  wire \diff_csec[1]_i_1_n_0 ;
  wire \diff_csec[2]_i_1_n_0 ;
  wire \diff_csec[3]_i_1_n_0 ;
  wire \diff_csec[4]_i_1_n_0 ;
  wire \diff_csec[5]_i_1_n_0 ;
  wire \diff_csec[5]_i_2_n_0 ;
  wire \diff_csec[6]_i_1_n_0 ;
  wire \diff_csec[6]_i_2_n_0 ;
  wire [4:0]diff_min;
  wire \diff_min[0]_i_1_n_0 ;
  wire \diff_min[1]_i_1_n_0 ;
  wire \diff_min[2]_i_1_n_0 ;
  wire \diff_min[3]_i_1_n_0 ;
  wire \diff_min[3]_i_2_n_0 ;
  wire \diff_min[4]_i_1_n_0 ;
  wire \diff_min[4]_i_3_n_0 ;
  wire \diff_min_reg[4]_i_4_n_3 ;
  wire [6:0]diff_sec;
  wire \diff_sec[0]_i_1_n_0 ;
  wire \diff_sec[1]_i_1_n_0 ;
  wire \diff_sec[2]_i_1_n_0 ;
  wire \diff_sec[3]_i_1_n_0 ;
  wire \diff_sec[4]_i_1_n_0 ;
  wire \diff_sec[5]_i_1_n_0 ;
  wire \diff_sec[5]_i_2_n_0 ;
  wire \diff_sec[6]_i_1_n_0 ;
  wire \diff_sec[6]_i_2_n_0 ;
  wire \diff_sec_reg[6]_i_3_n_3 ;
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
  wire ed_clear_n_31;
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
  wire ed_clear_n_51;
  wire ed_clear_n_6;
  wire ed_clear_n_7;
  wire ed_clear_n_8;
  wire ed_clear_n_9;
  wire ed_start_n_3;
  wire ed_start_n_4;
  wire ff_cur_reg;
  wire ff_cur_reg_0;
  wire ff_old_reg;
  wire ff_old_reg_0;
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
  wire \lap_count[7]_i_6_n_0 ;
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
  wire [6:0]prev_csec;
  wire prev_min;
  wire \prev_min_reg_n_0_[0] ;
  wire \prev_min_reg_n_0_[1] ;
  wire \prev_min_reg_n_0_[2] ;
  wire \prev_min_reg_n_0_[3] ;
  wire \prev_min_reg_n_0_[4] ;
  wire \prev_min_reg_n_0_[5] ;
  wire [5:0]prev_sec;
  wire run_reg_0;
  wire run_reg_1;
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
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire [18:0]\s00_axi_rdata[20] ;
  wire [18:0]\s00_axi_rdata[20]_0 ;
  wire [18:0]\s00_axi_rdata[20]_1 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
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
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
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
  wire sign_calc1_carry__0_i_10_n_0;
  wire sign_calc1_carry__0_i_10_n_1;
  wire sign_calc1_carry__0_i_10_n_2;
  wire sign_calc1_carry__0_i_10_n_3;
  wire sign_calc1_carry__0_i_11_n_0;
  wire sign_calc1_carry__0_i_11_n_1;
  wire sign_calc1_carry__0_i_11_n_2;
  wire sign_calc1_carry__0_i_11_n_3;
  wire sign_calc1_carry__0_i_12_n_0;
  wire sign_calc1_carry__0_i_12_n_1;
  wire sign_calc1_carry__0_i_12_n_2;
  wire sign_calc1_carry__0_i_12_n_3;
  wire sign_calc1_carry__0_i_1_n_0;
  wire sign_calc1_carry__0_i_2_n_0;
  wire sign_calc1_carry__0_i_3_n_0;
  wire sign_calc1_carry__0_i_4_n_0;
  wire sign_calc1_carry__0_i_5_n_0;
  wire sign_calc1_carry__0_i_6_n_0;
  wire sign_calc1_carry__0_i_7_n_0;
  wire sign_calc1_carry__0_i_8_n_0;
  wire sign_calc1_carry__0_i_9_n_0;
  wire sign_calc1_carry__0_i_9_n_1;
  wire sign_calc1_carry__0_i_9_n_2;
  wire sign_calc1_carry__0_i_9_n_3;
  wire sign_calc1_carry__0_n_0;
  wire sign_calc1_carry__0_n_1;
  wire sign_calc1_carry__0_n_2;
  wire sign_calc1_carry__0_n_3;
  wire sign_calc1_carry__1_i_1_n_0;
  wire sign_calc1_carry__1_i_2_n_0;
  wire sign_calc1_carry_i_10_n_0;
  wire sign_calc1_carry_i_10_n_1;
  wire sign_calc1_carry_i_10_n_2;
  wire sign_calc1_carry_i_10_n_3;
  wire sign_calc1_carry_i_11_n_0;
  wire sign_calc1_carry_i_11_n_1;
  wire sign_calc1_carry_i_11_n_2;
  wire sign_calc1_carry_i_11_n_3;
  wire sign_calc1_carry_i_12_n_0;
  wire sign_calc1_carry_i_12_n_1;
  wire sign_calc1_carry_i_12_n_2;
  wire sign_calc1_carry_i_12_n_3;
  wire sign_calc1_carry_i_13_n_0;
  wire sign_calc1_carry_i_14_n_0;
  wire sign_calc1_carry_i_15_n_0;
  wire sign_calc1_carry_i_16_n_0;
  wire sign_calc1_carry_i_17_n_0;
  wire sign_calc1_carry_i_18_n_0;
  wire sign_calc1_carry_i_19_n_0;
  wire sign_calc1_carry_i_1_n_0;
  wire sign_calc1_carry_i_20_n_0;
  wire sign_calc1_carry_i_21_n_0;
  wire sign_calc1_carry_i_22_n_0;
  wire sign_calc1_carry_i_23_n_0;
  wire sign_calc1_carry_i_24_n_0;
  wire sign_calc1_carry_i_25_n_0;
  wire sign_calc1_carry_i_26_n_0;
  wire sign_calc1_carry_i_2_n_0;
  wire sign_calc1_carry_i_3_n_0;
  wire sign_calc1_carry_i_4_n_0;
  wire sign_calc1_carry_i_5_n_0;
  wire sign_calc1_carry_i_6_n_0;
  wire sign_calc1_carry_i_7_n_0;
  wire sign_calc1_carry_i_8_n_0;
  wire sign_calc1_carry_i_9_n_0;
  wire sign_calc1_carry_i_9_n_1;
  wire sign_calc1_carry_i_9_n_2;
  wire sign_calc1_carry_i_9_n_3;
  wire sign_calc1_carry_n_0;
  wire sign_calc1_carry_n_1;
  wire sign_calc1_carry_n_2;
  wire sign_calc1_carry_n_3;
  wire sign_flag;
  wire sign_flag_reg_0;
  wire [6:0]tmp_csec;
  wire \tmp_min_reg_n_0_[0] ;
  wire \tmp_min_reg_n_0_[1] ;
  wire \tmp_min_reg_n_0_[2] ;
  wire \tmp_min_reg_n_0_[3] ;
  wire \tmp_min_reg_n_0_[4] ;
  wire \tmp_min_reg_n_0_[5] ;
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
  wire [16:0]total_prev__0;
  wire total_prev_n_100;
  wire total_prev_n_101;
  wire total_prev_n_102;
  wire total_prev_n_103;
  wire total_prev_n_104;
  wire total_prev_n_105;
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
  wire [16:0]total_tmp__0;
  wire total_tmp_n_100;
  wire total_tmp_n_101;
  wire total_tmp_n_102;
  wire total_tmp_n_103;
  wire total_tmp_n_104;
  wire total_tmp_n_105;
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
  wire [0:0]NLW_calc_diff_csec__105_carry_O_UNCONNECTED;
  wire [3:3]NLW_calc_diff_csec__105_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_calc_diff_csec__55_carry_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_csec__55_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_csec__55_carry__1_O_UNCONNECTED;
  wire [1:0]NLW_calc_diff_csec__55_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_calc_diff_csec__55_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_calc_diff_csec__99_carry_CO_UNCONNECTED;
  wire [3:3]NLW_calc_diff_csec__99_carry_O_UNCONNECTED;
  wire [1:0]NLW_calc_diff_csec_carry_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_csec_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_calc_diff_csec_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_calc_diff_min0_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min__23_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_calc_diff_min__23_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min__46_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_calc_diff_min__46_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min__71_carry_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min__71_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min__71_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min_carry_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_min_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_calc_diff_sec0__106_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_calc_diff_sec0__106_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec0__23_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_calc_diff_sec0__23_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_calc_diff_sec0__45_carry_O_UNCONNECTED;
  wire [3:1]NLW_calc_diff_sec0__45_carry__0_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec0__45_carry__0_i_8_O_UNCONNECTED;
  wire [3:2]NLW_calc_diff_sec0__45_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_calc_diff_sec0__45_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_calc_diff_sec0__70_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_calc_diff_sec0__70_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec0_carry_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec__1_carry_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec__1_carry__0_O_UNCONNECTED;
  wire [1:0]NLW_calc_diff_sec__1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_calc_diff_sec__38_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec__59_carry_O_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec__59_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_calc_diff_sec__59_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_calc_diff_sec__59_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_cnt_sysclk10_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk10_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_cnt_sysclk20_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk20_carry__3_O_UNCONNECTED;
  wire [3:1]\NLW_diff_min_reg[4]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_diff_min_reg[4]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_sec_reg[6]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_diff_sec_reg[6]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_sign_calc1_carry_O_UNCONNECTED;
  wire [3:0]NLW_sign_calc1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_sign_calc1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sign_calc1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_sign_calc1_carry__1_i_3_CO_UNCONNECTED;
  wire [3:1]NLW_sign_calc1_carry__1_i_3_O_UNCONNECTED;
  wire [3:0]NLW_sign_calc1_carry__1_i_4_CO_UNCONNECTED;
  wire [3:1]NLW_sign_calc1_carry__1_i_4_O_UNCONNECTED;
  wire NLW_total_prev_CARRYCASCOUT_UNCONNECTED;
  wire NLW_total_prev_MULTSIGNOUT_UNCONNECTED;
  wire NLW_total_prev_OVERFLOW_UNCONNECTED;
  wire NLW_total_prev_PATTERNBDETECT_UNCONNECTED;
  wire NLW_total_prev_PATTERNDETECT_UNCONNECTED;
  wire NLW_total_prev_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_total_prev_ACOUT_UNCONNECTED;
  wire [17:0]NLW_total_prev_BCOUT_UNCONNECTED;
  wire [3:0]NLW_total_prev_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_total_prev_P_UNCONNECTED;
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
  wire [47:17]NLW_total_tmp_P_UNCONNECTED;
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

  assign s00_axi_rdata_21_sn_1 = s00_axi_rdata_21_sp_1;
  assign s00_axi_rdata_24_sn_1 = s00_axi_rdata_24_sp_1;
  assign s00_axi_rdata_25_sn_1 = s00_axi_rdata_25_sp_1;
  assign s00_axi_rdata_26_sn_1 = s00_axi_rdata_26_sp_1;
  assign s00_axi_rdata_27_sn_1 = s00_axi_rdata_27_sp_1;
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec__105_carry
       (.CI(1'b0),
        .CO({calc_diff_csec__105_carry_n_0,calc_diff_csec__105_carry_n_1,calc_diff_csec__105_carry_n_2,calc_diff_csec__105_carry_n_3}),
        .CYINIT(1'b1),
        .DI(abs_diff[3:0]),
        .O({calc_diff_csec__105_carry_n_4,calc_diff_csec__105_carry_n_5,calc_diff_csec[1],NLW_calc_diff_csec__105_carry_O_UNCONNECTED[0]}),
        .S({calc_diff_csec__105_carry_i_1_n_0,calc_diff_csec__105_carry_i_2_n_0,calc_diff_csec__105_carry_i_3_n_0,calc_diff_csec__105_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec__105_carry__0
       (.CI(calc_diff_csec__105_carry_n_0),
        .CO({NLW_calc_diff_csec__105_carry__0_CO_UNCONNECTED[3],calc_diff_csec__105_carry__0_n_1,calc_diff_csec__105_carry__0_n_2,calc_diff_csec__105_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,abs_diff[6:4]}),
        .O({calc_diff_csec__105_carry__0_n_4,calc_diff_csec__105_carry__0_n_5,calc_diff_csec__105_carry__0_n_6,calc_diff_csec__105_carry__0_n_7}),
        .S({calc_diff_csec__105_carry__0_i_1_n_0,calc_diff_csec__105_carry__0_i_2_n_0,calc_diff_csec__105_carry__0_i_3_n_0,calc_diff_csec__105_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec__105_carry__0_i_1
       (.I0(abs_diff[7]),
        .I1(calc_diff_csec__99_carry_n_5),
        .O(calc_diff_csec__105_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec__105_carry__0_i_2
       (.I0(abs_diff[6]),
        .I1(calc_diff_csec__99_carry_n_6),
        .O(calc_diff_csec__105_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec__105_carry__0_i_3
       (.I0(abs_diff[5]),
        .I1(calc_diff_csec__99_carry_n_7),
        .O(calc_diff_csec__105_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec__105_carry__0_i_4
       (.I0(abs_diff[4]),
        .I1(calc_diff_csec__55_carry__3_n_7),
        .O(calc_diff_csec__105_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec__105_carry_i_1
       (.I0(abs_diff[3]),
        .I1(calc_diff_csec__55_carry__2_n_4),
        .O(calc_diff_csec__105_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec__105_carry_i_2
       (.I0(abs_diff[2]),
        .I1(calc_diff_csec__55_carry__2_n_5),
        .O(calc_diff_csec__105_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_csec__105_carry_i_3
       (.I0(abs_diff[1]),
        .O(calc_diff_csec__105_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_csec__105_carry_i_4
       (.I0(abs_diff[0]),
        .O(calc_diff_csec__105_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec__55_carry
       (.CI(1'b0),
        .CO({calc_diff_csec__55_carry_n_0,calc_diff_csec__55_carry_n_1,calc_diff_csec__55_carry_n_2,calc_diff_csec__55_carry_n_3}),
        .CYINIT(1'b0),
        .DI({abs_diff[2:0],1'b0}),
        .O(NLW_calc_diff_csec__55_carry_O_UNCONNECTED[3:0]),
        .S({calc_diff_csec__55_carry_i_1_n_0,calc_diff_csec__55_carry_i_2_n_0,calc_diff_csec__55_carry_i_3_n_0,calc_diff_csec_carry_n_5}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec__55_carry__0
       (.CI(calc_diff_csec__55_carry_n_0),
        .CO({calc_diff_csec__55_carry__0_n_0,calc_diff_csec__55_carry__0_n_1,calc_diff_csec__55_carry__0_n_2,calc_diff_csec__55_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_csec__55_carry__0_i_1_n_0,calc_diff_csec__55_carry__0_i_2_n_0,abs_diff[4:3]}),
        .O(NLW_calc_diff_csec__55_carry__0_O_UNCONNECTED[3:0]),
        .S({calc_diff_csec__55_carry__0_i_3_n_0,calc_diff_csec__55_carry__0_i_4_n_0,calc_diff_csec__55_carry__0_i_5_n_0,calc_diff_csec__55_carry__0_i_6_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_csec__55_carry__0_i_1
       (.I0(abs_diff[0]),
        .I1(calc_diff_csec_carry__1_n_6),
        .I2(abs_diff[2]),
        .I3(abs_diff[6]),
        .O(calc_diff_csec__55_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    calc_diff_csec__55_carry__0_i_2
       (.I0(abs_diff[5]),
        .I1(abs_diff[1]),
        .I2(calc_diff_csec_carry__1_n_7),
        .O(calc_diff_csec__55_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    calc_diff_csec__55_carry__0_i_3
       (.I0(calc_diff_csec__55_carry__0_i_1_n_0),
        .I1(abs_diff[5]),
        .I2(abs_diff[1]),
        .I3(calc_diff_csec_carry__1_n_7),
        .O(calc_diff_csec__55_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    calc_diff_csec__55_carry__0_i_4
       (.I0(calc_diff_csec_carry__1_n_7),
        .I1(abs_diff[1]),
        .I2(abs_diff[5]),
        .I3(calc_diff_csec_carry__0_n_4),
        .I4(abs_diff[0]),
        .O(calc_diff_csec__55_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    calc_diff_csec__55_carry__0_i_5
       (.I0(calc_diff_csec_carry__0_n_4),
        .I1(abs_diff[0]),
        .I2(abs_diff[4]),
        .O(calc_diff_csec__55_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_csec__55_carry__0_i_6
       (.I0(abs_diff[3]),
        .I1(calc_diff_csec_carry__0_n_5),
        .O(calc_diff_csec__55_carry__0_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec__55_carry__1
       (.CI(calc_diff_csec__55_carry__0_n_0),
        .CO({calc_diff_csec__55_carry__1_n_0,calc_diff_csec__55_carry__1_n_1,calc_diff_csec__55_carry__1_n_2,calc_diff_csec__55_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_csec__55_carry__1_i_1_n_0,calc_diff_csec__55_carry__1_i_2_n_0,calc_diff_csec__55_carry__1_i_3_n_0,calc_diff_csec__55_carry__1_i_4_n_0}),
        .O(NLW_calc_diff_csec__55_carry__1_O_UNCONNECTED[3:0]),
        .S({calc_diff_csec__55_carry__1_i_5_n_0,calc_diff_csec__55_carry__1_i_6_n_0,calc_diff_csec__55_carry__1_i_7_n_0,calc_diff_csec__55_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    calc_diff_csec__55_carry__1_i_1
       (.I0(calc_diff_csec__55_carry__1_i_9_n_0),
        .I1(abs_diff[9]),
        .I2(abs_diff[4]),
        .I3(abs_diff[2]),
        .I4(calc_diff_csec_carry__1_n_4),
        .O(calc_diff_csec__55_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__1_i_10
       (.I0(abs_diff[4]),
        .I1(calc_diff_csec_carry__1_n_4),
        .I2(abs_diff[2]),
        .O(calc_diff_csec__55_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__1_i_11
       (.I0(abs_diff[3]),
        .I1(calc_diff_csec_carry__1_n_5),
        .I2(abs_diff[1]),
        .O(calc_diff_csec__55_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__1_i_12
       (.I0(abs_diff[6]),
        .I1(calc_diff_csec_carry__2_n_6),
        .I2(abs_diff[4]),
        .O(calc_diff_csec__55_carry__1_i_12_n_0));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    calc_diff_csec__55_carry__1_i_2
       (.I0(calc_diff_csec__55_carry__1_i_10_n_0),
        .I1(abs_diff[8]),
        .I2(abs_diff[1]),
        .I3(abs_diff[3]),
        .I4(calc_diff_csec_carry__1_n_5),
        .O(calc_diff_csec__55_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    calc_diff_csec__55_carry__1_i_3
       (.I0(abs_diff[0]),
        .I1(abs_diff[2]),
        .I2(calc_diff_csec_carry__1_n_6),
        .I3(calc_diff_csec__55_carry__1_i_11_n_0),
        .I4(abs_diff[7]),
        .O(calc_diff_csec__55_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h17E8E817)) 
    calc_diff_csec__55_carry__1_i_4
       (.I0(calc_diff_csec_carry__1_n_6),
        .I1(abs_diff[2]),
        .I2(abs_diff[0]),
        .I3(calc_diff_csec__55_carry__1_i_11_n_0),
        .I4(abs_diff[7]),
        .O(calc_diff_csec__55_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    calc_diff_csec__55_carry__1_i_5
       (.I0(calc_diff_csec__55_carry__1_i_1_n_0),
        .I1(abs_diff[5]),
        .I2(abs_diff[3]),
        .I3(calc_diff_csec_carry__2_n_7),
        .I4(abs_diff[10]),
        .I5(calc_diff_csec__55_carry__1_i_12_n_0),
        .O(calc_diff_csec__55_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    calc_diff_csec__55_carry__1_i_6
       (.I0(calc_diff_csec__55_carry__1_i_2_n_0),
        .I1(abs_diff[4]),
        .I2(abs_diff[2]),
        .I3(calc_diff_csec_carry__1_n_4),
        .I4(abs_diff[9]),
        .I5(calc_diff_csec__55_carry__1_i_9_n_0),
        .O(calc_diff_csec__55_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    calc_diff_csec__55_carry__1_i_7
       (.I0(calc_diff_csec__55_carry__1_i_3_n_0),
        .I1(abs_diff[8]),
        .I2(calc_diff_csec__55_carry__1_i_10_n_0),
        .I3(abs_diff[1]),
        .I4(abs_diff[3]),
        .I5(calc_diff_csec_carry__1_n_5),
        .O(calc_diff_csec__55_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h9666666966696999)) 
    calc_diff_csec__55_carry__1_i_8
       (.I0(abs_diff[7]),
        .I1(calc_diff_csec__55_carry__1_i_11_n_0),
        .I2(abs_diff[2]),
        .I3(calc_diff_csec_carry__1_n_6),
        .I4(abs_diff[0]),
        .I5(abs_diff[6]),
        .O(calc_diff_csec__55_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__1_i_9
       (.I0(abs_diff[5]),
        .I1(calc_diff_csec_carry__2_n_7),
        .I2(abs_diff[3]),
        .O(calc_diff_csec__55_carry__1_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec__55_carry__2
       (.CI(calc_diff_csec__55_carry__1_n_0),
        .CO({calc_diff_csec__55_carry__2_n_0,calc_diff_csec__55_carry__2_n_1,calc_diff_csec__55_carry__2_n_2,calc_diff_csec__55_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_csec__55_carry__2_i_1_n_0,calc_diff_csec__55_carry__2_i_2_n_0,calc_diff_csec__55_carry__2_i_3_n_0,calc_diff_csec__55_carry__2_i_4_n_0}),
        .O({calc_diff_csec__55_carry__2_n_4,calc_diff_csec__55_carry__2_n_5,NLW_calc_diff_csec__55_carry__2_O_UNCONNECTED[1:0]}),
        .S({calc_diff_csec__55_carry__2_i_5_n_0,calc_diff_csec__55_carry__2_i_6_n_0,calc_diff_csec__55_carry__2_i_7_n_0,calc_diff_csec__55_carry__2_i_8_n_0}));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    calc_diff_csec__55_carry__2_i_1
       (.I0(calc_diff_csec__55_carry__2_i_9_n_0),
        .I1(abs_diff[13]),
        .I2(abs_diff[6]),
        .I3(abs_diff[8]),
        .I4(calc_diff_csec_carry__2_n_4),
        .O(calc_diff_csec__55_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__2_i_10
       (.I0(abs_diff[8]),
        .I1(calc_diff_csec_carry__2_n_4),
        .I2(abs_diff[6]),
        .O(calc_diff_csec__55_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__2_i_11
       (.I0(abs_diff[7]),
        .I1(calc_diff_csec_carry__2_n_5),
        .I2(abs_diff[5]),
        .O(calc_diff_csec__55_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__2_i_12
       (.I0(abs_diff[10]),
        .I1(calc_diff_csec_carry__3_n_6),
        .I2(abs_diff[8]),
        .O(calc_diff_csec__55_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    calc_diff_csec__55_carry__2_i_2
       (.I0(calc_diff_csec__55_carry__2_i_10_n_0),
        .I1(abs_diff[12]),
        .I2(abs_diff[5]),
        .I3(abs_diff[7]),
        .I4(calc_diff_csec_carry__2_n_5),
        .O(calc_diff_csec__55_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    calc_diff_csec__55_carry__2_i_3
       (.I0(calc_diff_csec__55_carry__2_i_11_n_0),
        .I1(abs_diff[11]),
        .I2(abs_diff[4]),
        .I3(abs_diff[6]),
        .I4(calc_diff_csec_carry__2_n_6),
        .O(calc_diff_csec__55_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    calc_diff_csec__55_carry__2_i_4
       (.I0(calc_diff_csec__55_carry__1_i_12_n_0),
        .I1(abs_diff[10]),
        .I2(abs_diff[5]),
        .I3(abs_diff[3]),
        .I4(calc_diff_csec_carry__2_n_7),
        .O(calc_diff_csec__55_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    calc_diff_csec__55_carry__2_i_5
       (.I0(calc_diff_csec__55_carry__2_i_1_n_0),
        .I1(abs_diff[7]),
        .I2(abs_diff[9]),
        .I3(calc_diff_csec_carry__3_n_7),
        .I4(abs_diff[14]),
        .I5(calc_diff_csec__55_carry__2_i_12_n_0),
        .O(calc_diff_csec__55_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    calc_diff_csec__55_carry__2_i_6
       (.I0(calc_diff_csec__55_carry__2_i_2_n_0),
        .I1(abs_diff[6]),
        .I2(abs_diff[8]),
        .I3(calc_diff_csec_carry__2_n_4),
        .I4(abs_diff[13]),
        .I5(calc_diff_csec__55_carry__2_i_9_n_0),
        .O(calc_diff_csec__55_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    calc_diff_csec__55_carry__2_i_7
       (.I0(calc_diff_csec__55_carry__2_i_3_n_0),
        .I1(abs_diff[5]),
        .I2(abs_diff[7]),
        .I3(calc_diff_csec_carry__2_n_5),
        .I4(abs_diff[12]),
        .I5(calc_diff_csec__55_carry__2_i_10_n_0),
        .O(calc_diff_csec__55_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    calc_diff_csec__55_carry__2_i_8
       (.I0(calc_diff_csec__55_carry__2_i_4_n_0),
        .I1(abs_diff[4]),
        .I2(abs_diff[6]),
        .I3(calc_diff_csec_carry__2_n_6),
        .I4(abs_diff[11]),
        .I5(calc_diff_csec__55_carry__2_i_11_n_0),
        .O(calc_diff_csec__55_carry__2_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__2_i_9
       (.I0(abs_diff[9]),
        .I1(calc_diff_csec_carry__3_n_7),
        .I2(abs_diff[7]),
        .O(calc_diff_csec__55_carry__2_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec__55_carry__3
       (.CI(calc_diff_csec__55_carry__2_n_0),
        .CO({NLW_calc_diff_csec__55_carry__3_CO_UNCONNECTED[3],calc_diff_csec__55_carry__3_n_1,calc_diff_csec__55_carry__3_n_2,calc_diff_csec__55_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,calc_diff_csec__55_carry__3_i_1_n_0,calc_diff_csec__55_carry__3_i_2_n_0,calc_diff_csec__55_carry__3_i_3_n_0}),
        .O({calc_diff_csec__55_carry__3_n_4,calc_diff_csec__55_carry__3_n_5,calc_diff_csec__55_carry__3_n_6,calc_diff_csec__55_carry__3_n_7}),
        .S({calc_diff_csec__55_carry__3_i_4_n_0,calc_diff_csec__55_carry__3_i_5_n_0,calc_diff_csec__55_carry__3_i_6_n_0,calc_diff_csec__55_carry__3_i_7_n_0}));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    calc_diff_csec__55_carry__3_i_1
       (.I0(calc_diff_csec__55_carry__3_i_8_n_0),
        .I1(abs_diff[16]),
        .I2(abs_diff[9]),
        .I3(abs_diff[11]),
        .I4(calc_diff_csec_carry__3_n_5),
        .O(calc_diff_csec__55_carry__3_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_csec__55_carry__3_i_10
       (.I0(abs_diff[10]),
        .I1(abs_diff[12]),
        .I2(calc_diff_csec_carry__3_n_4),
        .O(calc_diff_csec__55_carry__3_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_csec__55_carry__3_i_11
       (.I0(abs_diff[13]),
        .I1(abs_diff[11]),
        .O(calc_diff_csec__55_carry__3_i_11_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    calc_diff_csec__55_carry__3_i_2
       (.I0(abs_diff[15]),
        .I1(calc_diff_csec__55_carry__3_i_9_n_0),
        .I2(abs_diff[8]),
        .I3(abs_diff[10]),
        .I4(calc_diff_csec_carry__3_n_6),
        .O(calc_diff_csec__55_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    calc_diff_csec__55_carry__3_i_3
       (.I0(calc_diff_csec__55_carry__2_i_12_n_0),
        .I1(abs_diff[14]),
        .I2(abs_diff[7]),
        .I3(abs_diff[9]),
        .I4(calc_diff_csec_carry__3_n_7),
        .O(calc_diff_csec__55_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'hB2244DDB4DDBB224)) 
    calc_diff_csec__55_carry__3_i_4
       (.I0(calc_diff_csec__55_carry__3_i_10_n_0),
        .I1(calc_diff_csec_carry__4_n_7),
        .I2(abs_diff[13]),
        .I3(abs_diff[11]),
        .I4(abs_diff[12]),
        .I5(abs_diff[14]),
        .O(calc_diff_csec__55_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    calc_diff_csec__55_carry__3_i_5
       (.I0(calc_diff_csec__55_carry__3_i_1_n_0),
        .I1(calc_diff_csec_carry__4_n_7),
        .I2(calc_diff_csec__55_carry__3_i_11_n_0),
        .I3(abs_diff[10]),
        .I4(abs_diff[12]),
        .I5(calc_diff_csec_carry__3_n_4),
        .O(calc_diff_csec__55_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    calc_diff_csec__55_carry__3_i_6
       (.I0(calc_diff_csec__55_carry__3_i_2_n_0),
        .I1(abs_diff[16]),
        .I2(calc_diff_csec__55_carry__3_i_8_n_0),
        .I3(abs_diff[9]),
        .I4(abs_diff[11]),
        .I5(calc_diff_csec_carry__3_n_5),
        .O(calc_diff_csec__55_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    calc_diff_csec__55_carry__3_i_7
       (.I0(calc_diff_csec__55_carry__3_i_3_n_0),
        .I1(abs_diff[8]),
        .I2(abs_diff[10]),
        .I3(calc_diff_csec_carry__3_n_6),
        .I4(abs_diff[15]),
        .I5(calc_diff_csec__55_carry__3_i_9_n_0),
        .O(calc_diff_csec__55_carry__3_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_csec__55_carry__3_i_8
       (.I0(abs_diff[12]),
        .I1(calc_diff_csec_carry__3_n_4),
        .I2(abs_diff[10]),
        .O(calc_diff_csec__55_carry__3_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    calc_diff_csec__55_carry__3_i_9
       (.I0(abs_diff[11]),
        .I1(calc_diff_csec_carry__3_n_5),
        .I2(abs_diff[9]),
        .O(calc_diff_csec__55_carry__3_i_9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_csec__55_carry_i_1
       (.I0(abs_diff[2]),
        .I1(calc_diff_csec_carry__0_n_6),
        .O(calc_diff_csec__55_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_csec__55_carry_i_2
       (.I0(abs_diff[1]),
        .I1(calc_diff_csec_carry__0_n_7),
        .O(calc_diff_csec__55_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_csec__55_carry_i_3
       (.I0(abs_diff[0]),
        .I1(calc_diff_csec_carry_n_4),
        .O(calc_diff_csec__55_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec__99_carry
       (.CI(1'b0),
        .CO({NLW_calc_diff_csec__99_carry_CO_UNCONNECTED[3:2],calc_diff_csec__99_carry_n_2,calc_diff_csec__99_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,calc_diff_csec__99_carry_i_1_n_0,1'b0}),
        .O({NLW_calc_diff_csec__99_carry_O_UNCONNECTED[3],calc_diff_csec__99_carry_n_5,calc_diff_csec__99_carry_n_6,calc_diff_csec__99_carry_n_7}),
        .S({1'b0,calc_diff_csec__99_carry_i_2_n_0,calc_diff_csec__99_carry_i_3_n_0,calc_diff_csec__99_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_csec__99_carry_i_1
       (.I0(calc_diff_csec__55_carry__3_n_6),
        .I1(calc_diff_csec__55_carry__2_n_5),
        .O(calc_diff_csec__99_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h66969969)) 
    calc_diff_csec__99_carry_i_2
       (.I0(calc_diff_csec__55_carry__3_n_4),
        .I1(calc_diff_csec__55_carry__3_n_7),
        .I2(calc_diff_csec__55_carry__3_n_5),
        .I3(calc_diff_csec__55_carry__2_n_4),
        .I4(calc_diff_csec__55_carry__2_n_5),
        .O(calc_diff_csec__99_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    calc_diff_csec__99_carry_i_3
       (.I0(calc_diff_csec__55_carry__2_n_5),
        .I1(calc_diff_csec__55_carry__3_n_6),
        .I2(calc_diff_csec__55_carry__3_n_5),
        .I3(calc_diff_csec__55_carry__2_n_4),
        .O(calc_diff_csec__99_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_csec__99_carry_i_4
       (.I0(calc_diff_csec__55_carry__3_n_6),
        .I1(calc_diff_csec__55_carry__2_n_5),
        .O(calc_diff_csec__99_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec_carry
       (.CI(1'b0),
        .CO({calc_diff_csec_carry_n_0,calc_diff_csec_carry_n_1,calc_diff_csec_carry_n_2,calc_diff_csec_carry_n_3}),
        .CYINIT(1'b0),
        .DI({abs_diff[0],1'b0,1'b0,1'b1}),
        .O({calc_diff_csec_carry_n_4,calc_diff_csec_carry_n_5,NLW_calc_diff_csec_carry_O_UNCONNECTED[1:0]}),
        .S({calc_diff_csec_carry_i_1_n_0,calc_diff_csec_carry_i_2_n_0,calc_diff_csec_carry_i_3_n_0,abs_diff[0]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec_carry__0
       (.CI(calc_diff_csec_carry_n_0),
        .CO({calc_diff_csec_carry__0_n_0,calc_diff_csec_carry__0_n_1,calc_diff_csec_carry__0_n_2,calc_diff_csec_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(abs_diff[4:1]),
        .O({calc_diff_csec_carry__0_n_4,calc_diff_csec_carry__0_n_5,calc_diff_csec_carry__0_n_6,calc_diff_csec_carry__0_n_7}),
        .S({calc_diff_csec_carry__0_i_1_n_0,calc_diff_csec_carry__0_i_2_n_0,calc_diff_csec_carry__0_i_3_n_0,calc_diff_csec_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__0_i_1
       (.I0(abs_diff[4]),
        .I1(abs_diff[7]),
        .O(calc_diff_csec_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__0_i_2
       (.I0(abs_diff[3]),
        .I1(abs_diff[6]),
        .O(calc_diff_csec_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__0_i_3
       (.I0(abs_diff[2]),
        .I1(abs_diff[5]),
        .O(calc_diff_csec_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__0_i_4
       (.I0(abs_diff[1]),
        .I1(abs_diff[4]),
        .O(calc_diff_csec_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec_carry__1
       (.CI(calc_diff_csec_carry__0_n_0),
        .CO({calc_diff_csec_carry__1_n_0,calc_diff_csec_carry__1_n_1,calc_diff_csec_carry__1_n_2,calc_diff_csec_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(abs_diff[8:5]),
        .O({calc_diff_csec_carry__1_n_4,calc_diff_csec_carry__1_n_5,calc_diff_csec_carry__1_n_6,calc_diff_csec_carry__1_n_7}),
        .S({calc_diff_csec_carry__1_i_1_n_0,calc_diff_csec_carry__1_i_2_n_0,calc_diff_csec_carry__1_i_3_n_0,calc_diff_csec_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__1_i_1
       (.I0(abs_diff[8]),
        .I1(abs_diff[11]),
        .O(calc_diff_csec_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__1_i_2
       (.I0(abs_diff[7]),
        .I1(abs_diff[10]),
        .O(calc_diff_csec_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__1_i_3
       (.I0(abs_diff[6]),
        .I1(abs_diff[9]),
        .O(calc_diff_csec_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__1_i_4
       (.I0(abs_diff[5]),
        .I1(abs_diff[8]),
        .O(calc_diff_csec_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec_carry__2
       (.CI(calc_diff_csec_carry__1_n_0),
        .CO({calc_diff_csec_carry__2_n_0,calc_diff_csec_carry__2_n_1,calc_diff_csec_carry__2_n_2,calc_diff_csec_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(abs_diff[12:9]),
        .O({calc_diff_csec_carry__2_n_4,calc_diff_csec_carry__2_n_5,calc_diff_csec_carry__2_n_6,calc_diff_csec_carry__2_n_7}),
        .S({calc_diff_csec_carry__2_i_1_n_0,calc_diff_csec_carry__2_i_2_n_0,calc_diff_csec_carry__2_i_3_n_0,calc_diff_csec_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__2_i_1
       (.I0(abs_diff[12]),
        .I1(abs_diff[15]),
        .O(calc_diff_csec_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__2_i_2
       (.I0(abs_diff[11]),
        .I1(abs_diff[14]),
        .O(calc_diff_csec_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__2_i_3
       (.I0(abs_diff[10]),
        .I1(abs_diff[13]),
        .O(calc_diff_csec_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__2_i_4
       (.I0(abs_diff[9]),
        .I1(abs_diff[12]),
        .O(calc_diff_csec_carry__2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec_carry__3
       (.CI(calc_diff_csec_carry__2_n_0),
        .CO({calc_diff_csec_carry__3_n_0,calc_diff_csec_carry__3_n_1,calc_diff_csec_carry__3_n_2,calc_diff_csec_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(abs_diff[16:13]),
        .O({calc_diff_csec_carry__3_n_4,calc_diff_csec_carry__3_n_5,calc_diff_csec_carry__3_n_6,calc_diff_csec_carry__3_n_7}),
        .S({calc_diff_csec_carry__3_i_1_n_0,calc_diff_csec_carry__3_i_2_n_0,calc_diff_csec_carry__3_i_3_n_0,calc_diff_csec_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_csec_carry__3_i_1
       (.I0(abs_diff[16]),
        .O(calc_diff_csec_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_csec_carry__3_i_2
       (.I0(abs_diff[15]),
        .O(calc_diff_csec_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_csec_carry__3_i_3
       (.I0(abs_diff[14]),
        .O(calc_diff_csec_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry__3_i_4
       (.I0(abs_diff[13]),
        .I1(abs_diff[16]),
        .O(calc_diff_csec_carry__3_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_csec_carry__4
       (.CI(calc_diff_csec_carry__3_n_0),
        .CO(NLW_calc_diff_csec_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_calc_diff_csec_carry__4_O_UNCONNECTED[3:1],calc_diff_csec_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_csec_carry_i_1
       (.I0(abs_diff[0]),
        .I1(abs_diff[3]),
        .O(calc_diff_csec_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_csec_carry_i_2
       (.I0(abs_diff[2]),
        .O(calc_diff_csec_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_csec_carry_i_3
       (.I0(abs_diff[1]),
        .O(calc_diff_csec_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min0_carry
       (.CI(1'b0),
        .CO({calc_diff_min0_carry_n_0,calc_diff_min0_carry_n_1,calc_diff_min0_carry_n_2,calc_diff_min0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({calc_diff_min0_carry_i_1_n_0,calc_diff_min0_carry_i_2_n_0,calc_diff_min0_carry_i_3_n_0,calc_diff_min0_carry_i_4_n_0}),
        .O(abs_diff[3:0]),
        .S({calc_diff_min0_carry_i_5_n_0,calc_diff_min0_carry_i_6_n_0,calc_diff_min0_carry_i_7_n_0,calc_diff_min0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min0_carry__0
       (.CI(calc_diff_min0_carry_n_0),
        .CO({calc_diff_min0_carry__0_n_0,calc_diff_min0_carry__0_n_1,calc_diff_min0_carry__0_n_2,calc_diff_min0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min0_carry__0_i_1_n_0,calc_diff_min0_carry__0_i_2_n_0,calc_diff_min0_carry__0_i_3_n_0,calc_diff_min0_carry__0_i_4_n_0}),
        .O(abs_diff[7:4]),
        .S({calc_diff_min0_carry__0_i_5_n_0,calc_diff_min0_carry__0_i_6_n_0,calc_diff_min0_carry__0_i_7_n_0,calc_diff_min0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__0_i_1
       (.I0(total_tmp__0[7]),
        .I1(total_prev__0[7]),
        .I2(CO),
        .O(calc_diff_min0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__0_i_2
       (.I0(total_tmp__0[6]),
        .I1(total_prev__0[6]),
        .I2(CO),
        .O(calc_diff_min0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__0_i_3
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .I2(CO),
        .O(calc_diff_min0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__0_i_4
       (.I0(total_tmp__0[4]),
        .I1(total_prev__0[4]),
        .I2(CO),
        .O(calc_diff_min0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__0_i_5
       (.I0(total_prev__0[7]),
        .I1(total_tmp__0[7]),
        .O(calc_diff_min0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__0_i_6
       (.I0(total_prev__0[6]),
        .I1(total_tmp__0[6]),
        .O(calc_diff_min0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__0_i_7
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .O(calc_diff_min0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__0_i_8
       (.I0(total_prev__0[4]),
        .I1(total_tmp__0[4]),
        .O(calc_diff_min0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min0_carry__1
       (.CI(calc_diff_min0_carry__0_n_0),
        .CO({calc_diff_min0_carry__1_n_0,calc_diff_min0_carry__1_n_1,calc_diff_min0_carry__1_n_2,calc_diff_min0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min0_carry__1_i_1_n_0,calc_diff_min0_carry__1_i_2_n_0,calc_diff_min0_carry__1_i_3_n_0,calc_diff_min0_carry__1_i_4_n_0}),
        .O(abs_diff[11:8]),
        .S({calc_diff_min0_carry__1_i_5_n_0,calc_diff_min0_carry__1_i_6_n_0,calc_diff_min0_carry__1_i_7_n_0,calc_diff_min0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__1_i_1
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .I2(CO),
        .O(calc_diff_min0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__1_i_2
       (.I0(total_tmp__0[10]),
        .I1(total_prev__0[10]),
        .I2(CO),
        .O(calc_diff_min0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__1_i_3
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .I2(CO),
        .O(calc_diff_min0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__1_i_4
       (.I0(total_tmp__0[8]),
        .I1(total_prev__0[8]),
        .I2(CO),
        .O(calc_diff_min0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__1_i_5
       (.I0(total_prev__0[11]),
        .I1(total_tmp__0[11]),
        .O(calc_diff_min0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__1_i_6
       (.I0(total_prev__0[10]),
        .I1(total_tmp__0[10]),
        .O(calc_diff_min0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__1_i_7
       (.I0(total_prev__0[9]),
        .I1(total_tmp__0[9]),
        .O(calc_diff_min0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__1_i_8
       (.I0(total_prev__0[8]),
        .I1(total_tmp__0[8]),
        .O(calc_diff_min0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min0_carry__2
       (.CI(calc_diff_min0_carry__1_n_0),
        .CO({calc_diff_min0_carry__2_n_0,calc_diff_min0_carry__2_n_1,calc_diff_min0_carry__2_n_2,calc_diff_min0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min0_carry__2_i_1_n_0,calc_diff_min0_carry__2_i_2_n_0,calc_diff_min0_carry__2_i_3_n_0,calc_diff_min0_carry__2_i_4_n_0}),
        .O(abs_diff[15:12]),
        .S({calc_diff_min0_carry__2_i_5_n_0,calc_diff_min0_carry__2_i_6_n_0,calc_diff_min0_carry__2_i_7_n_0,calc_diff_min0_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__2_i_1
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .I2(CO),
        .O(calc_diff_min0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__2_i_2
       (.I0(total_tmp__0[14]),
        .I1(total_prev__0[14]),
        .I2(CO),
        .O(calc_diff_min0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__2_i_3
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(CO),
        .O(calc_diff_min0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry__2_i_4
       (.I0(total_tmp__0[12]),
        .I1(total_prev__0[12]),
        .I2(CO),
        .O(calc_diff_min0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__2_i_5
       (.I0(total_prev__0[15]),
        .I1(total_tmp__0[15]),
        .O(calc_diff_min0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__2_i_6
       (.I0(total_prev__0[14]),
        .I1(total_tmp__0[14]),
        .O(calc_diff_min0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__2_i_7
       (.I0(total_prev__0[13]),
        .I1(total_tmp__0[13]),
        .O(calc_diff_min0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__2_i_8
       (.I0(total_prev__0[12]),
        .I1(total_tmp__0[12]),
        .O(calc_diff_min0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min0_carry__3
       (.CI(calc_diff_min0_carry__2_n_0),
        .CO(NLW_calc_diff_min0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_calc_diff_min0_carry__3_O_UNCONNECTED[3:1],abs_diff[16]}),
        .S({1'b0,1'b0,1'b0,calc_diff_min0_carry__3_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry__3_i_1
       (.I0(total_prev__0[16]),
        .I1(total_tmp__0[16]),
        .O(calc_diff_min0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry_i_1
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(CO),
        .O(calc_diff_min0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry_i_2
       (.I0(total_tmp__0[2]),
        .I1(total_prev__0[2]),
        .I2(CO),
        .O(calc_diff_min0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry_i_3
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(CO),
        .O(calc_diff_min0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    calc_diff_min0_carry_i_4
       (.I0(total_tmp__0[0]),
        .I1(total_prev__0[0]),
        .I2(CO),
        .O(calc_diff_min0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry_i_5
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .O(calc_diff_min0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry_i_6
       (.I0(total_prev__0[2]),
        .I1(total_tmp__0[2]),
        .O(calc_diff_min0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry_i_7
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .O(calc_diff_min0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_min0_carry_i_8
       (.I0(total_prev__0[0]),
        .I1(total_tmp__0[0]),
        .O(calc_diff_min0_carry_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__23_carry
       (.CI(1'b0),
        .CO({calc_diff_min__23_carry_n_0,calc_diff_min__23_carry_n_1,calc_diff_min__23_carry_n_2,calc_diff_min__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min__23_carry_i_1_n_0,calc_diff_min__23_carry_i_2_n_0,calc_diff_min__23_carry_i_3_n_0,calc_diff_min__23_carry_i_4_n_0}),
        .O({calc_diff_min__23_carry_n_4,calc_diff_min__23_carry_n_5,calc_diff_min__23_carry_n_6,calc_diff_min__23_carry_n_7}),
        .S({calc_diff_min__23_carry_i_5_n_0,calc_diff_min__23_carry_i_6_n_0,calc_diff_min__23_carry_i_7_n_0,calc_diff_min__23_carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__23_carry__0
       (.CI(calc_diff_min__23_carry_n_0),
        .CO({calc_diff_min__23_carry__0_n_0,calc_diff_min__23_carry__0_n_1,calc_diff_min__23_carry__0_n_2,calc_diff_min__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min__23_carry__0_i_1_n_0,calc_diff_min__23_carry__0_i_2_n_0,calc_diff_min__23_carry__0_i_3_n_0,calc_diff_min__23_carry_i_4_n_0}),
        .O({calc_diff_min__23_carry__0_n_4,calc_diff_min__23_carry__0_n_5,calc_diff_min__23_carry__0_n_6,calc_diff_min__23_carry__0_n_7}),
        .S({calc_diff_min__23_carry__0_i_4_n_0,calc_diff_min__23_carry__0_i_5_n_0,calc_diff_min__23_carry__0_i_6_n_0,calc_diff_min__23_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__23_carry__0_i_1
       (.I0(calc_diff_min_carry__3_n_5),
        .I1(calc_diff_min_carry__3_n_7),
        .O(calc_diff_min__23_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__23_carry__0_i_2
       (.I0(calc_diff_min_carry__3_n_6),
        .I1(calc_diff_min_carry__3_n_5),
        .O(calc_diff_min__23_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min__23_carry__0_i_3
       (.I0(calc_diff_min_carry__3_n_5),
        .I1(calc_diff_min_carry__3_n_7),
        .I2(calc_diff_min_carry__3_n_6),
        .O(calc_diff_min__23_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    calc_diff_min__23_carry__0_i_4
       (.I0(calc_diff_min_carry__3_n_7),
        .I1(calc_diff_min_carry__3_n_5),
        .I2(calc_diff_min_carry__3_n_6),
        .O(calc_diff_min__23_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    calc_diff_min__23_carry__0_i_5
       (.I0(calc_diff_min_carry__3_n_6),
        .I1(calc_diff_min_carry__3_n_7),
        .I2(calc_diff_min_carry__3_n_5),
        .O(calc_diff_min__23_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    calc_diff_min__23_carry__0_i_6
       (.I0(calc_diff_min_carry__3_n_7),
        .I1(calc_diff_min_carry__3_n_5),
        .I2(calc_diff_min_carry__3_n_6),
        .O(calc_diff_min__23_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min__23_carry__0_i_7
       (.I0(calc_diff_min__23_carry_i_4_n_0),
        .I1(calc_diff_min_carry__3_n_6),
        .I2(calc_diff_min_carry__3_n_7),
        .I3(calc_diff_min_carry__3_n_5),
        .O(calc_diff_min__23_carry__0_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__23_carry__1
       (.CI(calc_diff_min__23_carry__0_n_0),
        .CO({NLW_calc_diff_min__23_carry__1_CO_UNCONNECTED[3:2],calc_diff_min__23_carry__1_n_2,NLW_calc_diff_min__23_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_calc_diff_min__23_carry__1_O_UNCONNECTED[3:1],calc_diff_min__23_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,calc_diff_min_carry__3_n_5}));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__23_carry_i_1
       (.I0(calc_diff_min_carry__3_n_5),
        .I1(calc_diff_min_carry__3_n_7),
        .O(calc_diff_min__23_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__23_carry_i_2
       (.I0(calc_diff_min_carry__3_n_6),
        .I1(calc_diff_min_carry__3_n_5),
        .O(calc_diff_min__23_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min__23_carry_i_3
       (.I0(calc_diff_min_carry__3_n_5),
        .I1(calc_diff_min_carry__3_n_7),
        .I2(calc_diff_min_carry__3_n_6),
        .O(calc_diff_min__23_carry_i_3_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__23_carry_i_4
       (.I0(calc_diff_min_carry__3_n_6),
        .I1(calc_diff_min_carry__3_n_7),
        .O(calc_diff_min__23_carry_i_4_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    calc_diff_min__23_carry_i_5
       (.I0(calc_diff_min_carry__3_n_6),
        .I1(calc_diff_min_carry__3_n_7),
        .I2(calc_diff_min_carry__3_n_5),
        .O(calc_diff_min__23_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    calc_diff_min__23_carry_i_6
       (.I0(calc_diff_min_carry__3_n_6),
        .I1(calc_diff_min_carry__3_n_7),
        .I2(calc_diff_min_carry__3_n_5),
        .O(calc_diff_min__23_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    calc_diff_min__23_carry_i_7
       (.I0(calc_diff_min_carry__3_n_7),
        .I1(calc_diff_min_carry__3_n_5),
        .I2(calc_diff_min_carry__3_n_6),
        .O(calc_diff_min__23_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min__23_carry_i_8
       (.I0(calc_diff_min__23_carry_i_4_n_0),
        .I1(calc_diff_min_carry__3_n_6),
        .I2(calc_diff_min_carry__3_n_7),
        .I3(calc_diff_min_carry__3_n_5),
        .O(calc_diff_min__23_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__46_carry
       (.CI(1'b0),
        .CO({calc_diff_min__46_carry_n_0,calc_diff_min__46_carry_n_1,calc_diff_min__46_carry_n_2,calc_diff_min__46_carry_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min__46_carry_i_1_n_0,calc_diff_min__46_carry_i_2_n_0,calc_diff_min__46_carry_i_3_n_0,calc_diff_min__46_carry_i_4_n_0}),
        .O({calc_diff_min__46_carry_n_4,calc_diff_min__46_carry_n_5,calc_diff_min__46_carry_n_6,calc_diff_min__46_carry_n_7}),
        .S({calc_diff_min__46_carry_i_5_n_0,calc_diff_min__46_carry_i_6_n_0,calc_diff_min__46_carry_i_7_n_0,calc_diff_min__46_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__46_carry__0
       (.CI(calc_diff_min__46_carry_n_0),
        .CO({calc_diff_min__46_carry__0_n_0,calc_diff_min__46_carry__0_n_1,calc_diff_min__46_carry__0_n_2,calc_diff_min__46_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min__46_carry__0_i_1_n_0,calc_diff_min__46_carry__0_i_2_n_0,calc_diff_min__46_carry__0_i_3_n_0,calc_diff_min__46_carry__0_i_4_n_0}),
        .O({calc_diff_min__46_carry__0_n_4,calc_diff_min__46_carry__0_n_5,calc_diff_min__46_carry__0_n_6,calc_diff_min__46_carry__0_n_7}),
        .S({calc_diff_min__46_carry__0_i_5_n_0,calc_diff_min__46_carry__0_i_6_n_0,calc_diff_min__46_carry__0_i_7_n_0,calc_diff_min__46_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__46_carry__0_i_1
       (.I0(\diff_min_reg[4]_i_4_n_3 ),
        .I1(calc_diff_min__23_carry__1_n_7),
        .O(calc_diff_min__46_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min__46_carry__0_i_2
       (.I0(\diff_min_reg[4]_i_4_n_3 ),
        .I1(calc_diff_min__23_carry__0_n_4),
        .I2(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min__46_carry__0_i_3
       (.I0(\diff_min_reg[4]_i_4_n_3 ),
        .I1(calc_diff_min__23_carry__0_n_5),
        .I2(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__46_carry__0_i_4
       (.I0(calc_diff_min_carry__3_n_4),
        .I1(calc_diff_min__23_carry__0_n_6),
        .O(calc_diff_min__46_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    calc_diff_min__46_carry__0_i_5
       (.I0(calc_diff_min__23_carry__1_n_7),
        .I1(\diff_min_reg[4]_i_4_n_3 ),
        .I2(calc_diff_min__23_carry__1_n_2),
        .I3(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hE178)) 
    calc_diff_min__46_carry__0_i_6
       (.I0(calc_diff_min_carry__3_n_4),
        .I1(calc_diff_min__23_carry__0_n_4),
        .I2(calc_diff_min__23_carry__1_n_7),
        .I3(\diff_min_reg[4]_i_4_n_3 ),
        .O(calc_diff_min__46_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min__46_carry__0_i_7
       (.I0(calc_diff_min__46_carry__0_i_3_n_0),
        .I1(\diff_min_reg[4]_i_4_n_3 ),
        .I2(calc_diff_min__23_carry__0_n_4),
        .I3(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min__46_carry__0_i_8
       (.I0(\diff_min_reg[4]_i_4_n_3 ),
        .I1(calc_diff_min__23_carry__0_n_5),
        .I2(calc_diff_min_carry__3_n_4),
        .I3(calc_diff_min__46_carry__0_i_4_n_0),
        .O(calc_diff_min__46_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__46_carry__1
       (.CI(calc_diff_min__46_carry__0_n_0),
        .CO(NLW_calc_diff_min__46_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_calc_diff_min__46_carry__1_O_UNCONNECTED[3:1],calc_diff_min__46_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,calc_diff_min__46_carry__1_i_1_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    calc_diff_min__46_carry__1_i_1
       (.I0(\diff_min_reg[4]_i_4_n_3 ),
        .I1(calc_diff_min__23_carry__1_n_2),
        .I2(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__46_carry_i_1
       (.I0(\diff_min_reg[4]_i_4_n_3 ),
        .I1(calc_diff_min__23_carry__0_n_7),
        .O(calc_diff_min__46_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min__46_carry_i_2
       (.I0(\diff_min_reg[4]_i_4_n_3 ),
        .I1(calc_diff_min__23_carry_n_4),
        .I2(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry_i_2_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min__46_carry_i_3
       (.I0(calc_diff_min__23_carry_n_5),
        .I1(\diff_min_reg[4]_i_4_n_3 ),
        .I2(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min__46_carry_i_4
       (.I0(calc_diff_min__23_carry_n_6),
        .I1(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry_i_4_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    calc_diff_min__46_carry_i_5
       (.I0(calc_diff_min_carry__3_n_4),
        .I1(calc_diff_min__23_carry__0_n_6),
        .I2(calc_diff_min__23_carry__0_n_7),
        .I3(\diff_min_reg[4]_i_4_n_3 ),
        .O(calc_diff_min__46_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hE178)) 
    calc_diff_min__46_carry_i_6
       (.I0(calc_diff_min_carry__3_n_4),
        .I1(calc_diff_min__23_carry_n_4),
        .I2(calc_diff_min__23_carry__0_n_7),
        .I3(\diff_min_reg[4]_i_4_n_3 ),
        .O(calc_diff_min__46_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min__46_carry_i_7
       (.I0(calc_diff_min__46_carry_i_3_n_0),
        .I1(\diff_min_reg[4]_i_4_n_3 ),
        .I2(calc_diff_min__23_carry_n_4),
        .I3(calc_diff_min_carry__3_n_4),
        .O(calc_diff_min__46_carry_i_7_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min__46_carry_i_8
       (.I0(calc_diff_min__23_carry_n_5),
        .I1(\diff_min_reg[4]_i_4_n_3 ),
        .I2(calc_diff_min_carry__3_n_4),
        .I3(calc_diff_min__46_carry_i_4_n_0),
        .O(calc_diff_min__46_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__71_carry
       (.CI(1'b0),
        .CO({calc_diff_min__71_carry_n_0,calc_diff_min__71_carry_n_1,calc_diff_min__71_carry_n_2,calc_diff_min__71_carry_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min__71_carry_i_1_n_0,calc_diff_min__71_carry_i_2_n_0,calc_diff_min__71_carry_i_3_n_0,calc_diff_min__71_carry_i_4_n_0}),
        .O(NLW_calc_diff_min__71_carry_O_UNCONNECTED[3:0]),
        .S({calc_diff_min__71_carry_i_5_n_0,calc_diff_min__71_carry_i_6_n_0,calc_diff_min__71_carry_i_7_n_0,calc_diff_min__71_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__71_carry__0
       (.CI(calc_diff_min__71_carry_n_0),
        .CO({calc_diff_min__71_carry__0_n_0,calc_diff_min__71_carry__0_n_1,calc_diff_min__71_carry__0_n_2,calc_diff_min__71_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min__71_carry__0_i_1_n_0,calc_diff_min__71_carry__0_i_2_n_0,calc_diff_min__71_carry__0_i_3_n_0,calc_diff_min__71_carry__0_i_4_n_0}),
        .O(NLW_calc_diff_min__71_carry__0_O_UNCONNECTED[3:0]),
        .S({calc_diff_min__71_carry__0_i_5_n_0,calc_diff_min__71_carry__0_i_6_n_0,calc_diff_min__71_carry__0_i_7_n_0,calc_diff_min__71_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    calc_diff_min__71_carry__0_i_1
       (.I0(calc_diff_min__46_carry_n_4),
        .I1(abs_diff[11]),
        .O(calc_diff_min__71_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_min__71_carry__0_i_2
       (.I0(calc_diff_min__46_carry_n_5),
        .I1(abs_diff[10]),
        .O(calc_diff_min__71_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_min__71_carry__0_i_3
       (.I0(calc_diff_min__46_carry_n_6),
        .I1(abs_diff[9]),
        .O(calc_diff_min__71_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_min__71_carry__0_i_4
       (.I0(calc_diff_min__46_carry_n_7),
        .I1(abs_diff[8]),
        .O(calc_diff_min__71_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    calc_diff_min__71_carry__0_i_5
       (.I0(abs_diff[11]),
        .I1(calc_diff_min__46_carry_n_4),
        .I2(abs_diff[12]),
        .I3(calc_diff_min__46_carry__0_n_7),
        .O(calc_diff_min__71_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    calc_diff_min__71_carry__0_i_6
       (.I0(abs_diff[10]),
        .I1(calc_diff_min__46_carry_n_5),
        .I2(abs_diff[11]),
        .I3(calc_diff_min__46_carry_n_4),
        .O(calc_diff_min__71_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    calc_diff_min__71_carry__0_i_7
       (.I0(abs_diff[9]),
        .I1(calc_diff_min__46_carry_n_6),
        .I2(abs_diff[10]),
        .I3(calc_diff_min__46_carry_n_5),
        .O(calc_diff_min__71_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    calc_diff_min__71_carry__0_i_8
       (.I0(abs_diff[8]),
        .I1(calc_diff_min__46_carry_n_7),
        .I2(abs_diff[9]),
        .I3(calc_diff_min__46_carry_n_6),
        .O(calc_diff_min__71_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min__71_carry__1
       (.CI(calc_diff_min__71_carry__0_n_0),
        .CO({calc_diff_min__71_carry__1_n_0,calc_diff_min__71_carry__1_n_1,calc_diff_min__71_carry__1_n_2,calc_diff_min__71_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min__71_carry__1_i_1_n_0,calc_diff_min__71_carry__1_i_2_n_0,calc_diff_min__71_carry__1_i_3_n_0,calc_diff_min__71_carry__1_i_4_n_0}),
        .O(NLW_calc_diff_min__71_carry__1_O_UNCONNECTED[3:0]),
        .S({calc_diff_min__71_carry__1_i_5_n_0,calc_diff_min__71_carry__1_i_6_n_0,calc_diff_min__71_carry__1_i_7_n_0,calc_diff_min__71_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    calc_diff_min__71_carry__1_i_1
       (.I0(calc_diff_min__46_carry__0_n_4),
        .I1(abs_diff[15]),
        .O(calc_diff_min__71_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    calc_diff_min__71_carry__1_i_2
       (.I0(calc_diff_min__46_carry__0_n_5),
        .I1(abs_diff[14]),
        .O(calc_diff_min__71_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    calc_diff_min__71_carry__1_i_3
       (.I0(calc_diff_min__46_carry__0_n_6),
        .I1(abs_diff[13]),
        .O(calc_diff_min__71_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_min__71_carry__1_i_4
       (.I0(calc_diff_min__46_carry__0_n_7),
        .I1(abs_diff[12]),
        .O(calc_diff_min__71_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    calc_diff_min__71_carry__1_i_5
       (.I0(abs_diff[15]),
        .I1(calc_diff_min__46_carry__0_n_4),
        .I2(abs_diff[16]),
        .I3(calc_diff_min__46_carry__1_n_7),
        .O(calc_diff_min__71_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    calc_diff_min__71_carry__1_i_6
       (.I0(abs_diff[14]),
        .I1(calc_diff_min__46_carry__0_n_5),
        .I2(calc_diff_min__46_carry__0_n_4),
        .I3(abs_diff[15]),
        .O(calc_diff_min__71_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    calc_diff_min__71_carry__1_i_7
       (.I0(abs_diff[13]),
        .I1(calc_diff_min__46_carry__0_n_6),
        .I2(abs_diff[14]),
        .I3(calc_diff_min__46_carry__0_n_5),
        .O(calc_diff_min__71_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    calc_diff_min__71_carry__1_i_8
       (.I0(abs_diff[12]),
        .I1(calc_diff_min__46_carry__0_n_7),
        .I2(calc_diff_min__46_carry__0_n_6),
        .I3(abs_diff[13]),
        .O(calc_diff_min__71_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    calc_diff_min__71_carry_i_1
       (.I0(calc_diff_min_carry__3_n_4),
        .I1(calc_diff_min__23_carry_n_6),
        .I2(abs_diff[7]),
        .O(calc_diff_min__71_carry_i_1_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_min__71_carry_i_2
       (.I0(calc_diff_min__23_carry_n_7),
        .I1(abs_diff[6]),
        .O(calc_diff_min__71_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h6F)) 
    calc_diff_min__71_carry_i_3
       (.I0(calc_diff_min_carry__3_n_7),
        .I1(calc_diff_min_carry__3_n_6),
        .I2(abs_diff[5]),
        .O(calc_diff_min__71_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_min__71_carry_i_4
       (.I0(calc_diff_min_carry__3_n_7),
        .I1(abs_diff[4]),
        .O(calc_diff_min__71_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h14EBEB14)) 
    calc_diff_min__71_carry_i_5
       (.I0(abs_diff[7]),
        .I1(calc_diff_min__23_carry_n_6),
        .I2(calc_diff_min_carry__3_n_4),
        .I3(abs_diff[8]),
        .I4(calc_diff_min__46_carry_n_7),
        .O(calc_diff_min__71_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    calc_diff_min__71_carry_i_6
       (.I0(calc_diff_min__71_carry_i_2_n_0),
        .I1(calc_diff_min__23_carry_n_6),
        .I2(calc_diff_min_carry__3_n_4),
        .I3(abs_diff[7]),
        .O(calc_diff_min__71_carry_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'h69999969)) 
    calc_diff_min__71_carry_i_7
       (.I0(calc_diff_min__23_carry_n_7),
        .I1(abs_diff[6]),
        .I2(abs_diff[5]),
        .I3(calc_diff_min_carry__3_n_6),
        .I4(calc_diff_min_carry__3_n_7),
        .O(calc_diff_min__71_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min__71_carry_i_8
       (.I0(calc_diff_min__71_carry_i_4_n_0),
        .I1(calc_diff_min_carry__3_n_6),
        .I2(calc_diff_min_carry__3_n_7),
        .I3(abs_diff[5]),
        .O(calc_diff_min__71_carry_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min_carry
       (.CI(1'b0),
        .CO({calc_diff_min_carry_n_0,calc_diff_min_carry_n_1,calc_diff_min_carry_n_2,calc_diff_min_carry_n_3}),
        .CYINIT(1'b0),
        .DI({abs_diff[4:2],1'b0}),
        .O(NLW_calc_diff_min_carry_O_UNCONNECTED[3:0]),
        .S({calc_diff_min_carry_i_1_n_0,calc_diff_min_carry_i_2_n_0,calc_diff_min_carry_i_3_n_0,abs_diff[1]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min_carry__0
       (.CI(calc_diff_min_carry_n_0),
        .CO({calc_diff_min_carry__0_n_0,calc_diff_min_carry__0_n_1,calc_diff_min_carry__0_n_2,calc_diff_min_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min_carry__0_i_1_n_0,calc_diff_min_carry__0_i_2_n_0,calc_diff_min_carry__0_i_3_n_0,calc_diff_min_carry__0_i_4_n_0}),
        .O(NLW_calc_diff_min_carry__0_O_UNCONNECTED[3:0]),
        .S({calc_diff_min_carry__0_i_5_n_0,calc_diff_min_carry__0_i_6_n_0,calc_diff_min_carry__0_i_7_n_0,calc_diff_min_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__0_i_1
       (.I0(abs_diff[5]),
        .I1(abs_diff[3]),
        .I2(abs_diff[7]),
        .O(calc_diff_min_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__0_i_2
       (.I0(abs_diff[4]),
        .I1(abs_diff[2]),
        .I2(abs_diff[6]),
        .O(calc_diff_min_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__0_i_3
       (.I0(abs_diff[1]),
        .I1(abs_diff[3]),
        .I2(abs_diff[5]),
        .O(calc_diff_min_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min_carry__0_i_4
       (.I0(abs_diff[0]),
        .I1(abs_diff[2]),
        .O(calc_diff_min_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__0_i_5
       (.I0(calc_diff_min_carry__0_i_1_n_0),
        .I1(abs_diff[4]),
        .I2(abs_diff[6]),
        .I3(abs_diff[8]),
        .O(calc_diff_min_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__0_i_6
       (.I0(calc_diff_min_carry__0_i_2_n_0),
        .I1(abs_diff[5]),
        .I2(abs_diff[3]),
        .I3(abs_diff[7]),
        .O(calc_diff_min_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__0_i_7
       (.I0(calc_diff_min_carry__0_i_3_n_0),
        .I1(abs_diff[4]),
        .I2(abs_diff[2]),
        .I3(abs_diff[6]),
        .O(calc_diff_min_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__0_i_8
       (.I0(abs_diff[3]),
        .I1(abs_diff[1]),
        .I2(abs_diff[5]),
        .I3(calc_diff_min_carry__0_i_4_n_0),
        .O(calc_diff_min_carry__0_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min_carry__1
       (.CI(calc_diff_min_carry__0_n_0),
        .CO({calc_diff_min_carry__1_n_0,calc_diff_min_carry__1_n_1,calc_diff_min_carry__1_n_2,calc_diff_min_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min_carry__1_i_1_n_0,calc_diff_min_carry__1_i_2_n_0,calc_diff_min_carry__1_i_3_n_0,calc_diff_min_carry__1_i_4_n_0}),
        .O(NLW_calc_diff_min_carry__1_O_UNCONNECTED[3:0]),
        .S({calc_diff_min_carry__1_i_5_n_0,calc_diff_min_carry__1_i_6_n_0,calc_diff_min_carry__1_i_7_n_0,calc_diff_min_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__1_i_1
       (.I0(abs_diff[7]),
        .I1(abs_diff[9]),
        .I2(abs_diff[11]),
        .O(calc_diff_min_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__1_i_2
       (.I0(abs_diff[6]),
        .I1(abs_diff[8]),
        .I2(abs_diff[10]),
        .O(calc_diff_min_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__1_i_3
       (.I0(abs_diff[5]),
        .I1(abs_diff[7]),
        .I2(abs_diff[9]),
        .O(calc_diff_min_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__1_i_4
       (.I0(abs_diff[4]),
        .I1(abs_diff[6]),
        .I2(abs_diff[8]),
        .O(calc_diff_min_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__1_i_5
       (.I0(calc_diff_min_carry__1_i_1_n_0),
        .I1(abs_diff[8]),
        .I2(abs_diff[10]),
        .I3(abs_diff[12]),
        .O(calc_diff_min_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__1_i_6
       (.I0(calc_diff_min_carry__1_i_2_n_0),
        .I1(abs_diff[7]),
        .I2(abs_diff[9]),
        .I3(abs_diff[11]),
        .O(calc_diff_min_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__1_i_7
       (.I0(calc_diff_min_carry__1_i_3_n_0),
        .I1(abs_diff[6]),
        .I2(abs_diff[8]),
        .I3(abs_diff[10]),
        .O(calc_diff_min_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__1_i_8
       (.I0(calc_diff_min_carry__1_i_4_n_0),
        .I1(abs_diff[5]),
        .I2(abs_diff[7]),
        .I3(abs_diff[9]),
        .O(calc_diff_min_carry__1_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min_carry__2
       (.CI(calc_diff_min_carry__1_n_0),
        .CO({calc_diff_min_carry__2_n_0,calc_diff_min_carry__2_n_1,calc_diff_min_carry__2_n_2,calc_diff_min_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min_carry__2_i_1_n_0,calc_diff_min_carry__2_i_2_n_0,calc_diff_min_carry__2_i_3_n_0,calc_diff_min_carry__2_i_4_n_0}),
        .O(NLW_calc_diff_min_carry__2_O_UNCONNECTED[3:0]),
        .S({calc_diff_min_carry__2_i_5_n_0,calc_diff_min_carry__2_i_6_n_0,calc_diff_min_carry__2_i_7_n_0,calc_diff_min_carry__2_i_8_n_0}));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__2_i_1
       (.I0(abs_diff[15]),
        .I1(abs_diff[11]),
        .I2(abs_diff[13]),
        .O(calc_diff_min_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__2_i_2
       (.I0(abs_diff[10]),
        .I1(abs_diff[12]),
        .I2(abs_diff[14]),
        .O(calc_diff_min_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__2_i_3
       (.I0(abs_diff[13]),
        .I1(abs_diff[11]),
        .I2(abs_diff[9]),
        .O(calc_diff_min_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__2_i_4
       (.I0(abs_diff[8]),
        .I1(abs_diff[10]),
        .I2(abs_diff[12]),
        .O(calc_diff_min_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__2_i_5
       (.I0(calc_diff_min_carry__2_i_1_n_0),
        .I1(abs_diff[12]),
        .I2(abs_diff[14]),
        .I3(abs_diff[16]),
        .O(calc_diff_min_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__2_i_6
       (.I0(calc_diff_min_carry__2_i_2_n_0),
        .I1(abs_diff[13]),
        .I2(abs_diff[11]),
        .I3(abs_diff[15]),
        .O(calc_diff_min_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__2_i_7
       (.I0(calc_diff_min_carry__2_i_3_n_0),
        .I1(abs_diff[10]),
        .I2(abs_diff[12]),
        .I3(abs_diff[14]),
        .O(calc_diff_min_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_min_carry__2_i_8
       (.I0(calc_diff_min_carry__2_i_4_n_0),
        .I1(abs_diff[13]),
        .I2(abs_diff[11]),
        .I3(abs_diff[9]),
        .O(calc_diff_min_carry__2_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_min_carry__3
       (.CI(calc_diff_min_carry__2_n_0),
        .CO({calc_diff_min_carry__3_n_0,calc_diff_min_carry__3_n_1,calc_diff_min_carry__3_n_2,calc_diff_min_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,abs_diff[15],calc_diff_min_carry__3_i_1_n_0,calc_diff_min_carry__3_i_2_n_0}),
        .O({calc_diff_min_carry__3_n_4,calc_diff_min_carry__3_n_5,calc_diff_min_carry__3_n_6,calc_diff_min_carry__3_n_7}),
        .S({abs_diff[16],calc_diff_min_carry__3_i_3_n_0,calc_diff_min_carry__3_i_4_n_0,calc_diff_min_carry__3_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_min_carry__3_i_1
       (.I0(abs_diff[15]),
        .I1(abs_diff[13]),
        .O(calc_diff_min_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_min_carry__3_i_2
       (.I0(abs_diff[12]),
        .I1(abs_diff[14]),
        .I2(abs_diff[16]),
        .O(calc_diff_min_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    calc_diff_min_carry__3_i_3
       (.I0(abs_diff[16]),
        .I1(abs_diff[14]),
        .I2(abs_diff[15]),
        .O(calc_diff_min_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    calc_diff_min_carry__3_i_4
       (.I0(abs_diff[13]),
        .I1(abs_diff[15]),
        .I2(abs_diff[16]),
        .I3(abs_diff[14]),
        .O(calc_diff_min_carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    calc_diff_min_carry__3_i_5
       (.I0(abs_diff[16]),
        .I1(abs_diff[14]),
        .I2(abs_diff[12]),
        .I3(abs_diff[13]),
        .I4(abs_diff[15]),
        .O(calc_diff_min_carry__3_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    calc_diff_min_carry_i_1
       (.I0(abs_diff[0]),
        .I1(abs_diff[2]),
        .I2(abs_diff[4]),
        .O(calc_diff_min_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_min_carry_i_2
       (.I0(abs_diff[3]),
        .I1(abs_diff[1]),
        .O(calc_diff_min_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_min_carry_i_3
       (.I0(abs_diff[2]),
        .I1(abs_diff[0]),
        .O(calc_diff_min_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__106_carry
       (.CI(1'b0),
        .CO({calc_diff_sec0__106_carry_n_0,calc_diff_sec0__106_carry_n_1,calc_diff_sec0__106_carry_n_2,calc_diff_sec0__106_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({calc_diff_sec0__106_carry_n_4,calc_diff_sec0__106_carry_n_5,calc_diff_sec0__106_carry_n_6,calc_diff_sec0__106_carry_n_7}),
        .S({calc_diff_sec0__106_carry_i_1_n_0,calc_diff_sec0__70_carry__0_n_5,calc_diff_sec0__70_carry__0_n_6,calc_diff_sec0__70_carry__0_n_7}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__106_carry__0
       (.CI(calc_diff_sec0__106_carry_n_0),
        .CO({calc_diff_sec0__106_carry__0_n_0,calc_diff_sec0__106_carry__0_n_1,calc_diff_sec0__106_carry__0_n_2,calc_diff_sec0__106_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({calc_diff_sec0__106_carry__0_n_4,calc_diff_sec0__106_carry__0_n_5,calc_diff_sec0__106_carry__0_n_6,calc_diff_sec0__106_carry__0_n_7}),
        .S({calc_diff_sec0__106_carry__0_i_1_n_0,calc_diff_sec0__70_carry__1_n_5,calc_diff_sec0__70_carry__1_n_6,calc_diff_sec0__70_carry__1_n_7}));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_sec0__106_carry__0_i_1
       (.I0(calc_diff_sec0__70_carry__1_n_4),
        .O(calc_diff_sec0__106_carry__0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__106_carry__1
       (.CI(calc_diff_sec0__106_carry__0_n_0),
        .CO({NLW_calc_diff_sec0__106_carry__1_CO_UNCONNECTED[3:2],calc_diff_sec0__106_carry__1_n_2,calc_diff_sec0__106_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_calc_diff_sec0__106_carry__1_O_UNCONNECTED[3:1],calc_diff_sec0__106_carry__1_n_7}),
        .S({1'b0,1'b0,calc_diff_sec0__106_carry__1_i_1_n_0,calc_diff_sec0__70_carry__2_n_7}));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_sec0__106_carry__1_i_1
       (.I0(calc_diff_sec0__70_carry__2_n_6),
        .O(calc_diff_sec0__106_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_sec0__106_carry_i_1
       (.I0(calc_diff_sec0__70_carry__0_n_4),
        .O(calc_diff_sec0__106_carry_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__23_carry
       (.CI(1'b0),
        .CO({calc_diff_sec0__23_carry_n_0,calc_diff_sec0__23_carry_n_1,calc_diff_sec0__23_carry_n_2,calc_diff_sec0__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec0__23_carry_i_1_n_0,calc_diff_sec0__23_carry_i_2_n_0,calc_diff_sec0__23_carry_i_3_n_0,1'b0}),
        .O({calc_diff_sec0__23_carry_n_4,calc_diff_sec0__23_carry_n_5,calc_diff_sec0__23_carry_n_6,calc_diff_sec0__23_carry_n_7}),
        .S({calc_diff_sec0__23_carry_i_4_n_0,calc_diff_sec0__23_carry_i_5_n_0,calc_diff_sec0__23_carry_i_6_n_0,calc_diff_sec0__23_carry_i_7_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__23_carry__0
       (.CI(calc_diff_sec0__23_carry_n_0),
        .CO({calc_diff_sec0__23_carry__0_n_0,calc_diff_sec0__23_carry__0_n_1,calc_diff_sec0__23_carry__0_n_2,calc_diff_sec0__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec0__23_carry__0_i_1_n_0,calc_diff_sec0__23_carry__0_i_2_n_0,calc_diff_sec0__23_carry_i_3_n_0,calc_diff_sec0__23_carry__0_i_3_n_0}),
        .O({calc_diff_sec0__23_carry__0_n_4,calc_diff_sec0__23_carry__0_n_5,calc_diff_sec0__23_carry__0_n_6,calc_diff_sec0__23_carry__0_n_7}),
        .S({calc_diff_sec0__23_carry__0_i_4_n_0,calc_diff_sec0__23_carry__0_i_5_n_0,calc_diff_sec0__23_carry__0_i_6_n_0,calc_diff_sec0__23_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_sec0__23_carry__0_i_1
       (.I0(calc_diff_sec0_carry__3_n_6),
        .I1(calc_diff_sec0_carry__3_n_5),
        .O(calc_diff_sec0__23_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_sec0__23_carry__0_i_2
       (.I0(calc_diff_sec0_carry__3_n_5),
        .I1(calc_diff_sec0_carry__3_n_7),
        .I2(calc_diff_sec0_carry__3_n_6),
        .O(calc_diff_sec0__23_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_sec0__23_carry__0_i_3
       (.I0(calc_diff_sec0_carry__3_n_5),
        .I1(calc_diff_sec0_carry__3_n_7),
        .O(calc_diff_sec0__23_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    calc_diff_sec0__23_carry__0_i_4
       (.I0(calc_diff_sec0_carry__3_n_6),
        .I1(calc_diff_sec0_carry__3_n_7),
        .I2(calc_diff_sec0_carry__3_n_5),
        .O(calc_diff_sec0__23_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    calc_diff_sec0__23_carry__0_i_5
       (.I0(calc_diff_sec0_carry__3_n_7),
        .I1(calc_diff_sec0_carry__3_n_5),
        .I2(calc_diff_sec0_carry__3_n_6),
        .O(calc_diff_sec0__23_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0__23_carry__0_i_6
       (.I0(calc_diff_sec0__23_carry_i_3_n_0),
        .I1(calc_diff_sec0_carry__3_n_6),
        .I2(calc_diff_sec0_carry__3_n_7),
        .I3(calc_diff_sec0_carry__3_n_5),
        .O(calc_diff_sec0__23_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    calc_diff_sec0__23_carry__0_i_7
       (.I0(calc_diff_sec0_carry__3_n_6),
        .I1(calc_diff_sec0_carry__3_n_7),
        .I2(calc_diff_sec0_carry__3_n_5),
        .O(calc_diff_sec0__23_carry__0_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__23_carry__1
       (.CI(calc_diff_sec0__23_carry__0_n_0),
        .CO(NLW_calc_diff_sec0__23_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_calc_diff_sec0__23_carry__1_O_UNCONNECTED[3:1],calc_diff_sec0__23_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,calc_diff_sec0__23_carry__1_i_1_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    calc_diff_sec0__23_carry__1_i_1
       (.I0(calc_diff_sec0_carry__3_n_6),
        .I1(calc_diff_sec0_carry__3_n_7),
        .I2(calc_diff_sec0_carry__3_n_5),
        .O(calc_diff_sec0__23_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_sec0__23_carry_i_1
       (.I0(calc_diff_sec0_carry__3_n_6),
        .I1(calc_diff_sec0_carry__3_n_5),
        .O(calc_diff_sec0__23_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_sec0__23_carry_i_2
       (.I0(calc_diff_sec0_carry__3_n_5),
        .I1(calc_diff_sec0_carry__3_n_7),
        .I2(calc_diff_sec0_carry__3_n_6),
        .O(calc_diff_sec0__23_carry_i_2_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_sec0__23_carry_i_3
       (.I0(calc_diff_sec0_carry__3_n_6),
        .I1(calc_diff_sec0_carry__3_n_7),
        .O(calc_diff_sec0__23_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    calc_diff_sec0__23_carry_i_4
       (.I0(calc_diff_sec0_carry__3_n_6),
        .I1(calc_diff_sec0_carry__3_n_7),
        .I2(calc_diff_sec0_carry__3_n_5),
        .O(calc_diff_sec0__23_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    calc_diff_sec0__23_carry_i_5
       (.I0(calc_diff_sec0_carry__3_n_7),
        .I1(calc_diff_sec0_carry__3_n_5),
        .I2(calc_diff_sec0_carry__3_n_6),
        .O(calc_diff_sec0__23_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0__23_carry_i_6
       (.I0(calc_diff_sec0__23_carry_i_3_n_0),
        .I1(calc_diff_sec0_carry__3_n_6),
        .I2(calc_diff_sec0_carry__3_n_7),
        .I3(calc_diff_sec0_carry__3_n_5),
        .O(calc_diff_sec0__23_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_sec0__23_carry_i_7
       (.I0(calc_diff_sec0_carry__3_n_6),
        .I1(calc_diff_sec0_carry__3_n_7),
        .O(calc_diff_sec0__23_carry_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__45_carry
       (.CI(1'b0),
        .CO({calc_diff_sec0__45_carry_n_0,calc_diff_sec0__45_carry_n_1,calc_diff_sec0__45_carry_n_2,calc_diff_sec0__45_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,calc_diff_sec0__23_carry_n_7,calc_diff_sec0_carry__3_n_7,1'b0}),
        .O({calc_diff_sec0__45_carry_n_4,calc_diff_sec0__45_carry_n_5,calc_diff_sec0__45_carry_n_6,NLW_calc_diff_sec0__45_carry_O_UNCONNECTED[0]}),
        .S({calc_diff_sec0__23_carry_n_6,calc_diff_sec0__23_carry_n_7,calc_diff_sec0_carry__3_n_7,1'b0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__45_carry__0
       (.CI(calc_diff_sec0__45_carry_n_0),
        .CO({calc_diff_sec0__45_carry__0_n_0,calc_diff_sec0__45_carry__0_n_1,calc_diff_sec0__45_carry__0_n_2,calc_diff_sec0__45_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec0__45_carry__0_i_1_n_0,calc_diff_sec0__45_carry__0_i_2_n_0,calc_diff_sec0__45_carry__0_i_3_n_0,1'b0}),
        .O({calc_diff_sec0__45_carry__0_n_4,calc_diff_sec0__45_carry__0_n_5,calc_diff_sec0__45_carry__0_n_6,calc_diff_sec0__45_carry__0_n_7}),
        .S({calc_diff_sec0__45_carry__0_i_4_n_0,calc_diff_sec0__45_carry__0_i_5_n_0,calc_diff_sec0__45_carry__0_i_6_n_0,calc_diff_sec0__45_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_sec0__45_carry__0_i_1
       (.I0(calc_diff_sec0__45_carry__0_i_8_n_3),
        .I1(calc_diff_sec0__23_carry__0_n_7),
        .I2(calc_diff_sec0_carry__3_n_4),
        .O(calc_diff_sec0__45_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_sec0__45_carry__0_i_2
       (.I0(calc_diff_sec0__23_carry_n_4),
        .I1(calc_diff_sec0__45_carry__0_i_8_n_3),
        .I2(calc_diff_sec0_carry__3_n_4),
        .O(calc_diff_sec0__45_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_sec0__45_carry__0_i_3
       (.I0(calc_diff_sec0__23_carry_n_5),
        .I1(calc_diff_sec0_carry__3_n_4),
        .O(calc_diff_sec0__45_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hE178)) 
    calc_diff_sec0__45_carry__0_i_4
       (.I0(calc_diff_sec0_carry__3_n_4),
        .I1(calc_diff_sec0__23_carry__0_n_7),
        .I2(calc_diff_sec0__23_carry__0_n_6),
        .I3(calc_diff_sec0__45_carry__0_i_8_n_3),
        .O(calc_diff_sec0__45_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0__45_carry__0_i_5
       (.I0(calc_diff_sec0__45_carry__0_i_2_n_0),
        .I1(calc_diff_sec0__45_carry__0_i_8_n_3),
        .I2(calc_diff_sec0__23_carry__0_n_7),
        .I3(calc_diff_sec0_carry__3_n_4),
        .O(calc_diff_sec0__45_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0__45_carry__0_i_6
       (.I0(calc_diff_sec0__23_carry_n_4),
        .I1(calc_diff_sec0__45_carry__0_i_8_n_3),
        .I2(calc_diff_sec0_carry__3_n_4),
        .I3(calc_diff_sec0__45_carry__0_i_3_n_0),
        .O(calc_diff_sec0__45_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_sec0__45_carry__0_i_7
       (.I0(calc_diff_sec0__23_carry_n_5),
        .I1(calc_diff_sec0_carry__3_n_4),
        .O(calc_diff_sec0__45_carry__0_i_7_n_0));
  CARRY4 calc_diff_sec0__45_carry__0_i_8
       (.CI(calc_diff_sec0_carry__3_n_0),
        .CO({NLW_calc_diff_sec0__45_carry__0_i_8_CO_UNCONNECTED[3:1],calc_diff_sec0__45_carry__0_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_calc_diff_sec0__45_carry__0_i_8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__45_carry__1
       (.CI(calc_diff_sec0__45_carry__0_n_0),
        .CO({NLW_calc_diff_sec0__45_carry__1_CO_UNCONNECTED[3:2],calc_diff_sec0__45_carry__1_n_2,calc_diff_sec0__45_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,calc_diff_sec0__45_carry__1_i_1_n_0,calc_diff_sec0__45_carry__1_i_2_n_0}),
        .O({NLW_calc_diff_sec0__45_carry__1_O_UNCONNECTED[3],calc_diff_sec0__45_carry__1_n_5,calc_diff_sec0__45_carry__1_n_6,calc_diff_sec0__45_carry__1_n_7}),
        .S({1'b0,calc_diff_sec0__45_carry__1_i_3_n_0,calc_diff_sec0__45_carry__1_i_4_n_0,calc_diff_sec0__45_carry__1_i_5_n_0}));
  (* HLUTNM = "lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_sec0__45_carry__1_i_1
       (.I0(calc_diff_sec0_carry__3_n_4),
        .I1(calc_diff_sec0__23_carry__0_n_5),
        .O(calc_diff_sec0__45_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_sec0__45_carry__1_i_2
       (.I0(calc_diff_sec0__45_carry__0_i_8_n_3),
        .I1(calc_diff_sec0__23_carry__0_n_6),
        .O(calc_diff_sec0__45_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h65A6)) 
    calc_diff_sec0__45_carry__1_i_3
       (.I0(calc_diff_sec0__23_carry__1_n_7),
        .I1(calc_diff_sec0_carry__3_n_4),
        .I2(calc_diff_sec0__23_carry__0_n_4),
        .I3(calc_diff_sec0__45_carry__0_i_8_n_3),
        .O(calc_diff_sec0__45_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0__45_carry__1_i_4
       (.I0(calc_diff_sec0__45_carry__1_i_1_n_0),
        .I1(calc_diff_sec0_carry__3_n_4),
        .I2(calc_diff_sec0__23_carry__0_n_4),
        .I3(calc_diff_sec0__45_carry__0_i_8_n_3),
        .O(calc_diff_sec0__45_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    calc_diff_sec0__45_carry__1_i_5
       (.I0(calc_diff_sec0_carry__3_n_4),
        .I1(calc_diff_sec0__23_carry__0_n_5),
        .I2(calc_diff_sec0__23_carry__0_n_6),
        .I3(calc_diff_sec0__45_carry__0_i_8_n_3),
        .O(calc_diff_sec0__45_carry__1_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__70_carry
       (.CI(1'b0),
        .CO({calc_diff_sec0__70_carry_n_0,calc_diff_sec0__70_carry_n_1,calc_diff_sec0__70_carry_n_2,calc_diff_sec0__70_carry_n_3}),
        .CYINIT(1'b1),
        .DI(abs_diff[3:0]),
        .O({calc_diff_sec0[3:1],calc_diff_csec[0]}),
        .S({calc_diff_sec0__70_carry_i_1_n_0,calc_diff_sec0__70_carry_i_2_n_0,calc_diff_sec0__70_carry_i_3_n_0,calc_diff_sec0__70_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__70_carry__0
       (.CI(calc_diff_sec0__70_carry_n_0),
        .CO({calc_diff_sec0__70_carry__0_n_0,calc_diff_sec0__70_carry__0_n_1,calc_diff_sec0__70_carry__0_n_2,calc_diff_sec0__70_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(abs_diff[7:4]),
        .O({calc_diff_sec0__70_carry__0_n_4,calc_diff_sec0__70_carry__0_n_5,calc_diff_sec0__70_carry__0_n_6,calc_diff_sec0__70_carry__0_n_7}),
        .S({calc_diff_sec0__70_carry__0_i_1_n_0,calc_diff_sec0__70_carry__0_i_2_n_0,calc_diff_sec0__70_carry__0_i_3_n_0,calc_diff_sec0__70_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__0_i_1
       (.I0(abs_diff[7]),
        .I1(calc_diff_sec0__45_carry__0_n_7),
        .O(calc_diff_sec0__70_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__0_i_2
       (.I0(abs_diff[6]),
        .I1(calc_diff_sec0__45_carry_n_4),
        .O(calc_diff_sec0__70_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__0_i_3
       (.I0(abs_diff[5]),
        .I1(calc_diff_sec0__45_carry_n_5),
        .O(calc_diff_sec0__70_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__0_i_4
       (.I0(abs_diff[4]),
        .I1(calc_diff_sec0__45_carry_n_6),
        .O(calc_diff_sec0__70_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__70_carry__1
       (.CI(calc_diff_sec0__70_carry__0_n_0),
        .CO({calc_diff_sec0__70_carry__1_n_0,calc_diff_sec0__70_carry__1_n_1,calc_diff_sec0__70_carry__1_n_2,calc_diff_sec0__70_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(abs_diff[11:8]),
        .O({calc_diff_sec0__70_carry__1_n_4,calc_diff_sec0__70_carry__1_n_5,calc_diff_sec0__70_carry__1_n_6,calc_diff_sec0__70_carry__1_n_7}),
        .S({calc_diff_sec0__70_carry__1_i_1_n_0,calc_diff_sec0__70_carry__1_i_2_n_0,calc_diff_sec0__70_carry__1_i_3_n_0,calc_diff_sec0__70_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__1_i_1
       (.I0(abs_diff[11]),
        .I1(calc_diff_sec0__45_carry__1_n_7),
        .O(calc_diff_sec0__70_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__1_i_2
       (.I0(abs_diff[10]),
        .I1(calc_diff_sec0__45_carry__0_n_4),
        .O(calc_diff_sec0__70_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__1_i_3
       (.I0(abs_diff[9]),
        .I1(calc_diff_sec0__45_carry__0_n_5),
        .O(calc_diff_sec0__70_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__1_i_4
       (.I0(abs_diff[8]),
        .I1(calc_diff_sec0__45_carry__0_n_6),
        .O(calc_diff_sec0__70_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0__70_carry__2
       (.CI(calc_diff_sec0__70_carry__1_n_0),
        .CO({NLW_calc_diff_sec0__70_carry__2_CO_UNCONNECTED[3:1],calc_diff_sec0__70_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,abs_diff[12]}),
        .O({NLW_calc_diff_sec0__70_carry__2_O_UNCONNECTED[3:2],calc_diff_sec0__70_carry__2_n_6,calc_diff_sec0__70_carry__2_n_7}),
        .S({1'b0,1'b0,calc_diff_sec0__70_carry__2_i_1_n_0,calc_diff_sec0__70_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__2_i_1
       (.I0(abs_diff[13]),
        .I1(calc_diff_sec0__45_carry__1_n_5),
        .O(calc_diff_sec0__70_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    calc_diff_sec0__70_carry__2_i_2
       (.I0(abs_diff[12]),
        .I1(calc_diff_sec0__45_carry__1_n_6),
        .O(calc_diff_sec0__70_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_sec0__70_carry_i_1
       (.I0(abs_diff[3]),
        .O(calc_diff_sec0__70_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_sec0__70_carry_i_2
       (.I0(abs_diff[2]),
        .O(calc_diff_sec0__70_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_sec0__70_carry_i_3
       (.I0(abs_diff[1]),
        .O(calc_diff_sec0__70_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_diff_sec0__70_carry_i_4
       (.I0(abs_diff[0]),
        .O(calc_diff_sec0__70_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0_carry
       (.CI(1'b0),
        .CO({calc_diff_sec0_carry_n_0,calc_diff_sec0_carry_n_1,calc_diff_sec0_carry_n_2,calc_diff_sec0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({abs_diff[4:2],1'b0}),
        .O(NLW_calc_diff_sec0_carry_O_UNCONNECTED[3:0]),
        .S({calc_diff_sec0_carry_i_1_n_0,calc_diff_sec0_carry_i_2_n_0,calc_diff_sec0_carry_i_3_n_0,abs_diff[1]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0_carry__0
       (.CI(calc_diff_sec0_carry_n_0),
        .CO({calc_diff_sec0_carry__0_n_0,calc_diff_sec0_carry__0_n_1,calc_diff_sec0_carry__0_n_2,calc_diff_sec0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min_carry__0_i_1_n_0,calc_diff_min_carry__0_i_2_n_0,calc_diff_min_carry__0_i_3_n_0,calc_diff_min_carry__0_i_4_n_0}),
        .O(NLW_calc_diff_sec0_carry__0_O_UNCONNECTED[3:0]),
        .S({calc_diff_sec0_carry__0_i_1_n_0,calc_diff_sec0_carry__0_i_2_n_0,calc_diff_sec0_carry__0_i_3_n_0,calc_diff_sec0_carry__0_i_4_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__0_i_1
       (.I0(abs_diff[4]),
        .I1(abs_diff[6]),
        .I2(abs_diff[8]),
        .I3(calc_diff_min_carry__0_i_1_n_0),
        .O(calc_diff_sec0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__0_i_2
       (.I0(abs_diff[5]),
        .I1(abs_diff[3]),
        .I2(abs_diff[7]),
        .I3(calc_diff_min_carry__0_i_2_n_0),
        .O(calc_diff_sec0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__0_i_3
       (.I0(abs_diff[4]),
        .I1(abs_diff[2]),
        .I2(abs_diff[6]),
        .I3(calc_diff_min_carry__0_i_3_n_0),
        .O(calc_diff_sec0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__0_i_4
       (.I0(abs_diff[1]),
        .I1(abs_diff[3]),
        .I2(abs_diff[5]),
        .I3(calc_diff_min_carry__0_i_4_n_0),
        .O(calc_diff_sec0_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0_carry__1
       (.CI(calc_diff_sec0_carry__0_n_0),
        .CO({calc_diff_sec0_carry__1_n_0,calc_diff_sec0_carry__1_n_1,calc_diff_sec0_carry__1_n_2,calc_diff_sec0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min_carry__1_i_1_n_0,calc_diff_min_carry__1_i_2_n_0,calc_diff_min_carry__1_i_3_n_0,calc_diff_min_carry__1_i_4_n_0}),
        .O(NLW_calc_diff_sec0_carry__1_O_UNCONNECTED[3:0]),
        .S({calc_diff_sec0_carry__1_i_1_n_0,calc_diff_sec0_carry__1_i_2_n_0,calc_diff_sec0_carry__1_i_3_n_0,calc_diff_sec0_carry__1_i_4_n_0}));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__1_i_1
       (.I0(abs_diff[8]),
        .I1(abs_diff[10]),
        .I2(abs_diff[12]),
        .I3(calc_diff_min_carry__1_i_1_n_0),
        .O(calc_diff_sec0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__1_i_2
       (.I0(abs_diff[7]),
        .I1(abs_diff[9]),
        .I2(abs_diff[11]),
        .I3(calc_diff_min_carry__1_i_2_n_0),
        .O(calc_diff_sec0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__1_i_3
       (.I0(abs_diff[6]),
        .I1(abs_diff[8]),
        .I2(abs_diff[10]),
        .I3(calc_diff_min_carry__1_i_3_n_0),
        .O(calc_diff_sec0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__1_i_4
       (.I0(abs_diff[5]),
        .I1(abs_diff[7]),
        .I2(abs_diff[9]),
        .I3(calc_diff_min_carry__1_i_4_n_0),
        .O(calc_diff_sec0_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0_carry__2
       (.CI(calc_diff_sec0_carry__1_n_0),
        .CO({calc_diff_sec0_carry__2_n_0,calc_diff_sec0_carry__2_n_1,calc_diff_sec0_carry__2_n_2,calc_diff_sec0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_min_carry__2_i_1_n_0,calc_diff_min_carry__2_i_2_n_0,calc_diff_min_carry__2_i_3_n_0,calc_diff_min_carry__2_i_4_n_0}),
        .O(NLW_calc_diff_sec0_carry__2_O_UNCONNECTED[3:0]),
        .S({calc_diff_sec0_carry__2_i_1_n_0,calc_diff_sec0_carry__2_i_2_n_0,calc_diff_sec0_carry__2_i_3_n_0,calc_diff_sec0_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__2_i_1
       (.I0(calc_diff_min_carry__2_i_1_n_0),
        .I1(abs_diff[12]),
        .I2(abs_diff[14]),
        .I3(abs_diff[16]),
        .O(calc_diff_sec0_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__2_i_2
       (.I0(abs_diff[15]),
        .I1(abs_diff[11]),
        .I2(abs_diff[13]),
        .I3(calc_diff_min_carry__2_i_2_n_0),
        .O(calc_diff_sec0_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__2_i_3
       (.I0(abs_diff[10]),
        .I1(abs_diff[12]),
        .I2(abs_diff[14]),
        .I3(calc_diff_min_carry__2_i_3_n_0),
        .O(calc_diff_sec0_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    calc_diff_sec0_carry__2_i_4
       (.I0(abs_diff[13]),
        .I1(abs_diff[11]),
        .I2(abs_diff[9]),
        .I3(calc_diff_min_carry__2_i_4_n_0),
        .O(calc_diff_sec0_carry__2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec0_carry__3
       (.CI(calc_diff_sec0_carry__2_n_0),
        .CO({calc_diff_sec0_carry__3_n_0,calc_diff_sec0_carry__3_n_1,calc_diff_sec0_carry__3_n_2,calc_diff_sec0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,abs_diff[15],calc_diff_sec0_carry__3_i_1_n_0,calc_diff_sec0_carry__3_i_2_n_0}),
        .O({calc_diff_sec0_carry__3_n_4,calc_diff_sec0_carry__3_n_5,calc_diff_sec0_carry__3_n_6,calc_diff_sec0_carry__3_n_7}),
        .S({abs_diff[16],calc_diff_sec0_carry__3_i_3_n_0,calc_diff_sec0_carry__3_i_4_n_0,calc_diff_sec0_carry__3_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    calc_diff_sec0_carry__3_i_1
       (.I0(abs_diff[15]),
        .I1(abs_diff[13]),
        .O(calc_diff_sec0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    calc_diff_sec0_carry__3_i_2
       (.I0(abs_diff[12]),
        .I1(abs_diff[14]),
        .I2(abs_diff[16]),
        .O(calc_diff_sec0_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    calc_diff_sec0_carry__3_i_3
       (.I0(abs_diff[16]),
        .I1(abs_diff[14]),
        .I2(abs_diff[15]),
        .O(calc_diff_sec0_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    calc_diff_sec0_carry__3_i_4
       (.I0(abs_diff[13]),
        .I1(abs_diff[15]),
        .I2(abs_diff[16]),
        .I3(abs_diff[14]),
        .O(calc_diff_sec0_carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    calc_diff_sec0_carry__3_i_5
       (.I0(abs_diff[16]),
        .I1(abs_diff[14]),
        .I2(abs_diff[12]),
        .I3(abs_diff[13]),
        .I4(abs_diff[15]),
        .O(calc_diff_sec0_carry__3_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    calc_diff_sec0_carry_i_1
       (.I0(abs_diff[0]),
        .I1(abs_diff[2]),
        .I2(abs_diff[4]),
        .O(calc_diff_sec0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_sec0_carry_i_2
       (.I0(abs_diff[3]),
        .I1(abs_diff[1]),
        .O(calc_diff_sec0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_sec0_carry_i_3
       (.I0(abs_diff[2]),
        .I1(abs_diff[0]),
        .O(calc_diff_sec0_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__1_carry
       (.CI(1'b0),
        .CO({calc_diff_sec__1_carry_n_0,calc_diff_sec__1_carry_n_1,calc_diff_sec__1_carry_n_2,calc_diff_sec__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec__1_carry_i_1_n_0,calc_diff_sec__1_carry_i_2_n_0,calc_diff_sec__1_carry_i_3_n_0,1'b0}),
        .O(NLW_calc_diff_sec__1_carry_O_UNCONNECTED[3:0]),
        .S({calc_diff_sec__1_carry_i_4_n_0,calc_diff_sec__1_carry_i_5_n_0,calc_diff_sec__1_carry_i_6_n_0,calc_diff_sec0[3]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__1_carry__0
       (.CI(calc_diff_sec__1_carry_n_0),
        .CO({calc_diff_sec__1_carry__0_n_0,calc_diff_sec__1_carry__0_n_1,calc_diff_sec__1_carry__0_n_2,calc_diff_sec__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec__1_carry__0_i_1_n_0,calc_diff_sec__1_carry__0_i_2_n_0,calc_diff_sec__1_carry__0_i_3_n_0,calc_diff_sec__1_carry__0_i_4_n_0}),
        .O(NLW_calc_diff_sec__1_carry__0_O_UNCONNECTED[3:0]),
        .S({calc_diff_sec__1_carry__0_i_5_n_0,calc_diff_sec__1_carry__0_i_6_n_0,calc_diff_sec__1_carry__0_i_7_n_0,calc_diff_sec__1_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFEAEAE0EF8A8A808)) 
    calc_diff_sec__1_carry__0_i_1
       (.I0(calc_diff_sec0[3]),
        .I1(calc_diff_sec0__70_carry__0_n_6),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry_n_6),
        .I4(calc_diff_sec0__106_carry__0_n_6),
        .I5(calc_diff_sec0__70_carry__1_n_6),
        .O(calc_diff_sec__1_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__0_i_10
       (.I0(calc_diff_sec0__106_carry_n_5),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_5),
        .O(calc_diff_sec0[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__0_i_11
       (.I0(calc_diff_sec0__106_carry_n_6),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_6),
        .O(calc_diff_sec0[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__0_i_12
       (.I0(calc_diff_sec0__106_carry_n_4),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_4),
        .O(calc_diff_sec0[7]));
  LUT6 #(
    .INIT(64'hFEAEAE0EF8A8A808)) 
    calc_diff_sec__1_carry__0_i_2
       (.I0(calc_diff_sec0[2]),
        .I1(calc_diff_sec0__70_carry__0_n_7),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry_n_7),
        .I4(calc_diff_sec0__106_carry__0_n_7),
        .I5(calc_diff_sec0__70_carry__1_n_7),
        .O(calc_diff_sec__1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFB8B800)) 
    calc_diff_sec__1_carry__0_i_3
       (.I0(calc_diff_sec0__106_carry_n_4),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_4),
        .I3(calc_diff_sec0[1]),
        .I4(calc_diff_sec0[3]),
        .O(calc_diff_sec__1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    calc_diff_sec__1_carry__0_i_4
       (.I0(calc_diff_sec0__70_carry__0_n_4),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__106_carry_n_4),
        .I3(calc_diff_sec0[3]),
        .I4(calc_diff_sec0[1]),
        .O(calc_diff_sec__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    calc_diff_sec__1_carry__0_i_5
       (.I0(calc_diff_sec__1_carry__0_i_1_n_0),
        .I1(calc_diff_sec0__106_carry__0_n_5),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__70_carry__1_n_5),
        .I4(calc_diff_sec0[4]),
        .I5(calc_diff_sec0[6]),
        .O(calc_diff_sec__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    calc_diff_sec__1_carry__0_i_6
       (.I0(calc_diff_sec__1_carry__0_i_2_n_0),
        .I1(calc_diff_sec0__106_carry__0_n_6),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__70_carry__1_n_6),
        .I4(calc_diff_sec0[3]),
        .I5(calc_diff_sec0[5]),
        .O(calc_diff_sec__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    calc_diff_sec__1_carry__0_i_7
       (.I0(calc_diff_sec__1_carry__0_i_3_n_0),
        .I1(calc_diff_sec0__106_carry__0_n_7),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__70_carry__1_n_7),
        .I4(calc_diff_sec0[2]),
        .I5(calc_diff_sec0[4]),
        .O(calc_diff_sec__1_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    calc_diff_sec__1_carry__0_i_8
       (.I0(calc_diff_sec0[1]),
        .I1(calc_diff_sec0[3]),
        .I2(calc_diff_sec0[7]),
        .I3(abs_diff[0]),
        .I4(calc_diff_sec0[2]),
        .O(calc_diff_sec__1_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__0_i_9
       (.I0(calc_diff_sec0__106_carry_n_7),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_7),
        .O(calc_diff_sec0[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__1_carry__1
       (.CI(calc_diff_sec__1_carry__0_n_0),
        .CO({calc_diff_sec__1_carry__1_n_0,calc_diff_sec__1_carry__1_n_1,calc_diff_sec__1_carry__1_n_2,calc_diff_sec__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec__1_carry__1_i_1_n_0,calc_diff_sec__1_carry__1_i_2_n_0,calc_diff_sec__1_carry__1_i_3_n_0,calc_diff_sec__1_carry__1_i_4_n_0}),
        .O({calc_diff_sec__1_carry__1_n_4,calc_diff_sec__1_carry__1_n_5,NLW_calc_diff_sec__1_carry__1_O_UNCONNECTED[1:0]}),
        .S({calc_diff_sec__1_carry__1_i_5_n_0,calc_diff_sec__1_carry__1_i_6_n_0,calc_diff_sec__1_carry__1_i_7_n_0,calc_diff_sec__1_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    calc_diff_sec__1_carry__1_i_1
       (.I0(calc_diff_sec0__70_carry__0_n_4),
        .I1(calc_diff_sec0__106_carry_n_4),
        .I2(calc_diff_sec0__70_carry__1_n_6),
        .I3(calc_diff_sec0__106_carry__1_n_2),
        .I4(calc_diff_sec0__106_carry__0_n_6),
        .O(calc_diff_sec__1_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__1_i_10
       (.I0(calc_diff_sec0__106_carry__0_n_7),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_7),
        .O(calc_diff_sec__1_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFB8FC88BB30B800)) 
    calc_diff_sec__1_carry__1_i_2
       (.I0(calc_diff_sec0__106_carry__1_n_7),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__2_n_7),
        .I3(calc_diff_sec0[6]),
        .I4(calc_diff_sec0__70_carry__1_n_7),
        .I5(calc_diff_sec0__106_carry__0_n_7),
        .O(calc_diff_sec__1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFB8FC88BB30B800)) 
    calc_diff_sec__1_carry__1_i_3
       (.I0(calc_diff_sec0__106_carry__0_n_4),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_4),
        .I3(calc_diff_sec0[5]),
        .I4(calc_diff_sec0__70_carry__0_n_4),
        .I5(calc_diff_sec0__106_carry_n_4),
        .O(calc_diff_sec__1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFCBBB8B8883000)) 
    calc_diff_sec__1_carry__1_i_4
       (.I0(calc_diff_sec0__106_carry__0_n_5),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_5),
        .I3(calc_diff_sec0__70_carry__0_n_7),
        .I4(calc_diff_sec0__106_carry_n_7),
        .I5(calc_diff_sec0[6]),
        .O(calc_diff_sec__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    calc_diff_sec__1_carry__1_i_5
       (.I0(calc_diff_sec0__106_carry__0_n_6),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_6),
        .I3(calc_diff_sec0[7]),
        .I4(calc_diff_sec__1_carry__1_i_9_n_0),
        .I5(calc_diff_sec__1_carry__1_i_10_n_0),
        .O(calc_diff_sec__1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    calc_diff_sec__1_carry__1_i_6
       (.I0(calc_diff_sec__1_carry__1_i_2_n_0),
        .I1(calc_diff_sec0__106_carry__0_n_6),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__70_carry__1_n_6),
        .I4(calc_diff_sec0__106_carry_n_4),
        .I5(calc_diff_sec0__70_carry__0_n_4),
        .O(calc_diff_sec__1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    calc_diff_sec__1_carry__1_i_7
       (.I0(calc_diff_sec__1_carry__1_i_3_n_0),
        .I1(calc_diff_sec0[6]),
        .I2(calc_diff_sec__1_carry__1_i_10_n_0),
        .I3(calc_diff_sec0__106_carry__1_n_7),
        .I4(calc_diff_sec0__106_carry__1_n_2),
        .I5(calc_diff_sec0__70_carry__2_n_7),
        .O(calc_diff_sec__1_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    calc_diff_sec__1_carry__1_i_8
       (.I0(calc_diff_sec__1_carry__1_i_4_n_0),
        .I1(calc_diff_sec0[5]),
        .I2(calc_diff_sec0[7]),
        .I3(calc_diff_sec0__106_carry__0_n_4),
        .I4(calc_diff_sec0__106_carry__1_n_2),
        .I5(calc_diff_sec0__70_carry__1_n_4),
        .O(calc_diff_sec__1_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__1_i_9
       (.I0(calc_diff_sec0__106_carry__0_n_5),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_5),
        .O(calc_diff_sec__1_carry__1_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__1_carry__2
       (.CI(calc_diff_sec__1_carry__1_n_0),
        .CO({calc_diff_sec__1_carry__2_n_0,calc_diff_sec__1_carry__2_n_1,calc_diff_sec__1_carry__2_n_2,calc_diff_sec__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,calc_diff_sec0[11],calc_diff_sec__1_carry__2_i_2_n_0,calc_diff_sec__1_carry__2_i_3_n_0}),
        .O({calc_diff_sec__1_carry__2_n_4,calc_diff_sec__1_carry__2_n_5,calc_diff_sec__1_carry__2_n_6,calc_diff_sec__1_carry__2_n_7}),
        .S({calc_diff_sec__1_carry__2_i_4_n_0,calc_diff_sec__1_carry__2_i_5_n_0,calc_diff_sec__1_carry__2_i_6_n_0,calc_diff_sec__1_carry__2_i_7_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__2_i_1
       (.I0(calc_diff_sec0__106_carry__0_n_4),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_4),
        .O(calc_diff_sec0[11]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    calc_diff_sec__1_carry__2_i_2
       (.I0(calc_diff_sec0__70_carry__1_n_4),
        .I1(calc_diff_sec0__106_carry__0_n_4),
        .I2(calc_diff_sec0__70_carry__1_n_6),
        .I3(calc_diff_sec0__106_carry__1_n_2),
        .I4(calc_diff_sec0__106_carry__0_n_6),
        .O(calc_diff_sec__1_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    calc_diff_sec__1_carry__2_i_3
       (.I0(calc_diff_sec0__70_carry__1_n_7),
        .I1(calc_diff_sec0__106_carry__0_n_7),
        .I2(calc_diff_sec0__70_carry__1_n_5),
        .I3(calc_diff_sec0__106_carry__1_n_2),
        .I4(calc_diff_sec0__106_carry__0_n_5),
        .O(calc_diff_sec__1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__2_i_4
       (.I0(calc_diff_sec0__106_carry__1_n_7),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__2_n_7),
        .O(calc_diff_sec__1_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h47CF77FFB8308800)) 
    calc_diff_sec__1_carry__2_i_5
       (.I0(calc_diff_sec0__106_carry__0_n_5),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_5),
        .I3(calc_diff_sec0__106_carry__1_n_7),
        .I4(calc_diff_sec0__70_carry__2_n_7),
        .I5(calc_diff_sec0[11]),
        .O(calc_diff_sec__1_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h8778878787787878)) 
    calc_diff_sec__1_carry__2_i_6
       (.I0(calc_diff_sec__1_carry__2_i_8_n_0),
        .I1(calc_diff_sec0[11]),
        .I2(calc_diff_sec__1_carry__1_i_9_n_0),
        .I3(calc_diff_sec0__106_carry__1_n_7),
        .I4(calc_diff_sec0__106_carry__1_n_2),
        .I5(calc_diff_sec0__70_carry__2_n_7),
        .O(calc_diff_sec__1_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    calc_diff_sec__1_carry__2_i_7
       (.I0(calc_diff_sec0__106_carry__0_n_5),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_5),
        .I3(calc_diff_sec__1_carry__1_i_10_n_0),
        .I4(calc_diff_sec__1_carry__2_i_8_n_0),
        .I5(calc_diff_sec0[11]),
        .O(calc_diff_sec__1_carry__2_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry__2_i_8
       (.I0(calc_diff_sec0__106_carry__0_n_6),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_6),
        .O(calc_diff_sec__1_carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry_i_1
       (.I0(calc_diff_sec0__106_carry_n_5),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_5),
        .O(calc_diff_sec__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry_i_2
       (.I0(calc_diff_sec0__106_carry_n_6),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_6),
        .O(calc_diff_sec__1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    calc_diff_sec__1_carry_i_3
       (.I0(calc_diff_sec0__106_carry_n_7),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_7),
        .O(calc_diff_sec__1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    calc_diff_sec__1_carry_i_4
       (.I0(abs_diff[0]),
        .I1(calc_diff_sec0[2]),
        .I2(calc_diff_sec0__70_carry__0_n_5),
        .I3(calc_diff_sec0__106_carry__1_n_2),
        .I4(calc_diff_sec0__106_carry_n_5),
        .O(calc_diff_sec__1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    calc_diff_sec__1_carry_i_5
       (.I0(calc_diff_sec0__70_carry__0_n_6),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__106_carry_n_6),
        .I3(calc_diff_sec0[1]),
        .O(calc_diff_sec__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    calc_diff_sec__1_carry_i_6
       (.I0(calc_diff_sec0__70_carry__0_n_7),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__106_carry_n_7),
        .I3(abs_diff[0]),
        .O(calc_diff_sec__1_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__38_carry
       (.CI(1'b0),
        .CO({calc_diff_sec__38_carry_n_0,calc_diff_sec__38_carry_n_1,calc_diff_sec__38_carry_n_2,calc_diff_sec__38_carry_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec__38_carry_i_1_n_0,calc_diff_sec__38_carry_i_2_n_0,calc_diff_sec__38_carry_i_3_n_0,1'b0}),
        .O({calc_diff_sec__38_carry_n_4,calc_diff_sec__38_carry_n_5,calc_diff_sec__38_carry_n_6,calc_diff_sec__38_carry_n_7}),
        .S({calc_diff_sec__38_carry_i_4_n_0,calc_diff_sec__38_carry_i_5_n_0,calc_diff_sec__38_carry_i_6_n_0,calc_diff_sec__38_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__38_carry__0
       (.CI(calc_diff_sec__38_carry_n_0),
        .CO({NLW_calc_diff_sec__38_carry__0_CO_UNCONNECTED[3],calc_diff_sec__38_carry__0_n_1,calc_diff_sec__38_carry__0_n_2,calc_diff_sec__38_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,calc_diff_sec__38_carry__0_i_1_n_0,calc_diff_sec__38_carry__0_i_2_n_0,calc_diff_sec__38_carry__0_i_3_n_0}),
        .O({calc_diff_sec__38_carry__0_n_4,calc_diff_sec__38_carry__0_n_5,calc_diff_sec__38_carry__0_n_6,calc_diff_sec__38_carry__0_n_7}),
        .S({calc_diff_sec__38_carry__0_i_4_n_0,calc_diff_sec__38_carry__0_i_5_n_0,calc_diff_sec__38_carry__0_i_6_n_0,calc_diff_sec__38_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    calc_diff_sec__38_carry__0_i_1
       (.I0(calc_diff_sec__1_carry__2_n_6),
        .I1(calc_diff_sec__1_carry__2_n_4),
        .O(calc_diff_sec__38_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    calc_diff_sec__38_carry__0_i_2
       (.I0(calc_diff_sec__1_carry__2_n_7),
        .I1(calc_diff_sec__1_carry__2_n_5),
        .O(calc_diff_sec__38_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    calc_diff_sec__38_carry__0_i_3
       (.I0(calc_diff_sec__1_carry__1_n_4),
        .I1(calc_diff_sec__1_carry__2_n_6),
        .I2(\diff_sec_reg[6]_i_3_n_3 ),
        .O(calc_diff_sec__38_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h65)) 
    calc_diff_sec__38_carry__0_i_4
       (.I0(calc_diff_sec__1_carry__2_n_4),
        .I1(\diff_sec_reg[6]_i_3_n_3 ),
        .I2(calc_diff_sec__1_carry__2_n_5),
        .O(calc_diff_sec__38_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    calc_diff_sec__38_carry__0_i_5
       (.I0(calc_diff_sec__1_carry__2_n_4),
        .I1(calc_diff_sec__1_carry__2_n_6),
        .I2(\diff_sec_reg[6]_i_3_n_3 ),
        .I3(calc_diff_sec__1_carry__2_n_5),
        .O(calc_diff_sec__38_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    calc_diff_sec__38_carry__0_i_6
       (.I0(calc_diff_sec__1_carry__2_n_5),
        .I1(calc_diff_sec__1_carry__2_n_7),
        .I2(calc_diff_sec__1_carry__2_n_6),
        .I3(calc_diff_sec__1_carry__2_n_4),
        .O(calc_diff_sec__38_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    calc_diff_sec__38_carry__0_i_7
       (.I0(\diff_sec_reg[6]_i_3_n_3 ),
        .I1(calc_diff_sec__1_carry__2_n_6),
        .I2(calc_diff_sec__1_carry__1_n_4),
        .I3(calc_diff_sec__1_carry__2_n_7),
        .I4(calc_diff_sec__1_carry__2_n_5),
        .O(calc_diff_sec__38_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    calc_diff_sec__38_carry_i_1
       (.I0(calc_diff_sec__1_carry__1_n_5),
        .I1(calc_diff_sec__1_carry__2_n_7),
        .I2(calc_diff_sec__1_carry__2_n_4),
        .O(calc_diff_sec__38_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    calc_diff_sec__38_carry_i_2
       (.I0(calc_diff_sec__1_carry__2_n_4),
        .I1(calc_diff_sec__1_carry__2_n_7),
        .I2(calc_diff_sec__1_carry__1_n_5),
        .O(calc_diff_sec__38_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_sec__38_carry_i_3
       (.I0(calc_diff_sec__1_carry__2_n_6),
        .I1(calc_diff_sec__1_carry__1_n_5),
        .O(calc_diff_sec__38_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    calc_diff_sec__38_carry_i_4
       (.I0(calc_diff_sec__38_carry_i_1_n_0),
        .I1(calc_diff_sec__1_carry__1_n_4),
        .I2(calc_diff_sec__1_carry__2_n_6),
        .I3(\diff_sec_reg[6]_i_3_n_3 ),
        .O(calc_diff_sec__38_carry_i_4_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    calc_diff_sec__38_carry_i_5
       (.I0(calc_diff_sec__1_carry__1_n_5),
        .I1(calc_diff_sec__1_carry__2_n_7),
        .I2(calc_diff_sec__1_carry__2_n_4),
        .I3(calc_diff_sec__1_carry__1_n_4),
        .I4(calc_diff_sec__1_carry__2_n_5),
        .O(calc_diff_sec__38_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    calc_diff_sec__38_carry_i_6
       (.I0(calc_diff_sec__1_carry__1_n_5),
        .I1(calc_diff_sec__1_carry__2_n_6),
        .I2(calc_diff_sec__1_carry__2_n_5),
        .I3(calc_diff_sec__1_carry__1_n_4),
        .O(calc_diff_sec__38_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    calc_diff_sec__38_carry_i_7
       (.I0(calc_diff_sec__1_carry__2_n_6),
        .I1(calc_diff_sec__1_carry__1_n_5),
        .O(calc_diff_sec__38_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__59_carry
       (.CI(1'b0),
        .CO({calc_diff_sec__59_carry_n_0,calc_diff_sec__59_carry_n_1,calc_diff_sec__59_carry_n_2,calc_diff_sec__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec__59_carry_i_1_n_0,calc_diff_sec__59_carry_i_2_n_0,calc_diff_sec__59_carry_i_3_n_0,calc_diff_sec__59_carry_i_4_n_0}),
        .O(NLW_calc_diff_sec__59_carry_O_UNCONNECTED[3:0]),
        .S({calc_diff_sec__59_carry_i_5_n_0,calc_diff_sec__59_carry_i_6_n_0,calc_diff_sec__59_carry_i_7_n_0,calc_diff_sec__59_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__59_carry__0
       (.CI(calc_diff_sec__59_carry_n_0),
        .CO({calc_diff_sec__59_carry__0_n_0,calc_diff_sec__59_carry__0_n_1,calc_diff_sec__59_carry__0_n_2,calc_diff_sec__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({calc_diff_sec__59_carry__0_i_1_n_0,calc_diff_sec__59_carry__0_i_2_n_0,calc_diff_sec__59_carry__0_i_3_n_0,calc_diff_sec__59_carry__0_i_4_n_0}),
        .O(NLW_calc_diff_sec__59_carry__0_O_UNCONNECTED[3:0]),
        .S({calc_diff_sec__59_carry__0_i_5_n_0,calc_diff_sec__59_carry__0_i_6_n_0,calc_diff_sec__59_carry__0_i_7_n_0,calc_diff_sec__59_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h02A2)) 
    calc_diff_sec__59_carry__0_i_1
       (.I0(calc_diff_sec__38_carry__0_n_7),
        .I1(calc_diff_sec0__70_carry__1_n_6),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry__0_n_6),
        .O(calc_diff_sec__59_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    calc_diff_sec__59_carry__0_i_2
       (.I0(calc_diff_sec__38_carry_n_4),
        .I1(calc_diff_sec0__70_carry__1_n_7),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry__0_n_7),
        .O(calc_diff_sec__59_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    calc_diff_sec__59_carry__0_i_3
       (.I0(calc_diff_sec__38_carry_n_5),
        .I1(calc_diff_sec0__70_carry__0_n_4),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry_n_4),
        .O(calc_diff_sec__59_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hABFB)) 
    calc_diff_sec__59_carry__0_i_4
       (.I0(calc_diff_sec__38_carry_n_6),
        .I1(calc_diff_sec0__70_carry__0_n_5),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry_n_5),
        .O(calc_diff_sec__59_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hB8FF47004700B8FF)) 
    calc_diff_sec__59_carry__0_i_5
       (.I0(calc_diff_sec0__106_carry__0_n_6),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_6),
        .I3(calc_diff_sec__38_carry__0_n_7),
        .I4(calc_diff_sec__38_carry__0_n_6),
        .I5(calc_diff_sec__1_carry__1_i_9_n_0),
        .O(calc_diff_sec__59_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hB4B4B44B4B4BB44B)) 
    calc_diff_sec__59_carry__0_i_6
       (.I0(calc_diff_sec__1_carry__1_i_10_n_0),
        .I1(calc_diff_sec__38_carry_n_4),
        .I2(calc_diff_sec__38_carry__0_n_7),
        .I3(calc_diff_sec0__70_carry__1_n_6),
        .I4(calc_diff_sec0__106_carry__1_n_2),
        .I5(calc_diff_sec0__106_carry__0_n_6),
        .O(calc_diff_sec__59_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hB8FF47004700B8FF)) 
    calc_diff_sec__59_carry__0_i_7
       (.I0(calc_diff_sec0__106_carry_n_4),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_4),
        .I3(calc_diff_sec__38_carry_n_5),
        .I4(calc_diff_sec__38_carry_n_4),
        .I5(calc_diff_sec__1_carry__1_i_10_n_0),
        .O(calc_diff_sec__59_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h2D2D2DD2D2D22DD2)) 
    calc_diff_sec__59_carry__0_i_8
       (.I0(calc_diff_sec0[6]),
        .I1(calc_diff_sec__38_carry_n_6),
        .I2(calc_diff_sec__38_carry_n_5),
        .I3(calc_diff_sec0__70_carry__0_n_4),
        .I4(calc_diff_sec0__106_carry__1_n_2),
        .I5(calc_diff_sec0__106_carry_n_4),
        .O(calc_diff_sec__59_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 calc_diff_sec__59_carry__1
       (.CI(calc_diff_sec__59_carry__0_n_0),
        .CO({NLW_calc_diff_sec__59_carry__1_CO_UNCONNECTED[3:2],calc_diff_sec__59_carry__1_n_2,calc_diff_sec__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,calc_diff_sec__59_carry__1_i_1_n_0,calc_diff_sec__59_carry__1_i_2_n_0}),
        .O(NLW_calc_diff_sec__59_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,calc_diff_sec__59_carry__1_i_3_n_0,calc_diff_sec__59_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h02A2)) 
    calc_diff_sec__59_carry__1_i_1
       (.I0(calc_diff_sec__38_carry__0_n_5),
        .I1(calc_diff_sec0__70_carry__1_n_4),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry__0_n_4),
        .O(calc_diff_sec__59_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    calc_diff_sec__59_carry__1_i_2
       (.I0(calc_diff_sec__38_carry__0_n_6),
        .I1(calc_diff_sec0__70_carry__1_n_5),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry__0_n_5),
        .O(calc_diff_sec__59_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hB4B4B44B4B4BB44B)) 
    calc_diff_sec__59_carry__1_i_3
       (.I0(calc_diff_sec0[11]),
        .I1(calc_diff_sec__38_carry__0_n_5),
        .I2(calc_diff_sec__38_carry__0_n_4),
        .I3(calc_diff_sec0__70_carry__2_n_7),
        .I4(calc_diff_sec0__106_carry__1_n_2),
        .I5(calc_diff_sec0__106_carry__1_n_7),
        .O(calc_diff_sec__59_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hB8FF47004700B8FF)) 
    calc_diff_sec__59_carry__1_i_4
       (.I0(calc_diff_sec0__106_carry__0_n_5),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__1_n_5),
        .I3(calc_diff_sec__38_carry__0_n_6),
        .I4(calc_diff_sec__38_carry__0_n_5),
        .I5(calc_diff_sec0[11]),
        .O(calc_diff_sec__59_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hABFB)) 
    calc_diff_sec__59_carry_i_1
       (.I0(calc_diff_sec__38_carry_n_7),
        .I1(calc_diff_sec0__70_carry__0_n_6),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry_n_6),
        .O(calc_diff_sec__59_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    calc_diff_sec__59_carry_i_2
       (.I0(calc_diff_sec__1_carry__2_n_7),
        .I1(calc_diff_sec0__70_carry__0_n_7),
        .I2(calc_diff_sec0__106_carry__1_n_2),
        .I3(calc_diff_sec0__106_carry_n_7),
        .O(calc_diff_sec__59_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    calc_diff_sec__59_carry_i_3
       (.I0(calc_diff_sec__1_carry__1_n_4),
        .I1(calc_diff_sec0[3]),
        .O(calc_diff_sec__59_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    calc_diff_sec__59_carry_i_4
       (.I0(calc_diff_sec__1_carry__1_n_5),
        .I1(calc_diff_sec0[2]),
        .O(calc_diff_sec__59_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFF4700B800B8FF47)) 
    calc_diff_sec__59_carry_i_5
       (.I0(calc_diff_sec0__106_carry_n_6),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_6),
        .I3(calc_diff_sec__38_carry_n_7),
        .I4(calc_diff_sec0[6]),
        .I5(calc_diff_sec__38_carry_n_6),
        .O(calc_diff_sec__59_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h4700B8FFB8FF4700)) 
    calc_diff_sec__59_carry_i_6
       (.I0(calc_diff_sec0__106_carry_n_7),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__0_n_7),
        .I3(calc_diff_sec__1_carry__2_n_7),
        .I4(calc_diff_sec0[5]),
        .I5(calc_diff_sec__38_carry_n_7),
        .O(calc_diff_sec__59_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hB4BBB4444B444BBB)) 
    calc_diff_sec__59_carry_i_7
       (.I0(calc_diff_sec0[3]),
        .I1(calc_diff_sec__1_carry__1_n_4),
        .I2(calc_diff_sec0__106_carry_n_7),
        .I3(calc_diff_sec0__106_carry__1_n_2),
        .I4(calc_diff_sec0__70_carry__0_n_7),
        .I5(calc_diff_sec__1_carry__2_n_7),
        .O(calc_diff_sec__59_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    calc_diff_sec__59_carry_i_8
       (.I0(calc_diff_sec0[2]),
        .I1(calc_diff_sec__1_carry__1_n_5),
        .I2(calc_diff_sec__1_carry__1_n_4),
        .I3(calc_diff_sec0[3]),
        .O(calc_diff_sec__59_carry_i_8_n_0));
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
        .CO({NLW_cnt_sysclk10_carry__3_CO_UNCONNECTED[3:2],cnt_sysclk10_carry__3_n_2,cnt_sysclk10_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_sysclk10_carry__3_O_UNCONNECTED[3],cnt_sysclk10[19:17]}),
        .S({1'b0,cnt_sysclk1[19:17]}));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_sysclk1[0]_i_1 
       (.I0(cnt_sysclk1[0]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[10]_i_1 
       (.I0(cnt_sysclk10[10]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[11]_i_1 
       (.I0(cnt_sysclk10[11]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[12]_i_1 
       (.I0(cnt_sysclk10[12]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[13]_i_1 
       (.I0(cnt_sysclk10[13]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[14]_i_1 
       (.I0(cnt_sysclk10[14]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[15]_i_1 
       (.I0(cnt_sysclk10[15]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[16]_i_1 
       (.I0(cnt_sysclk10[16]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[17]_i_1 
       (.I0(cnt_sysclk10[17]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[18]_i_1 
       (.I0(cnt_sysclk10[18]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[19]_i_2 
       (.I0(cnt_sysclk10[19]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4544FFFF)) 
    \cnt_sysclk1[19]_i_3 
       (.I0(\cnt_sysclk1[19]_i_4_n_0 ),
        .I1(cnt_sysclk1[15]),
        .I2(\cnt_sysclk1[19]_i_5_n_0 ),
        .I3(cnt_sysclk1[14]),
        .I4(run_reg_0),
        .O(\cnt_sysclk1[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_sysclk1[19]_i_4 
       (.I0(cnt_sysclk1[16]),
        .I1(cnt_sysclk1[17]),
        .I2(cnt_sysclk1[18]),
        .I3(cnt_sysclk1[19]),
        .O(\cnt_sysclk1[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000100FFFF)) 
    \cnt_sysclk1[19]_i_5 
       (.I0(cnt_sysclk1[7]),
        .I1(cnt_sysclk1[6]),
        .I2(cnt_sysclk1[8]),
        .I3(\cnt_sysclk1[19]_i_6_n_0 ),
        .I4(cnt_sysclk1[9]),
        .I5(\cnt_sysclk1[19]_i_7_n_0 ),
        .O(\cnt_sysclk1[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_sysclk1[19]_i_6 
       (.I0(cnt_sysclk1[2]),
        .I1(cnt_sysclk1[3]),
        .I2(cnt_sysclk1[0]),
        .I3(cnt_sysclk1[1]),
        .I4(cnt_sysclk1[5]),
        .I5(cnt_sysclk1[4]),
        .O(\cnt_sysclk1[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_sysclk1[19]_i_7 
       (.I0(cnt_sysclk1[10]),
        .I1(cnt_sysclk1[11]),
        .I2(cnt_sysclk1[12]),
        .I3(cnt_sysclk1[13]),
        .O(\cnt_sysclk1[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[1]_i_1 
       (.I0(cnt_sysclk10[1]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[2]_i_1 
       (.I0(cnt_sysclk10[2]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[3]_i_1 
       (.I0(cnt_sysclk10[3]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[4]_i_1 
       (.I0(cnt_sysclk10[4]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[5]_i_1 
       (.I0(cnt_sysclk10[5]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[6]_i_1 
       (.I0(cnt_sysclk10[6]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[7]_i_1 
       (.I0(cnt_sysclk10[7]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[8]_i_1 
       (.I0(cnt_sysclk10[8]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sysclk1[9]_i_1 
       (.I0(cnt_sysclk10[9]),
        .I1(\cnt_sysclk1[19]_i_3_n_0 ),
        .O(\cnt_sysclk1[9]_i_1_n_0 ));
  FDCE \cnt_sysclk1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[0]_i_1_n_0 ),
        .Q(cnt_sysclk1[0]));
  FDCE \cnt_sysclk1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[10]_i_1_n_0 ),
        .Q(cnt_sysclk1[10]));
  FDCE \cnt_sysclk1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[11]_i_1_n_0 ),
        .Q(cnt_sysclk1[11]));
  FDCE \cnt_sysclk1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[12]_i_1_n_0 ),
        .Q(cnt_sysclk1[12]));
  FDCE \cnt_sysclk1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[13]_i_1_n_0 ),
        .Q(cnt_sysclk1[13]));
  FDCE \cnt_sysclk1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[14]_i_1_n_0 ),
        .Q(cnt_sysclk1[14]));
  FDCE \cnt_sysclk1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[15]_i_1_n_0 ),
        .Q(cnt_sysclk1[15]));
  FDCE \cnt_sysclk1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[16]_i_1_n_0 ),
        .Q(cnt_sysclk1[16]));
  FDCE \cnt_sysclk1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[17]_i_1_n_0 ),
        .Q(cnt_sysclk1[17]));
  FDCE \cnt_sysclk1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[18]_i_1_n_0 ),
        .Q(cnt_sysclk1[18]));
  FDCE \cnt_sysclk1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[19]_i_2_n_0 ),
        .Q(cnt_sysclk1[19]));
  FDCE \cnt_sysclk1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[1]_i_1_n_0 ),
        .Q(cnt_sysclk1[1]));
  FDCE \cnt_sysclk1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[2]_i_1_n_0 ),
        .Q(cnt_sysclk1[2]));
  FDCE \cnt_sysclk1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[3]_i_1_n_0 ),
        .Q(cnt_sysclk1[3]));
  FDCE \cnt_sysclk1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[4]_i_1_n_0 ),
        .Q(cnt_sysclk1[4]));
  FDCE \cnt_sysclk1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[5]_i_1_n_0 ),
        .Q(cnt_sysclk1[5]));
  FDCE \cnt_sysclk1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[6]_i_1_n_0 ),
        .Q(cnt_sysclk1[6]));
  FDCE \cnt_sysclk1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[7]_i_1_n_0 ),
        .Q(cnt_sysclk1[7]));
  FDCE \cnt_sysclk1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[8]_i_1_n_0 ),
        .Q(cnt_sysclk1[8]));
  FDCE \cnt_sysclk1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[9]_i_1_n_0 ),
        .Q(cnt_sysclk1[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry
       (.CI(1'b0),
        .CO({cnt_sysclk20_carry_n_0,cnt_sysclk20_carry_n_1,cnt_sysclk20_carry_n_2,cnt_sysclk20_carry_n_3}),
        .CYINIT(\cnt_sysclk2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[4:1]),
        .S({\cnt_sysclk2_reg_n_0_[4] ,\cnt_sysclk2_reg_n_0_[3] ,\cnt_sysclk2_reg_n_0_[2] ,\cnt_sysclk2_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__0
       (.CI(cnt_sysclk20_carry_n_0),
        .CO({cnt_sysclk20_carry__0_n_0,cnt_sysclk20_carry__0_n_1,cnt_sysclk20_carry__0_n_2,cnt_sysclk20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[8:5]),
        .S({\cnt_sysclk2_reg_n_0_[8] ,\cnt_sysclk2_reg_n_0_[7] ,\cnt_sysclk2_reg_n_0_[6] ,\cnt_sysclk2_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__1
       (.CI(cnt_sysclk20_carry__0_n_0),
        .CO({cnt_sysclk20_carry__1_n_0,cnt_sysclk20_carry__1_n_1,cnt_sysclk20_carry__1_n_2,cnt_sysclk20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[12:9]),
        .S({\cnt_sysclk2_reg_n_0_[12] ,\cnt_sysclk2_reg_n_0_[11] ,\cnt_sysclk2_reg_n_0_[10] ,\cnt_sysclk2_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__2
       (.CI(cnt_sysclk20_carry__1_n_0),
        .CO({cnt_sysclk20_carry__2_n_0,cnt_sysclk20_carry__2_n_1,cnt_sysclk20_carry__2_n_2,cnt_sysclk20_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[16:13]),
        .S({\cnt_sysclk2_reg_n_0_[16] ,\cnt_sysclk2_reg_n_0_[15] ,\cnt_sysclk2_reg_n_0_[14] ,\cnt_sysclk2_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__3
       (.CI(cnt_sysclk20_carry__2_n_0),
        .CO({NLW_cnt_sysclk20_carry__3_CO_UNCONNECTED[3:2],cnt_sysclk20_carry__3_n_2,cnt_sysclk20_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_sysclk20_carry__3_O_UNCONNECTED[3],cnt_sysclk20[19:17]}),
        .S({1'b0,\cnt_sysclk2_reg_n_0_[19] ,\cnt_sysclk2_reg_n_0_[18] ,\cnt_sysclk2_reg_n_0_[17] }));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \cnt_sysclk2[19]_i_3 
       (.I0(\cnt_sysclk2[19]_i_4_n_0 ),
        .I1(\cnt_sysclk2_reg_n_0_[15] ),
        .I2(\cnt_sysclk2_reg_n_0_[19] ),
        .I3(\cnt_sysclk2_reg_n_0_[18] ),
        .I4(\cnt_sysclk2_reg_n_0_[17] ),
        .I5(\cnt_sysclk2_reg_n_0_[16] ),
        .O(\cnt_sysclk2[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \cnt_sysclk2[19]_i_4 
       (.I0(\cnt_sysclk2_reg_n_0_[14] ),
        .I1(\cnt_sysclk2_reg_n_0_[10] ),
        .I2(\cnt_sysclk2_reg_n_0_[11] ),
        .I3(\cnt_sysclk2_reg_n_0_[12] ),
        .I4(\cnt_sysclk2_reg_n_0_[13] ),
        .I5(\cnt_sysclk2[19]_i_5_n_0 ),
        .O(\cnt_sysclk2[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5555555D)) 
    \cnt_sysclk2[19]_i_5 
       (.I0(\cnt_sysclk2_reg_n_0_[9] ),
        .I1(\cnt_sysclk2[19]_i_6_n_0 ),
        .I2(\cnt_sysclk2_reg_n_0_[7] ),
        .I3(\cnt_sysclk2_reg_n_0_[6] ),
        .I4(\cnt_sysclk2_reg_n_0_[8] ),
        .O(\cnt_sysclk2[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_sysclk2[19]_i_6 
       (.I0(\cnt_sysclk2_reg_n_0_[2] ),
        .I1(\cnt_sysclk2_reg_n_0_[3] ),
        .I2(\cnt_sysclk2_reg_n_0_[0] ),
        .I3(\cnt_sysclk2_reg_n_0_[1] ),
        .I4(\cnt_sysclk2_reg_n_0_[5] ),
        .I5(\cnt_sysclk2_reg_n_0_[4] ),
        .O(\cnt_sysclk2[19]_i_6_n_0 ));
  FDCE \cnt_sysclk2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_32),
        .Q(\cnt_sysclk2_reg_n_0_[0] ));
  FDCE \cnt_sysclk2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_22),
        .Q(\cnt_sysclk2_reg_n_0_[10] ));
  FDCE \cnt_sysclk2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_21),
        .Q(\cnt_sysclk2_reg_n_0_[11] ));
  FDCE \cnt_sysclk2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_20),
        .Q(\cnt_sysclk2_reg_n_0_[12] ));
  FDCE \cnt_sysclk2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_19),
        .Q(\cnt_sysclk2_reg_n_0_[13] ));
  FDCE \cnt_sysclk2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_18),
        .Q(\cnt_sysclk2_reg_n_0_[14] ));
  FDCE \cnt_sysclk2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_17),
        .Q(\cnt_sysclk2_reg_n_0_[15] ));
  FDCE \cnt_sysclk2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_16),
        .Q(\cnt_sysclk2_reg_n_0_[16] ));
  FDCE \cnt_sysclk2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_15),
        .Q(\cnt_sysclk2_reg_n_0_[17] ));
  FDCE \cnt_sysclk2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_14),
        .Q(\cnt_sysclk2_reg_n_0_[18] ));
  FDCE \cnt_sysclk2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_13),
        .Q(\cnt_sysclk2_reg_n_0_[19] ));
  FDCE \cnt_sysclk2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_31),
        .Q(\cnt_sysclk2_reg_n_0_[1] ));
  FDCE \cnt_sysclk2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_30),
        .Q(\cnt_sysclk2_reg_n_0_[2] ));
  FDCE \cnt_sysclk2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_29),
        .Q(\cnt_sysclk2_reg_n_0_[3] ));
  FDCE \cnt_sysclk2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_28),
        .Q(\cnt_sysclk2_reg_n_0_[4] ));
  FDCE \cnt_sysclk2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_27),
        .Q(\cnt_sysclk2_reg_n_0_[5] ));
  FDCE \cnt_sysclk2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_26),
        .Q(\cnt_sysclk2_reg_n_0_[6] ));
  FDCE \cnt_sysclk2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_25),
        .Q(\cnt_sysclk2_reg_n_0_[7] ));
  FDCE \cnt_sysclk2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_24),
        .Q(\cnt_sysclk2_reg_n_0_[8] ));
  FDCE \cnt_sysclk2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_23),
        .Q(\cnt_sysclk2_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \csec[0]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[0]),
        .O(\csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \csec[1]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[1]),
        .I2(csec[0]),
        .O(\csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \csec[2]_i_1 
       (.I0(\csec[6]_i_3_n_0 ),
        .I1(csec[0]),
        .I2(csec[1]),
        .I3(csec[2]),
        .O(\csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \csec[5]_i_2 
       (.I0(csec[0]),
        .I1(csec[1]),
        .O(\csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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
       (.I0(run_reg_0),
        .I1(csec[5]),
        .I2(csec[6]),
        .I3(\csec[6]_i_5_n_0 ),
        .O(\csec[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \csec[6]_i_4 
       (.I0(csec[3]),
        .I1(csec[1]),
        .I2(csec[0]),
        .I3(csec[2]),
        .I4(csec[4]),
        .O(\csec[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
        .CE(ed_clear_n_12),
        .CLR(SR),
        .D(\csec[0]_i_1_n_0 ),
        .Q(csec[0]));
  FDCE \csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_12),
        .CLR(SR),
        .D(\csec[1]_i_1_n_0 ),
        .Q(csec[1]));
  FDCE \csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_12),
        .CLR(SR),
        .D(\csec[2]_i_1_n_0 ),
        .Q(csec[2]));
  FDCE \csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_12),
        .CLR(SR),
        .D(\csec[3]_i_1_n_0 ),
        .Q(csec[3]));
  FDCE \csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_12),
        .CLR(SR),
        .D(\csec[4]_i_1_n_0 ),
        .Q(csec[4]));
  FDCE \csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_12),
        .CLR(SR),
        .D(\csec[5]_i_1_n_0 ),
        .Q(csec[5]));
  FDCE \csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_12),
        .CLR(SR),
        .D(\csec[6]_i_2_n_0 ),
        .Q(csec[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[0]_i_1 
       (.I0(calc_diff_csec[0]),
        .I1(\lap_count_reg[1]_0 ),
        .O(\diff_csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[1]_i_1 
       (.I0(calc_diff_csec[1]),
        .I1(\lap_count_reg[1]_0 ),
        .O(\diff_csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \diff_csec[2]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[5]_i_2_n_0 ),
        .I2(calc_diff_csec__105_carry_n_5),
        .O(\diff_csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5401)) 
    \diff_csec[3]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[5]_i_2_n_0 ),
        .I2(calc_diff_csec__105_carry_n_5),
        .I3(calc_diff_csec__105_carry_n_4),
        .O(\diff_csec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0000F0E1)) 
    \diff_csec[4]_i_1 
       (.I0(calc_diff_csec__105_carry_n_4),
        .I1(calc_diff_csec__105_carry_n_5),
        .I2(calc_diff_csec__105_carry__0_n_7),
        .I3(\diff_csec[5]_i_2_n_0 ),
        .I4(\lap_count_reg[1]_0 ),
        .O(\diff_csec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555000000015554)) 
    \diff_csec[5]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(calc_diff_csec__105_carry_n_5),
        .I2(calc_diff_csec__105_carry_n_4),
        .I3(calc_diff_csec__105_carry__0_n_7),
        .I4(calc_diff_csec__105_carry__0_n_6),
        .I5(\diff_csec[5]_i_2_n_0 ),
        .O(\diff_csec[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001555555555555)) 
    \diff_csec[5]_i_2 
       (.I0(calc_diff_csec__105_carry__0_n_4),
        .I1(calc_diff_csec__105_carry__0_n_7),
        .I2(calc_diff_csec__105_carry_n_4),
        .I3(calc_diff_csec__105_carry_n_5),
        .I4(calc_diff_csec__105_carry__0_n_6),
        .I5(calc_diff_csec__105_carry__0_n_5),
        .O(\diff_csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00C2)) 
    \diff_csec[6]_i_1 
       (.I0(calc_diff_csec__105_carry__0_n_4),
        .I1(calc_diff_csec__105_carry__0_n_5),
        .I2(\diff_csec[6]_i_2_n_0 ),
        .I3(\lap_count_reg[1]_0 ),
        .O(\diff_csec[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \diff_csec[6]_i_2 
       (.I0(calc_diff_csec__105_carry__0_n_7),
        .I1(calc_diff_csec__105_carry_n_4),
        .I2(calc_diff_csec__105_carry_n_5),
        .I3(calc_diff_csec__105_carry__0_n_6),
        .O(\diff_csec[6]_i_2_n_0 ));
  FDCE \diff_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_csec[0]_i_1_n_0 ),
        .Q(diff_csec[0]));
  FDCE \diff_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_csec[1]_i_1_n_0 ),
        .Q(diff_csec[1]));
  FDCE \diff_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_csec[2]_i_1_n_0 ),
        .Q(diff_csec[2]));
  FDCE \diff_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_csec[3]_i_1_n_0 ),
        .Q(diff_csec[3]));
  FDCE \diff_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_csec[4]_i_1_n_0 ),
        .Q(diff_csec[4]));
  FDCE \diff_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_csec[5]_i_1_n_0 ),
        .Q(diff_csec[5]));
  FDCE \diff_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_csec[6]_i_1_n_0 ),
        .Q(diff_csec[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0000BA45)) 
    \diff_min[0]_i_1 
       (.I0(calc_diff_min__71_carry__1_n_0),
        .I1(abs_diff[16]),
        .I2(calc_diff_min__46_carry__1_n_7),
        .I3(calc_diff_min_carry__3_n_7),
        .I4(\lap_count_reg[1]_0 ),
        .O(\diff_min[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA59AAAA)) 
    \diff_min[1]_i_1 
       (.I0(calc_diff_min_carry__3_n_6),
        .I1(calc_diff_min__46_carry__1_n_7),
        .I2(abs_diff[16]),
        .I3(calc_diff_min__71_carry__1_n_0),
        .I4(calc_diff_min_carry__3_n_7),
        .I5(\lap_count_reg[1]_0 ),
        .O(\diff_min[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h15554000)) 
    \diff_min[2]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(calc_diff_min_carry__3_n_7),
        .I2(calc_diff_min_carry__3_n_6),
        .I3(\diff_min[3]_i_2_n_0 ),
        .I4(calc_diff_min_carry__3_n_5),
        .O(\diff_min[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \diff_min[3]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_min[3]_i_2_n_0 ),
        .I2(calc_diff_min_carry__3_n_6),
        .I3(calc_diff_min_carry__3_n_7),
        .I4(calc_diff_min_carry__3_n_5),
        .I5(calc_diff_min_carry__3_n_4),
        .O(\diff_min[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \diff_min[3]_i_2 
       (.I0(calc_diff_min__71_carry__1_n_0),
        .I1(abs_diff[16]),
        .I2(calc_diff_min__46_carry__1_n_7),
        .O(\diff_min[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \diff_min[4]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(calc_diff_min_carry__3_n_4),
        .I2(\diff_min[4]_i_3_n_0 ),
        .I3(\diff_min_reg[4]_i_4_n_3 ),
        .O(\diff_min[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \diff_min[4]_i_2 
       (.I0(\lap_count[7]_i_6_n_0 ),
        .I1(lap_count[1]),
        .I2(lap_count[0]),
        .I3(lap_count[2]),
        .I4(lap_count[3]),
        .O(\lap_count_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4500000000000000)) 
    \diff_min[4]_i_3 
       (.I0(calc_diff_min__71_carry__1_n_0),
        .I1(abs_diff[16]),
        .I2(calc_diff_min__46_carry__1_n_7),
        .I3(calc_diff_min_carry__3_n_6),
        .I4(calc_diff_min_carry__3_n_7),
        .I5(calc_diff_min_carry__3_n_5),
        .O(\diff_min[4]_i_3_n_0 ));
  FDCE \diff_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_min[0]_i_1_n_0 ),
        .Q(diff_min[0]));
  FDCE \diff_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_min[1]_i_1_n_0 ),
        .Q(diff_min[1]));
  FDCE \diff_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_min[2]_i_1_n_0 ),
        .Q(diff_min[2]));
  FDCE \diff_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_min[3]_i_1_n_0 ),
        .Q(diff_min[3]));
  FDCE \diff_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_min[4]_i_1_n_0 ),
        .Q(diff_min[4]));
  CARRY4 \diff_min_reg[4]_i_4 
       (.CI(calc_diff_min_carry__3_n_0),
        .CO({\NLW_diff_min_reg[4]_i_4_CO_UNCONNECTED [3:1],\diff_min_reg[4]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_diff_min_reg[4]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT5 #(
    .INIT(32'h45441011)) 
    \diff_sec[0]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(calc_diff_sec__59_carry__1_n_2),
        .I2(calc_diff_sec0[12]),
        .I3(calc_diff_sec__38_carry__0_n_4),
        .I4(calc_diff_sec__1_carry__1_n_5),
        .O(\diff_sec[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFDD2022)) 
    \diff_sec[1]_i_1 
       (.I0(calc_diff_sec__1_carry__1_n_5),
        .I1(calc_diff_sec__59_carry__1_n_2),
        .I2(calc_diff_sec0[12]),
        .I3(calc_diff_sec__38_carry__0_n_4),
        .I4(calc_diff_sec__1_carry__1_n_4),
        .I5(\lap_count_reg[1]_0 ),
        .O(\diff_sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \diff_sec[1]_i_2 
       (.I0(calc_diff_sec0__106_carry__1_n_7),
        .I1(calc_diff_sec0__106_carry__1_n_2),
        .I2(calc_diff_sec0__70_carry__2_n_7),
        .O(calc_diff_sec0[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \diff_sec[2]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[5]_i_2_n_0 ),
        .I2(calc_diff_sec__1_carry__2_n_7),
        .O(\diff_sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \diff_sec[3]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[5]_i_2_n_0 ),
        .I2(calc_diff_sec__1_carry__2_n_7),
        .I3(calc_diff_sec__1_carry__2_n_6),
        .O(\diff_sec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h51550400)) 
    \diff_sec[4]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(calc_diff_sec__1_carry__2_n_7),
        .I2(\diff_sec[5]_i_2_n_0 ),
        .I3(calc_diff_sec__1_carry__2_n_6),
        .I4(calc_diff_sec__1_carry__2_n_5),
        .O(\diff_sec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5515555500400000)) 
    \diff_sec[5]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(calc_diff_sec__1_carry__2_n_5),
        .I2(calc_diff_sec__1_carry__2_n_6),
        .I3(\diff_sec[5]_i_2_n_0 ),
        .I4(calc_diff_sec__1_carry__2_n_7),
        .I5(calc_diff_sec__1_carry__2_n_4),
        .O(\diff_sec[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFDDFFFF)) 
    \diff_sec[5]_i_2 
       (.I0(calc_diff_sec__1_carry__1_n_5),
        .I1(calc_diff_sec__59_carry__1_n_2),
        .I2(calc_diff_sec0[12]),
        .I3(calc_diff_sec__38_carry__0_n_4),
        .I4(calc_diff_sec__1_carry__1_n_4),
        .O(\diff_sec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4555555510000000)) 
    \diff_sec[6]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_sec[6]_i_2_n_0 ),
        .I2(calc_diff_sec__1_carry__2_n_6),
        .I3(calc_diff_sec__1_carry__2_n_5),
        .I4(calc_diff_sec__1_carry__2_n_4),
        .I5(\diff_sec_reg[6]_i_3_n_3 ),
        .O(\diff_sec[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DFFFFFFFFFFFF)) 
    \diff_sec[6]_i_2 
       (.I0(calc_diff_sec__1_carry__1_n_4),
        .I1(calc_diff_sec__38_carry__0_n_4),
        .I2(calc_diff_sec0[12]),
        .I3(calc_diff_sec__59_carry__1_n_2),
        .I4(calc_diff_sec__1_carry__1_n_5),
        .I5(calc_diff_sec__1_carry__2_n_7),
        .O(\diff_sec[6]_i_2_n_0 ));
  FDCE \diff_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_sec[0]_i_1_n_0 ),
        .Q(diff_sec[0]));
  FDCE \diff_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_sec[1]_i_1_n_0 ),
        .Q(diff_sec[1]));
  FDCE \diff_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_sec[2]_i_1_n_0 ),
        .Q(diff_sec[2]));
  FDCE \diff_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_sec[3]_i_1_n_0 ),
        .Q(diff_sec[3]));
  FDCE \diff_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_sec[4]_i_1_n_0 ),
        .Q(diff_sec[4]));
  FDCE \diff_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_sec[5]_i_1_n_0 ),
        .Q(diff_sec[5]));
  FDCE \diff_sec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(\diff_sec[6]_i_1_n_0 ),
        .Q(diff_sec[6]));
  CARRY4 \diff_sec_reg[6]_i_3 
       (.CI(calc_diff_sec__1_carry__2_n_0),
        .CO({\NLW_diff_sec_reg[6]_i_3_CO_UNCONNECTED [3:1],\diff_sec_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_diff_sec_reg[6]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p ed_clear
       (.AR(SR),
        .D({ed_clear_n_13,ed_clear_n_14,ed_clear_n_15,ed_clear_n_16,ed_clear_n_17,ed_clear_n_18,ed_clear_n_19,ed_clear_n_20,ed_clear_n_21,ed_clear_n_22,ed_clear_n_23,ed_clear_n_24,ed_clear_n_25,ed_clear_n_26,ed_clear_n_27,ed_clear_n_28,ed_clear_n_29,ed_clear_n_30,ed_clear_n_31,ed_clear_n_32}),
        .E(ed_clear_n_4),
        .Q(Q[2:1]),
        .cnt_sysclk20(cnt_sysclk20),
        .\cnt_sysclk2_reg[0] (\cnt_sysclk2_reg_n_0_[0] ),
        .\cnt_sysclk2_reg[19] (run_reg_0),
        .\cnt_sysclk2_reg[19]_0 (ed_start_n_4),
        .\csec_reg[0] (\cnt_sysclk1[19]_i_3_n_0 ),
        .ff_cur_reg_0(ff_cur_reg_0),
        .ff_cur_reg_1(ed_clear_n_3),
        .ff_cur_reg_2(ed_clear_n_5),
        .ff_cur_reg_3(ed_clear_n_6),
        .ff_cur_reg_4(ed_clear_n_8),
        .ff_cur_reg_5(cnt_sysclk2),
        .ff_cur_reg_6(ed_clear_n_12),
        .ff_old_reg_0(ff_old_reg_0),
        .ff_old_reg_1(ed_clear_n_7),
        .ff_old_reg_2(ed_clear_n_9),
        .\lap_csec_reg[5] ({ed_clear_n_45,ed_clear_n_46,ed_clear_n_47,ed_clear_n_48,ed_clear_n_49,ed_clear_n_50,ed_clear_n_51}),
        .\lap_csec_reg[5]_0 (\lap_csec[5]_i_2_n_0 ),
        .\lap_csec_reg[6] (lap_csec),
        .\lap_csec_reg[6]_0 (\lap_csec[6]_i_4_n_0 ),
        .\lap_csec_reg[6]_1 (\lap_csec[6]_i_5_n_0 ),
        .\lap_min_reg[0] (\cnt_sysclk2[19]_i_3_n_0 ),
        .\lap_min_reg[0]_0 (\lap_min[5]_i_3_n_0 ),
        .\lap_min_reg[3] ({ed_clear_n_33,ed_clear_n_34,ed_clear_n_35,ed_clear_n_36,ed_clear_n_37,ed_clear_n_38}),
        .\lap_min_reg[5] (lap_min),
        .\lap_min_reg[5]_0 (\lap_min[5]_i_5_n_0 ),
        .\lap_min_reg[5]_1 (\lap_min[5]_i_7_n_0 ),
        .\lap_sec_reg[3] ({ed_clear_n_39,ed_clear_n_40,ed_clear_n_41,ed_clear_n_42,ed_clear_n_43,ed_clear_n_44}),
        .\lap_sec_reg[5] (lap_sec),
        .\lap_sec_reg[5]_0 (\lap_sec[5]_i_5_n_0 ),
        .\min_reg[0] (\sec[4]_i_2_n_0 ),
        .\prev_csec_reg[0] (ff_old_reg),
        .\prev_csec_reg[0]_0 (ff_cur_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sec_reg[0] (\csec[6]_i_3_n_0 ),
        .\slv_reg0_reg[2] (prev_min));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 ed_start
       (.AR(SR),
        .D(ed_start_n_3),
        .E(E),
        .Q({Q[2],Q[0]}),
        .\diff_csec_reg[0] (ff_old_reg_0),
        .\diff_csec_reg[0]_0 (ff_cur_reg_0),
        .ff_cur_reg_0(ff_cur_reg),
        .ff_old_reg_0(ff_old_reg),
        .\lap_count_reg[0] (lap_count[3:0]),
        .\lap_count_reg[0]_0 (run_reg_0),
        .\lap_count_reg[0]_1 (\lap_count[7]_i_6_n_0 ),
        .\lap_count_reg[1] (ed_start_n_4),
        .s00_axi_aclk(s00_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \lap_count[1]_i_1 
       (.I0(lap_count[1]),
        .I1(lap_count[0]),
        .I2(run_reg_0),
        .O(\lap_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_count[2]_i_1 
       (.I0(run_reg_0),
        .I1(lap_count[0]),
        .I2(lap_count[1]),
        .I3(lap_count[2]),
        .O(\lap_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_count[3]_i_1 
       (.I0(run_reg_0),
        .I1(lap_count[1]),
        .I2(lap_count[0]),
        .I3(lap_count[2]),
        .I4(lap_count[3]),
        .O(\lap_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_count[4]_i_1 
       (.I0(run_reg_0),
        .I1(lap_count[2]),
        .I2(lap_count[0]),
        .I3(lap_count[1]),
        .I4(lap_count[3]),
        .I5(lap_count[4]),
        .O(\lap_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_count[5]_i_1 
       (.I0(run_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \lap_count[6]_i_1 
       (.I0(\lap_count[7]_i_4_n_0 ),
        .I1(lap_count[6]),
        .I2(run_reg_0),
        .O(\lap_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_count[7]_i_2 
       (.I0(run_reg_0),
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
    .INIT(16'h0001)) 
    \lap_count[7]_i_6 
       (.I0(lap_count[6]),
        .I1(lap_count[4]),
        .I2(lap_count[7]),
        .I3(lap_count[5]),
        .O(\lap_count[7]_i_6_n_0 ));
  FDCE \lap_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(ed_start_n_3),
        .Q(lap_count[0]));
  FDCE \lap_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\lap_count[1]_i_1_n_0 ),
        .Q(lap_count[1]));
  FDCE \lap_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\lap_count[2]_i_1_n_0 ),
        .Q(lap_count[2]));
  FDCE \lap_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\lap_count[3]_i_1_n_0 ),
        .Q(lap_count[3]));
  FDCE \lap_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\lap_count[4]_i_1_n_0 ),
        .Q(lap_count[4]));
  FDCE \lap_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\lap_count[5]_i_1_n_0 ),
        .Q(lap_count[5]));
  FDCE \lap_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\lap_count[6]_i_1_n_0 ),
        .Q(lap_count[6]));
  FDCE \lap_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\lap_count[7]_i_2_n_0 ),
        .Q(lap_count[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \lap_csec[5]_i_2 
       (.I0(lap_csec[0]),
        .I1(lap_csec[1]),
        .O(\lap_csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \lap_csec[6]_i_4 
       (.I0(lap_csec[3]),
        .I1(lap_csec[1]),
        .I2(lap_csec[0]),
        .I3(lap_csec[2]),
        .I4(lap_csec[4]),
        .O(\lap_csec[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(ed_clear_n_51),
        .Q(lap_csec[0]));
  FDCE \lap_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(ed_clear_n_50),
        .Q(lap_csec[1]));
  FDCE \lap_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(ed_clear_n_49),
        .Q(lap_csec[2]));
  FDCE \lap_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(ed_clear_n_48),
        .Q(lap_csec[3]));
  FDCE \lap_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(ed_clear_n_47),
        .Q(lap_csec[4]));
  FDCE \lap_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(ed_clear_n_46),
        .Q(lap_csec[5]));
  FDCE \lap_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(ed_clear_n_45),
        .Q(lap_csec[6]));
  FDCE lap_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \lap_min[5]_i_5 
       (.I0(lap_min[1]),
        .I1(lap_min[0]),
        .I2(lap_min[2]),
        .O(\lap_min[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_min[5]_i_7 
       (.I0(lap_min[0]),
        .I1(lap_min[1]),
        .O(\lap_min[5]_i_7_n_0 ));
  FDCE \lap_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_38),
        .Q(lap_min[0]));
  FDCE \lap_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_37),
        .Q(lap_min[1]));
  FDCE \lap_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_36),
        .Q(lap_min[2]));
  FDCE \lap_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_35),
        .Q(lap_min[3]));
  FDCE \lap_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_34),
        .Q(lap_min[4]));
  FDCE \lap_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_6),
        .CLR(SR),
        .D(ed_clear_n_33),
        .Q(lap_min[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \lap_sec[5]_i_5 
       (.I0(lap_sec[0]),
        .I1(lap_sec[1]),
        .O(\lap_sec[5]_i_5_n_0 ));
  FDCE \lap_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(ed_clear_n_44),
        .Q(lap_sec[0]));
  FDCE \lap_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(ed_clear_n_43),
        .Q(lap_sec[1]));
  FDCE \lap_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(ed_clear_n_42),
        .Q(lap_sec[2]));
  FDCE \lap_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(ed_clear_n_41),
        .Q(lap_sec[3]));
  FDCE \lap_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(ed_clear_n_40),
        .Q(lap_sec[4]));
  FDCE \lap_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(ed_clear_n_39),
        .Q(lap_sec[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min[0]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[0]),
        .O(\min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \min[1]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[1]),
        .I2(min[0]),
        .O(\min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \min[2]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[0]),
        .I2(min[1]),
        .I3(min[2]),
        .O(\min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
       (.I0(run_reg_0),
        .I1(min[3]),
        .I2(min[4]),
        .I3(min[5]),
        .I4(min[2]),
        .I5(\min[5]_i_3_n_0 ),
        .O(\min[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAA80000000)) 
    \min[5]_i_2 
       (.I0(run_reg_0),
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
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(\min[0]_i_1_n_0 ),
        .Q(min[0]));
  FDCE \min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(\min[1]_i_1_n_0 ),
        .Q(min[1]));
  FDCE \min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(\min[2]_i_1_n_0 ),
        .Q(min[2]));
  FDCE \min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(\min[3]_i_1_n_0 ),
        .Q(min[3]));
  FDCE \min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(\min[4]_i_1_n_0 ),
        .Q(min[4]));
  FDCE \min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(\min[5]_i_2_n_0 ),
        .Q(min[5]));
  FDCE \prev_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_csec[0]),
        .Q(prev_csec[0]));
  FDCE \prev_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_csec[1]),
        .Q(prev_csec[1]));
  FDCE \prev_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_csec[2]),
        .Q(prev_csec[2]));
  FDCE \prev_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_csec[3]),
        .Q(prev_csec[3]));
  FDCE \prev_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_csec[4]),
        .Q(prev_csec[4]));
  FDCE \prev_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_csec[5]),
        .Q(prev_csec[5]));
  FDCE \prev_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_csec[6]),
        .Q(prev_csec[6]));
  FDCE \prev_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\tmp_min_reg_n_0_[0] ),
        .Q(\prev_min_reg_n_0_[0] ));
  FDCE \prev_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\tmp_min_reg_n_0_[1] ),
        .Q(\prev_min_reg_n_0_[1] ));
  FDCE \prev_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\tmp_min_reg_n_0_[2] ),
        .Q(\prev_min_reg_n_0_[2] ));
  FDCE \prev_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\tmp_min_reg_n_0_[3] ),
        .Q(\prev_min_reg_n_0_[3] ));
  FDCE \prev_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\tmp_min_reg_n_0_[4] ),
        .Q(\prev_min_reg_n_0_[4] ));
  FDCE \prev_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\tmp_min_reg_n_0_[5] ),
        .Q(\prev_min_reg_n_0_[5] ));
  FDCE \prev_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_sec[0]),
        .Q(prev_sec[0]));
  FDCE \prev_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_sec[1]),
        .Q(prev_sec[1]));
  FDCE \prev_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_sec[2]),
        .Q(prev_sec[2]));
  FDCE \prev_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_sec[3]),
        .Q(prev_sec[3]));
  FDCE \prev_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_sec[4]),
        .Q(prev_sec[4]));
  FDCE \prev_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(tmp_sec[5]),
        .Q(prev_sec[5]));
  FDCE run_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(run_reg_1),
        .Q(run_reg_0));
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
        .I3(run_reg_0),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20] [0]),
        .I1(\s00_axi_rdata[20]_0 [0]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [0]),
        .I4(sel0[0]),
        .I5(diff_csec[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(lap_sec[2]),
        .I1(sec[2]),
        .I2(sel0[1]),
        .I3(Q[9]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20] [9]),
        .I1(\s00_axi_rdata[20]_0 [9]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [9]),
        .I4(sel0[0]),
        .I5(diff_sec[2]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(lap_sec[3]),
        .I1(sec[3]),
        .I2(sel0[1]),
        .I3(Q[10]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20] [10]),
        .I1(\s00_axi_rdata[20]_0 [10]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [10]),
        .I4(sel0[0]),
        .I5(diff_sec[3]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(lap_sec[4]),
        .I1(sec[4]),
        .I2(sel0[1]),
        .I3(Q[11]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20] [11]),
        .I1(\s00_axi_rdata[20]_0 [11]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [11]),
        .I4(sel0[0]),
        .I5(diff_sec[4]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(lap_sec[5]),
        .I1(sec[5]),
        .I2(sel0[1]),
        .I3(Q[12]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20] [12]),
        .I1(\s00_axi_rdata[20]_0 [12]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [12]),
        .I4(sel0[0]),
        .I5(diff_sec[5]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF100010)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(Q[13]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\s00_axi_rdata[20] [13]),
        .I1(\s00_axi_rdata[20]_0 [13]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [13]),
        .I4(sel0[0]),
        .I5(diff_sec[6]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
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
       (.I0(\s00_axi_rdata[20] [14]),
        .I1(\s00_axi_rdata[20]_0 [14]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [14]),
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
       (.I0(\s00_axi_rdata[20] [15]),
        .I1(\s00_axi_rdata[20]_0 [15]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [15]),
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
       (.I0(\s00_axi_rdata[20] [16]),
        .I1(\s00_axi_rdata[20]_0 [16]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [16]),
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
       (.I0(\s00_axi_rdata[20] [17]),
        .I1(\s00_axi_rdata[20]_0 [17]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [17]),
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
       (.I0(\s00_axi_rdata[20] [1]),
        .I1(\s00_axi_rdata[20]_0 [1]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [1]),
        .I4(sel0[0]),
        .I5(diff_csec[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20] [18]),
        .I1(\s00_axi_rdata[20]_0 [18]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [18]),
        .I4(sel0[0]),
        .I5(diff_min[4]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
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
        .I3(sel0[0]),
        .I4(Q[20]),
        .I5(sel0[1]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(s00_axi_rdata_25_sn_1),
        .I1(sel0[2]),
        .I2(lap_count[1]),
        .I3(sel0[0]),
        .I4(Q[21]),
        .I5(sel0[1]),
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
        .I3(sel0[0]),
        .I4(Q[23]),
        .I5(sel0[1]),
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
       (.I0(\s00_axi_rdata[20] [2]),
        .I1(\s00_axi_rdata[20]_0 [2]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [2]),
        .I4(sel0[0]),
        .I5(diff_csec[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30] ),
        .I1(sel0[2]),
        .I2(lap_count[6]),
        .I3(sel0[0]),
        .I4(Q[26]),
        .I5(sel0[1]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31] ),
        .I1(sel0[2]),
        .I2(lap_count[7]),
        .I3(sel0[0]),
        .I4(Q[27]),
        .I5(sel0[1]),
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
       (.I0(\s00_axi_rdata[20] [3]),
        .I1(\s00_axi_rdata[20]_0 [3]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [3]),
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
       (.I0(\s00_axi_rdata[20] [4]),
        .I1(\s00_axi_rdata[20]_0 [4]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [4]),
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
       (.I0(\s00_axi_rdata[20] [5]),
        .I1(\s00_axi_rdata[20]_0 [5]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [5]),
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
       (.I0(\s00_axi_rdata[20] [6]),
        .I1(\s00_axi_rdata[20]_0 [6]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [6]),
        .I4(sel0[0]),
        .I5(diff_csec[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(lap_sec[0]),
        .I1(sec[0]),
        .I2(sel0[1]),
        .I3(Q[7]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20] [7]),
        .I1(\s00_axi_rdata[20]_0 [7]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [7]),
        .I4(sel0[0]),
        .I5(diff_sec[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(lap_sec[1]),
        .I1(sec[1]),
        .I2(sel0[1]),
        .I3(Q[8]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20] [8]),
        .I1(\s00_axi_rdata[20]_0 [8]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[20]_1 [8]),
        .I4(sel0[0]),
        .I5(diff_sec[1]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sec[0]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[0]),
        .O(\sec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \sec[1]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[1]),
        .I2(sec[0]),
        .O(\sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \sec[2]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[0]),
        .I2(sec[1]),
        .I3(sec[2]),
        .O(\sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
       (.I0(run_reg_0),
        .I1(sec[5]),
        .I2(sec[4]),
        .I3(sec[3]),
        .I4(sec[2]),
        .I5(\sec[5]_i_3_n_0 ),
        .O(\sec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888088808888888)) 
    \sec[5]_i_2 
       (.I0(run_reg_0),
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
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(\sec[0]_i_1_n_0 ),
        .Q(sec[0]));
  FDCE \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(\sec[1]_i_1_n_0 ),
        .Q(sec[1]));
  FDCE \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(\sec[2]_i_1_n_0 ),
        .Q(sec[2]));
  FDCE \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(\sec[3]_i_1_n_0 ),
        .Q(sec[3]));
  FDCE \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(\sec[4]_i_1_n_0 ),
        .Q(sec[4]));
  FDCE \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(\sec[5]_i_2_n_0 ),
        .Q(sec[5]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sign_calc1_carry
       (.CI(1'b0),
        .CO({sign_calc1_carry_n_0,sign_calc1_carry_n_1,sign_calc1_carry_n_2,sign_calc1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({sign_calc1_carry_i_1_n_0,sign_calc1_carry_i_2_n_0,sign_calc1_carry_i_3_n_0,sign_calc1_carry_i_4_n_0}),
        .O(NLW_sign_calc1_carry_O_UNCONNECTED[3:0]),
        .S({sign_calc1_carry_i_5_n_0,sign_calc1_carry_i_6_n_0,sign_calc1_carry_i_7_n_0,sign_calc1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sign_calc1_carry__0
       (.CI(sign_calc1_carry_n_0),
        .CO({sign_calc1_carry__0_n_0,sign_calc1_carry__0_n_1,sign_calc1_carry__0_n_2,sign_calc1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sign_calc1_carry__0_i_1_n_0,sign_calc1_carry__0_i_2_n_0,sign_calc1_carry__0_i_3_n_0,sign_calc1_carry__0_i_4_n_0}),
        .O(NLW_sign_calc1_carry__0_O_UNCONNECTED[3:0]),
        .S({sign_calc1_carry__0_i_5_n_0,sign_calc1_carry__0_i_6_n_0,sign_calc1_carry__0_i_7_n_0,sign_calc1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_calc1_carry__0_i_1
       (.I0(total_tmp__0[15]),
        .I1(total_prev__0[15]),
        .I2(total_tmp__0[14]),
        .I3(total_prev__0[14]),
        .O(sign_calc1_carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry__0_i_10
       (.CI(sign_calc1_carry__0_i_12_n_0),
        .CO({sign_calc1_carry__0_i_10_n_0,sign_calc1_carry__0_i_10_n_1,sign_calc1_carry__0_i_10_n_2,sign_calc1_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(total_prev__0[15:12]),
        .S({total_prev_n_90,total_prev_n_91,total_prev_n_92,total_prev_n_93}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry__0_i_11
       (.CI(sign_calc1_carry_i_9_n_0),
        .CO({sign_calc1_carry__0_i_11_n_0,sign_calc1_carry__0_i_11_n_1,sign_calc1_carry__0_i_11_n_2,sign_calc1_carry__0_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(total_tmp__0[11:8]),
        .S({total_tmp_n_94,total_tmp_n_95,total_tmp_n_96,total_tmp_n_97}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry__0_i_12
       (.CI(sign_calc1_carry_i_10_n_0),
        .CO({sign_calc1_carry__0_i_12_n_0,sign_calc1_carry__0_i_12_n_1,sign_calc1_carry__0_i_12_n_2,sign_calc1_carry__0_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(total_prev__0[11:8]),
        .S({total_prev_n_94,total_prev_n_95,total_prev_n_96,total_prev_n_97}));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_calc1_carry__0_i_2
       (.I0(total_tmp__0[13]),
        .I1(total_prev__0[13]),
        .I2(total_tmp__0[12]),
        .I3(total_prev__0[12]),
        .O(sign_calc1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_calc1_carry__0_i_3
       (.I0(total_tmp__0[11]),
        .I1(total_prev__0[11]),
        .I2(total_tmp__0[10]),
        .I3(total_prev__0[10]),
        .O(sign_calc1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_calc1_carry__0_i_4
       (.I0(total_tmp__0[9]),
        .I1(total_prev__0[9]),
        .I2(total_tmp__0[8]),
        .I3(total_prev__0[8]),
        .O(sign_calc1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_calc1_carry__0_i_5
       (.I0(total_prev__0[15]),
        .I1(total_tmp__0[15]),
        .I2(total_prev__0[14]),
        .I3(total_tmp__0[14]),
        .O(sign_calc1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_calc1_carry__0_i_6
       (.I0(total_prev__0[13]),
        .I1(total_tmp__0[13]),
        .I2(total_prev__0[12]),
        .I3(total_tmp__0[12]),
        .O(sign_calc1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_calc1_carry__0_i_7
       (.I0(total_prev__0[11]),
        .I1(total_tmp__0[11]),
        .I2(total_prev__0[10]),
        .I3(total_tmp__0[10]),
        .O(sign_calc1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_calc1_carry__0_i_8
       (.I0(total_prev__0[9]),
        .I1(total_tmp__0[9]),
        .I2(total_prev__0[8]),
        .I3(total_tmp__0[8]),
        .O(sign_calc1_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry__0_i_9
       (.CI(sign_calc1_carry__0_i_11_n_0),
        .CO({sign_calc1_carry__0_i_9_n_0,sign_calc1_carry__0_i_9_n_1,sign_calc1_carry__0_i_9_n_2,sign_calc1_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(total_tmp__0[15:12]),
        .S({total_tmp_n_90,total_tmp_n_91,total_tmp_n_92,total_tmp_n_93}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sign_calc1_carry__1
       (.CI(sign_calc1_carry__0_n_0),
        .CO({NLW_sign_calc1_carry__1_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sign_calc1_carry__1_i_1_n_0}),
        .O(NLW_sign_calc1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sign_calc1_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    sign_calc1_carry__1_i_1
       (.I0(total_tmp__0[16]),
        .I1(total_prev__0[16]),
        .O(sign_calc1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sign_calc1_carry__1_i_2
       (.I0(total_prev__0[16]),
        .I1(total_tmp__0[16]),
        .O(sign_calc1_carry__1_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry__1_i_3
       (.CI(sign_calc1_carry__0_i_9_n_0),
        .CO(NLW_sign_calc1_carry__1_i_3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sign_calc1_carry__1_i_3_O_UNCONNECTED[3:1],total_tmp__0[16]}),
        .S({1'b0,1'b0,1'b0,total_tmp_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry__1_i_4
       (.CI(sign_calc1_carry__0_i_10_n_0),
        .CO(NLW_sign_calc1_carry__1_i_4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sign_calc1_carry__1_i_4_O_UNCONNECTED[3:1],total_prev__0[16]}),
        .S({1'b0,1'b0,1'b0,total_prev_n_89}));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_calc1_carry_i_1
       (.I0(total_tmp__0[7]),
        .I1(total_prev__0[7]),
        .I2(total_tmp__0[6]),
        .I3(total_prev__0[6]),
        .O(sign_calc1_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry_i_10
       (.CI(sign_calc1_carry_i_12_n_0),
        .CO({sign_calc1_carry_i_10_n_0,sign_calc1_carry_i_10_n_1,sign_calc1_carry_i_10_n_2,sign_calc1_carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prev_csec[6:4]}),
        .O(total_prev__0[7:4]),
        .S({total_prev_n_98,sign_calc1_carry_i_16_n_0,sign_calc1_carry_i_17_n_0,sign_calc1_carry_i_18_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry_i_11
       (.CI(1'b0),
        .CO({sign_calc1_carry_i_11_n_0,sign_calc1_carry_i_11_n_1,sign_calc1_carry_i_11_n_2,sign_calc1_carry_i_11_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_csec[3:0]),
        .O(total_tmp__0[3:0]),
        .S({sign_calc1_carry_i_19_n_0,sign_calc1_carry_i_20_n_0,sign_calc1_carry_i_21_n_0,sign_calc1_carry_i_22_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry_i_12
       (.CI(1'b0),
        .CO({sign_calc1_carry_i_12_n_0,sign_calc1_carry_i_12_n_1,sign_calc1_carry_i_12_n_2,sign_calc1_carry_i_12_n_3}),
        .CYINIT(1'b0),
        .DI(prev_csec[3:0]),
        .O(total_prev__0[3:0]),
        .S({sign_calc1_carry_i_23_n_0,sign_calc1_carry_i_24_n_0,sign_calc1_carry_i_25_n_0,sign_calc1_carry_i_26_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_13
       (.I0(tmp_csec[6]),
        .I1(total_tmp_n_99),
        .O(sign_calc1_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_14
       (.I0(tmp_csec[5]),
        .I1(total_tmp_n_100),
        .O(sign_calc1_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_15
       (.I0(tmp_csec[4]),
        .I1(total_tmp_n_101),
        .O(sign_calc1_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_16
       (.I0(prev_csec[6]),
        .I1(total_prev_n_99),
        .O(sign_calc1_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_17
       (.I0(prev_csec[5]),
        .I1(total_prev_n_100),
        .O(sign_calc1_carry_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_18
       (.I0(prev_csec[4]),
        .I1(total_prev_n_101),
        .O(sign_calc1_carry_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_19
       (.I0(tmp_csec[3]),
        .I1(total_tmp_n_102),
        .O(sign_calc1_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_calc1_carry_i_2
       (.I0(total_tmp__0[5]),
        .I1(total_prev__0[5]),
        .I2(total_tmp__0[4]),
        .I3(total_prev__0[4]),
        .O(sign_calc1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_20
       (.I0(tmp_csec[2]),
        .I1(total_tmp_n_103),
        .O(sign_calc1_carry_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_21
       (.I0(tmp_csec[1]),
        .I1(total_tmp_n_104),
        .O(sign_calc1_carry_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_22
       (.I0(tmp_csec[0]),
        .I1(total_tmp_n_105),
        .O(sign_calc1_carry_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_23
       (.I0(prev_csec[3]),
        .I1(total_prev_n_102),
        .O(sign_calc1_carry_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_24
       (.I0(prev_csec[2]),
        .I1(total_prev_n_103),
        .O(sign_calc1_carry_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_25
       (.I0(prev_csec[1]),
        .I1(total_prev_n_104),
        .O(sign_calc1_carry_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sign_calc1_carry_i_26
       (.I0(prev_csec[0]),
        .I1(total_prev_n_105),
        .O(sign_calc1_carry_i_26_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_calc1_carry_i_3
       (.I0(total_tmp__0[3]),
        .I1(total_prev__0[3]),
        .I2(total_tmp__0[2]),
        .I3(total_prev__0[2]),
        .O(sign_calc1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sign_calc1_carry_i_4
       (.I0(total_tmp__0[1]),
        .I1(total_prev__0[1]),
        .I2(total_tmp__0[0]),
        .I3(total_prev__0[0]),
        .O(sign_calc1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_calc1_carry_i_5
       (.I0(total_prev__0[7]),
        .I1(total_tmp__0[7]),
        .I2(total_prev__0[6]),
        .I3(total_tmp__0[6]),
        .O(sign_calc1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_calc1_carry_i_6
       (.I0(total_prev__0[5]),
        .I1(total_tmp__0[5]),
        .I2(total_prev__0[4]),
        .I3(total_tmp__0[4]),
        .O(sign_calc1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_calc1_carry_i_7
       (.I0(total_prev__0[3]),
        .I1(total_tmp__0[3]),
        .I2(total_prev__0[2]),
        .I3(total_tmp__0[2]),
        .O(sign_calc1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sign_calc1_carry_i_8
       (.I0(total_prev__0[1]),
        .I1(total_tmp__0[1]),
        .I2(total_prev__0[0]),
        .I3(total_tmp__0[0]),
        .O(sign_calc1_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sign_calc1_carry_i_9
       (.CI(sign_calc1_carry_i_11_n_0),
        .CO({sign_calc1_carry_i_9_n_0,sign_calc1_carry_i_9_n_1,sign_calc1_carry_i_9_n_2,sign_calc1_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_csec[6:4]}),
        .O(total_tmp__0[7:4]),
        .S({total_tmp_n_98,sign_calc1_carry_i_13_n_0,sign_calc1_carry_i_14_n_0,sign_calc1_carry_i_15_n_0}));
  FDCE sign_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(sign_flag_reg_0),
        .Q(sign_flag));
  FDCE \tmp_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_csec[0]),
        .Q(tmp_csec[0]));
  FDCE \tmp_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_csec[1]),
        .Q(tmp_csec[1]));
  FDCE \tmp_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_csec[2]),
        .Q(tmp_csec[2]));
  FDCE \tmp_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_csec[3]),
        .Q(tmp_csec[3]));
  FDCE \tmp_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_csec[4]),
        .Q(tmp_csec[4]));
  FDCE \tmp_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_csec[5]),
        .Q(tmp_csec[5]));
  FDCE \tmp_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_csec[6]),
        .Q(tmp_csec[6]));
  FDCE \tmp_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_min[0]),
        .Q(\tmp_min_reg_n_0_[0] ));
  FDCE \tmp_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_min[1]),
        .Q(\tmp_min_reg_n_0_[1] ));
  FDCE \tmp_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_min[2]),
        .Q(\tmp_min_reg_n_0_[2] ));
  FDCE \tmp_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_min[3]),
        .Q(\tmp_min_reg_n_0_[3] ));
  FDCE \tmp_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_min[4]),
        .Q(\tmp_min_reg_n_0_[4] ));
  FDCE \tmp_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_min[5]),
        .Q(\tmp_min_reg_n_0_[5] ));
  FDCE \tmp_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_sec[0]),
        .Q(tmp_sec[0]));
  FDCE \tmp_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_sec[1]),
        .Q(tmp_sec[1]));
  FDCE \tmp_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_sec[2]),
        .Q(tmp_sec[2]));
  FDCE \tmp_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_sec[3]),
        .Q(tmp_sec[3]));
  FDCE \tmp_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(lap_sec[4]),
        .Q(tmp_sec[4]));
  FDCE \tmp_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
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
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\prev_min_reg_n_0_[5] ,\prev_min_reg_n_0_[4] ,\prev_min_reg_n_0_[3] ,\prev_min_reg_n_0_[2] ,\prev_min_reg_n_0_[1] ,\prev_min_reg_n_0_[0] }),
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
        .P({NLW_total_prev_P_UNCONNECTED[47:17],total_prev_n_89,total_prev_n_90,total_prev_n_91,total_prev_n_92,total_prev_n_93,total_prev_n_94,total_prev_n_95,total_prev_n_96,total_prev_n_97,total_prev_n_98,total_prev_n_99,total_prev_n_100,total_prev_n_101,total_prev_n_102,total_prev_n_103,total_prev_n_104,total_prev_n_105}),
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
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tmp_min_reg_n_0_[5] ,\tmp_min_reg_n_0_[4] ,\tmp_min_reg_n_0_[3] ,\tmp_min_reg_n_0_[2] ,\tmp_min_reg_n_0_[1] ,\tmp_min_reg_n_0_[0] }),
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
        .P({NLW_total_tmp_P_UNCONNECTED[47:17],total_tmp_n_89,total_tmp_n_90,total_tmp_n_91,total_tmp_n_92,total_tmp_n_93,total_tmp_n_94,total_tmp_n_95,total_tmp_n_96,total_tmp_n_97,total_tmp_n_98,total_tmp_n_99,total_tmp_n_100,total_tmp_n_101,total_tmp_n_102,total_tmp_n_103,total_tmp_n_104,total_tmp_n_105}),
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
