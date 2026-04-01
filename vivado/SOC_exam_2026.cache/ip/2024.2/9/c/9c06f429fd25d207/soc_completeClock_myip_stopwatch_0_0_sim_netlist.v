// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Jan 30 09:55:29 2026
// Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_completeClock_myip_stopwatch_0_0_sim_netlist.v
// Design      : soc_completeClock_myip_stopwatch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
   (AR,
    E,
    run_reg,
    ff_old_reg_0,
    ff_old_reg_1,
    ff_old_reg_2,
    \slv_reg0_reg[2] ,
    \slv_reg0_reg[2]_0 ,
    run_reg_0,
    run_reg_1,
    run_reg_2,
    D,
    \lap_min_reg[3] ,
    \lap_sec_reg[3] ,
    \lap_csec_reg[5] ,
    run_reg_3,
    Q,
    s00_axi_aclk,
    run,
    CO,
    \lap_sec_reg[0] ,
    \lap_min_reg[0] ,
    sign_flag_reg,
    sign_flag_reg_0,
    \min_reg[0] ,
    \min_reg[0]_0 ,
    \min_reg[0]_1 ,
    \cnt_sysclk2_reg[0] ,
    cnt_sysclk20,
    data3,
    \lap_min_reg[5] ,
    \lap_sec_reg[5] ,
    \lap_csec_reg[5]_0 ,
    \lap_csec_reg[6] ,
    s00_axi_aresetn,
    data1);
  output [0:0]AR;
  output [0:0]E;
  output [0:0]run_reg;
  output [0:0]ff_old_reg_0;
  output [0:0]ff_old_reg_1;
  output [0:0]ff_old_reg_2;
  output [0:0]\slv_reg0_reg[2] ;
  output [0:0]\slv_reg0_reg[2]_0 ;
  output [0:0]run_reg_0;
  output [0:0]run_reg_1;
  output [0:0]run_reg_2;
  output [31:0]D;
  output [5:0]\lap_min_reg[3] ;
  output [5:0]\lap_sec_reg[3] ;
  output [6:0]\lap_csec_reg[5] ;
  output run_reg_3;
  input [1:0]Q;
  input s00_axi_aclk;
  input run;
  input [0:0]CO;
  input \lap_sec_reg[0] ;
  input \lap_min_reg[0] ;
  input sign_flag_reg;
  input sign_flag_reg_0;
  input \min_reg[0] ;
  input [0:0]\min_reg[0]_0 ;
  input \min_reg[0]_1 ;
  input [0:0]\cnt_sysclk2_reg[0] ;
  input [30:0]cnt_sysclk20;
  input [18:0]data3;
  input \lap_min_reg[5] ;
  input \lap_sec_reg[5] ;
  input \lap_csec_reg[5]_0 ;
  input \lap_csec_reg[6] ;
  input s00_axi_aresetn;
  input [0:0]data1;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [30:0]cnt_sysclk20;
  wire [0:0]\cnt_sysclk2_reg[0] ;
  wire [0:0]data1;
  wire [18:0]data3;
  wire [0:0]ff_old_reg_0;
  wire [0:0]ff_old_reg_1;
  wire [0:0]ff_old_reg_2;
  wire \lap_csec[6]_i_4_n_0 ;
  wire [6:0]\lap_csec_reg[5] ;
  wire \lap_csec_reg[5]_0 ;
  wire \lap_csec_reg[6] ;
  wire \lap_min[5]_i_4_n_0 ;
  wire \lap_min[5]_i_5_n_0 ;
  wire \lap_min_reg[0] ;
  wire [5:0]\lap_min_reg[3] ;
  wire \lap_min_reg[5] ;
  wire \lap_sec[5]_i_4_n_0 ;
  wire \lap_sec[5]_i_6_n_0 ;
  wire \lap_sec_reg[0] ;
  wire [5:0]\lap_sec_reg[3] ;
  wire \lap_sec_reg[5] ;
  wire \min_reg[0] ;
  wire [0:0]\min_reg[0]_0 ;
  wire \min_reg[0]_1 ;
  wire [1:0]p_0_in;
  wire run;
  wire [0:0]run_reg;
  wire [0:0]run_reg_0;
  wire [0:0]run_reg_1;
  wire [0:0]run_reg_2;
  wire run_reg_3;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sign_flag_reg;
  wire sign_flag_reg_0;
  wire [0:0]\slv_reg0_reg[2] ;
  wire [0:0]\slv_reg0_reg[2]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \cap_min[5]_i_1 
       (.I0(Q[1]),
        .I1(run),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg0_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \cnt_sysclk1[31]_i_1 
       (.I0(run),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(run_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004044)) 
    \cnt_sysclk2[0]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\cnt_sysclk2_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[10]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[9]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[11]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[10]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[12]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[11]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[13]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[12]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[14]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[13]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[15]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[14]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[16]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[15]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[17]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[16]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[18]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[17]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[19]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[18]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[1]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[20]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[19]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[21]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[20]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[22]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[21]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[23]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[22]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[24]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[23]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[25]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[24]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[26]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[25]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[27]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[26]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[28]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[27]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[29]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[28]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[2]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[30]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[29]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB44)) 
    \cnt_sysclk2[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q[1]),
        .I3(run),
        .O(E));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[31]_i_2 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[30]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[3]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[4]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[5]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[4]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[6]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[5]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[7]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[6]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[8]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[7]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[9]_i_1 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[8]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \csec[6]_i_1 
       (.I0(\min_reg[0]_0 ),
        .I1(run),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(run_reg_2));
  LUT6 #(
    .INIT(64'h00000000E0FF0000)) 
    \diff_csec[7]_i_1 
       (.I0(sign_flag_reg),
        .I1(sign_flag_reg_0),
        .I2(Q[1]),
        .I3(run),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg0_reg[2]_0 ));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_csec[0]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(data3[0]),
        .O(\lap_csec_reg[5] [0]));
  LUT3 #(
    .INIT(8'h28)) 
    \lap_csec[1]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(data3[0]),
        .I2(data3[1]),
        .O(\lap_csec_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_csec[2]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(data3[0]),
        .I2(data3[1]),
        .I3(data3[2]),
        .O(\lap_csec_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_csec[3]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(data3[1]),
        .I2(data3[0]),
        .I3(data3[2]),
        .I4(data3[3]),
        .O(\lap_csec_reg[5] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_csec[4]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(data3[2]),
        .I2(data3[0]),
        .I3(data3[1]),
        .I4(data3[3]),
        .I5(data3[4]),
        .O(\lap_csec_reg[5] [4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_csec[5]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(data3[3]),
        .I2(\lap_csec_reg[5]_0 ),
        .I3(data3[2]),
        .I4(data3[4]),
        .I5(data3[5]),
        .O(\lap_csec_reg[5] [5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBA308A30)) 
    \lap_csec[6]_i_1 
       (.I0(CO),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(run),
        .I4(Q[1]),
        .O(ff_old_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \lap_csec[6]_i_2 
       (.I0(data3[5]),
        .I1(\lap_csec_reg[6] ),
        .I2(\lap_csec[6]_i_4_n_0 ),
        .I3(data3[6]),
        .O(\lap_csec_reg[5] [6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \lap_csec[6]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(run),
        .I3(\lap_sec_reg[0] ),
        .O(\lap_csec[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    lap_flag_i_1
       (.I0(run),
        .I1(Q[1]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(data1),
        .O(run_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_min[0]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(data3[13]),
        .O(\lap_min_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_min[1]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(data3[13]),
        .I2(data3[14]),
        .O(\lap_min_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_min[2]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(data3[13]),
        .I2(data3[14]),
        .I3(data3[15]),
        .O(\lap_min_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_min[3]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(data3[14]),
        .I2(data3[13]),
        .I3(data3[15]),
        .I4(data3[16]),
        .O(\lap_min_reg[3] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_min[4]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(data3[15]),
        .I2(data3[13]),
        .I3(data3[14]),
        .I4(data3[16]),
        .I5(data3[17]),
        .O(\lap_min_reg[3] [4]));
  LUT6 #(
    .INIT(64'h8F888F8888888F88)) 
    \lap_min[5]_i_1 
       (.I0(\lap_min_reg[0] ),
        .I1(\lap_min[5]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(run),
        .I5(Q[1]),
        .O(ff_old_reg_2));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_min[5]_i_2 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(data3[16]),
        .I2(\lap_min_reg[5] ),
        .I3(data3[15]),
        .I4(data3[17]),
        .I5(data3[18]),
        .O(\lap_min_reg[3] [5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \lap_min[5]_i_4 
       (.I0(CO),
        .I1(run),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\lap_sec_reg[0] ),
        .O(\lap_min[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \lap_min[5]_i_5 
       (.I0(\lap_sec[5]_i_6_n_0 ),
        .I1(\lap_min_reg[5] ),
        .I2(data3[15]),
        .I3(data3[18]),
        .I4(data3[16]),
        .I5(data3[17]),
        .O(\lap_min[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_sec[0]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(data3[7]),
        .O(\lap_sec_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_sec[1]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(data3[8]),
        .I2(data3[7]),
        .O(\lap_sec_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_sec[2]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(data3[7]),
        .I2(data3[8]),
        .I3(data3[9]),
        .O(\lap_sec_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_sec[3]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(data3[8]),
        .I2(data3[7]),
        .I3(data3[9]),
        .I4(data3[10]),
        .O(\lap_sec_reg[3] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_sec[4]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(data3[9]),
        .I2(data3[7]),
        .I3(data3[8]),
        .I4(data3[10]),
        .I5(data3[11]),
        .O(\lap_sec_reg[3] [4]));
  LUT6 #(
    .INIT(64'h8F880F0080880F00)) 
    \lap_sec[5]_i_1 
       (.I0(\lap_sec_reg[0] ),
        .I1(CO),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(run),
        .I5(Q[1]),
        .O(ff_old_reg_1));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_sec[5]_i_2 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(data3[10]),
        .I2(\lap_sec_reg[5] ),
        .I3(data3[9]),
        .I4(data3[11]),
        .I5(data3[12]),
        .O(\lap_sec_reg[3] [5]));
  LUT6 #(
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \lap_sec[5]_i_4 
       (.I0(\lap_sec[5]_i_6_n_0 ),
        .I1(\lap_sec_reg[5] ),
        .I2(data3[9]),
        .I3(data3[12]),
        .I4(data3[10]),
        .I5(data3[11]),
        .O(\lap_sec[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_sec[5]_i_6 
       (.I0(run),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\lap_sec[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000800080FF8000)) 
    \min[5]_i_1 
       (.I0(\min_reg[0] ),
        .I1(\min_reg[0]_0 ),
        .I2(\min_reg[0]_1 ),
        .I3(run),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(run_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80808F80)) 
    \sec[5]_i_1 
       (.I0(\min_reg[0]_1 ),
        .I1(\min_reg[0]_0 ),
        .I2(run),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(run_reg_1));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
   (ff_old_reg_0,
    Q,
    s00_axi_aclk,
    AR,
    run);
  output ff_old_reg_0;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]AR;
  input run;

  wire [0:0]AR;
  wire [0:0]Q;
  wire ff_old_reg_0;
  wire [1:0]p_0_in;
  wire run;
  wire s00_axi_aclk;

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
    .INIT(8'hB4)) 
    run_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(run),
        .O(ff_old_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
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
  output s00_axi_bvalid;
  output s00_axi_wready;
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
  output s00_axi_bvalid;
  output s00_axi_wready;
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
  wire cp;
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
  wire [2:0]sel0;
  wire [2:2]slv_reg0;
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
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
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
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
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
        .R(stop_watch_inst_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
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
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(stop_watch_inst_n_0));
  LUT6 #(
    .INIT(64'hF0CC0000000000AA)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(slv_reg6[24]),
        .I2(slv_reg7[24]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hF0CC0000000000AA)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(slv_reg6[25]),
        .I2(slv_reg7[25]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hF0CC0000000000AA)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(slv_reg6[26]),
        .I2(slv_reg7[26]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hF0CC0000000000AA)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(slv_reg6[27]),
        .I2(slv_reg7[27]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hF0CC0000000000AA)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(slv_reg6[28]),
        .I2(slv_reg7[28]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hF0CC0000000000AA)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(slv_reg6[29]),
        .I2(slv_reg7[29]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hF0CC0000000000AA)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(slv_reg6[30]),
        .I2(slv_reg7[30]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hF0CC0000000000AA)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(slv_reg6[31]),
        .I2(slv_reg7[31]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
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
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
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
        .Q(cp),
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
        .Q(slv_reg0),
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
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
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
       (.Q({\slv_reg0_reg_n_0_[23] ,\slv_reg0_reg_n_0_[22] ,\slv_reg0_reg_n_0_[21] ,\slv_reg0_reg_n_0_[20] ,\slv_reg0_reg_n_0_[19] ,\slv_reg0_reg_n_0_[18] ,\slv_reg0_reg_n_0_[17] ,\slv_reg0_reg_n_0_[16] ,\slv_reg0_reg_n_0_[15] ,\slv_reg0_reg_n_0_[14] ,\slv_reg0_reg_n_0_[13] ,\slv_reg0_reg_n_0_[12] ,\slv_reg0_reg_n_0_[11] ,\slv_reg0_reg_n_0_[10] ,\slv_reg0_reg_n_0_[9] ,\slv_reg0_reg_n_0_[8] ,\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,slv_reg0,cp,\slv_reg0_reg_n_0_[0] }),
        .SR(stop_watch_inst_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata(s00_axi_rdata[23:0]),
        .\s00_axi_rdata[23] (slv_reg7[23:0]),
        .\s00_axi_rdata[23]_0 (slv_reg6[23:0]),
        .sel0(sel0));
endmodule

(* CHECK_LICENSE_TYPE = "soc_completeClock_myip_stopwatch_0_0,myip_stopwatch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_stopwatch,Vivado 2024.2" *) 
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
   (SR,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    sel0,
    \s00_axi_rdata[23] ,
    \s00_axi_rdata[23]_0 ,
    s00_axi_aresetn);
  output [0:0]SR;
  output [23:0]s00_axi_rdata;
  input [23:0]Q;
  input s00_axi_aclk;
  input [2:0]sel0;
  input [23:0]\s00_axi_rdata[23] ;
  input [23:0]\s00_axi_rdata[23]_0 ;
  input s00_axi_aresetn;

  wire [23:0]Q;
  wire [0:0]SR;
  wire \_inferred__11/i__carry__0_n_1 ;
  wire \_inferred__11/i__carry__0_n_2 ;
  wire \_inferred__11/i__carry__0_n_3 ;
  wire \_inferred__11/i__carry_n_0 ;
  wire \_inferred__11/i__carry_n_1 ;
  wire \_inferred__11/i__carry_n_2 ;
  wire \_inferred__11/i__carry_n_3 ;
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
  wire \cnt_sysclk1[19]_i_1_n_0 ;
  wire \cnt_sysclk1[1]_i_1_n_0 ;
  wire \cnt_sysclk1[20]_i_1_n_0 ;
  wire \cnt_sysclk1[21]_i_1_n_0 ;
  wire \cnt_sysclk1[22]_i_1_n_0 ;
  wire \cnt_sysclk1[23]_i_1_n_0 ;
  wire \cnt_sysclk1[24]_i_1_n_0 ;
  wire \cnt_sysclk1[25]_i_1_n_0 ;
  wire \cnt_sysclk1[26]_i_1_n_0 ;
  wire \cnt_sysclk1[27]_i_1_n_0 ;
  wire \cnt_sysclk1[28]_i_1_n_0 ;
  wire \cnt_sysclk1[29]_i_1_n_0 ;
  wire \cnt_sysclk1[2]_i_1_n_0 ;
  wire \cnt_sysclk1[30]_i_1_n_0 ;
  wire \cnt_sysclk1[31]_i_2_n_0 ;
  wire \cnt_sysclk1[3]_i_1_n_0 ;
  wire \cnt_sysclk1[4]_i_1_n_0 ;
  wire \cnt_sysclk1[5]_i_1_n_0 ;
  wire \cnt_sysclk1[6]_i_1_n_0 ;
  wire \cnt_sysclk1[7]_i_1_n_0 ;
  wire \cnt_sysclk1[8]_i_1_n_0 ;
  wire \cnt_sysclk1[9]_i_1_n_0 ;
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
  wire [2:1]data1;
  wire [21:0]data2;
  wire [21:0]data3;
  wire [21:0]data4;
  wire [23:0]data5;
  wire [7:0]diff_csec0;
  wire [6:1]diff_csec01_in;
  wire [7:0]diff_csec03_in;
  wire [6:1]diff_csec04_in;
  wire diff_csec0_carry__0_i_1_n_0;
  wire diff_csec0_carry__0_i_2_n_0;
  wire diff_csec0_carry__0_i_3_n_0;
  wire diff_csec0_carry__0_i_4_n_0;
  wire diff_csec0_carry__0_i_5_n_0;
  wire diff_csec0_carry__0_i_6_n_0;
  wire diff_csec0_carry__0_i_7_n_0;
  wire diff_csec0_carry__0_n_1;
  wire diff_csec0_carry__0_n_2;
  wire diff_csec0_carry__0_n_3;
  wire diff_csec0_carry_i_1_n_0;
  wire diff_csec0_carry_i_2_n_0;
  wire diff_csec0_carry_i_3_n_0;
  wire diff_csec0_carry_i_4_n_0;
  wire diff_csec0_carry_i_5_n_0;
  wire diff_csec0_carry_n_0;
  wire diff_csec0_carry_n_1;
  wire diff_csec0_carry_n_2;
  wire diff_csec0_carry_n_3;
  wire \diff_csec0_inferred__0/i__carry__0_n_0 ;
  wire \diff_csec0_inferred__0/i__carry__0_n_2 ;
  wire \diff_csec0_inferred__0/i__carry__0_n_3 ;
  wire \diff_csec0_inferred__0/i__carry_n_0 ;
  wire \diff_csec0_inferred__0/i__carry_n_1 ;
  wire \diff_csec0_inferred__0/i__carry_n_2 ;
  wire \diff_csec0_inferred__0/i__carry_n_3 ;
  wire \diff_csec0_inferred__1/i__carry__0_n_1 ;
  wire \diff_csec0_inferred__1/i__carry__0_n_2 ;
  wire \diff_csec0_inferred__1/i__carry__0_n_3 ;
  wire \diff_csec0_inferred__1/i__carry_n_0 ;
  wire \diff_csec0_inferred__1/i__carry_n_1 ;
  wire \diff_csec0_inferred__1/i__carry_n_2 ;
  wire \diff_csec0_inferred__1/i__carry_n_3 ;
  wire \diff_csec0_inferred__2/i__carry__0_n_0 ;
  wire \diff_csec0_inferred__2/i__carry__0_n_2 ;
  wire \diff_csec0_inferred__2/i__carry__0_n_3 ;
  wire \diff_csec0_inferred__2/i__carry_n_0 ;
  wire \diff_csec0_inferred__2/i__carry_n_1 ;
  wire \diff_csec0_inferred__2/i__carry_n_2 ;
  wire \diff_csec0_inferred__2/i__carry_n_3 ;
  wire \diff_csec[0]_i_1_n_0 ;
  wire \diff_csec[0]_i_2_n_0 ;
  wire \diff_csec[0]_i_3_n_0 ;
  wire \diff_csec[1]_i_1_n_0 ;
  wire \diff_csec[1]_i_2_n_0 ;
  wire \diff_csec[2]_i_1_n_0 ;
  wire \diff_csec[2]_i_2_n_0 ;
  wire \diff_csec[3]_i_1_n_0 ;
  wire \diff_csec[3]_i_2_n_0 ;
  wire \diff_csec[4]_i_1_n_0 ;
  wire \diff_csec[4]_i_2_n_0 ;
  wire \diff_csec[5]_i_1_n_0 ;
  wire \diff_csec[5]_i_2_n_0 ;
  wire \diff_csec[6]_i_1_n_0 ;
  wire \diff_csec[6]_i_2_n_0 ;
  wire \diff_csec[7]_i_2_n_0 ;
  wire \diff_csec[7]_i_3_n_0 ;
  wire \diff_csec[7]_i_4_n_0 ;
  wire \diff_csec[7]_i_5_n_0 ;
  wire [7:0]diff_min;
  wire diff_min1_carry_i_1_n_0;
  wire diff_min1_carry_i_2_n_0;
  wire diff_min1_carry_i_3_n_0;
  wire diff_min1_carry_i_4_n_0;
  wire diff_min1_carry_i_5_n_0;
  wire diff_min1_carry_i_6_n_0;
  wire diff_min1_carry_n_1;
  wire diff_min1_carry_n_2;
  wire diff_min1_carry_n_3;
  wire \diff_min1_inferred__0/i__carry_n_0 ;
  wire \diff_min1_inferred__0/i__carry_n_1 ;
  wire \diff_min1_inferred__0/i__carry_n_2 ;
  wire \diff_min1_inferred__0/i__carry_n_3 ;
  wire \diff_min1_inferred__1/i__carry_n_1 ;
  wire \diff_min1_inferred__1/i__carry_n_2 ;
  wire \diff_min1_inferred__1/i__carry_n_3 ;
  wire \diff_min[0]_i_1_n_0 ;
  wire \diff_min[1]_i_1_n_0 ;
  wire \diff_min[2]_i_1_n_0 ;
  wire \diff_min[3]_i_1_n_0 ;
  wire \diff_min[4]_i_1_n_0 ;
  wire \diff_min[5]_i_1_n_0 ;
  wire \diff_min[6]_i_1_n_0 ;
  wire \diff_min[7]_i_1_n_0 ;
  wire [6:1]diff_sec0;
  wire [6:1]diff_sec010_in;
  wire [5:1]diff_sec011_in;
  wire [5:0]diff_sec01_in;
  wire [6:1]diff_sec03_in;
  wire [5:0]diff_sec04_in;
  wire [6:1]diff_sec07_in;
  wire [5:1]diff_sec08_in;
  wire diff_sec0_carry__0_i_1_n_0;
  wire diff_sec0_carry__0_i_2_n_0;
  wire diff_sec0_carry__0_i_3_n_0;
  wire diff_sec0_carry__0_i_4_n_0;
  wire diff_sec0_carry__0_i_5_n_0;
  wire diff_sec0_carry__0_i_6_n_0;
  wire diff_sec0_carry__0_n_0;
  wire diff_sec0_carry__0_n_2;
  wire diff_sec0_carry__0_n_3;
  wire diff_sec0_carry_i_1_n_0;
  wire diff_sec0_carry_i_2_n_0;
  wire diff_sec0_carry_i_3_n_0;
  wire diff_sec0_carry_i_4_n_0;
  wire diff_sec0_carry_i_5_n_0;
  wire diff_sec0_carry_n_0;
  wire diff_sec0_carry_n_1;
  wire diff_sec0_carry_n_2;
  wire diff_sec0_carry_n_3;
  wire \diff_sec0_inferred__0/i__carry__0_n_1 ;
  wire \diff_sec0_inferred__0/i__carry__0_n_3 ;
  wire \diff_sec0_inferred__0/i__carry_n_0 ;
  wire \diff_sec0_inferred__0/i__carry_n_1 ;
  wire \diff_sec0_inferred__0/i__carry_n_2 ;
  wire \diff_sec0_inferred__0/i__carry_n_3 ;
  wire \diff_sec0_inferred__1/i__carry__0_n_0 ;
  wire \diff_sec0_inferred__1/i__carry__0_n_2 ;
  wire \diff_sec0_inferred__1/i__carry__0_n_3 ;
  wire \diff_sec0_inferred__1/i__carry_n_0 ;
  wire \diff_sec0_inferred__1/i__carry_n_1 ;
  wire \diff_sec0_inferred__1/i__carry_n_2 ;
  wire \diff_sec0_inferred__1/i__carry_n_3 ;
  wire \diff_sec0_inferred__2/i__carry__0_n_1 ;
  wire \diff_sec0_inferred__2/i__carry__0_n_3 ;
  wire \diff_sec0_inferred__2/i__carry_n_0 ;
  wire \diff_sec0_inferred__2/i__carry_n_1 ;
  wire \diff_sec0_inferred__2/i__carry_n_2 ;
  wire \diff_sec0_inferred__2/i__carry_n_3 ;
  wire \diff_sec0_inferred__3/i__carry__0_n_0 ;
  wire \diff_sec0_inferred__3/i__carry__0_n_2 ;
  wire \diff_sec0_inferred__3/i__carry__0_n_3 ;
  wire \diff_sec0_inferred__3/i__carry_n_0 ;
  wire \diff_sec0_inferred__3/i__carry_n_1 ;
  wire \diff_sec0_inferred__3/i__carry_n_2 ;
  wire \diff_sec0_inferred__3/i__carry_n_3 ;
  wire \diff_sec0_inferred__4/i__carry__0_n_1 ;
  wire \diff_sec0_inferred__4/i__carry__0_n_3 ;
  wire \diff_sec0_inferred__4/i__carry_n_0 ;
  wire \diff_sec0_inferred__4/i__carry_n_1 ;
  wire \diff_sec0_inferred__4/i__carry_n_2 ;
  wire \diff_sec0_inferred__4/i__carry_n_3 ;
  wire \diff_sec0_inferred__5/i__carry__0_n_0 ;
  wire \diff_sec0_inferred__5/i__carry__0_n_2 ;
  wire \diff_sec0_inferred__5/i__carry__0_n_3 ;
  wire \diff_sec0_inferred__5/i__carry_n_0 ;
  wire \diff_sec0_inferred__5/i__carry_n_1 ;
  wire \diff_sec0_inferred__5/i__carry_n_2 ;
  wire \diff_sec0_inferred__5/i__carry_n_3 ;
  wire \diff_sec0_inferred__6/i__carry__0_n_1 ;
  wire \diff_sec0_inferred__6/i__carry__0_n_3 ;
  wire \diff_sec0_inferred__6/i__carry_n_0 ;
  wire \diff_sec0_inferred__6/i__carry_n_1 ;
  wire \diff_sec0_inferred__6/i__carry_n_2 ;
  wire \diff_sec0_inferred__6/i__carry_n_3 ;
  wire \diff_sec[0]_i_1_n_0 ;
  wire \diff_sec[0]_i_2_n_0 ;
  wire \diff_sec[0]_i_3_n_0 ;
  wire \diff_sec[1]_i_1_n_0 ;
  wire \diff_sec[1]_i_2_n_0 ;
  wire \diff_sec[1]_i_3_n_0 ;
  wire \diff_sec[1]_i_4_n_0 ;
  wire \diff_sec[1]_i_5_n_0 ;
  wire \diff_sec[2]_i_1_n_0 ;
  wire \diff_sec[2]_i_2_n_0 ;
  wire \diff_sec[2]_i_3_n_0 ;
  wire \diff_sec[2]_i_4_n_0 ;
  wire \diff_sec[2]_i_5_n_0 ;
  wire \diff_sec[3]_i_1_n_0 ;
  wire \diff_sec[3]_i_2_n_0 ;
  wire \diff_sec[3]_i_3_n_0 ;
  wire \diff_sec[3]_i_4_n_0 ;
  wire \diff_sec[3]_i_5_n_0 ;
  wire \diff_sec[4]_i_1_n_0 ;
  wire \diff_sec[4]_i_2_n_0 ;
  wire \diff_sec[4]_i_3_n_0 ;
  wire \diff_sec[4]_i_4_n_0 ;
  wire \diff_sec[4]_i_5_n_0 ;
  wire \diff_sec[5]_i_1_n_0 ;
  wire \diff_sec[5]_i_2_n_0 ;
  wire \diff_sec[5]_i_3_n_0 ;
  wire \diff_sec[5]_i_4_n_0 ;
  wire \diff_sec[5]_i_5_n_0 ;
  wire \diff_sec[6]_i_1_n_0 ;
  wire \diff_sec[6]_i_2_n_0 ;
  wire \diff_sec[6]_i_3_n_0 ;
  wire \diff_sec[6]_i_4_n_0 ;
  wire \diff_sec[6]_i_5_n_0 ;
  wire \diff_sec[7]_i_1_n_0 ;
  wire \diff_sec[7]_i_2_n_0 ;
  wire \diff_sec[7]_i_3_n_0 ;
  wire \diff_sec[7]_i_4_n_0 ;
  wire \diff_sec[7]_i_5_n_0 ;
  wire ed_clear_n_1;
  wire ed_clear_n_10;
  wire ed_clear_n_2;
  wire ed_clear_n_3;
  wire ed_clear_n_4;
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
  wire ed_clear_n_52;
  wire ed_clear_n_53;
  wire ed_clear_n_54;
  wire ed_clear_n_55;
  wire ed_clear_n_56;
  wire ed_clear_n_57;
  wire ed_clear_n_58;
  wire ed_clear_n_59;
  wire ed_clear_n_60;
  wire ed_clear_n_61;
  wire ed_clear_n_62;
  wire ed_clear_n_7;
  wire ed_clear_n_8;
  wire ed_clear_n_9;
  wire ed_start_n_0;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_15_n_0;
  wire i__carry__0_i_16_n_0;
  wire i__carry__0_i_17_n_0;
  wire i__carry__0_i_18_n_0;
  wire i__carry__0_i_19_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire i__carry__0_i_1__6_n_0;
  wire i__carry__0_i_1__7_n_0;
  wire i__carry__0_i_1__8_n_0;
  wire i__carry__0_i_1__9_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_2__6_n_0;
  wire i__carry__0_i_2__7_n_0;
  wire i__carry__0_i_2__8_n_0;
  wire i__carry__0_i_2__9_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_3__4_n_0;
  wire i__carry__0_i_3__5_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5__2_n_0;
  wire i__carry__0_i_5__3_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6__2_n_0;
  wire i__carry__0_i_6__3_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_1;
  wire i__carry__0_i_8_n_2;
  wire i__carry__0_i_8_n_3;
  wire i__carry__0_i_8_n_4;
  wire i__carry__0_i_8_n_5;
  wire i__carry__0_i_8_n_6;
  wire i__carry__0_i_8_n_7;
  wire i__carry__0_i_9_n_1;
  wire i__carry__0_i_9_n_2;
  wire i__carry__0_i_9_n_3;
  wire i__carry__0_i_9_n_4;
  wire i__carry__0_i_9_n_5;
  wire i__carry__0_i_9_n_6;
  wire i__carry__0_i_9_n_7;
  wire i__carry_i_10_n_0;
  wire i__carry_i_10_n_1;
  wire i__carry_i_10_n_2;
  wire i__carry_i_10_n_3;
  wire i__carry_i_10_n_4;
  wire i__carry_i_10_n_5;
  wire i__carry_i_10_n_6;
  wire i__carry_i_10_n_7;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__10_n_0;
  wire i__carry_i_1__11_n_0;
  wire i__carry_i_1__12_n_0;
  wire i__carry_i_1__13_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1__9_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__10_n_0;
  wire i__carry_i_2__11_n_0;
  wire i__carry_i_2__12_n_0;
  wire i__carry_i_2__13_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_2__8_n_0;
  wire i__carry_i_2__9_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__10_n_0;
  wire i__carry_i_3__11_n_0;
  wire i__carry_i_3__12_n_0;
  wire i__carry_i_3__13_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_3__8_n_0;
  wire i__carry_i_3__9_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__10_n_0;
  wire i__carry_i_4__11_n_0;
  wire i__carry_i_4__12_n_0;
  wire i__carry_i_4__13_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4__6_n_0;
  wire i__carry_i_4__7_n_0;
  wire i__carry_i_4__8_n_0;
  wire i__carry_i_4__9_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5__3_n_0;
  wire i__carry_i_5__4_n_0;
  wire i__carry_i_5__5_n_0;
  wire i__carry_i_5__6_n_0;
  wire i__carry_i_5__7_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6__3_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire i__carry_i_9_n_1;
  wire i__carry_i_9_n_2;
  wire i__carry_i_9_n_3;
  wire i__carry_i_9_n_4;
  wire i__carry_i_9_n_5;
  wire i__carry_i_9_n_6;
  wire i__carry_i_9_n_7;
  wire \lap_csec[5]_i_2_n_0 ;
  wire \lap_csec[6]_i_3_n_0 ;
  wire lap_min1_carry__0_i_1_n_0;
  wire lap_min1_carry__0_i_2_n_0;
  wire lap_min1_carry__0_i_3_n_0;
  wire lap_min1_carry__0_i_4_n_0;
  wire lap_min1_carry__0_i_5_n_0;
  wire lap_min1_carry__0_i_6_n_0;
  wire lap_min1_carry__0_n_0;
  wire lap_min1_carry__0_n_1;
  wire lap_min1_carry__0_n_2;
  wire lap_min1_carry__0_n_3;
  wire lap_min1_carry__1_i_1_n_0;
  wire lap_min1_carry__1_i_2_n_0;
  wire lap_min1_carry__1_i_3_n_0;
  wire lap_min1_carry__1_i_4_n_0;
  wire lap_min1_carry__1_i_5_n_0;
  wire lap_min1_carry__1_i_6_n_0;
  wire lap_min1_carry__1_i_7_n_0;
  wire lap_min1_carry__1_n_0;
  wire lap_min1_carry__1_n_1;
  wire lap_min1_carry__1_n_2;
  wire lap_min1_carry__1_n_3;
  wire lap_min1_carry__2_i_1_n_0;
  wire lap_min1_carry__2_i_2_n_0;
  wire lap_min1_carry__2_i_3_n_0;
  wire lap_min1_carry__2_i_4_n_0;
  wire lap_min1_carry__2_i_5_n_0;
  wire lap_min1_carry__2_i_6_n_0;
  wire lap_min1_carry__2_n_1;
  wire lap_min1_carry__2_n_2;
  wire lap_min1_carry__2_n_3;
  wire lap_min1_carry_i_1_n_0;
  wire lap_min1_carry_i_2_n_0;
  wire lap_min1_carry_i_3_n_0;
  wire lap_min1_carry_i_4_n_0;
  wire lap_min1_carry_i_5_n_0;
  wire lap_min1_carry_i_6_n_0;
  wire lap_min1_carry_i_7_n_0;
  wire lap_min1_carry_n_0;
  wire lap_min1_carry_n_1;
  wire lap_min1_carry_n_2;
  wire lap_min1_carry_n_3;
  wire \lap_min[5]_i_3_n_0 ;
  wire \lap_min[5]_i_6_n_0 ;
  wire \lap_sec[5]_i_3_n_0 ;
  wire \lap_sec[5]_i_5_n_0 ;
  wire \min[0]_i_1_n_0 ;
  wire \min[1]_i_1_n_0 ;
  wire \min[2]_i_1_n_0 ;
  wire \min[3]_i_1_n_0 ;
  wire \min[4]_i_1_n_0 ;
  wire \min[4]_i_2_n_0 ;
  wire \min[5]_i_2_n_0 ;
  wire \min[5]_i_3_n_0 ;
  wire \min[5]_i_4_n_0 ;
  wire [31:0]p_1_in;
  wire p_2_in;
  wire p_6_in;
  wire p_9_in;
  wire prev_csec;
  wire [6:0]prev_csec0_in;
  wire [5:0]prev_min;
  wire [5:0]prev_sec;
  wire ptmp_min1_carry_i_2_n_0;
  wire ptmp_min1_carry_i_3_n_0;
  wire ptmp_min1_carry_i_4_n_0;
  wire ptmp_min1_carry_i_5_n_0;
  wire ptmp_min1_carry_i_6_n_0;
  wire ptmp_min1_carry_i_7_n_0;
  wire ptmp_min1_carry_i_8_n_0;
  wire ptmp_min1_carry_i_9_n_0;
  wire ptmp_min1_carry_n_0;
  wire ptmp_min1_carry_n_1;
  wire ptmp_min1_carry_n_2;
  wire ptmp_min1_carry_n_3;
  wire \ptmp_min1_inferred__0/i__carry_n_1 ;
  wire \ptmp_min1_inferred__0/i__carry_n_2 ;
  wire \ptmp_min1_inferred__0/i__carry_n_3 ;
  wire [7:7]ptmp_min2;
  wire run;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [23:0]s00_axi_rdata;
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
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
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
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire [23:0]\s00_axi_rdata[23] ;
  wire [23:0]\s00_axi_rdata[23]_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
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
  wire \sec[0]_i_1_n_0 ;
  wire \sec[1]_i_1_n_0 ;
  wire \sec[2]_i_1_n_0 ;
  wire \sec[3]_i_1_n_0 ;
  wire \sec[4]_i_1_n_0 ;
  wire \sec[4]_i_2_n_0 ;
  wire \sec[5]_i_2_n_0 ;
  wire \sec[5]_i_3_n_0 ;
  wire \sec[5]_i_4_n_0 ;
  wire [2:0]sel0;
  wire sign_flag0_out;
  wire tmp_min1_carry_i_2_n_0;
  wire tmp_min1_carry_i_3_n_0;
  wire tmp_min1_carry_i_4_n_0;
  wire tmp_min1_carry_i_5_n_0;
  wire tmp_min1_carry_i_6_n_0;
  wire tmp_min1_carry_i_7_n_0;
  wire tmp_min1_carry_i_8_n_0;
  wire tmp_min1_carry_i_9_n_0;
  wire tmp_min1_carry_n_1;
  wire tmp_min1_carry_n_2;
  wire tmp_min1_carry_n_3;
  wire \tmp_min1_inferred__0/i__carry_n_2 ;
  wire \tmp_min1_inferred__0/i__carry_n_3 ;
  wire [7:7]tmp_min2;
  wire [3:3]\NLW__inferred__11/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]NLW_cnt_sysclk10_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk10_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk11_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_cnt_sysclk20_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk20_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_diff_csec0_carry__0_CO_UNCONNECTED;
  wire [0:0]\NLW_diff_csec0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [2:2]\NLW_diff_csec0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_csec0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_diff_csec0_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [2:2]\NLW_diff_csec0_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_csec0_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_diff_min1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_diff_min1_carry_O_UNCONNECTED;
  wire [3:0]\NLW_diff_min1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_diff_min1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [2:2]NLW_diff_sec0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_diff_sec0_carry__0_O_UNCONNECTED;
  wire [0:0]\NLW_diff_sec0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_sec0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [2:2]\NLW_diff_sec0_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_sec0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_sec0_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec0_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_sec0_inferred__3/i__carry_O_UNCONNECTED ;
  wire [2:2]\NLW_diff_sec0_inferred__3/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec0_inferred__3/i__carry__0_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_sec0_inferred__4/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_sec0_inferred__4/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec0_inferred__4/i__carry__0_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_sec0_inferred__5/i__carry_O_UNCONNECTED ;
  wire [2:2]\NLW_diff_sec0_inferred__5/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec0_inferred__5/i__carry__0_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_sec0_inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_sec0_inferred__6/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec0_inferred__6/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_i__carry__0_i_8_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__0_i_9_CO_UNCONNECTED;
  wire [3:0]NLW_lap_min1_carry_O_UNCONNECTED;
  wire [3:0]NLW_lap_min1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_lap_min1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_lap_min1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_lap_min1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ptmp_min1_carry_O_UNCONNECTED;
  wire [3:3]\NLW_ptmp_min1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_ptmp_min1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_tmp_min1_carry_O_UNCONNECTED;
  wire [3:3]\NLW_tmp_min1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_min1_inferred__0/i__carry_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__11/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__11/i__carry_n_0 ,\_inferred__11/i__carry_n_1 ,\_inferred__11/i__carry_n_2 ,\_inferred__11/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}),
        .O(diff_min[3:0]),
        .S({i__carry_i_5__4_n_0,i__carry_i_6__3_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__11/i__carry__0 
       (.CI(\_inferred__11/i__carry_n_0 ),
        .CO({\NLW__inferred__11/i__carry__0_CO_UNCONNECTED [3],\_inferred__11/i__carry__0_n_1 ,\_inferred__11/i__carry__0_n_2 ,\_inferred__11/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0}),
        .O(diff_min[7:4]),
        .S({i__carry__0_i_4__2_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_csec[0]_i_1 
       (.I0(run),
        .I1(data3[0]),
        .O(prev_csec0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_csec[1]_i_1 
       (.I0(run),
        .I1(data3[1]),
        .O(prev_csec0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_csec[2]_i_1 
       (.I0(run),
        .I1(data3[2]),
        .O(prev_csec0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_csec[3]_i_1 
       (.I0(run),
        .I1(data3[3]),
        .O(prev_csec0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_csec[4]_i_1 
       (.I0(run),
        .I1(data3[4]),
        .O(prev_csec0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_csec[5]_i_1 
       (.I0(run),
        .I1(data3[5]),
        .O(prev_csec0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_csec[6]_i_1 
       (.I0(run),
        .I1(data3[6]),
        .O(prev_csec0_in[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_csec0_in[0]),
        .Q(data4[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_csec0_in[1]),
        .Q(data4[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_csec0_in[2]),
        .Q(data4[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_csec0_in[3]),
        .Q(data4[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_csec0_in[4]),
        .Q(data4[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_csec0_in[5]),
        .Q(data4[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_csec0_in[6]),
        .Q(data4[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_min[0]_i_1 
       (.I0(run),
        .I1(data3[16]),
        .O(prev_min[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_min[1]_i_1 
       (.I0(run),
        .I1(data3[17]),
        .O(prev_min[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_min[2]_i_1 
       (.I0(run),
        .I1(data3[18]),
        .O(prev_min[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_min[3]_i_1 
       (.I0(run),
        .I1(data3[19]),
        .O(prev_min[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_min[4]_i_1 
       (.I0(run),
        .I1(data3[20]),
        .O(prev_min[4]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_min[5]_i_2 
       (.I0(run),
        .I1(data3[21]),
        .O(prev_min[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_min[0]),
        .Q(data4[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_min[1]),
        .Q(data4[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_min[2]),
        .Q(data4[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_min[3]),
        .Q(data4[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_min[4]),
        .Q(data4[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_min[5]),
        .Q(data4[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \cap_sec[0]_i_1 
       (.I0(run),
        .I1(data3[8]),
        .O(prev_sec[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_sec[1]_i_1 
       (.I0(run),
        .I1(data3[9]),
        .O(prev_sec[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_sec[2]_i_1 
       (.I0(run),
        .I1(data3[10]),
        .O(prev_sec[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_sec[3]_i_1 
       (.I0(run),
        .I1(data3[11]),
        .O(prev_sec[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_sec[4]_i_1 
       (.I0(run),
        .I1(data3[12]),
        .O(prev_sec[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cap_sec[5]_i_1 
       (.I0(run),
        .I1(data3[13]),
        .O(prev_sec[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_sec[0]),
        .Q(data4[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_sec[1]),
        .Q(data4[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_sec[2]),
        .Q(data4[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_sec[3]),
        .Q(data4[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_sec[4]),
        .Q(data4[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cap_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_csec),
        .CLR(SR),
        .D(prev_sec[5]),
        .Q(data4[13]));
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
       (.I0(cnt_sysclk1[13]),
        .I1(cnt_sysclk1[12]),
        .O(cnt_sysclk11_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__0_i_6
       (.I0(cnt_sysclk1[11]),
        .I1(cnt_sysclk1[10]),
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
       (.I0(cnt_sysclk1[25]),
        .I1(cnt_sysclk1[24]),
        .O(cnt_sysclk11_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__1_i_5
       (.I0(cnt_sysclk1[23]),
        .I1(cnt_sysclk1[22]),
        .O(cnt_sysclk11_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__1_i_6
       (.I0(cnt_sysclk1[21]),
        .I1(cnt_sysclk1[20]),
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
       (.I0(cnt_sysclk1[31]),
        .I1(cnt_sysclk1[30]),
        .O(cnt_sysclk11_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__2_i_5
       (.I0(cnt_sysclk1[29]),
        .I1(cnt_sysclk1[28]),
        .O(cnt_sysclk11_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt_sysclk11_carry__2_i_6
       (.I0(cnt_sysclk1[27]),
        .I1(cnt_sysclk1[26]),
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
       (.I0(cnt_sysclk1[7]),
        .I1(cnt_sysclk1[6]),
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_sysclk1[0]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk1[0]),
        .O(\cnt_sysclk1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[10]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[10]),
        .O(\cnt_sysclk1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[11]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[11]),
        .O(\cnt_sysclk1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[12]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[12]),
        .O(\cnt_sysclk1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[13]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[13]),
        .O(\cnt_sysclk1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[14]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[14]),
        .O(\cnt_sysclk1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[15]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[15]),
        .O(\cnt_sysclk1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[16]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[16]),
        .O(\cnt_sysclk1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[17]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[17]),
        .O(\cnt_sysclk1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[18]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[18]),
        .O(\cnt_sysclk1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[19]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[19]),
        .O(\cnt_sysclk1[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[1]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[1]),
        .O(\cnt_sysclk1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[20]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[20]),
        .O(\cnt_sysclk1[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[21]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[21]),
        .O(\cnt_sysclk1[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[22]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[22]),
        .O(\cnt_sysclk1[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[23]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[23]),
        .O(\cnt_sysclk1[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[24]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[24]),
        .O(\cnt_sysclk1[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[25]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[25]),
        .O(\cnt_sysclk1[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[26]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[26]),
        .O(\cnt_sysclk1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[27]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[27]),
        .O(\cnt_sysclk1[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[28]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[28]),
        .O(\cnt_sysclk1[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[29]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[29]),
        .O(\cnt_sysclk1[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[2]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[2]),
        .O(\cnt_sysclk1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[30]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[30]),
        .O(\cnt_sysclk1[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[31]_i_2 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[31]),
        .O(\cnt_sysclk1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[3]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[3]),
        .O(\cnt_sysclk1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[4]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[4]),
        .O(\cnt_sysclk1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[5]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[5]),
        .O(\cnt_sysclk1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[6]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[6]),
        .O(\cnt_sysclk1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[7]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[7]),
        .O(\cnt_sysclk1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[8]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[8]),
        .O(\cnt_sysclk1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[9]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run),
        .I2(cnt_sysclk10[9]),
        .O(\cnt_sysclk1[9]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[0]_i_1_n_0 ),
        .Q(cnt_sysclk1[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[10]_i_1_n_0 ),
        .Q(cnt_sysclk1[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[11]_i_1_n_0 ),
        .Q(cnt_sysclk1[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[12]_i_1_n_0 ),
        .Q(cnt_sysclk1[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[13]_i_1_n_0 ),
        .Q(cnt_sysclk1[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[14]_i_1_n_0 ),
        .Q(cnt_sysclk1[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[15]_i_1_n_0 ),
        .Q(cnt_sysclk1[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[16]_i_1_n_0 ),
        .Q(cnt_sysclk1[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[17]_i_1_n_0 ),
        .Q(cnt_sysclk1[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[18]_i_1_n_0 ),
        .Q(cnt_sysclk1[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[19]_i_1_n_0 ),
        .Q(cnt_sysclk1[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[1]_i_1_n_0 ),
        .Q(cnt_sysclk1[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[20]_i_1_n_0 ),
        .Q(cnt_sysclk1[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[21]_i_1_n_0 ),
        .Q(cnt_sysclk1[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[22]_i_1_n_0 ),
        .Q(cnt_sysclk1[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[23]_i_1_n_0 ),
        .Q(cnt_sysclk1[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[24]_i_1_n_0 ),
        .Q(cnt_sysclk1[24]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[25]_i_1_n_0 ),
        .Q(cnt_sysclk1[25]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[26]_i_1_n_0 ),
        .Q(cnt_sysclk1[26]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[27]_i_1_n_0 ),
        .Q(cnt_sysclk1[27]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[28]_i_1_n_0 ),
        .Q(cnt_sysclk1[28]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[29]_i_1_n_0 ),
        .Q(cnt_sysclk1[29]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[2]_i_1_n_0 ),
        .Q(cnt_sysclk1[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[30]_i_1_n_0 ),
        .Q(cnt_sysclk1[30]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[31]_i_2_n_0 ),
        .Q(cnt_sysclk1[31]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[3]_i_1_n_0 ),
        .Q(cnt_sysclk1[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[4]_i_1_n_0 ),
        .Q(cnt_sysclk1[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[5]_i_1_n_0 ),
        .Q(cnt_sysclk1[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[6]_i_1_n_0 ),
        .Q(cnt_sysclk1[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[7]_i_1_n_0 ),
        .Q(cnt_sysclk1[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[8]_i_1_n_0 ),
        .Q(cnt_sysclk1[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_2),
        .CLR(SR),
        .D(\cnt_sysclk1[9]_i_1_n_0 ),
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
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(cnt_sysclk2[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[10]),
        .Q(cnt_sysclk2[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[11]),
        .Q(cnt_sysclk2[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[12]),
        .Q(cnt_sysclk2[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[13]),
        .Q(cnt_sysclk2[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[14]),
        .Q(cnt_sysclk2[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[15]),
        .Q(cnt_sysclk2[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[16]),
        .Q(cnt_sysclk2[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[17]),
        .Q(cnt_sysclk2[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[18]),
        .Q(cnt_sysclk2[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[19]),
        .Q(cnt_sysclk2[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[1]),
        .Q(cnt_sysclk2[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[20]),
        .Q(cnt_sysclk2[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[21]),
        .Q(cnt_sysclk2[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[22]),
        .Q(cnt_sysclk2[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[23]),
        .Q(cnt_sysclk2[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[24]),
        .Q(cnt_sysclk2[24]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[25]),
        .Q(cnt_sysclk2[25]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[26]),
        .Q(cnt_sysclk2[26]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[27]),
        .Q(cnt_sysclk2[27]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[28]),
        .Q(cnt_sysclk2[28]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[29]),
        .Q(cnt_sysclk2[29]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(cnt_sysclk2[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[30]),
        .Q(cnt_sysclk2[30]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[31]),
        .Q(cnt_sysclk2[31]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(cnt_sysclk2[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(cnt_sysclk2[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(cnt_sysclk2[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(cnt_sysclk2[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(cnt_sysclk2[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[8]),
        .Q(cnt_sysclk2[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_1),
        .CLR(SR),
        .D(p_1_in[9]),
        .Q(cnt_sysclk2[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \csec[0]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(data2[0]),
        .O(\csec[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \csec[1]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(data2[0]),
        .I2(data2[1]),
        .O(\csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \csec[2]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(data2[0]),
        .I2(data2[1]),
        .I3(data2[2]),
        .O(\csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \csec[3]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(data2[1]),
        .I2(data2[0]),
        .I3(data2[2]),
        .I4(data2[3]),
        .O(\csec[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \csec[4]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(data2[2]),
        .I2(data2[0]),
        .I3(data2[1]),
        .I4(data2[3]),
        .I5(data2[4]),
        .O(\csec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \csec[5]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(data2[3]),
        .I2(\csec[5]_i_2_n_0 ),
        .I3(data2[2]),
        .I4(data2[4]),
        .I5(data2[5]),
        .O(\csec[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \csec[5]_i_2 
       (.I0(data2[1]),
        .I1(data2[0]),
        .O(\csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \csec[6]_i_2 
       (.I0(data2[5]),
        .I1(\csec[6]_i_3_n_0 ),
        .I2(\csec[6]_i_4_n_0 ),
        .I3(data2[6]),
        .O(\csec[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \csec[6]_i_3 
       (.I0(data2[4]),
        .I1(data2[2]),
        .I2(data2[0]),
        .I3(data2[1]),
        .I4(data2[3]),
        .O(\csec[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \csec[6]_i_4 
       (.I0(run),
        .I1(\sec[5]_i_3_n_0 ),
        .O(\csec[6]_i_4_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_10),
        .CLR(SR),
        .D(\csec[0]_i_1_n_0 ),
        .Q(data2[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_10),
        .CLR(SR),
        .D(\csec[1]_i_1_n_0 ),
        .Q(data2[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_10),
        .CLR(SR),
        .D(\csec[2]_i_1_n_0 ),
        .Q(data2[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_10),
        .CLR(SR),
        .D(\csec[3]_i_1_n_0 ),
        .Q(data2[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_10),
        .CLR(SR),
        .D(\csec[4]_i_1_n_0 ),
        .Q(data2[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_10),
        .CLR(SR),
        .D(\csec[5]_i_1_n_0 ),
        .Q(data2[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_10),
        .CLR(SR),
        .D(\csec[6]_i_2_n_0 ),
        .Q(data2[6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_csec0_carry
       (.CI(1'b0),
        .CO({diff_csec0_carry_n_0,diff_csec0_carry_n_1,diff_csec0_carry_n_2,diff_csec0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({diff_csec0_carry_i_1_n_0,data3[2],data4[1:0]}),
        .O(diff_csec0[3:0]),
        .S({diff_csec0_carry_i_2_n_0,diff_csec0_carry_i_3_n_0,diff_csec0_carry_i_4_n_0,diff_csec0_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_csec0_carry__0
       (.CI(diff_csec0_carry_n_0),
        .CO({NLW_diff_csec0_carry__0_CO_UNCONNECTED[3],diff_csec0_carry__0_n_1,diff_csec0_carry__0_n_2,diff_csec0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,diff_csec0_carry__0_i_1_n_0,diff_csec0_carry__0_i_2_n_0,diff_csec0_carry__0_i_3_n_0}),
        .O(diff_csec0[7:4]),
        .S({diff_csec0_carry__0_i_4_n_0,diff_csec0_carry__0_i_5_n_0,diff_csec0_carry__0_i_6_n_0,diff_csec0_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    diff_csec0_carry__0_i_1
       (.I0(data4[5]),
        .I1(data3[5]),
        .O(diff_csec0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    diff_csec0_carry__0_i_2
       (.I0(data3[5]),
        .I1(data4[5]),
        .O(diff_csec0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    diff_csec0_carry__0_i_3
       (.I0(data4[3]),
        .I1(data3[3]),
        .O(diff_csec0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    diff_csec0_carry__0_i_4
       (.I0(data3[6]),
        .I1(data4[6]),
        .O(diff_csec0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    diff_csec0_carry__0_i_5
       (.I0(data4[5]),
        .I1(data3[5]),
        .I2(data3[6]),
        .I3(data4[6]),
        .O(diff_csec0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    diff_csec0_carry__0_i_6
       (.I0(data3[5]),
        .I1(data4[5]),
        .I2(data3[4]),
        .I3(data4[4]),
        .O(diff_csec0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    diff_csec0_carry__0_i_7
       (.I0(data3[3]),
        .I1(data4[3]),
        .I2(data3[4]),
        .I3(data4[4]),
        .O(diff_csec0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    diff_csec0_carry_i_1
       (.I0(data3[2]),
        .O(diff_csec0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    diff_csec0_carry_i_2
       (.I0(data3[2]),
        .I1(data3[3]),
        .I2(data4[3]),
        .O(diff_csec0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    diff_csec0_carry_i_3
       (.I0(data3[2]),
        .I1(data4[2]),
        .O(diff_csec0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry_i_4
       (.I0(data4[1]),
        .I1(data3[1]),
        .O(diff_csec0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry_i_5
       (.I0(data4[0]),
        .I1(data3[0]),
        .O(diff_csec0_carry_i_5_n_0));
  CARRY4 \diff_csec0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\diff_csec0_inferred__0/i__carry_n_0 ,\diff_csec0_inferred__0/i__carry_n_1 ,\diff_csec0_inferred__0/i__carry_n_2 ,\diff_csec0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(data4[3:0]),
        .O({diff_csec01_in[3:1],\NLW_diff_csec0_inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__9_n_0,i__carry_i_2__10_n_0,i__carry_i_3__11_n_0,i__carry_i_4__9_n_0}));
  CARRY4 \diff_csec0_inferred__0/i__carry__0 
       (.CI(\diff_csec0_inferred__0/i__carry_n_0 ),
        .CO({\diff_csec0_inferred__0/i__carry__0_n_0 ,\NLW_diff_csec0_inferred__0/i__carry__0_CO_UNCONNECTED [2],\diff_csec0_inferred__0/i__carry__0_n_2 ,\diff_csec0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,data4[6:4]}),
        .O({\NLW_diff_csec0_inferred__0/i__carry__0_O_UNCONNECTED [3],diff_csec01_in[6:4]}),
        .S({1'b1,i__carry__0_i_1__7_n_0,i__carry__0_i_2__7_n_0,i__carry__0_i_3__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_csec0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\diff_csec0_inferred__1/i__carry_n_0 ,\diff_csec0_inferred__1/i__carry_n_1 ,\diff_csec0_inferred__1/i__carry_n_2 ,\diff_csec0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,data4[2],data3[1:0]}),
        .O(diff_csec03_in[3:0]),
        .S({i__carry_i_2__4_n_0,i__carry_i_3__5_n_0,i__carry_i_4__10_n_0,i__carry_i_5__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \diff_csec0_inferred__1/i__carry__0 
       (.CI(\diff_csec0_inferred__1/i__carry_n_0 ),
        .CO({\NLW_diff_csec0_inferred__1/i__carry__0_CO_UNCONNECTED [3],\diff_csec0_inferred__1/i__carry__0_n_1 ,\diff_csec0_inferred__1/i__carry__0_n_2 ,\diff_csec0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}),
        .O(diff_csec03_in[7:4]),
        .S({i__carry__0_i_4_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7_n_0}));
  CARRY4 \diff_csec0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\diff_csec0_inferred__2/i__carry_n_0 ,\diff_csec0_inferred__2/i__carry_n_1 ,\diff_csec0_inferred__2/i__carry_n_2 ,\diff_csec0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(data3[3:0]),
        .O({diff_csec04_in[3:1],\NLW_diff_csec0_inferred__2/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__11_n_0,i__carry_i_2__5_n_0,i__carry_i_3__8_n_0,i__carry_i_4__8_n_0}));
  CARRY4 \diff_csec0_inferred__2/i__carry__0 
       (.CI(\diff_csec0_inferred__2/i__carry_n_0 ),
        .CO({\diff_csec0_inferred__2/i__carry__0_n_0 ,\NLW_diff_csec0_inferred__2/i__carry__0_CO_UNCONNECTED [2],\diff_csec0_inferred__2/i__carry__0_n_2 ,\diff_csec0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,data3[6:4]}),
        .O({\NLW_diff_csec0_inferred__2/i__carry__0_O_UNCONNECTED [3],diff_csec04_in[6:4]}),
        .S({1'b1,i__carry__0_i_1__6_n_0,i__carry__0_i_2__4_n_0,i__carry__0_i_3__4_n_0}));
  LUT6 #(
    .INIT(64'hAAAAAAAA000022A0)) 
    \diff_csec[0]_i_1 
       (.I0(run),
        .I1(\diff_csec[0]_i_2_n_0 ),
        .I2(diff_csec0[0]),
        .I3(\diff_min1_inferred__0/i__carry_n_0 ),
        .I4(diff_min1_carry_n_1),
        .I5(\diff_csec[0]_i_3_n_0 ),
        .O(\diff_csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[0]_i_2 
       (.I0(data4[0]),
        .I1(data3[0]),
        .O(\diff_csec[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6600F000)) 
    \diff_csec[0]_i_3 
       (.I0(data3[0]),
        .I1(data4[0]),
        .I2(diff_csec03_in[0]),
        .I3(diff_min1_carry_n_1),
        .I4(p_2_in),
        .O(\diff_csec[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \diff_csec[1]_i_1 
       (.I0(run),
        .I1(\diff_csec[1]_i_2_n_0 ),
        .I2(diff_csec04_in[1]),
        .I3(diff_csec03_in[1]),
        .I4(diff_min1_carry_n_1),
        .I5(p_2_in),
        .O(\diff_csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_csec[1]_i_2 
       (.I0(diff_csec01_in[1]),
        .I1(diff_csec0[1]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(diff_min1_carry_n_1),
        .O(\diff_csec[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \diff_csec[2]_i_1 
       (.I0(run),
        .I1(\diff_csec[2]_i_2_n_0 ),
        .I2(diff_csec04_in[2]),
        .I3(diff_csec03_in[2]),
        .I4(diff_min1_carry_n_1),
        .I5(p_2_in),
        .O(\diff_csec[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_csec[2]_i_2 
       (.I0(diff_csec01_in[2]),
        .I1(diff_csec0[2]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(diff_min1_carry_n_1),
        .O(\diff_csec[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \diff_csec[3]_i_1 
       (.I0(run),
        .I1(\diff_csec[3]_i_2_n_0 ),
        .I2(diff_csec04_in[3]),
        .I3(diff_csec03_in[3]),
        .I4(diff_min1_carry_n_1),
        .I5(p_2_in),
        .O(\diff_csec[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_csec[3]_i_2 
       (.I0(diff_csec01_in[3]),
        .I1(diff_csec0[3]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(diff_min1_carry_n_1),
        .O(\diff_csec[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \diff_csec[4]_i_1 
       (.I0(run),
        .I1(\diff_csec[4]_i_2_n_0 ),
        .I2(diff_csec04_in[4]),
        .I3(diff_csec03_in[4]),
        .I4(diff_min1_carry_n_1),
        .I5(p_2_in),
        .O(\diff_csec[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_csec[4]_i_2 
       (.I0(diff_csec01_in[4]),
        .I1(diff_csec0[4]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(diff_min1_carry_n_1),
        .O(\diff_csec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \diff_csec[5]_i_1 
       (.I0(run),
        .I1(\diff_csec[5]_i_2_n_0 ),
        .I2(diff_csec04_in[5]),
        .I3(diff_csec03_in[5]),
        .I4(diff_min1_carry_n_1),
        .I5(p_2_in),
        .O(\diff_csec[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_csec[5]_i_2 
       (.I0(diff_csec01_in[5]),
        .I1(diff_csec0[5]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(diff_min1_carry_n_1),
        .O(\diff_csec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \diff_csec[6]_i_1 
       (.I0(run),
        .I1(\diff_csec[6]_i_2_n_0 ),
        .I2(diff_csec04_in[6]),
        .I3(diff_csec03_in[6]),
        .I4(diff_min1_carry_n_1),
        .I5(p_2_in),
        .O(\diff_csec[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_csec[6]_i_2 
       (.I0(diff_csec01_in[6]),
        .I1(diff_csec0[6]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(diff_min1_carry_n_1),
        .O(\diff_csec[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8888AA888888)) 
    \diff_csec[7]_i_2 
       (.I0(run),
        .I1(\diff_csec[7]_i_5_n_0 ),
        .I2(\diff_csec0_inferred__2/i__carry__0_n_0 ),
        .I3(diff_csec03_in[7]),
        .I4(diff_min1_carry_n_1),
        .I5(p_2_in),
        .O(\diff_csec[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \diff_csec[7]_i_3 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(Q[10]),
        .O(\diff_csec[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \diff_csec[7]_i_4 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\diff_csec[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h005C)) 
    \diff_csec[7]_i_5 
       (.I0(\diff_csec0_inferred__0/i__carry__0_n_0 ),
        .I1(diff_csec0[7]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(diff_min1_carry_n_1),
        .O(\diff_csec[7]_i_5_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_csec[0]_i_1_n_0 ),
        .Q(data5[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_csec[1]_i_1_n_0 ),
        .Q(data5[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_csec[2]_i_1_n_0 ),
        .Q(data5[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_csec[3]_i_1_n_0 ),
        .Q(data5[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_csec[4]_i_1_n_0 ),
        .Q(data5[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_csec[5]_i_1_n_0 ),
        .Q(data5[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_csec[6]_i_1_n_0 ),
        .Q(data5[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_csec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_csec[7]_i_2_n_0 ),
        .Q(data5[7]));
  CARRY4 diff_min1_carry
       (.CI(1'b0),
        .CO({NLW_diff_min1_carry_CO_UNCONNECTED[3],diff_min1_carry_n_1,diff_min1_carry_n_2,diff_min1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,diff_min1_carry_i_1_n_0,diff_min1_carry_i_2_n_0,diff_min1_carry_i_3_n_0}),
        .O(NLW_diff_min1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,diff_min1_carry_i_4_n_0,diff_min1_carry_i_5_n_0,diff_min1_carry_i_6_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    diff_min1_carry_i_1
       (.I0(data3[20]),
        .I1(data4[20]),
        .I2(data4[21]),
        .I3(data3[21]),
        .O(diff_min1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    diff_min1_carry_i_2
       (.I0(data3[18]),
        .I1(data4[18]),
        .I2(data4[19]),
        .I3(data3[19]),
        .O(diff_min1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    diff_min1_carry_i_3
       (.I0(data3[16]),
        .I1(data4[16]),
        .I2(data4[17]),
        .I3(data3[17]),
        .O(diff_min1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    diff_min1_carry_i_4
       (.I0(data4[21]),
        .I1(data3[21]),
        .I2(data4[20]),
        .I3(data3[20]),
        .O(diff_min1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    diff_min1_carry_i_5
       (.I0(data4[19]),
        .I1(data3[19]),
        .I2(data4[18]),
        .I3(data3[18]),
        .O(diff_min1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    diff_min1_carry_i_6
       (.I0(data4[17]),
        .I1(data3[17]),
        .I2(data4[16]),
        .I3(data3[16]),
        .O(diff_min1_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \diff_min1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\diff_min1_inferred__0/i__carry_n_0 ,\diff_min1_inferred__0/i__carry_n_1 ,\diff_min1_inferred__0/i__carry_n_2 ,\diff_min1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__6_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_diff_min1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__6_n_0,i__carry_i_6__1_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \diff_min1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({p_2_in,\diff_min1_inferred__1/i__carry_n_1 ,\diff_min1_inferred__1/i__carry_n_2 ,\diff_min1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_diff_min1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_min[0]_i_1 
       (.I0(run),
        .I1(diff_min[0]),
        .O(\diff_min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_min[1]_i_1 
       (.I0(run),
        .I1(diff_min[1]),
        .O(\diff_min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_min[2]_i_1 
       (.I0(run),
        .I1(diff_min[2]),
        .O(\diff_min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_min[3]_i_1 
       (.I0(run),
        .I1(diff_min[3]),
        .O(\diff_min[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_min[4]_i_1 
       (.I0(run),
        .I1(diff_min[4]),
        .O(\diff_min[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_min[5]_i_1 
       (.I0(run),
        .I1(diff_min[5]),
        .O(\diff_min[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_min[6]_i_1 
       (.I0(run),
        .I1(diff_min[6]),
        .O(\diff_min[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \diff_min[7]_i_1 
       (.I0(run),
        .I1(diff_min[7]),
        .O(\diff_min[7]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_min[0]_i_1_n_0 ),
        .Q(data5[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_min[1]_i_1_n_0 ),
        .Q(data5[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_min[2]_i_1_n_0 ),
        .Q(data5[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_min[3]_i_1_n_0 ),
        .Q(data5[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_min[4]_i_1_n_0 ),
        .Q(data5[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_min[5]_i_1_n_0 ),
        .Q(data5[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_min_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_min[6]_i_1_n_0 ),
        .Q(data5[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_min_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_min[7]_i_1_n_0 ),
        .Q(data5[23]));
  CARRY4 diff_sec0_carry
       (.CI(1'b0),
        .CO({diff_sec0_carry_n_0,diff_sec0_carry_n_1,diff_sec0_carry_n_2,diff_sec0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({diff_sec0_carry_i_1_n_0,data3[10],data4[9:8]}),
        .O({diff_sec0[3:1],diff_sec01_in[0]}),
        .S({diff_sec0_carry_i_2_n_0,diff_sec0_carry_i_3_n_0,diff_sec0_carry_i_4_n_0,diff_sec0_carry_i_5_n_0}));
  CARRY4 diff_sec0_carry__0
       (.CI(diff_sec0_carry_n_0),
        .CO({diff_sec0_carry__0_n_0,NLW_diff_sec0_carry__0_CO_UNCONNECTED[2],diff_sec0_carry__0_n_2,diff_sec0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,diff_sec0_carry__0_i_1_n_0,diff_sec0_carry__0_i_2_n_0,diff_sec0_carry__0_i_3_n_0}),
        .O({NLW_diff_sec0_carry__0_O_UNCONNECTED[3],diff_sec0[6:4]}),
        .S({1'b1,diff_sec0_carry__0_i_4_n_0,diff_sec0_carry__0_i_5_n_0,diff_sec0_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    diff_sec0_carry__0_i_1
       (.I0(data4[13]),
        .I1(data3[13]),
        .O(diff_sec0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    diff_sec0_carry__0_i_2
       (.I0(data4[12]),
        .I1(data3[12]),
        .O(diff_sec0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    diff_sec0_carry__0_i_3
       (.I0(data4[11]),
        .I1(data3[11]),
        .O(diff_sec0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    diff_sec0_carry__0_i_4
       (.I0(data3[13]),
        .I1(data4[13]),
        .O(diff_sec0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    diff_sec0_carry__0_i_5
       (.I0(data4[12]),
        .I1(data3[12]),
        .I2(data3[13]),
        .I3(data4[13]),
        .O(diff_sec0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    diff_sec0_carry__0_i_6
       (.I0(data4[11]),
        .I1(data3[11]),
        .I2(data3[12]),
        .I3(data4[12]),
        .O(diff_sec0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    diff_sec0_carry_i_1
       (.I0(data3[11]),
        .I1(data4[11]),
        .O(diff_sec0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    diff_sec0_carry_i_2
       (.I0(data3[11]),
        .I1(data4[11]),
        .I2(data3[10]),
        .O(diff_sec0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    diff_sec0_carry_i_3
       (.I0(data3[10]),
        .I1(data4[10]),
        .O(diff_sec0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_sec0_carry_i_4
       (.I0(data4[9]),
        .I1(data3[9]),
        .O(diff_sec0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_sec0_carry_i_5
       (.I0(data4[8]),
        .I1(data3[8]),
        .O(diff_sec0_carry_i_5_n_0));
  CARRY4 \diff_sec0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\diff_sec0_inferred__0/i__carry_n_0 ,\diff_sec0_inferred__0/i__carry_n_1 ,\diff_sec0_inferred__0/i__carry_n_2 ,\diff_sec0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(data4[11:8]),
        .O({diff_sec01_in[3:1],\NLW_diff_sec0_inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__12_n_0,i__carry_i_2__11_n_0,i__carry_i_3__12_n_0,i__carry_i_4__4_n_0}));
  CARRY4 \diff_sec0_inferred__0/i__carry__0 
       (.CI(\diff_sec0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_diff_sec0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\diff_sec0_inferred__0/i__carry__0_n_1 ,\NLW_diff_sec0_inferred__0/i__carry__0_CO_UNCONNECTED [1],\diff_sec0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data4[13:12]}),
        .O({\NLW_diff_sec0_inferred__0/i__carry__0_O_UNCONNECTED [3:2],diff_sec01_in[5:4]}),
        .S({1'b0,1'b1,i__carry__0_i_1__8_n_0,i__carry__0_i_2__8_n_0}));
  CARRY4 \diff_sec0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\diff_sec0_inferred__1/i__carry_n_0 ,\diff_sec0_inferred__1/i__carry_n_1 ,\diff_sec0_inferred__1/i__carry_n_2 ,\diff_sec0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__4_n_0,data3[10],data4[9:8]}),
        .O({diff_sec03_in[3:1],diff_sec04_in[0]}),
        .S({i__carry_i_2__8_n_0,i__carry_i_3__6_n_0,i__carry_i_4__11_n_0,i__carry_i_5__1_n_0}));
  CARRY4 \diff_sec0_inferred__1/i__carry__0 
       (.CI(\diff_sec0_inferred__1/i__carry_n_0 ),
        .CO({\diff_sec0_inferred__1/i__carry__0_n_0 ,\NLW_diff_sec0_inferred__1/i__carry__0_CO_UNCONNECTED [2],\diff_sec0_inferred__1/i__carry__0_n_2 ,\diff_sec0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0}),
        .O({\NLW_diff_sec0_inferred__1/i__carry__0_O_UNCONNECTED [3],diff_sec03_in[6:4]}),
        .S({1'b1,i__carry__0_i_4__1_n_0,i__carry__0_i_5__2_n_0,i__carry__0_i_6__2_n_0}));
  CARRY4 \diff_sec0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\diff_sec0_inferred__2/i__carry_n_0 ,\diff_sec0_inferred__2/i__carry_n_1 ,\diff_sec0_inferred__2/i__carry_n_2 ,\diff_sec0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(data4[11:8]),
        .O({diff_sec04_in[3:1],\NLW_diff_sec0_inferred__2/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__10_n_0,i__carry_i_2__9_n_0,i__carry_i_3__10_n_0,i__carry_i_4__6_n_0}));
  CARRY4 \diff_sec0_inferred__2/i__carry__0 
       (.CI(\diff_sec0_inferred__2/i__carry_n_0 ),
        .CO({\NLW_diff_sec0_inferred__2/i__carry__0_CO_UNCONNECTED [3],\diff_sec0_inferred__2/i__carry__0_n_1 ,\NLW_diff_sec0_inferred__2/i__carry__0_CO_UNCONNECTED [1],\diff_sec0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data4[13:12]}),
        .O({\NLW_diff_sec0_inferred__2/i__carry__0_O_UNCONNECTED [3:2],diff_sec04_in[5:4]}),
        .S({1'b0,1'b1,i__carry__0_i_1__4_n_0,i__carry__0_i_2__5_n_0}));
  CARRY4 \diff_sec0_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\diff_sec0_inferred__3/i__carry_n_0 ,\diff_sec0_inferred__3/i__carry_n_1 ,\diff_sec0_inferred__3/i__carry_n_2 ,\diff_sec0_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__7_n_0,data4[10],data3[9:8]}),
        .O({diff_sec07_in[3:1],\NLW_diff_sec0_inferred__3/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2__12_n_0,i__carry_i_3__7_n_0,i__carry_i_4__12_n_0,i__carry_i_5__2_n_0}));
  CARRY4 \diff_sec0_inferred__3/i__carry__0 
       (.CI(\diff_sec0_inferred__3/i__carry_n_0 ),
        .CO({\diff_sec0_inferred__3/i__carry__0_n_0 ,\NLW_diff_sec0_inferred__3/i__carry__0_CO_UNCONNECTED [2],\diff_sec0_inferred__3/i__carry__0_n_2 ,\diff_sec0_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0}),
        .O({\NLW_diff_sec0_inferred__3/i__carry__0_O_UNCONNECTED [3],diff_sec07_in[6:4]}),
        .S({1'b1,i__carry__0_i_4__3_n_0,i__carry__0_i_5__3_n_0,i__carry__0_i_6__3_n_0}));
  CARRY4 \diff_sec0_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\diff_sec0_inferred__4/i__carry_n_0 ,\diff_sec0_inferred__4/i__carry_n_1 ,\diff_sec0_inferred__4/i__carry_n_2 ,\diff_sec0_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(data3[11:8]),
        .O({diff_sec08_in[3:1],\NLW_diff_sec0_inferred__4/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__13_n_0,i__carry_i_2__13_n_0,i__carry_i_3__13_n_0,i__carry_i_4__7_n_0}));
  CARRY4 \diff_sec0_inferred__4/i__carry__0 
       (.CI(\diff_sec0_inferred__4/i__carry_n_0 ),
        .CO({\NLW_diff_sec0_inferred__4/i__carry__0_CO_UNCONNECTED [3],\diff_sec0_inferred__4/i__carry__0_n_1 ,\NLW_diff_sec0_inferred__4/i__carry__0_CO_UNCONNECTED [1],\diff_sec0_inferred__4/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[13:12]}),
        .O({\NLW_diff_sec0_inferred__4/i__carry__0_O_UNCONNECTED [3:2],diff_sec08_in[5:4]}),
        .S({1'b0,1'b1,i__carry__0_i_1__9_n_0,i__carry__0_i_2__9_n_0}));
  CARRY4 \diff_sec0_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\diff_sec0_inferred__5/i__carry_n_0 ,\diff_sec0_inferred__5/i__carry_n_1 ,\diff_sec0_inferred__5/i__carry_n_2 ,\diff_sec0_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__5_n_0,data4[10],data3[9:8]}),
        .O({diff_sec010_in[3:1],\NLW_diff_sec0_inferred__5/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2__7_n_0,i__carry_i_3__4_n_0,i__carry_i_4__13_n_0,i__carry_i_5__3_n_0}));
  CARRY4 \diff_sec0_inferred__5/i__carry__0 
       (.CI(\diff_sec0_inferred__5/i__carry_n_0 ),
        .CO({\diff_sec0_inferred__5/i__carry__0_n_0 ,\NLW_diff_sec0_inferred__5/i__carry__0_CO_UNCONNECTED [2],\diff_sec0_inferred__5/i__carry__0_n_2 ,\diff_sec0_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0}),
        .O({\NLW_diff_sec0_inferred__5/i__carry__0_O_UNCONNECTED [3],diff_sec010_in[6:4]}),
        .S({1'b1,i__carry__0_i_4__0_n_0,i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0}));
  CARRY4 \diff_sec0_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\diff_sec0_inferred__6/i__carry_n_0 ,\diff_sec0_inferred__6/i__carry_n_1 ,\diff_sec0_inferred__6/i__carry_n_2 ,\diff_sec0_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(data3[11:8]),
        .O({diff_sec011_in[3:1],\NLW_diff_sec0_inferred__6/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__8_n_0,i__carry_i_2__6_n_0,i__carry_i_3__9_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \diff_sec0_inferred__6/i__carry__0 
       (.CI(\diff_sec0_inferred__6/i__carry_n_0 ),
        .CO({\NLW_diff_sec0_inferred__6/i__carry__0_CO_UNCONNECTED [3],\diff_sec0_inferred__6/i__carry__0_n_1 ,\NLW_diff_sec0_inferred__6/i__carry__0_CO_UNCONNECTED [1],\diff_sec0_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[13:12]}),
        .O({\NLW_diff_sec0_inferred__6/i__carry__0_O_UNCONNECTED [3:2],diff_sec011_in[5:4]}),
        .S({1'b0,1'b1,i__carry__0_i_1__5_n_0,i__carry__0_i_2__6_n_0}));
  LUT6 #(
    .INIT(64'h69690000FF000000)) 
    \diff_sec[0]_i_1 
       (.I0(p_2_in),
        .I1(data4[8]),
        .I2(data3[8]),
        .I3(\diff_sec[0]_i_2_n_0 ),
        .I4(run),
        .I5(diff_min1_carry_n_1),
        .O(\diff_sec[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFD08F8FD0D0808F)) 
    \diff_sec[0]_i_2 
       (.I0(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I1(diff_sec04_in[0]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(ptmp_min1_carry_n_0),
        .I4(\diff_sec[0]_i_3_n_0 ),
        .I5(diff_sec01_in[0]),
        .O(\diff_sec[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[0]_i_3 
       (.I0(data3[8]),
        .I1(data4[8]),
        .O(\diff_sec[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    \diff_sec[1]_i_1 
       (.I0(\diff_sec[1]_i_2_n_0 ),
        .I1(\diff_sec[1]_i_3_n_0 ),
        .I2(\diff_sec[1]_i_4_n_0 ),
        .I3(\diff_sec[1]_i_5_n_0 ),
        .I4(run),
        .I5(diff_min1_carry_n_1),
        .O(\diff_sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[1]_i_2 
       (.I0(diff_sec011_in[1]),
        .I1(diff_sec010_in[1]),
        .I2(p_2_in),
        .I3(p_9_in),
        .O(\diff_sec[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[1]_i_3 
       (.I0(diff_sec08_in[1]),
        .I1(diff_sec07_in[1]),
        .I2(p_6_in),
        .I3(p_2_in),
        .O(\diff_sec[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[1]_i_4 
       (.I0(diff_sec04_in[1]),
        .I1(diff_sec03_in[1]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .O(\diff_sec[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[1]_i_5 
       (.I0(diff_sec01_in[1]),
        .I1(diff_sec0[1]),
        .I2(ptmp_min1_carry_n_0),
        .I3(\diff_min1_inferred__0/i__carry_n_0 ),
        .O(\diff_sec[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    \diff_sec[2]_i_1 
       (.I0(\diff_sec[2]_i_2_n_0 ),
        .I1(\diff_sec[2]_i_3_n_0 ),
        .I2(\diff_sec[2]_i_4_n_0 ),
        .I3(\diff_sec[2]_i_5_n_0 ),
        .I4(run),
        .I5(diff_min1_carry_n_1),
        .O(\diff_sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[2]_i_2 
       (.I0(diff_sec011_in[2]),
        .I1(diff_sec010_in[2]),
        .I2(p_2_in),
        .I3(p_9_in),
        .O(\diff_sec[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[2]_i_3 
       (.I0(diff_sec08_in[2]),
        .I1(diff_sec07_in[2]),
        .I2(p_6_in),
        .I3(p_2_in),
        .O(\diff_sec[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[2]_i_4 
       (.I0(diff_sec04_in[2]),
        .I1(diff_sec03_in[2]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .O(\diff_sec[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[2]_i_5 
       (.I0(diff_sec01_in[2]),
        .I1(diff_sec0[2]),
        .I2(ptmp_min1_carry_n_0),
        .I3(\diff_min1_inferred__0/i__carry_n_0 ),
        .O(\diff_sec[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    \diff_sec[3]_i_1 
       (.I0(\diff_sec[3]_i_2_n_0 ),
        .I1(\diff_sec[3]_i_3_n_0 ),
        .I2(\diff_sec[3]_i_4_n_0 ),
        .I3(\diff_sec[3]_i_5_n_0 ),
        .I4(run),
        .I5(diff_min1_carry_n_1),
        .O(\diff_sec[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[3]_i_2 
       (.I0(diff_sec011_in[3]),
        .I1(diff_sec010_in[3]),
        .I2(p_2_in),
        .I3(p_9_in),
        .O(\diff_sec[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[3]_i_3 
       (.I0(diff_sec08_in[3]),
        .I1(diff_sec07_in[3]),
        .I2(p_6_in),
        .I3(p_2_in),
        .O(\diff_sec[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[3]_i_4 
       (.I0(diff_sec04_in[3]),
        .I1(diff_sec03_in[3]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .O(\diff_sec[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[3]_i_5 
       (.I0(diff_sec01_in[3]),
        .I1(diff_sec0[3]),
        .I2(ptmp_min1_carry_n_0),
        .I3(\diff_min1_inferred__0/i__carry_n_0 ),
        .O(\diff_sec[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    \diff_sec[4]_i_1 
       (.I0(\diff_sec[4]_i_2_n_0 ),
        .I1(\diff_sec[4]_i_3_n_0 ),
        .I2(\diff_sec[4]_i_4_n_0 ),
        .I3(\diff_sec[4]_i_5_n_0 ),
        .I4(run),
        .I5(diff_min1_carry_n_1),
        .O(\diff_sec[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[4]_i_2 
       (.I0(diff_sec011_in[4]),
        .I1(diff_sec010_in[4]),
        .I2(p_2_in),
        .I3(p_9_in),
        .O(\diff_sec[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[4]_i_3 
       (.I0(diff_sec08_in[4]),
        .I1(diff_sec07_in[4]),
        .I2(p_6_in),
        .I3(p_2_in),
        .O(\diff_sec[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[4]_i_4 
       (.I0(diff_sec04_in[4]),
        .I1(diff_sec03_in[4]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .O(\diff_sec[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[4]_i_5 
       (.I0(diff_sec01_in[4]),
        .I1(diff_sec0[4]),
        .I2(ptmp_min1_carry_n_0),
        .I3(\diff_min1_inferred__0/i__carry_n_0 ),
        .O(\diff_sec[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    \diff_sec[5]_i_1 
       (.I0(\diff_sec[5]_i_2_n_0 ),
        .I1(\diff_sec[5]_i_3_n_0 ),
        .I2(\diff_sec[5]_i_4_n_0 ),
        .I3(\diff_sec[5]_i_5_n_0 ),
        .I4(run),
        .I5(diff_min1_carry_n_1),
        .O(\diff_sec[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[5]_i_2 
       (.I0(diff_sec011_in[5]),
        .I1(diff_sec010_in[5]),
        .I2(p_2_in),
        .I3(p_9_in),
        .O(\diff_sec[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[5]_i_3 
       (.I0(diff_sec08_in[5]),
        .I1(diff_sec07_in[5]),
        .I2(p_6_in),
        .I3(p_2_in),
        .O(\diff_sec[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \diff_sec[5]_i_4 
       (.I0(diff_sec04_in[5]),
        .I1(diff_sec03_in[5]),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .I3(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .O(\diff_sec[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \diff_sec[5]_i_5 
       (.I0(diff_sec01_in[5]),
        .I1(diff_sec0[5]),
        .I2(ptmp_min1_carry_n_0),
        .I3(\diff_min1_inferred__0/i__carry_n_0 ),
        .O(\diff_sec[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    \diff_sec[6]_i_1 
       (.I0(\diff_sec[6]_i_2_n_0 ),
        .I1(\diff_sec[6]_i_3_n_0 ),
        .I2(\diff_sec[6]_i_4_n_0 ),
        .I3(\diff_sec[6]_i_5_n_0 ),
        .I4(run),
        .I5(diff_min1_carry_n_1),
        .O(\diff_sec[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C022E233F322E2)) 
    \diff_sec[6]_i_2 
       (.I0(diff_sec07_in[6]),
        .I1(p_2_in),
        .I2(p_9_in),
        .I3(\diff_sec0_inferred__6/i__carry__0_n_1 ),
        .I4(p_6_in),
        .I5(\diff_sec0_inferred__4/i__carry__0_n_1 ),
        .O(\diff_sec[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \diff_sec[6]_i_3 
       (.I0(p_9_in),
        .I1(p_2_in),
        .I2(diff_sec010_in[6]),
        .O(\diff_sec[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00C022E233F322E2)) 
    \diff_sec[6]_i_4 
       (.I0(diff_sec0[6]),
        .I1(\diff_min1_inferred__0/i__carry_n_0 ),
        .I2(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I3(\diff_sec0_inferred__2/i__carry__0_n_1 ),
        .I4(ptmp_min1_carry_n_0),
        .I5(\diff_sec0_inferred__0/i__carry__0_n_1 ),
        .O(\diff_sec[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \diff_sec[6]_i_5 
       (.I0(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I1(\diff_min1_inferred__0/i__carry_n_0 ),
        .I2(diff_sec03_in[6]),
        .O(\diff_sec[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    \diff_sec[7]_i_1 
       (.I0(\diff_sec[7]_i_2_n_0 ),
        .I1(\diff_sec[7]_i_3_n_0 ),
        .I2(\diff_sec[7]_i_4_n_0 ),
        .I3(\diff_sec[7]_i_5_n_0 ),
        .I4(run),
        .I5(diff_min1_carry_n_1),
        .O(\diff_sec[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C011D133F311D1)) 
    \diff_sec[7]_i_2 
       (.I0(\diff_sec0_inferred__3/i__carry__0_n_0 ),
        .I1(p_2_in),
        .I2(p_9_in),
        .I3(\diff_sec0_inferred__6/i__carry__0_n_1 ),
        .I4(p_6_in),
        .I5(\diff_sec0_inferred__4/i__carry__0_n_1 ),
        .O(\diff_sec[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \diff_sec[7]_i_3 
       (.I0(p_9_in),
        .I1(p_2_in),
        .I2(\diff_sec0_inferred__5/i__carry__0_n_0 ),
        .O(\diff_sec[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00C011D133F311D1)) 
    \diff_sec[7]_i_4 
       (.I0(diff_sec0_carry__0_n_0),
        .I1(\diff_min1_inferred__0/i__carry_n_0 ),
        .I2(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I3(\diff_sec0_inferred__2/i__carry__0_n_1 ),
        .I4(ptmp_min1_carry_n_0),
        .I5(\diff_sec0_inferred__0/i__carry__0_n_1 ),
        .O(\diff_sec[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \diff_sec[7]_i_5 
       (.I0(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I1(\diff_min1_inferred__0/i__carry_n_0 ),
        .I2(\diff_sec0_inferred__1/i__carry__0_n_0 ),
        .O(\diff_sec[7]_i_5_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_sec[0]_i_1_n_0 ),
        .Q(data5[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_sec[1]_i_1_n_0 ),
        .Q(data5[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_sec[2]_i_1_n_0 ),
        .Q(data5[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_sec[3]_i_1_n_0 ),
        .Q(data5[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_sec[4]_i_1_n_0 ),
        .Q(data5[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_sec[5]_i_1_n_0 ),
        .Q(data5[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_sec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_sec[6]_i_1_n_0 ),
        .Q(data5[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \diff_sec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(\diff_sec[7]_i_1_n_0 ),
        .Q(data5[15]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p ed_clear
       (.AR(SR),
        .CO(lap_min1_carry__2_n_1),
        .D(p_1_in),
        .E(ed_clear_n_1),
        .Q(Q[2:1]),
        .cnt_sysclk20(cnt_sysclk20),
        .\cnt_sysclk2_reg[0] (cnt_sysclk2[0]),
        .data1(data1[1]),
        .data3({data3[21:16],data3[13:8],data3[6:0]}),
        .ff_old_reg_0(ed_clear_n_3),
        .ff_old_reg_1(ed_clear_n_4),
        .ff_old_reg_2(ed_clear_n_5),
        .\lap_csec_reg[5] ({ed_clear_n_55,ed_clear_n_56,ed_clear_n_57,ed_clear_n_58,ed_clear_n_59,ed_clear_n_60,ed_clear_n_61}),
        .\lap_csec_reg[5]_0 (\lap_csec[5]_i_2_n_0 ),
        .\lap_csec_reg[6] (\lap_csec[6]_i_3_n_0 ),
        .\lap_min_reg[0] (\lap_min[5]_i_3_n_0 ),
        .\lap_min_reg[3] ({ed_clear_n_43,ed_clear_n_44,ed_clear_n_45,ed_clear_n_46,ed_clear_n_47,ed_clear_n_48}),
        .\lap_min_reg[5] (\lap_min[5]_i_6_n_0 ),
        .\lap_sec_reg[0] (\lap_sec[5]_i_3_n_0 ),
        .\lap_sec_reg[3] ({ed_clear_n_49,ed_clear_n_50,ed_clear_n_51,ed_clear_n_52,ed_clear_n_53,ed_clear_n_54}),
        .\lap_sec_reg[5] (\lap_sec[5]_i_5_n_0 ),
        .\min_reg[0] (\min[5]_i_3_n_0 ),
        .\min_reg[0]_0 (cnt_sysclk11_carry__2_n_1),
        .\min_reg[0]_1 (\sec[5]_i_3_n_0 ),
        .run(run),
        .run_reg(ed_clear_n_2),
        .run_reg_0(ed_clear_n_8),
        .run_reg_1(ed_clear_n_9),
        .run_reg_2(ed_clear_n_10),
        .run_reg_3(ed_clear_n_62),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sign_flag_reg(\diff_csec[7]_i_3_n_0 ),
        .sign_flag_reg_0(\diff_csec[7]_i_4_n_0 ),
        .\slv_reg0_reg[2] (prev_csec),
        .\slv_reg0_reg[2]_0 (ed_clear_n_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 ed_start
       (.AR(SR),
        .Q(Q[0]),
        .ff_old_reg_0(ed_start_n_0),
        .run(run),
        .s00_axi_aclk(s00_axi_aclk));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1
       (.I0(data3[5]),
        .I1(data4[5]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    i__carry__0_i_10
       (.I0(p_6_in),
        .I1(p_9_in),
        .I2(p_2_in),
        .O(i__carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    i__carry__0_i_11
       (.I0(p_6_in),
        .I1(p_9_in),
        .I2(p_2_in),
        .O(i__carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    i__carry__0_i_12
       (.I0(p_6_in),
        .I1(p_9_in),
        .I2(p_2_in),
        .O(i__carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry__0_i_13
       (.I0(p_2_in),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(data3[21]),
        .O(i__carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry__0_i_14
       (.I0(p_2_in),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(data3[20]),
        .O(i__carry__0_i_14_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    i__carry__0_i_15
       (.I0(ptmp_min1_carry_n_0),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .O(i__carry__0_i_15_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    i__carry__0_i_16
       (.I0(ptmp_min1_carry_n_0),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .O(i__carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    i__carry__0_i_17
       (.I0(ptmp_min1_carry_n_0),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(\diff_min1_inferred__0/i__carry_n_0 ),
        .O(i__carry__0_i_17_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry__0_i_18
       (.I0(\diff_min1_inferred__0/i__carry_n_0 ),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(ptmp_min1_carry_n_0),
        .I3(data4[21]),
        .O(i__carry__0_i_18_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry__0_i_19
       (.I0(\diff_min1_inferred__0/i__carry_n_0 ),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(ptmp_min1_carry_n_0),
        .I3(data4[20]),
        .O(i__carry__0_i_19_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__0
       (.I0(data3[13]),
        .I1(data4[13]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__1
       (.I0(data4[13]),
        .I1(data3[13]),
        .O(i__carry__0_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_1__2
       (.I0(i__carry__0_i_8_n_5),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry__0_i_9_n_5),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__3
       (.I0(data3[13]),
        .I1(data4[13]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__4
       (.I0(data4[13]),
        .I1(data3[13]),
        .O(i__carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__5
       (.I0(data3[13]),
        .I1(data4[13]),
        .O(i__carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__6
       (.I0(data3[6]),
        .I1(data4[6]),
        .O(i__carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__7
       (.I0(data4[6]),
        .I1(data3[6]),
        .O(i__carry__0_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__8
       (.I0(data4[13]),
        .I1(data3[13]),
        .O(i__carry__0_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__9
       (.I0(data3[13]),
        .I1(data4[13]),
        .O(i__carry__0_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(data4[5]),
        .I1(data3[5]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2__0
       (.I0(data3[12]),
        .I1(data4[12]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2__1
       (.I0(data4[12]),
        .I1(data3[12]),
        .O(i__carry__0_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_2__2
       (.I0(i__carry__0_i_8_n_6),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry__0_i_9_n_6),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2__3
       (.I0(data3[12]),
        .I1(data4[12]),
        .O(i__carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__4
       (.I0(data3[5]),
        .I1(data4[5]),
        .O(i__carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__5
       (.I0(data4[12]),
        .I1(data3[12]),
        .O(i__carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__6
       (.I0(data3[12]),
        .I1(data4[12]),
        .O(i__carry__0_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__7
       (.I0(data4[5]),
        .I1(data3[5]),
        .O(i__carry__0_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__8
       (.I0(data4[12]),
        .I1(data3[12]),
        .O(i__carry__0_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__9
       (.I0(data3[12]),
        .I1(data4[12]),
        .O(i__carry__0_i_2__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3
       (.I0(data3[3]),
        .I1(data4[3]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_3__0
       (.I0(data3[11]),
        .I1(data4[11]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_3__1
       (.I0(data4[11]),
        .I1(data3[11]),
        .O(i__carry__0_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_3__2
       (.I0(i__carry__0_i_8_n_7),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry__0_i_9_n_7),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_3__3
       (.I0(data3[11]),
        .I1(data4[11]),
        .O(i__carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__4
       (.I0(data3[4]),
        .I1(data4[4]),
        .O(i__carry__0_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__5
       (.I0(data4[4]),
        .I1(data3[4]),
        .O(i__carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4
       (.I0(data4[6]),
        .I1(data3[6]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__0
       (.I0(data4[13]),
        .I1(data3[13]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__1
       (.I0(data3[13]),
        .I1(data4[13]),
        .O(i__carry__0_i_4__1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__0_i_4__2
       (.I0(i__carry__0_i_8_n_4),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry__0_i_9_n_4),
        .O(i__carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__3
       (.I0(data4[13]),
        .I1(data3[13]),
        .O(i__carry__0_i_4__3_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__0_i_5
       (.I0(i__carry__0_i_9_n_5),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry__0_i_8_n_5),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5__0
       (.I0(data3[5]),
        .I1(data4[5]),
        .I2(data4[6]),
        .I3(data3[6]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5__1
       (.I0(data3[12]),
        .I1(data4[12]),
        .I2(data4[13]),
        .I3(data3[13]),
        .O(i__carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5__2
       (.I0(data4[12]),
        .I1(data3[12]),
        .I2(data3[13]),
        .I3(data4[13]),
        .O(i__carry__0_i_5__2_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5__3
       (.I0(data3[12]),
        .I1(data4[12]),
        .I2(data4[13]),
        .I3(data3[13]),
        .O(i__carry__0_i_5__3_n_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    i__carry__0_i_6
       (.I0(i__carry__0_i_9_n_6),
        .I1(i__carry__0_i_8_n_6),
        .I2(data3[21]),
        .I3(diff_min1_carry_n_1),
        .I4(data4[21]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    i__carry__0_i_6__0
       (.I0(data4[5]),
        .I1(data3[5]),
        .I2(data4[4]),
        .I3(data3[4]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_6__1
       (.I0(data3[11]),
        .I1(data4[11]),
        .I2(data4[12]),
        .I3(data3[12]),
        .O(i__carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_6__2
       (.I0(data4[11]),
        .I1(data3[11]),
        .I2(data3[12]),
        .I3(data4[12]),
        .O(i__carry__0_i_6__2_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_6__3
       (.I0(data3[11]),
        .I1(data4[11]),
        .I2(data4[12]),
        .I3(data3[12]),
        .O(i__carry__0_i_6__3_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_7
       (.I0(data4[3]),
        .I1(data3[3]),
        .I2(data4[4]),
        .I3(data3[4]),
        .O(i__carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    i__carry__0_i_7__0
       (.I0(i__carry__0_i_9_n_7),
        .I1(i__carry__0_i_8_n_7),
        .I2(data3[20]),
        .I3(diff_min1_carry_n_1),
        .I4(data4[20]),
        .O(i__carry__0_i_7__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_8
       (.CI(i__carry_i_9_n_0),
        .CO({NLW_i__carry__0_i_8_CO_UNCONNECTED[3],i__carry__0_i_8_n_1,i__carry__0_i_8_n_2,i__carry__0_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_10_n_0,data3[21:20]}),
        .O({i__carry__0_i_8_n_4,i__carry__0_i_8_n_5,i__carry__0_i_8_n_6,i__carry__0_i_8_n_7}),
        .S({i__carry__0_i_11_n_0,i__carry__0_i_12_n_0,i__carry__0_i_13_n_0,i__carry__0_i_14_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_9
       (.CI(i__carry_i_10_n_0),
        .CO({NLW_i__carry__0_i_9_CO_UNCONNECTED[3],i__carry__0_i_9_n_1,i__carry__0_i_9_n_2,i__carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_15_n_0,data4[21:20]}),
        .O({i__carry__0_i_9_n_4,i__carry__0_i_9_n_5,i__carry__0_i_9_n_6,i__carry__0_i_9_n_7}),
        .S({i__carry__0_i_16_n_0,i__carry__0_i_17_n_0,i__carry__0_i_18_n_0,i__carry__0_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(data4[2]),
        .O(i__carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_10
       (.CI(1'b0),
        .CO({i__carry_i_10_n_0,i__carry_i_10_n_1,i__carry_i_10_n_2,i__carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI(data4[19:16]),
        .O({i__carry_i_10_n_4,i__carry_i_10_n_5,i__carry_i_10_n_6,i__carry_i_10_n_7}),
        .S({i__carry_i_15_n_0,i__carry_i_16_n_0,i__carry_i_17_n_0,i__carry_i_18_n_0}));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry_i_11
       (.I0(p_2_in),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(data3[19]),
        .O(i__carry_i_11_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry_i_12
       (.I0(p_2_in),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(data3[18]),
        .O(i__carry_i_12_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry_i_13
       (.I0(p_2_in),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(data3[17]),
        .O(i__carry_i_13_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry_i_14
       (.I0(p_2_in),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(data3[16]),
        .O(i__carry_i_14_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry_i_15
       (.I0(\diff_min1_inferred__0/i__carry_n_0 ),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(ptmp_min1_carry_n_0),
        .I3(data4[19]),
        .O(i__carry_i_15_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry_i_16
       (.I0(\diff_min1_inferred__0/i__carry_n_0 ),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(ptmp_min1_carry_n_0),
        .I3(data4[18]),
        .O(i__carry_i_16_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry_i_17
       (.I0(\diff_min1_inferred__0/i__carry_n_0 ),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(ptmp_min1_carry_n_0),
        .I3(data4[17]),
        .O(i__carry_i_17_n_0));
  LUT4 #(
    .INIT(16'hD827)) 
    i__carry_i_18
       (.I0(\diff_min1_inferred__0/i__carry_n_0 ),
        .I1(\ptmp_min1_inferred__0/i__carry_n_1 ),
        .I2(ptmp_min1_carry_n_0),
        .I3(data4[16]),
        .O(i__carry_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__0
       (.I0(data3[6]),
        .I1(data4[6]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__1
       (.I0(data4[12]),
        .I1(data3[12]),
        .I2(data4[13]),
        .I3(data3[13]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__10
       (.I0(data4[11]),
        .I1(data3[11]),
        .O(i__carry_i_1__10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__11
       (.I0(data3[3]),
        .I1(data4[3]),
        .O(i__carry_i_1__11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__12
       (.I0(data4[11]),
        .I1(data3[11]),
        .O(i__carry_i_1__12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__13
       (.I0(data3[11]),
        .I1(data4[11]),
        .O(i__carry_i_1__13_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__2
       (.I0(data3[12]),
        .I1(data4[12]),
        .I2(data3[13]),
        .I3(data4[13]),
        .O(i__carry_i_1__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_1__3
       (.I0(i__carry_i_9_n_4),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry_i_10_n_4),
        .O(i__carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__4
       (.I0(data3[11]),
        .I1(data4[11]),
        .O(i__carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__5
       (.I0(data4[11]),
        .I1(data3[11]),
        .O(i__carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__6
       (.I0(data4[6]),
        .I1(data3[6]),
        .O(i__carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__7
       (.I0(data4[11]),
        .I1(data3[11]),
        .O(i__carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__8
       (.I0(data3[11]),
        .I1(data4[11]),
        .O(i__carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__9
       (.I0(data4[3]),
        .I1(data3[3]),
        .O(i__carry_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(data4[4]),
        .I1(data3[4]),
        .I2(data3[5]),
        .I3(data4[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(data3[4]),
        .I1(data4[4]),
        .I2(data4[5]),
        .I3(data3[5]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(data4[10]),
        .I1(data3[10]),
        .I2(data3[11]),
        .I3(data4[11]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__10
       (.I0(data4[2]),
        .I1(data3[2]),
        .O(i__carry_i_2__10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__11
       (.I0(data4[10]),
        .I1(data3[10]),
        .O(i__carry_i_2__11_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_2__12
       (.I0(data4[11]),
        .I1(data3[11]),
        .I2(data4[10]),
        .O(i__carry_i_2__12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__13
       (.I0(data3[10]),
        .I1(data4[10]),
        .O(i__carry_i_2__13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__2
       (.I0(data3[10]),
        .I1(data4[10]),
        .I2(data4[11]),
        .I3(data3[11]),
        .O(i__carry_i_2__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_2__3
       (.I0(i__carry_i_9_n_5),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry_i_10_n_5),
        .O(i__carry_i_2__3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2__4
       (.I0(data4[2]),
        .I1(data4[3]),
        .I2(data3[3]),
        .O(i__carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__5
       (.I0(data3[2]),
        .I1(data4[2]),
        .O(i__carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__6
       (.I0(data3[10]),
        .I1(data4[10]),
        .O(i__carry_i_2__6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_2__7
       (.I0(data4[11]),
        .I1(data3[11]),
        .I2(data4[10]),
        .O(i__carry_i_2__7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_2__8
       (.I0(data3[11]),
        .I1(data4[11]),
        .I2(data3[10]),
        .O(i__carry_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__9
       (.I0(data4[10]),
        .I1(data3[10]),
        .O(i__carry_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(data4[2]),
        .I1(data3[2]),
        .I2(data3[3]),
        .I3(data4[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(data3[2]),
        .I1(data4[2]),
        .I2(data4[3]),
        .I3(data3[3]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(data4[8]),
        .I1(data3[8]),
        .I2(data3[9]),
        .I3(data4[9]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__10
       (.I0(data4[9]),
        .I1(data3[9]),
        .O(i__carry_i_3__10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__11
       (.I0(data4[1]),
        .I1(data3[1]),
        .O(i__carry_i_3__11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__12
       (.I0(data4[9]),
        .I1(data3[9]),
        .O(i__carry_i_3__12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__13
       (.I0(data3[9]),
        .I1(data4[9]),
        .O(i__carry_i_3__13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__2
       (.I0(data3[8]),
        .I1(data4[8]),
        .I2(data4[9]),
        .I3(data3[9]),
        .O(i__carry_i_3__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3__3
       (.I0(i__carry_i_9_n_6),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry_i_10_n_6),
        .O(i__carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__4
       (.I0(data3[10]),
        .I1(data4[10]),
        .O(i__carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__5
       (.I0(data3[2]),
        .I1(data4[2]),
        .O(i__carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__6
       (.I0(data3[10]),
        .I1(data4[10]),
        .O(i__carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__7
       (.I0(data3[10]),
        .I1(data4[10]),
        .O(i__carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__8
       (.I0(data3[1]),
        .I1(data4[1]),
        .O(i__carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__9
       (.I0(data3[9]),
        .I1(data4[9]),
        .O(i__carry_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(data4[0]),
        .I1(data3[0]),
        .I2(data3[1]),
        .I3(data4[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(data3[0]),
        .I1(data4[0]),
        .I2(data4[1]),
        .I3(data3[1]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__1
       (.I0(data4[8]),
        .I1(data3[8]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__10
       (.I0(data3[1]),
        .I1(data4[1]),
        .O(i__carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__11
       (.I0(data4[9]),
        .I1(data3[9]),
        .O(i__carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__12
       (.I0(data3[9]),
        .I1(data4[9]),
        .O(i__carry_i_4__12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__13
       (.I0(data3[9]),
        .I1(data4[9]),
        .O(i__carry_i_4__13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_4__2
       (.I0(data3[12]),
        .I1(data4[12]),
        .I2(data3[13]),
        .I3(data4[13]),
        .O(i__carry_i_4__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_4__3
       (.I0(i__carry_i_9_n_7),
        .I1(diff_min1_carry_n_1),
        .I2(i__carry_i_10_n_7),
        .O(i__carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__4
       (.I0(data4[8]),
        .I1(data3[8]),
        .O(i__carry_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_4__5
       (.I0(data3[12]),
        .I1(data4[12]),
        .I2(data3[13]),
        .I3(data4[13]),
        .O(i__carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__6
       (.I0(data4[8]),
        .I1(data3[8]),
        .O(i__carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__7
       (.I0(data4[8]),
        .I1(data3[8]),
        .O(i__carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__8
       (.I0(data3[0]),
        .I1(data4[0]),
        .O(i__carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__9
       (.I0(data4[0]),
        .I1(data3[0]),
        .O(i__carry_i_4__9_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(data3[10]),
        .I1(data4[10]),
        .I2(data3[11]),
        .I3(data4[11]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(data3[10]),
        .I1(data4[10]),
        .I2(data3[11]),
        .I3(data4[11]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__1
       (.I0(data4[8]),
        .I1(data3[8]),
        .O(i__carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__2
       (.I0(data4[8]),
        .I1(data3[8]),
        .O(i__carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__3
       (.I0(data4[8]),
        .I1(data3[8]),
        .O(i__carry_i_5__3_n_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    i__carry_i_5__4
       (.I0(i__carry_i_10_n_4),
        .I1(i__carry_i_9_n_4),
        .I2(data3[19]),
        .I3(diff_min1_carry_n_1),
        .I4(data4[19]),
        .O(i__carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__5
       (.I0(data4[6]),
        .I1(data3[6]),
        .O(i__carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__6
       (.I0(data3[6]),
        .I1(data4[6]),
        .O(i__carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__7
       (.I0(data3[0]),
        .I1(data4[0]),
        .O(i__carry_i_5__7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(data3[4]),
        .I1(data4[4]),
        .I2(data3[5]),
        .I3(data4[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(data3[9]),
        .I1(data4[9]),
        .I2(data4[8]),
        .I3(data3[8]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(data3[4]),
        .I1(data4[4]),
        .I2(data3[5]),
        .I3(data4[5]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(data3[9]),
        .I1(data4[9]),
        .I2(data4[8]),
        .I3(data3[8]),
        .O(i__carry_i_6__2_n_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    i__carry_i_6__3
       (.I0(i__carry_i_10_n_5),
        .I1(i__carry_i_9_n_5),
        .I2(data3[18]),
        .I3(diff_min1_carry_n_1),
        .I4(data4[18]),
        .O(i__carry_i_6__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(data3[2]),
        .I1(data4[2]),
        .I2(data4[3]),
        .I3(data3[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(data3[2]),
        .I1(data4[2]),
        .I2(data4[3]),
        .I3(data3[3]),
        .O(i__carry_i_7__0_n_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    i__carry_i_7__1
       (.I0(i__carry_i_10_n_6),
        .I1(i__carry_i_9_n_6),
        .I2(data3[17]),
        .I3(diff_min1_carry_n_1),
        .I4(data4[17]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(data3[0]),
        .I1(data4[0]),
        .I2(data3[1]),
        .I3(data4[1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(data3[0]),
        .I1(data4[0]),
        .I2(data3[1]),
        .I3(data4[1]),
        .O(i__carry_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    i__carry_i_8__1
       (.I0(i__carry_i_10_n_7),
        .I1(i__carry_i_9_n_7),
        .I2(data3[16]),
        .I3(diff_min1_carry_n_1),
        .I4(data4[16]),
        .O(i__carry_i_8__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_9
       (.CI(1'b0),
        .CO({i__carry_i_9_n_0,i__carry_i_9_n_1,i__carry_i_9_n_2,i__carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI(data3[19:16]),
        .O({i__carry_i_9_n_4,i__carry_i_9_n_5,i__carry_i_9_n_6,i__carry_i_9_n_7}),
        .S({i__carry_i_11_n_0,i__carry_i_12_n_0,i__carry_i_13_n_0,i__carry_i_14_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_csec[5]_i_2 
       (.I0(data3[1]),
        .I1(data3[0]),
        .O(\lap_csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \lap_csec[6]_i_3 
       (.I0(data3[4]),
        .I1(data3[2]),
        .I2(data3[0]),
        .I3(data3[1]),
        .I4(data3[3]),
        .O(\lap_csec[6]_i_3_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_61),
        .Q(data3[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_60),
        .Q(data3[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_59),
        .Q(data3[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_58),
        .Q(data3[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_57),
        .Q(data3[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_56),
        .Q(data3[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_3),
        .CLR(SR),
        .D(ed_clear_n_55),
        .Q(data3[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    lap_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_clear_n_62),
        .Q(data1[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lap_min1_carry
       (.CI(1'b0),
        .CO({lap_min1_carry_n_0,lap_min1_carry_n_1,lap_min1_carry_n_2,lap_min1_carry_n_3}),
        .CYINIT(lap_min1_carry_i_1_n_0),
        .DI({lap_min1_carry_i_2_n_0,lap_min1_carry_i_3_n_0,1'b0,1'b0}),
        .O(NLW_lap_min1_carry_O_UNCONNECTED[3:0]),
        .S({lap_min1_carry_i_4_n_0,lap_min1_carry_i_5_n_0,lap_min1_carry_i_6_n_0,lap_min1_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lap_min1_carry__0
       (.CI(lap_min1_carry_n_0),
        .CO({lap_min1_carry__0_n_0,lap_min1_carry__0_n_1,lap_min1_carry__0_n_2,lap_min1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_sysclk2[15],lap_min1_carry__0_i_1_n_0,lap_min1_carry__0_i_2_n_0}),
        .O(NLW_lap_min1_carry__0_O_UNCONNECTED[3:0]),
        .S({lap_min1_carry__0_i_3_n_0,lap_min1_carry__0_i_4_n_0,lap_min1_carry__0_i_5_n_0,lap_min1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    lap_min1_carry__0_i_1
       (.I0(cnt_sysclk2[12]),
        .I1(cnt_sysclk2[13]),
        .O(lap_min1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_min1_carry__0_i_2
       (.I0(cnt_sysclk2[10]),
        .I1(cnt_sysclk2[11]),
        .O(lap_min1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_min1_carry__0_i_3
       (.I0(cnt_sysclk2[16]),
        .I1(cnt_sysclk2[17]),
        .O(lap_min1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    lap_min1_carry__0_i_4
       (.I0(cnt_sysclk2[14]),
        .I1(cnt_sysclk2[15]),
        .O(lap_min1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry__0_i_5
       (.I0(cnt_sysclk2[13]),
        .I1(cnt_sysclk2[12]),
        .O(lap_min1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry__0_i_6
       (.I0(cnt_sysclk2[11]),
        .I1(cnt_sysclk2[10]),
        .O(lap_min1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lap_min1_carry__1
       (.CI(lap_min1_carry__0_n_0),
        .CO({lap_min1_carry__1_n_0,lap_min1_carry__1_n_1,lap_min1_carry__1_n_2,lap_min1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({lap_min1_carry__1_i_1_n_0,lap_min1_carry__1_i_2_n_0,lap_min1_carry__1_i_3_n_0,1'b0}),
        .O(NLW_lap_min1_carry__1_O_UNCONNECTED[3:0]),
        .S({lap_min1_carry__1_i_4_n_0,lap_min1_carry__1_i_5_n_0,lap_min1_carry__1_i_6_n_0,lap_min1_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    lap_min1_carry__1_i_1
       (.I0(cnt_sysclk2[24]),
        .I1(cnt_sysclk2[25]),
        .O(lap_min1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_min1_carry__1_i_2
       (.I0(cnt_sysclk2[22]),
        .I1(cnt_sysclk2[23]),
        .O(lap_min1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_min1_carry__1_i_3
       (.I0(cnt_sysclk2[20]),
        .I1(cnt_sysclk2[21]),
        .O(lap_min1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry__1_i_4
       (.I0(cnt_sysclk2[25]),
        .I1(cnt_sysclk2[24]),
        .O(lap_min1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry__1_i_5
       (.I0(cnt_sysclk2[23]),
        .I1(cnt_sysclk2[22]),
        .O(lap_min1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry__1_i_6
       (.I0(cnt_sysclk2[21]),
        .I1(cnt_sysclk2[20]),
        .O(lap_min1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_min1_carry__1_i_7
       (.I0(cnt_sysclk2[18]),
        .I1(cnt_sysclk2[19]),
        .O(lap_min1_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lap_min1_carry__2
       (.CI(lap_min1_carry__1_n_0),
        .CO({NLW_lap_min1_carry__2_CO_UNCONNECTED[3],lap_min1_carry__2_n_1,lap_min1_carry__2_n_2,lap_min1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,lap_min1_carry__2_i_1_n_0,lap_min1_carry__2_i_2_n_0,lap_min1_carry__2_i_3_n_0}),
        .O(NLW_lap_min1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,lap_min1_carry__2_i_4_n_0,lap_min1_carry__2_i_5_n_0,lap_min1_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    lap_min1_carry__2_i_1
       (.I0(cnt_sysclk2[30]),
        .I1(cnt_sysclk2[31]),
        .O(lap_min1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_min1_carry__2_i_2
       (.I0(cnt_sysclk2[28]),
        .I1(cnt_sysclk2[29]),
        .O(lap_min1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_min1_carry__2_i_3
       (.I0(cnt_sysclk2[26]),
        .I1(cnt_sysclk2[27]),
        .O(lap_min1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry__2_i_4
       (.I0(cnt_sysclk2[31]),
        .I1(cnt_sysclk2[30]),
        .O(lap_min1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry__2_i_5
       (.I0(cnt_sysclk2[29]),
        .I1(cnt_sysclk2[28]),
        .O(lap_min1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry__2_i_6
       (.I0(cnt_sysclk2[27]),
        .I1(cnt_sysclk2[26]),
        .O(lap_min1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_min1_carry_i_1
       (.I0(cnt_sysclk2[0]),
        .I1(cnt_sysclk2[1]),
        .O(lap_min1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_min1_carry_i_2
       (.I0(cnt_sysclk2[8]),
        .I1(cnt_sysclk2[9]),
        .O(lap_min1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    lap_min1_carry_i_3
       (.I0(cnt_sysclk2[6]),
        .I1(cnt_sysclk2[7]),
        .O(lap_min1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    lap_min1_carry_i_4
       (.I0(cnt_sysclk2[9]),
        .I1(cnt_sysclk2[8]),
        .O(lap_min1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lap_min1_carry_i_5
       (.I0(cnt_sysclk2[7]),
        .I1(cnt_sysclk2[6]),
        .O(lap_min1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_min1_carry_i_6
       (.I0(cnt_sysclk2[4]),
        .I1(cnt_sysclk2[5]),
        .O(lap_min1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    lap_min1_carry_i_7
       (.I0(cnt_sysclk2[2]),
        .I1(cnt_sysclk2[3]),
        .O(lap_min1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    \lap_min[5]_i_3 
       (.I0(data3[12]),
        .I1(data3[11]),
        .I2(data3[13]),
        .I3(data3[10]),
        .I4(data3[8]),
        .I5(data3[9]),
        .O(\lap_min[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_min[5]_i_6 
       (.I0(data3[17]),
        .I1(data3[16]),
        .O(\lap_min[5]_i_6_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_48),
        .Q(data3[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_47),
        .Q(data3[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_46),
        .Q(data3[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_45),
        .Q(data3[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_44),
        .Q(data3[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_5),
        .CLR(SR),
        .D(ed_clear_n_43),
        .Q(data3[21]));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \lap_sec[5]_i_3 
       (.I0(data3[6]),
        .I1(data3[5]),
        .I2(data3[2]),
        .I3(data3[3]),
        .I4(data3[4]),
        .I5(\lap_csec[5]_i_2_n_0 ),
        .O(\lap_sec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_sec[5]_i_5 
       (.I0(data3[9]),
        .I1(data3[8]),
        .O(\lap_sec[5]_i_5_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(ed_clear_n_54),
        .Q(data3[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(ed_clear_n_53),
        .Q(data3[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(ed_clear_n_52),
        .Q(data3[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(ed_clear_n_51),
        .Q(data3[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(ed_clear_n_50),
        .Q(data3[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \lap_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_4),
        .CLR(SR),
        .D(ed_clear_n_49),
        .Q(data3[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min[0]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(data2[16]),
        .O(\min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \min[1]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(data2[16]),
        .I2(data2[17]),
        .O(\min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \min[2]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(data2[16]),
        .I2(data2[17]),
        .I3(data2[18]),
        .O(\min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \min[3]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(data2[17]),
        .I2(data2[16]),
        .I3(data2[18]),
        .I4(data2[19]),
        .O(\min[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \min[4]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(data2[18]),
        .I2(data2[16]),
        .I3(data2[17]),
        .I4(data2[19]),
        .I5(data2[20]),
        .O(\min[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \min[4]_i_2 
       (.I0(run),
        .I1(\min[5]_i_4_n_0 ),
        .I2(data2[18]),
        .I3(data2[21]),
        .I4(data2[19]),
        .I5(data2[20]),
        .O(\min[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0280AA00AA00AA00)) 
    \min[5]_i_2 
       (.I0(run),
        .I1(\min[5]_i_4_n_0 ),
        .I2(data2[18]),
        .I3(data2[21]),
        .I4(data2[19]),
        .I5(data2[20]),
        .O(\min[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    \min[5]_i_3 
       (.I0(data2[12]),
        .I1(data2[11]),
        .I2(data2[13]),
        .I3(data2[10]),
        .I4(data2[8]),
        .I5(data2[9]),
        .O(\min[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \min[5]_i_4 
       (.I0(data2[17]),
        .I1(data2[16]),
        .O(\min[5]_i_4_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(\min[0]_i_1_n_0 ),
        .Q(data2[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(\min[1]_i_1_n_0 ),
        .Q(data2[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(\min[2]_i_1_n_0 ),
        .Q(data2[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(\min[3]_i_1_n_0 ),
        .Q(data2[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(\min[4]_i_1_n_0 ),
        .Q(data2[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_8),
        .CLR(SR),
        .D(\min[5]_i_2_n_0 ),
        .Q(data2[21]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ptmp_min1_carry
       (.CI(1'b0),
        .CO({ptmp_min1_carry_n_0,ptmp_min1_carry_n_1,ptmp_min1_carry_n_2,ptmp_min1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({ptmp_min2,ptmp_min1_carry_i_2_n_0,ptmp_min1_carry_i_3_n_0,ptmp_min1_carry_i_4_n_0}),
        .O(NLW_ptmp_min1_carry_O_UNCONNECTED[3:0]),
        .S({ptmp_min1_carry_i_5_n_0,ptmp_min1_carry_i_6_n_0,ptmp_min1_carry_i_7_n_0,ptmp_min1_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ptmp_min1_carry_i_1
       (.I0(data4[13]),
        .I1(data4[11]),
        .I2(data4[9]),
        .I3(data4[8]),
        .I4(data4[10]),
        .I5(data4[12]),
        .O(ptmp_min2));
  LUT5 #(
    .INIT(32'h71303017)) 
    ptmp_min1_carry_i_2
       (.I0(data3[12]),
        .I1(data3[13]),
        .I2(data4[13]),
        .I3(ptmp_min1_carry_i_9_n_0),
        .I4(data4[12]),
        .O(ptmp_min1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h7373733110101007)) 
    ptmp_min1_carry_i_3
       (.I0(data3[10]),
        .I1(data3[11]),
        .I2(data4[10]),
        .I3(data4[8]),
        .I4(data4[9]),
        .I5(data4[11]),
        .O(ptmp_min1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h3107)) 
    ptmp_min1_carry_i_4
       (.I0(data3[8]),
        .I1(data3[9]),
        .I2(data4[8]),
        .I3(data4[9]),
        .O(ptmp_min1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ptmp_min1_carry_i_5
       (.I0(data4[12]),
        .I1(data4[10]),
        .I2(data4[8]),
        .I3(data4[9]),
        .I4(data4[11]),
        .I5(data4[13]),
        .O(ptmp_min1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h81422814)) 
    ptmp_min1_carry_i_6
       (.I0(data3[13]),
        .I1(data4[12]),
        .I2(ptmp_min1_carry_i_9_n_0),
        .I3(data4[13]),
        .I4(data3[12]),
        .O(ptmp_min1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990000600099990)) 
    ptmp_min1_carry_i_7
       (.I0(data3[11]),
        .I1(data4[11]),
        .I2(data4[9]),
        .I3(data4[8]),
        .I4(data4[10]),
        .I5(data3[10]),
        .O(ptmp_min1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h4224)) 
    ptmp_min1_carry_i_8
       (.I0(data3[8]),
        .I1(data4[8]),
        .I2(data4[9]),
        .I3(data3[9]),
        .O(ptmp_min1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ptmp_min1_carry_i_9
       (.I0(data4[10]),
        .I1(data4[8]),
        .I2(data4[9]),
        .I3(data4[11]),
        .O(ptmp_min1_carry_i_9_n_0));
  CARRY4 \ptmp_min1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_ptmp_min1_inferred__0/i__carry_CO_UNCONNECTED [3],\ptmp_min1_inferred__0/i__carry_n_1 ,\ptmp_min1_inferred__0/i__carry_n_2 ,\ptmp_min1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0}),
        .O(\NLW_ptmp_min1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_4__5_n_0,i__carry_i_5__0_n_0,i__carry_i_6__2_n_0}));
  FDCE run_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_start_n_0),
        .Q(run));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(run),
        .I1(data3[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Q[0]),
        .I5(data2[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(data5[0]),
        .I1(\s00_axi_rdata[23] [0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[0]),
        .I5(\s00_axi_rdata[23]_0 [0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(Q[10]),
        .I1(data2[10]),
        .I2(data3[10]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(data5[10]),
        .I1(\s00_axi_rdata[23] [10]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[10]),
        .I5(\s00_axi_rdata[23]_0 [10]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(Q[11]),
        .I1(data2[11]),
        .I2(data3[11]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(data5[11]),
        .I1(\s00_axi_rdata[23] [11]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[11]),
        .I5(\s00_axi_rdata[23]_0 [11]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(Q[12]),
        .I1(data2[12]),
        .I2(data3[12]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(data5[12]),
        .I1(\s00_axi_rdata[23] [12]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[12]),
        .I5(\s00_axi_rdata[23]_0 [12]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[13]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(Q[13]),
        .I1(data2[13]),
        .I2(data3[13]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(data5[13]),
        .I1(\s00_axi_rdata[23] [13]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[13]),
        .I5(\s00_axi_rdata[23]_0 [13]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(Q[14]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[23] [14]),
        .I3(data5[14]),
        .I4(\s00_axi_rdata[23]_0 [14]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(Q[15]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[23] [15]),
        .I3(data5[15]),
        .I4(\s00_axi_rdata[23]_0 [15]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[16]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(Q[16]),
        .I1(data2[16]),
        .I2(data3[16]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(data5[16]),
        .I1(\s00_axi_rdata[23] [16]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[16]),
        .I5(\s00_axi_rdata[23]_0 [16]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[17]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(Q[17]),
        .I1(data2[17]),
        .I2(data3[17]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(data5[17]),
        .I1(\s00_axi_rdata[23] [17]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[17]),
        .I5(\s00_axi_rdata[23]_0 [17]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[18]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(Q[18]),
        .I1(data2[18]),
        .I2(data3[18]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(data5[18]),
        .I1(\s00_axi_rdata[23] [18]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[18]),
        .I5(\s00_axi_rdata[23]_0 [18]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[19]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(Q[19]),
        .I1(data2[19]),
        .I2(data3[19]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(data5[19]),
        .I1(\s00_axi_rdata[23] [19]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[19]),
        .I5(\s00_axi_rdata[23]_0 [19]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(data1[1]),
        .I1(data3[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Q[1]),
        .I5(data2[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(data5[1]),
        .I1(\s00_axi_rdata[23] [1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[1]),
        .I5(\s00_axi_rdata[23]_0 [1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[20]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(Q[20]),
        .I1(data2[20]),
        .I2(data3[20]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(data5[20]),
        .I1(\s00_axi_rdata[23] [20]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[20]),
        .I5(\s00_axi_rdata[23]_0 [20]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[21]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(Q[21]),
        .I1(data2[21]),
        .I2(data3[21]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(data5[21]),
        .I1(\s00_axi_rdata[23] [21]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[21]),
        .I5(\s00_axi_rdata[23]_0 [21]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(Q[22]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[23] [22]),
        .I3(data5[22]),
        .I4(\s00_axi_rdata[23]_0 [22]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(Q[23]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[23] [23]),
        .I3(data5[23]),
        .I4(\s00_axi_rdata[23]_0 [23]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(data1[2]),
        .I1(data3[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Q[2]),
        .I5(data2[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(data5[2]),
        .I1(\s00_axi_rdata[23] [2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[2]),
        .I5(\s00_axi_rdata[23]_0 [2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(Q[3]),
        .I1(data2[3]),
        .I2(data3[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(data5[3]),
        .I1(\s00_axi_rdata[23] [3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[3]),
        .I5(\s00_axi_rdata[23]_0 [3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(Q[4]),
        .I1(data2[4]),
        .I2(data3[4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(data5[4]),
        .I1(\s00_axi_rdata[23] [4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[4]),
        .I5(\s00_axi_rdata[23]_0 [4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(Q[5]),
        .I1(data2[5]),
        .I2(data3[5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(data5[5]),
        .I1(\s00_axi_rdata[23] [5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[5]),
        .I5(\s00_axi_rdata[23]_0 [5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(Q[6]),
        .I1(data2[6]),
        .I2(data3[6]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(data5[6]),
        .I1(\s00_axi_rdata[23] [6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[6]),
        .I5(\s00_axi_rdata[23]_0 [6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(Q[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[23] [7]),
        .I3(data5[7]),
        .I4(\s00_axi_rdata[23]_0 [7]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(Q[8]),
        .I1(data2[8]),
        .I2(data3[8]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(data5[8]),
        .I1(\s00_axi_rdata[23] [8]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[8]),
        .I5(\s00_axi_rdata[23]_0 [8]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(Q[9]),
        .I1(data2[9]),
        .I2(data3[9]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(data5[9]),
        .I1(\s00_axi_rdata[23] [9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(data4[9]),
        .I5(\s00_axi_rdata[23]_0 [9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sec[0]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(data2[8]),
        .O(\sec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \sec[1]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(data2[8]),
        .I2(data2[9]),
        .O(\sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \sec[2]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(data2[8]),
        .I2(data2[9]),
        .I3(data2[10]),
        .O(\sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \sec[3]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(data2[9]),
        .I2(data2[8]),
        .I3(data2[10]),
        .I4(data2[11]),
        .O(\sec[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \sec[4]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(data2[10]),
        .I2(data2[8]),
        .I3(data2[9]),
        .I4(data2[11]),
        .I5(data2[12]),
        .O(\sec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \sec[4]_i_2 
       (.I0(run),
        .I1(\sec[5]_i_4_n_0 ),
        .I2(data2[10]),
        .I3(data2[13]),
        .I4(data2[11]),
        .I5(data2[12]),
        .O(\sec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0280AA00AA00AA00)) 
    \sec[5]_i_2 
       (.I0(run),
        .I1(\sec[5]_i_4_n_0 ),
        .I2(data2[10]),
        .I3(data2[13]),
        .I4(data2[11]),
        .I5(data2[12]),
        .O(\sec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \sec[5]_i_3 
       (.I0(data2[6]),
        .I1(data2[5]),
        .I2(data2[2]),
        .I3(data2[3]),
        .I4(data2[4]),
        .I5(\csec[5]_i_2_n_0 ),
        .O(\sec[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sec[5]_i_4 
       (.I0(data2[9]),
        .I1(data2[8]),
        .O(\sec[5]_i_4_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\sec[0]_i_1_n_0 ),
        .Q(data2[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\sec[1]_i_1_n_0 ),
        .Q(data2[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\sec[2]_i_1_n_0 ),
        .Q(data2[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\sec[3]_i_1_n_0 ),
        .Q(data2[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\sec[4]_i_1_n_0 ),
        .Q(data2[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_9),
        .CLR(SR),
        .D(\sec[5]_i_2_n_0 ),
        .Q(data2[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sign_flag_i_1
       (.I0(run),
        .I1(diff_min1_carry_n_1),
        .O(sign_flag0_out));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    sign_flag_reg
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_7),
        .CLR(SR),
        .D(sign_flag0_out),
        .Q(data1[2]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tmp_min1_carry
       (.CI(1'b0),
        .CO({p_6_in,tmp_min1_carry_n_1,tmp_min1_carry_n_2,tmp_min1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({tmp_min2,tmp_min1_carry_i_2_n_0,tmp_min1_carry_i_3_n_0,tmp_min1_carry_i_4_n_0}),
        .O(NLW_tmp_min1_carry_O_UNCONNECTED[3:0]),
        .S({tmp_min1_carry_i_5_n_0,tmp_min1_carry_i_6_n_0,tmp_min1_carry_i_7_n_0,tmp_min1_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    tmp_min1_carry_i_1
       (.I0(data3[13]),
        .I1(data3[11]),
        .I2(data3[9]),
        .I3(data3[8]),
        .I4(data3[10]),
        .I5(data3[12]),
        .O(tmp_min2));
  LUT5 #(
    .INIT(32'h71303017)) 
    tmp_min1_carry_i_2
       (.I0(data4[12]),
        .I1(data4[13]),
        .I2(data3[13]),
        .I3(tmp_min1_carry_i_9_n_0),
        .I4(data3[12]),
        .O(tmp_min1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h7373733110101007)) 
    tmp_min1_carry_i_3
       (.I0(data4[10]),
        .I1(data4[11]),
        .I2(data3[10]),
        .I3(data3[8]),
        .I4(data3[9]),
        .I5(data3[11]),
        .O(tmp_min1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h01D3)) 
    tmp_min1_carry_i_4
       (.I0(data4[8]),
        .I1(data3[8]),
        .I2(data3[9]),
        .I3(data4[9]),
        .O(tmp_min1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tmp_min1_carry_i_5
       (.I0(data3[12]),
        .I1(data3[10]),
        .I2(data3[8]),
        .I3(data3[9]),
        .I4(data3[11]),
        .I5(data3[13]),
        .O(tmp_min1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h81422814)) 
    tmp_min1_carry_i_6
       (.I0(data4[13]),
        .I1(data3[12]),
        .I2(tmp_min1_carry_i_9_n_0),
        .I3(data3[13]),
        .I4(data4[12]),
        .O(tmp_min1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990000600099990)) 
    tmp_min1_carry_i_7
       (.I0(data4[11]),
        .I1(data3[11]),
        .I2(data3[9]),
        .I3(data3[8]),
        .I4(data3[10]),
        .I5(data4[10]),
        .O(tmp_min1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h4224)) 
    tmp_min1_carry_i_8
       (.I0(data4[8]),
        .I1(data3[8]),
        .I2(data3[9]),
        .I3(data4[9]),
        .O(tmp_min1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    tmp_min1_carry_i_9
       (.I0(data3[10]),
        .I1(data3[8]),
        .I2(data3[9]),
        .I3(data3[11]),
        .O(tmp_min1_carry_i_9_n_0));
  CARRY4 \tmp_min1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_tmp_min1_inferred__0/i__carry_CO_UNCONNECTED [3],p_9_in,\tmp_min1_inferred__0/i__carry_n_2 ,\tmp_min1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0}),
        .O(\NLW_tmp_min1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_4__2_n_0,i__carry_i_5_n_0,i__carry_i_6__0_n_0}));
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
