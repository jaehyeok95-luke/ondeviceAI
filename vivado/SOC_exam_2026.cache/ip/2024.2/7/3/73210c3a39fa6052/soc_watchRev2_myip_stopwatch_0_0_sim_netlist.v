// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Mar  7 17:11:22 2026
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
    D,
    \lap_min_reg[3] ,
    \lap_sec_reg[3] ,
    \lap_csec_reg[5] ,
    E,
    run_reg,
    ff_cur_reg_0,
    run_reg_0,
    run_reg_1,
    run_reg_2,
    run_reg_3,
    ff_old_reg_0,
    \lap_count_reg[1] ,
    \lap_count_reg[1]_0 ,
    \lap_count_reg[1]_1 ,
    \lap_count_reg[1]_2 ,
    \lap_count_reg[1]_3 ,
    lap_flag010_out,
    run_reg_4,
    sign_flag2_out,
    clear_p,
    Q,
    s00_axi_aclk,
    s00_axi_aresetn,
    CO,
    \cnt_sysclk2_reg[0] ,
    \cnt_sysclk2_reg[0]_0 ,
    cnt_sysclk20,
    \lap_min_reg[5] ,
    \lap_min_reg[5]_0 ,
    \lap_sec_reg[5] ,
    \lap_sec_reg[5]_0 ,
    \lap_sec_reg[5]_1 ,
    \lap_csec_reg[6] ,
    \lap_csec_reg[5]_0 ,
    \lap_csec_reg[6]_0 ,
    \lap_sec_reg[0] ,
    cnt_sysclk21__0,
    \min_reg[0] ,
    \min_reg[0]_0 ,
    \min_reg[0]_1 ,
    \diff_csec_reg[1] ,
    \diff_csec_reg[1]_0 ,
    \diff_csec_reg[1]_1 ,
    \diff_csec_reg[1]_2 ,
    \diff_csec_reg[1]_3 ,
    \diff_csec_reg[2] ,
    \diff_csec_reg[2]_0 ,
    \diff_csec_reg[2]_1 ,
    \diff_csec_reg[2]_2 ,
    \diff_csec_reg[3] ,
    \diff_csec_reg[3]_0 ,
    \diff_csec_reg[3]_1 ,
    \diff_csec_reg[3]_2 ,
    \diff_csec_reg[4] ,
    \diff_csec_reg[4]_0 ,
    \diff_csec_reg[4]_1 ,
    \diff_csec_reg[4]_2 ,
    \diff_csec_reg[5] ,
    \diff_csec_reg[5]_0 ,
    \diff_csec_reg[5]_1 ,
    \diff_csec_reg[5]_2 ,
    \diff_csec_reg[6] ,
    \diff_csec_reg[6]_0 ,
    \diff_csec_reg[6]_1 ,
    \diff_csec_reg[6]_2 ,
    \diff_csec_reg[7] ,
    \diff_csec_reg[7]_0 ,
    \diff_csec_reg[7]_1 ,
    \diff_csec_reg[7]_2 ,
    O,
    \diff_sec_reg[6] ,
    \diff_sec_reg[6]_0 ,
    \diff_sec_reg[6]_1 ,
    \diff_sec_reg[6]_2 ,
    \diff_sec_reg[7] ,
    \diff_min_reg[7] ,
    \diff_min_reg[7]_0 ,
    \diff_csec_reg[1]_4 ,
    \diff_csec_reg[1]_5 ,
    \snap_lap_csec_reg[0] ,
    \snap_lap_csec_reg[0]_0 ,
    sign_flag_reg,
    sign_flag_reg_0);
  output [1:0]p_0_in;
  output [0:0]AR;
  output [31:0]D;
  output [5:0]\lap_min_reg[3] ;
  output [5:0]\lap_sec_reg[3] ;
  output [6:0]\lap_csec_reg[5] ;
  output [0:0]E;
  output [0:0]run_reg;
  output [0:0]ff_cur_reg_0;
  output [0:0]run_reg_0;
  output [0:0]run_reg_1;
  output [0:0]run_reg_2;
  output [0:0]run_reg_3;
  output [0:0]ff_old_reg_0;
  output [6:0]\lap_count_reg[1] ;
  output \lap_count_reg[1]_0 ;
  output [1:0]\lap_count_reg[1]_1 ;
  output \lap_count_reg[1]_2 ;
  output \lap_count_reg[1]_3 ;
  output lap_flag010_out;
  output [0:0]run_reg_4;
  output sign_flag2_out;
  output clear_p;
  input [0:0]Q;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [0:0]CO;
  input \cnt_sysclk2_reg[0] ;
  input [0:0]\cnt_sysclk2_reg[0]_0 ;
  input [30:0]cnt_sysclk20;
  input [5:0]\lap_min_reg[5] ;
  input \lap_min_reg[5]_0 ;
  input [5:0]\lap_sec_reg[5] ;
  input \lap_sec_reg[5]_0 ;
  input \lap_sec_reg[5]_1 ;
  input [6:0]\lap_csec_reg[6] ;
  input \lap_csec_reg[5]_0 ;
  input \lap_csec_reg[6]_0 ;
  input \lap_sec_reg[0] ;
  input cnt_sysclk21__0;
  input \min_reg[0] ;
  input [0:0]\min_reg[0]_0 ;
  input \min_reg[0]_1 ;
  input \diff_csec_reg[1] ;
  input \diff_csec_reg[1]_0 ;
  input \diff_csec_reg[1]_1 ;
  input \diff_csec_reg[1]_2 ;
  input \diff_csec_reg[1]_3 ;
  input \diff_csec_reg[2] ;
  input \diff_csec_reg[2]_0 ;
  input \diff_csec_reg[2]_1 ;
  input \diff_csec_reg[2]_2 ;
  input \diff_csec_reg[3] ;
  input \diff_csec_reg[3]_0 ;
  input \diff_csec_reg[3]_1 ;
  input \diff_csec_reg[3]_2 ;
  input \diff_csec_reg[4] ;
  input \diff_csec_reg[4]_0 ;
  input \diff_csec_reg[4]_1 ;
  input \diff_csec_reg[4]_2 ;
  input \diff_csec_reg[5] ;
  input \diff_csec_reg[5]_0 ;
  input \diff_csec_reg[5]_1 ;
  input \diff_csec_reg[5]_2 ;
  input \diff_csec_reg[6] ;
  input \diff_csec_reg[6]_0 ;
  input \diff_csec_reg[6]_1 ;
  input \diff_csec_reg[6]_2 ;
  input \diff_csec_reg[7] ;
  input \diff_csec_reg[7]_0 ;
  input \diff_csec_reg[7]_1 ;
  input \diff_csec_reg[7]_2 ;
  input [1:0]O;
  input [0:0]\diff_sec_reg[6] ;
  input [0:0]\diff_sec_reg[6]_0 ;
  input \diff_sec_reg[6]_1 ;
  input \diff_sec_reg[6]_2 ;
  input \diff_sec_reg[7] ;
  input [0:0]\diff_min_reg[7] ;
  input [0:0]\diff_min_reg[7]_0 ;
  input [3:0]\diff_csec_reg[1]_4 ;
  input \diff_csec_reg[1]_5 ;
  input \snap_lap_csec_reg[0] ;
  input \snap_lap_csec_reg[0]_0 ;
  input [0:0]sign_flag_reg;
  input [0:0]sign_flag_reg_0;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [0:0]Q;
  wire clear_p;
  wire [30:0]cnt_sysclk20;
  wire cnt_sysclk21__0;
  wire \cnt_sysclk2_reg[0] ;
  wire [0:0]\cnt_sysclk2_reg[0]_0 ;
  wire \diff_csec_reg[1] ;
  wire \diff_csec_reg[1]_0 ;
  wire \diff_csec_reg[1]_1 ;
  wire \diff_csec_reg[1]_2 ;
  wire \diff_csec_reg[1]_3 ;
  wire [3:0]\diff_csec_reg[1]_4 ;
  wire \diff_csec_reg[1]_5 ;
  wire \diff_csec_reg[2] ;
  wire \diff_csec_reg[2]_0 ;
  wire \diff_csec_reg[2]_1 ;
  wire \diff_csec_reg[2]_2 ;
  wire \diff_csec_reg[3] ;
  wire \diff_csec_reg[3]_0 ;
  wire \diff_csec_reg[3]_1 ;
  wire \diff_csec_reg[3]_2 ;
  wire \diff_csec_reg[4] ;
  wire \diff_csec_reg[4]_0 ;
  wire \diff_csec_reg[4]_1 ;
  wire \diff_csec_reg[4]_2 ;
  wire \diff_csec_reg[5] ;
  wire \diff_csec_reg[5]_0 ;
  wire \diff_csec_reg[5]_1 ;
  wire \diff_csec_reg[5]_2 ;
  wire \diff_csec_reg[6] ;
  wire \diff_csec_reg[6]_0 ;
  wire \diff_csec_reg[6]_1 ;
  wire \diff_csec_reg[6]_2 ;
  wire \diff_csec_reg[7] ;
  wire \diff_csec_reg[7]_0 ;
  wire \diff_csec_reg[7]_1 ;
  wire \diff_csec_reg[7]_2 ;
  wire [0:0]\diff_min_reg[7] ;
  wire [0:0]\diff_min_reg[7]_0 ;
  wire [0:0]\diff_sec_reg[6] ;
  wire [0:0]\diff_sec_reg[6]_0 ;
  wire \diff_sec_reg[6]_1 ;
  wire \diff_sec_reg[6]_2 ;
  wire \diff_sec_reg[7] ;
  wire [0:0]ff_cur_reg_0;
  wire [0:0]ff_old_reg_0;
  wire [6:0]\lap_count_reg[1] ;
  wire \lap_count_reg[1]_0 ;
  wire [1:0]\lap_count_reg[1]_1 ;
  wire \lap_count_reg[1]_2 ;
  wire \lap_count_reg[1]_3 ;
  wire \lap_csec[6]_i_4_n_0 ;
  wire [6:0]\lap_csec_reg[5] ;
  wire \lap_csec_reg[5]_0 ;
  wire [6:0]\lap_csec_reg[6] ;
  wire \lap_csec_reg[6]_0 ;
  wire lap_flag010_out;
  wire \lap_min[5]_i_5_n_0 ;
  wire \lap_min[5]_i_7_n_0 ;
  wire [5:0]\lap_min_reg[3] ;
  wire [5:0]\lap_min_reg[5] ;
  wire \lap_min_reg[5]_0 ;
  wire \lap_sec[5]_i_4_n_0 ;
  wire \lap_sec_reg[0] ;
  wire [5:0]\lap_sec_reg[3] ;
  wire [5:0]\lap_sec_reg[5] ;
  wire \lap_sec_reg[5]_0 ;
  wire \lap_sec_reg[5]_1 ;
  wire \min_reg[0] ;
  wire [0:0]\min_reg[0]_0 ;
  wire \min_reg[0]_1 ;
  wire [1:0]p_0_in;
  wire [0:0]run_reg;
  wire [0:0]run_reg_0;
  wire [0:0]run_reg_1;
  wire [0:0]run_reg_2;
  wire [0:0]run_reg_3;
  wire [0:0]run_reg_4;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sign_flag2_out;
  wire [0:0]sign_flag_reg;
  wire [0:0]sign_flag_reg_0;
  wire \snap_lap_csec_reg[0] ;
  wire \snap_lap_csec_reg[0]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \cnt_sysclk1[31]_i_1 
       (.I0(\cnt_sysclk2_reg[0] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(run_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004044)) 
    \cnt_sysclk2[0]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\cnt_sysclk2_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[10]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[9]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[11]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[10]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[12]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[11]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[13]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[12]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[14]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[13]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[15]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[14]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[16]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[15]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[17]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[16]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[18]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[17]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[19]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[18]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[1]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[20]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[19]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[21]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[20]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[22]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[21]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[23]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[22]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[24]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[23]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[25]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[24]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[26]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[25]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[27]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[26]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[28]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[27]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[29]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[28]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[2]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[30]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[29]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    \cnt_sysclk2[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\cnt_sysclk2_reg[0] ),
        .I3(cnt_sysclk21__0),
        .O(ff_cur_reg_0));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[31]_i_2 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[30]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[3]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[4]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[5]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[4]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[6]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[5]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[7]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[6]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[8]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[7]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h40440000)) 
    \cnt_sysclk2[9]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(cnt_sysclk20[8]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \csec[6]_i_1 
       (.I0(\min_reg[0]_0 ),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(run_reg_3));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \diff_csec[1]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec_reg[1] ),
        .I2(\diff_csec_reg[1]_0 ),
        .I3(\diff_csec_reg[1]_1 ),
        .I4(\diff_csec_reg[1]_2 ),
        .I5(\diff_csec_reg[1]_3 ),
        .O(\lap_count_reg[1] [0]));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \diff_csec[2]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec_reg[2] ),
        .I2(\diff_csec_reg[2]_0 ),
        .I3(\diff_csec_reg[2]_1 ),
        .I4(\diff_csec_reg[1]_2 ),
        .I5(\diff_csec_reg[2]_2 ),
        .O(\lap_count_reg[1] [1]));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \diff_csec[3]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec_reg[3] ),
        .I2(\diff_csec_reg[3]_0 ),
        .I3(\diff_csec_reg[3]_1 ),
        .I4(\diff_csec_reg[1]_2 ),
        .I5(\diff_csec_reg[3]_2 ),
        .O(\lap_count_reg[1] [2]));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \diff_csec[4]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec_reg[4] ),
        .I2(\diff_csec_reg[4]_0 ),
        .I3(\diff_csec_reg[4]_1 ),
        .I4(\diff_csec_reg[1]_2 ),
        .I5(\diff_csec_reg[4]_2 ),
        .O(\lap_count_reg[1] [3]));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \diff_csec[5]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec_reg[5] ),
        .I2(\diff_csec_reg[5]_0 ),
        .I3(\diff_csec_reg[5]_1 ),
        .I4(\diff_csec_reg[1]_2 ),
        .I5(\diff_csec_reg[5]_2 ),
        .O(\lap_count_reg[1] [4]));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \diff_csec[6]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec_reg[6] ),
        .I2(\diff_csec_reg[6]_0 ),
        .I3(\diff_csec_reg[6]_1 ),
        .I4(\diff_csec_reg[1]_2 ),
        .I5(\diff_csec_reg[6]_2 ),
        .O(\lap_count_reg[1] [5]));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \diff_csec[7]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec_reg[7] ),
        .I2(\diff_csec_reg[7]_0 ),
        .I3(\diff_csec_reg[7]_1 ),
        .I4(\diff_csec_reg[1]_2 ),
        .I5(\diff_csec_reg[7]_2 ),
        .O(\lap_count_reg[1] [6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \diff_min[7]_i_3 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_min_reg[7] ),
        .I2(\diff_min_reg[7]_0 ),
        .I3(\diff_sec_reg[6]_0 ),
        .O(\lap_count_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \diff_min[7]_i_5 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_min_reg[7] ),
        .I2(\diff_min_reg[7]_0 ),
        .I3(\diff_sec_reg[6]_0 ),
        .O(\lap_count_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0A008888)) 
    \diff_sec[6]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(O[0]),
        .I2(\diff_sec_reg[6] ),
        .I3(\diff_sec_reg[6]_0 ),
        .I4(\diff_sec_reg[6]_1 ),
        .I5(\diff_sec_reg[6]_2 ),
        .O(\lap_count_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA0A008888)) 
    \diff_sec[7]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(O[1]),
        .I2(\diff_sec_reg[6] ),
        .I3(\diff_sec_reg[6]_0 ),
        .I4(\diff_sec_reg[6]_1 ),
        .I5(\diff_sec_reg[7] ),
        .O(\lap_count_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00000000)) 
    \diff_sec[7]_i_2 
       (.I0(\diff_csec_reg[1]_4 [1]),
        .I1(\diff_csec_reg[1]_4 [0]),
        .I2(\diff_csec_reg[1]_4 [3]),
        .I3(\diff_csec_reg[1]_4 [2]),
        .I4(\diff_csec_reg[1]_5 ),
        .I5(lap_flag010_out),
        .O(\lap_count_reg[1]_0 ));
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
    .INIT(8'hBA)) 
    \lap_count[7]_i_1 
       (.I0(cnt_sysclk21__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(ff_old_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_csec[0]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(\lap_csec_reg[6] [0]),
        .O(\lap_csec_reg[5] [0]));
  LUT3 #(
    .INIT(8'h28)) 
    \lap_csec[1]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(\lap_csec_reg[6] [0]),
        .I2(\lap_csec_reg[6] [1]),
        .O(\lap_csec_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_csec[2]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(\lap_csec_reg[6] [0]),
        .I2(\lap_csec_reg[6] [1]),
        .I3(\lap_csec_reg[6] [2]),
        .O(\lap_csec_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_csec[3]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(\lap_csec_reg[6] [1]),
        .I2(\lap_csec_reg[6] [0]),
        .I3(\lap_csec_reg[6] [2]),
        .I4(\lap_csec_reg[6] [3]),
        .O(\lap_csec_reg[5] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_csec[4]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(\lap_csec_reg[6] [2]),
        .I2(\lap_csec_reg[6] [0]),
        .I3(\lap_csec_reg[6] [1]),
        .I4(\lap_csec_reg[6] [3]),
        .I5(\lap_csec_reg[6] [4]),
        .O(\lap_csec_reg[5] [4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_csec[5]_i_1 
       (.I0(\lap_csec[6]_i_4_n_0 ),
        .I1(\lap_csec_reg[6] [3]),
        .I2(\lap_csec_reg[5]_0 ),
        .I3(\lap_csec_reg[6] [2]),
        .I4(\lap_csec_reg[6] [4]),
        .I5(\lap_csec_reg[6] [5]),
        .O(\lap_csec_reg[5] [5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08080F08)) 
    \lap_csec[6]_i_1 
       (.I0(CO),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(cnt_sysclk21__0),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \lap_csec[6]_i_2 
       (.I0(\lap_csec_reg[6] [5]),
        .I1(\lap_csec_reg[6]_0 ),
        .I2(\lap_csec[6]_i_4_n_0 ),
        .I3(\lap_csec_reg[6] [6]),
        .O(\lap_csec_reg[5] [6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \lap_csec[6]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\cnt_sysclk2_reg[0] ),
        .I3(\lap_sec_reg[0] ),
        .O(\lap_csec[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    lap_flag_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\cnt_sysclk2_reg[0] ),
        .O(lap_flag010_out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_min[0]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(\lap_min_reg[5] [0]),
        .O(\lap_min_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_min[1]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(\lap_min_reg[5] [0]),
        .I2(\lap_min_reg[5] [1]),
        .O(\lap_min_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_min[2]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(\lap_min_reg[5] [0]),
        .I2(\lap_min_reg[5] [1]),
        .I3(\lap_min_reg[5] [2]),
        .O(\lap_min_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_min[3]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(\lap_min_reg[5] [1]),
        .I2(\lap_min_reg[5] [0]),
        .I3(\lap_min_reg[5] [2]),
        .I4(\lap_min_reg[5] [3]),
        .O(\lap_min_reg[3] [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_min[4]_i_1 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(\lap_min_reg[5] [2]),
        .I2(\lap_min_reg[5] [0]),
        .I3(\lap_min_reg[5] [1]),
        .I4(\lap_min_reg[5] [3]),
        .I5(\lap_min_reg[5] [4]),
        .O(\lap_min_reg[3] [4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_min[5]_i_2 
       (.I0(\lap_min[5]_i_5_n_0 ),
        .I1(\lap_min_reg[5] [3]),
        .I2(\lap_min_reg[5]_0 ),
        .I3(\lap_min_reg[5] [2]),
        .I4(\lap_min_reg[5] [4]),
        .I5(\lap_min_reg[5] [5]),
        .O(\lap_min_reg[3] [5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_min[5]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(clear_p));
  LUT6 #(
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \lap_min[5]_i_5 
       (.I0(\lap_min[5]_i_7_n_0 ),
        .I1(\lap_min_reg[5]_0 ),
        .I2(\lap_min_reg[5] [2]),
        .I3(\lap_min_reg[5] [5]),
        .I4(\lap_min_reg[5] [3]),
        .I5(\lap_min_reg[5] [4]),
        .O(\lap_min[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \lap_min[5]_i_7 
       (.I0(\cnt_sysclk2_reg[0] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(\lap_min[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_sec[0]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [0]),
        .O(\lap_sec_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_sec[1]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [0]),
        .I2(\lap_sec_reg[5] [1]),
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
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_sec[4]_i_1 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [2]),
        .I2(\lap_sec_reg[5] [0]),
        .I3(\lap_sec_reg[5] [1]),
        .I4(\lap_sec_reg[5] [3]),
        .I5(\lap_sec_reg[5] [4]),
        .O(\lap_sec_reg[3] [4]));
  LUT6 #(
    .INIT(64'h0080008000FF0080)) 
    \lap_sec[5]_i_1 
       (.I0(\lap_sec_reg[0] ),
        .I1(\cnt_sysclk2_reg[0] ),
        .I2(CO),
        .I3(cnt_sysclk21__0),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(run_reg));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lap_sec[5]_i_2 
       (.I0(\lap_sec[5]_i_4_n_0 ),
        .I1(\lap_sec_reg[5] [3]),
        .I2(\lap_sec_reg[5]_0 ),
        .I3(\lap_sec_reg[5] [2]),
        .I4(\lap_sec_reg[5] [4]),
        .I5(\lap_sec_reg[5] [5]),
        .O(\lap_sec_reg[3] [5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \lap_sec[5]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\cnt_sysclk2_reg[0] ),
        .I3(\lap_sec_reg[5]_1 ),
        .O(\lap_sec[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000800080FF8000)) 
    \min[5]_i_1 
       (.I0(\min_reg[0] ),
        .I1(\min_reg[0]_0 ),
        .I2(\min_reg[0]_1 ),
        .I3(\cnt_sysclk2_reg[0] ),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(run_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80808F80)) 
    \sec[5]_i_1 
       (.I0(\min_reg[0]_1 ),
        .I1(\min_reg[0]_0 ),
        .I2(\cnt_sysclk2_reg[0] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(run_reg_2));
  LUT6 #(
    .INIT(64'h4040404044444044)) 
    sign_flag_i_2
       (.I0(\diff_min_reg[7] ),
        .I1(lap_flag010_out),
        .I2(\diff_min_reg[7]_0 ),
        .I3(sign_flag_reg),
        .I4(sign_flag_reg_0),
        .I5(\diff_sec_reg[6]_0 ),
        .O(sign_flag2_out));
  LUT5 #(
    .INIT(32'h08000808)) 
    \snap_lap_count[7]_i_1 
       (.I0(\cnt_sysclk2_reg[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\snap_lap_csec_reg[0] ),
        .I4(\snap_lap_csec_reg[0]_0 ),
        .O(run_reg_4));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
   (ff_cur_reg_0,
    ff_old_reg_0,
    D,
    cnt_sysclk21__0,
    start_p,
    E,
    Q,
    s00_axi_aclk,
    AR,
    \lap_count_reg[7] ,
    \lap_count_reg[0] ,
    \lap_count_reg[5] ,
    \lap_count_reg[6] ,
    \lap_count_reg[0]_0 ,
    p_0_in);
  output ff_cur_reg_0;
  output ff_old_reg_0;
  output [7:0]D;
  output cnt_sysclk21__0;
  output start_p;
  output [0:0]E;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]AR;
  input [7:0]\lap_count_reg[7] ;
  input \lap_count_reg[0] ;
  input \lap_count_reg[5] ;
  input \lap_count_reg[6] ;
  input \lap_count_reg[0]_0 ;
  input [1:0]p_0_in;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire cnt_sysclk21__0;
  wire ff_cur_reg_0;
  wire ff_old_reg_0;
  wire \lap_count[7]_i_5_n_0 ;
  wire \lap_count_reg[0] ;
  wire \lap_count_reg[0]_0 ;
  wire \lap_count_reg[5] ;
  wire \lap_count_reg[6] ;
  wire [7:0]\lap_count_reg[7] ;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire start_p;

  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q),
        .Q(ff_cur_reg_0));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_0),
        .Q(ff_old_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \lap_count[0]_i_1 
       (.I0(\lap_count_reg[7] [0]),
        .I1(\lap_count_reg[0] ),
        .I2(cnt_sysclk21__0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \lap_count[1]_i_1 
       (.I0(\lap_count[7]_i_5_n_0 ),
        .I1(\lap_count_reg[7] [0]),
        .I2(\lap_count_reg[7] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lap_count[2]_i_1 
       (.I0(\lap_count[7]_i_5_n_0 ),
        .I1(\lap_count_reg[7] [0]),
        .I2(\lap_count_reg[7] [1]),
        .I3(\lap_count_reg[7] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lap_count[3]_i_1 
       (.I0(\lap_count[7]_i_5_n_0 ),
        .I1(\lap_count_reg[7] [1]),
        .I2(\lap_count_reg[7] [0]),
        .I3(\lap_count_reg[7] [2]),
        .I4(\lap_count_reg[7] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \lap_count[4]_i_1 
       (.I0(\lap_count_reg[7] [3]),
        .I1(\lap_count_reg[7] [1]),
        .I2(\lap_count_reg[7] [0]),
        .I3(\lap_count_reg[7] [2]),
        .I4(\lap_count[7]_i_5_n_0 ),
        .I5(\lap_count_reg[7] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \lap_count[5]_i_1 
       (.I0(\lap_count_reg[5] ),
        .I1(\lap_count[7]_i_5_n_0 ),
        .I2(\lap_count_reg[7] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \lap_count[6]_i_1 
       (.I0(\lap_count_reg[6] ),
        .I1(\lap_count[7]_i_5_n_0 ),
        .I2(\lap_count_reg[7] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \lap_count[7]_i_2 
       (.I0(\lap_count_reg[7] [6]),
        .I1(\lap_count_reg[6] ),
        .I2(\lap_count[7]_i_5_n_0 ),
        .I3(\lap_count_reg[7] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \lap_count[7]_i_3 
       (.I0(start_p),
        .I1(\lap_count_reg[0]_0 ),
        .I2(\lap_count_reg[7] [2]),
        .I3(\lap_count_reg[7] [3]),
        .I4(\lap_count_reg[7] [0]),
        .I5(\lap_count_reg[7] [1]),
        .O(cnt_sysclk21__0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lap_count[7]_i_5 
       (.I0(\lap_count_reg[0] ),
        .I1(cnt_sysclk21__0),
        .O(\lap_count[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0D00)) 
    \prev_sec[5]_i_1 
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sign_flag_i_3
       (.I0(ff_cur_reg_0),
        .I1(ff_old_reg_0),
        .O(start_p));
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
  wire myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_15;
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
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire \stop_watch_inst/clear_p ;
  wire [1:0]\stop_watch_inst/ed_start/p_0_in ;
  wire \stop_watch_inst/sign_flag2_out ;
  wire \stop_watch_inst/start_p ;

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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI myip_stopwatch_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_arready_reg_1(axi_arready_i_1_n_0),
        .axi_awready0__0(axi_awready0__0),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_awready_reg_1(axi_awready_i_2_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(axi_wready_i_1_n_0),
        .clear_p(\stop_watch_inst/clear_p ),
        .\lap_count_reg[1] (myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_15),
        .p_0_in(\stop_watch_inst/ed_start/p_0_in ),
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
        .sign_flag2_out(\stop_watch_inst/sign_flag2_out ),
        .sign_flag_reg(sign_flag_i_1_n_0),
        .start_p(\stop_watch_inst/start_p ),
        .state_read(state_read),
        .state_write(state_write));
  LUT3 #(
    .INIT(8'hB4)) 
    run_i_1
       (.I0(\stop_watch_inst/ed_start/p_0_in [0]),
        .I1(\stop_watch_inst/ed_start/p_0_in [1]),
        .I2(run),
        .O(run_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBBAB000088A8)) 
    sign_flag_i_1
       (.I0(\stop_watch_inst/sign_flag2_out ),
        .I1(myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_15),
        .I2(\stop_watch_inst/clear_p ),
        .I3(run),
        .I4(\stop_watch_inst/start_p ),
        .I5(sign_flag),
        .O(sign_flag_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI
   (p_0_in,
    run,
    sign_flag,
    s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    state_write,
    state_read,
    axi_awready0__0,
    clear_p,
    \lap_count_reg[1] ,
    sign_flag2_out,
    start_p,
    s00_axi_rdata,
    s00_axi_aclk,
    run_reg,
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
  output run;
  output sign_flag;
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [1:0]state_write;
  output [1:0]state_read;
  output axi_awready0__0;
  output clear_p;
  output \lap_count_reg[1] ;
  output sign_flag2_out;
  output start_p;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input run_reg;
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

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
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
  wire clear_p;
  wire \lap_count_reg[1] ;
  wire [1:0]p_0_in;
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
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire sign_flag;
  wire sign_flag2_out;
  wire sign_flag_reg;
  wire [1:0]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire [31:2]slv_reg0__0;
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
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
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
        .Q(slv_reg0__0[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
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
       (.Q({slv_reg0__0,slv_reg0}),
        .SR(stop_watch_inst_n_1),
        .clear_p(clear_p),
        .ff_cur_reg(p_0_in[1]),
        .ff_old_reg(p_0_in[0]),
        .\lap_count_reg[1]_0 (\lap_count_reg[1] ),
        .run_reg_0(run),
        .run_reg_1(run_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[31] (slv_reg7),
        .\s00_axi_rdata[31]_0 (slv_reg6),
        .sel0(sel0),
        .sign_flag(sign_flag),
        .sign_flag2_out(sign_flag2_out),
        .sign_flag_reg_0(sign_flag_reg),
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
   (ff_cur_reg,
    SR,
    ff_old_reg,
    run_reg_0,
    sign_flag,
    clear_p,
    \lap_count_reg[1]_0 ,
    sign_flag2_out,
    start_p,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    run_reg_1,
    sign_flag_reg_0,
    s00_axi_aresetn,
    sel0,
    \s00_axi_rdata[31] ,
    \s00_axi_rdata[31]_0 );
  output ff_cur_reg;
  output [0:0]SR;
  output ff_old_reg;
  output run_reg_0;
  output sign_flag;
  output clear_p;
  output \lap_count_reg[1]_0 ;
  output sign_flag2_out;
  output start_p;
  output [31:0]s00_axi_rdata;
  input [31:0]Q;
  input s00_axi_aclk;
  input run_reg_1;
  input sign_flag_reg_0;
  input s00_axi_aresetn;
  input [2:0]sel0;
  input [31:0]\s00_axi_rdata[31] ;
  input [31:0]\s00_axi_rdata[31]_0 ;

  wire [31:0]Q;
  wire [0:0]SR;
  wire clear_p;
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
  wire cnt_sysclk2;
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
  wire cnt_sysclk21__0;
  wire \cnt_sysclk21_inferred__0/i__carry__0_n_0 ;
  wire \cnt_sysclk21_inferred__0/i__carry__0_n_1 ;
  wire \cnt_sysclk21_inferred__0/i__carry__0_n_2 ;
  wire \cnt_sysclk21_inferred__0/i__carry__0_n_3 ;
  wire \cnt_sysclk21_inferred__0/i__carry__1_n_0 ;
  wire \cnt_sysclk21_inferred__0/i__carry__1_n_1 ;
  wire \cnt_sysclk21_inferred__0/i__carry__1_n_2 ;
  wire \cnt_sysclk21_inferred__0/i__carry__1_n_3 ;
  wire \cnt_sysclk21_inferred__0/i__carry__2_n_1 ;
  wire \cnt_sysclk21_inferred__0/i__carry__2_n_2 ;
  wire \cnt_sysclk21_inferred__0/i__carry__2_n_3 ;
  wire \cnt_sysclk21_inferred__0/i__carry_n_0 ;
  wire \cnt_sysclk21_inferred__0/i__carry_n_1 ;
  wire \cnt_sysclk21_inferred__0/i__carry_n_2 ;
  wire \cnt_sysclk21_inferred__0/i__carry_n_3 ;
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
  wire \cnt_sysclk2_reg_n_0_[20] ;
  wire \cnt_sysclk2_reg_n_0_[21] ;
  wire \cnt_sysclk2_reg_n_0_[22] ;
  wire \cnt_sysclk2_reg_n_0_[23] ;
  wire \cnt_sysclk2_reg_n_0_[24] ;
  wire \cnt_sysclk2_reg_n_0_[25] ;
  wire \cnt_sysclk2_reg_n_0_[26] ;
  wire \cnt_sysclk2_reg_n_0_[27] ;
  wire \cnt_sysclk2_reg_n_0_[28] ;
  wire \cnt_sysclk2_reg_n_0_[29] ;
  wire \cnt_sysclk2_reg_n_0_[2] ;
  wire \cnt_sysclk2_reg_n_0_[30] ;
  wire \cnt_sysclk2_reg_n_0_[31] ;
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
  wire [5:0]data0;
  wire [5:0]data1;
  wire [5:0]data2;
  wire [5:0]data3;
  wire [7:0]diff_csec;
  wire [7:1]diff_csec0;
  wire [6:0]diff_csec01_in;
  wire diff_csec0_carry__0_i_1_n_0;
  wire diff_csec0_carry__0_i_2_n_0;
  wire diff_csec0_carry__0_i_3_n_0;
  wire diff_csec0_carry__0_n_0;
  wire diff_csec0_carry__0_n_2;
  wire diff_csec0_carry__0_n_3;
  wire diff_csec0_carry__0_n_5;
  wire diff_csec0_carry__0_n_6;
  wire diff_csec0_carry__0_n_7;
  wire diff_csec0_carry_i_1_n_0;
  wire diff_csec0_carry_i_2_n_0;
  wire diff_csec0_carry_i_3_n_0;
  wire diff_csec0_carry_i_4_n_0;
  wire diff_csec0_carry_n_0;
  wire diff_csec0_carry_n_1;
  wire diff_csec0_carry_n_2;
  wire diff_csec0_carry_n_3;
  wire diff_csec0_carry_n_4;
  wire diff_csec0_carry_n_5;
  wire diff_csec0_carry_n_6;
  wire diff_csec0_carry_n_7;
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
  wire \diff_csec0_inferred__1/i__carry__0_n_4 ;
  wire \diff_csec0_inferred__1/i__carry__0_n_5 ;
  wire \diff_csec0_inferred__1/i__carry__0_n_6 ;
  wire \diff_csec0_inferred__1/i__carry__0_n_7 ;
  wire \diff_csec0_inferred__1/i__carry_n_0 ;
  wire \diff_csec0_inferred__1/i__carry_n_1 ;
  wire \diff_csec0_inferred__1/i__carry_n_2 ;
  wire \diff_csec0_inferred__1/i__carry_n_3 ;
  wire \diff_csec0_inferred__1/i__carry_n_4 ;
  wire \diff_csec0_inferred__1/i__carry_n_5 ;
  wire \diff_csec0_inferred__1/i__carry_n_6 ;
  wire \diff_csec0_inferred__2/i__carry__0_n_1 ;
  wire \diff_csec0_inferred__2/i__carry__0_n_2 ;
  wire \diff_csec0_inferred__2/i__carry__0_n_3 ;
  wire \diff_csec0_inferred__2/i__carry_n_0 ;
  wire \diff_csec0_inferred__2/i__carry_n_1 ;
  wire \diff_csec0_inferred__2/i__carry_n_2 ;
  wire \diff_csec0_inferred__2/i__carry_n_3 ;
  wire \diff_csec[0]_i_1_n_0 ;
  wire \diff_csec[0]_i_2_n_0 ;
  wire \diff_csec[0]_i_3_n_0 ;
  wire \diff_csec[0]_i_4_n_0 ;
  wire \diff_csec[0]_i_5_n_0 ;
  wire \diff_csec[0]_i_6_n_0 ;
  wire \diff_csec[0]_i_7_n_0 ;
  wire \diff_csec[1]_i_2_n_0 ;
  wire \diff_csec[1]_i_3_n_0 ;
  wire \diff_csec[1]_i_4_n_0 ;
  wire \diff_csec[1]_i_5_n_0 ;
  wire \diff_csec[2]_i_2_n_0 ;
  wire \diff_csec[2]_i_3_n_0 ;
  wire \diff_csec[2]_i_4_n_0 ;
  wire \diff_csec[2]_i_5_n_0 ;
  wire \diff_csec[3]_i_2_n_0 ;
  wire \diff_csec[3]_i_3_n_0 ;
  wire \diff_csec[3]_i_4_n_0 ;
  wire \diff_csec[3]_i_5_n_0 ;
  wire \diff_csec[4]_i_2_n_0 ;
  wire \diff_csec[4]_i_3_n_0 ;
  wire \diff_csec[4]_i_4_n_0 ;
  wire \diff_csec[4]_i_5_n_0 ;
  wire \diff_csec[5]_i_2_n_0 ;
  wire \diff_csec[5]_i_3_n_0 ;
  wire \diff_csec[5]_i_4_n_0 ;
  wire \diff_csec[5]_i_5_n_0 ;
  wire \diff_csec[6]_i_2_n_0 ;
  wire \diff_csec[6]_i_3_n_0 ;
  wire \diff_csec[6]_i_4_n_0 ;
  wire \diff_csec[6]_i_5_n_0 ;
  wire \diff_csec[7]_i_10_n_0 ;
  wire \diff_csec[7]_i_11_n_0 ;
  wire \diff_csec[7]_i_12_n_0 ;
  wire \diff_csec[7]_i_13_n_0 ;
  wire \diff_csec[7]_i_14_n_0 ;
  wire \diff_csec[7]_i_15_n_0 ;
  wire \diff_csec[7]_i_2_n_0 ;
  wire \diff_csec[7]_i_3_n_0 ;
  wire \diff_csec[7]_i_4_n_0 ;
  wire \diff_csec[7]_i_5_n_0 ;
  wire \diff_csec[7]_i_6_n_0 ;
  wire \diff_csec[7]_i_8_n_0 ;
  wire \diff_csec[7]_i_9_n_0 ;
  wire \diff_csec_reg[7]_i_7_n_1 ;
  wire \diff_csec_reg[7]_i_7_n_2 ;
  wire \diff_csec_reg[7]_i_7_n_3 ;
  wire [7:0]diff_min;
  wire diff_min0_carry__0_i_1_n_0;
  wire diff_min0_carry__0_i_2_n_0;
  wire diff_min0_carry__0_n_1;
  wire diff_min0_carry__0_n_3;
  wire diff_min0_carry_i_1_n_0;
  wire diff_min0_carry_i_2_n_0;
  wire diff_min0_carry_i_3_n_0;
  wire diff_min0_carry_i_4_n_0;
  wire diff_min0_carry_n_0;
  wire diff_min0_carry_n_1;
  wire diff_min0_carry_n_2;
  wire diff_min0_carry_n_3;
  wire \diff_min0_inferred__0/i__carry__0_n_1 ;
  wire \diff_min0_inferred__0/i__carry__0_n_3 ;
  wire \diff_min0_inferred__0/i__carry_n_0 ;
  wire \diff_min0_inferred__0/i__carry_n_1 ;
  wire \diff_min0_inferred__0/i__carry_n_2 ;
  wire \diff_min0_inferred__0/i__carry_n_3 ;
  wire \diff_min0_inferred__1/i__carry__0_n_1 ;
  wire \diff_min0_inferred__1/i__carry__0_n_3 ;
  wire \diff_min0_inferred__1/i__carry_n_0 ;
  wire \diff_min0_inferred__1/i__carry_n_1 ;
  wire \diff_min0_inferred__1/i__carry_n_2 ;
  wire \diff_min0_inferred__1/i__carry_n_3 ;
  wire \diff_min0_inferred__2/i__carry__0_n_1 ;
  wire \diff_min0_inferred__2/i__carry__0_n_3 ;
  wire \diff_min0_inferred__2/i__carry_n_0 ;
  wire \diff_min0_inferred__2/i__carry_n_1 ;
  wire \diff_min0_inferred__2/i__carry_n_2 ;
  wire \diff_min0_inferred__2/i__carry_n_3 ;
  wire \diff_min[0]_i_1_n_0 ;
  wire \diff_min[0]_i_2_n_0 ;
  wire \diff_min[1]_i_1_n_0 ;
  wire \diff_min[1]_i_2_n_0 ;
  wire \diff_min[2]_i_1_n_0 ;
  wire \diff_min[2]_i_2_n_0 ;
  wire \diff_min[3]_i_1_n_0 ;
  wire \diff_min[3]_i_2_n_0 ;
  wire \diff_min[4]_i_1_n_0 ;
  wire \diff_min[4]_i_2_n_0 ;
  wire \diff_min[5]_i_1_n_0 ;
  wire \diff_min[5]_i_2_n_0 ;
  wire \diff_min[7]_i_10_n_0 ;
  wire \diff_min[7]_i_11_n_0 ;
  wire \diff_min[7]_i_12_n_0 ;
  wire \diff_min[7]_i_1_n_0 ;
  wire \diff_min[7]_i_2_n_0 ;
  wire \diff_min[7]_i_4_n_0 ;
  wire \diff_min[7]_i_7_n_0 ;
  wire \diff_min[7]_i_8_n_0 ;
  wire \diff_min[7]_i_9_n_0 ;
  wire \diff_min_reg[7]_i_6_n_1 ;
  wire \diff_min_reg[7]_i_6_n_2 ;
  wire \diff_min_reg[7]_i_6_n_3 ;
  wire [7:0]diff_sec;
  wire [6:0]diff_sec0;
  wire \diff_sec0_inferred__0/i__carry__0_n_1 ;
  wire \diff_sec0_inferred__0/i__carry__0_n_3 ;
  wire \diff_sec0_inferred__0/i__carry__0_n_6 ;
  wire \diff_sec0_inferred__0/i__carry__0_n_7 ;
  wire \diff_sec0_inferred__0/i__carry_n_0 ;
  wire \diff_sec0_inferred__0/i__carry_n_1 ;
  wire \diff_sec0_inferred__0/i__carry_n_2 ;
  wire \diff_sec0_inferred__0/i__carry_n_3 ;
  wire \diff_sec0_inferred__0/i__carry_n_4 ;
  wire \diff_sec0_inferred__0/i__carry_n_5 ;
  wire \diff_sec0_inferred__0/i__carry_n_6 ;
  wire \diff_sec0_inferred__0/i__carry_n_7 ;
  wire diff_sec1_carry__0_i_1_n_0;
  wire diff_sec1_carry__0_i_2_n_0;
  wire diff_sec1_carry__0_i_3_n_0;
  wire diff_sec1_carry__0_i_4_n_0;
  wire diff_sec1_carry__0_i_5_n_0;
  wire diff_sec1_carry__0_i_6_n_0;
  wire diff_sec1_carry__0_i_7_n_0;
  wire diff_sec1_carry__0_i_8_n_0;
  wire diff_sec1_carry__0_i_9_n_0;
  wire diff_sec1_carry__0_n_1;
  wire diff_sec1_carry__0_n_2;
  wire diff_sec1_carry__0_n_3;
  wire diff_sec1_carry__0_n_4;
  wire diff_sec1_carry__0_n_5;
  wire diff_sec1_carry__0_n_6;
  wire diff_sec1_carry__0_n_7;
  wire diff_sec1_carry_i_11_n_0;
  wire diff_sec1_carry_i_11_n_1;
  wire diff_sec1_carry_i_11_n_2;
  wire diff_sec1_carry_i_11_n_3;
  wire diff_sec1_carry_i_12_n_0;
  wire diff_sec1_carry_i_13_n_0;
  wire diff_sec1_carry_i_14_n_0;
  wire diff_sec1_carry_i_15_n_0;
  wire diff_sec1_carry_i_16_n_0;
  wire diff_sec1_carry_i_17_n_0;
  wire diff_sec1_carry_i_18_n_0;
  wire diff_sec1_carry_i_19_n_0;
  wire diff_sec1_carry_i_1_n_0;
  wire diff_sec1_carry_i_2_n_0;
  wire diff_sec1_carry_i_3_n_0;
  wire diff_sec1_carry_i_4_n_0;
  wire diff_sec1_carry_i_5_n_0;
  wire diff_sec1_carry_i_6_n_0;
  wire diff_sec1_carry_i_7_n_0;
  wire diff_sec1_carry_i_8_n_0;
  wire diff_sec1_carry_i_9_n_0;
  wire diff_sec1_carry_n_0;
  wire diff_sec1_carry_n_1;
  wire diff_sec1_carry_n_2;
  wire diff_sec1_carry_n_3;
  wire diff_sec1_carry_n_4;
  wire diff_sec1_carry_n_5;
  wire diff_sec1_carry_n_6;
  wire diff_sec1_carry_n_7;
  wire \diff_sec[0]_i_1_n_0 ;
  wire \diff_sec[0]_i_2_n_0 ;
  wire \diff_sec[1]_i_1_n_0 ;
  wire \diff_sec[1]_i_2_n_0 ;
  wire \diff_sec[2]_i_1_n_0 ;
  wire \diff_sec[2]_i_3_n_0 ;
  wire \diff_sec[2]_i_4_n_0 ;
  wire \diff_sec[2]_i_5_n_0 ;
  wire \diff_sec[2]_i_6_n_0 ;
  wire \diff_sec[3]_i_10_n_0 ;
  wire \diff_sec[3]_i_11_n_0 ;
  wire \diff_sec[3]_i_1_n_0 ;
  wire \diff_sec[3]_i_2_n_0 ;
  wire \diff_sec[3]_i_4_n_0 ;
  wire \diff_sec[3]_i_5_n_0 ;
  wire \diff_sec[3]_i_6_n_0 ;
  wire \diff_sec[3]_i_7_n_0 ;
  wire \diff_sec[3]_i_8_n_0 ;
  wire \diff_sec[3]_i_9_n_0 ;
  wire \diff_sec[4]_i_1_n_0 ;
  wire \diff_sec[4]_i_2_n_0 ;
  wire \diff_sec[5]_i_10_n_0 ;
  wire \diff_sec[5]_i_11_n_0 ;
  wire \diff_sec[5]_i_1_n_0 ;
  wire \diff_sec[5]_i_3_n_0 ;
  wire \diff_sec[5]_i_4_n_0 ;
  wire \diff_sec[5]_i_5_n_0 ;
  wire \diff_sec[5]_i_6_n_0 ;
  wire \diff_sec[5]_i_7_n_0 ;
  wire \diff_sec[5]_i_8_n_0 ;
  wire \diff_sec[5]_i_9_n_0 ;
  wire \diff_sec[6]_i_2_n_0 ;
  wire \diff_sec[7]_i_10_n_0 ;
  wire \diff_sec[7]_i_11_n_0 ;
  wire \diff_sec[7]_i_12_n_0 ;
  wire \diff_sec[7]_i_13_n_0 ;
  wire \diff_sec[7]_i_3_n_0 ;
  wire \diff_sec[7]_i_4_n_0 ;
  wire \diff_sec[7]_i_7_n_0 ;
  wire \diff_sec[7]_i_8_n_0 ;
  wire \diff_sec[7]_i_9_n_0 ;
  wire \diff_sec_reg[2]_i_2_n_0 ;
  wire \diff_sec_reg[2]_i_2_n_1 ;
  wire \diff_sec_reg[2]_i_2_n_2 ;
  wire \diff_sec_reg[2]_i_2_n_3 ;
  wire \diff_sec_reg[3]_i_3_n_0 ;
  wire \diff_sec_reg[3]_i_3_n_1 ;
  wire \diff_sec_reg[3]_i_3_n_2 ;
  wire \diff_sec_reg[3]_i_3_n_3 ;
  wire \diff_sec_reg[3]_i_3_n_4 ;
  wire \diff_sec_reg[3]_i_3_n_5 ;
  wire \diff_sec_reg[3]_i_3_n_6 ;
  wire \diff_sec_reg[3]_i_3_n_7 ;
  wire \diff_sec_reg[5]_i_2_n_0 ;
  wire \diff_sec_reg[5]_i_2_n_1 ;
  wire \diff_sec_reg[5]_i_2_n_2 ;
  wire \diff_sec_reg[5]_i_2_n_3 ;
  wire \diff_sec_reg[7]_i_5_n_3 ;
  wire \diff_sec_reg[7]_i_6_n_1 ;
  wire \diff_sec_reg[7]_i_6_n_2 ;
  wire \diff_sec_reg[7]_i_6_n_3 ;
  wire \diff_sec_reg[7]_i_6_n_4 ;
  wire \diff_sec_reg[7]_i_6_n_5 ;
  wire \diff_sec_reg[7]_i_6_n_6 ;
  wire \diff_sec_reg[7]_i_6_n_7 ;
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
  wire ed_clear_n_52;
  wire ed_clear_n_53;
  wire ed_clear_n_54;
  wire ed_clear_n_55;
  wire ed_clear_n_56;
  wire ed_clear_n_58;
  wire ed_clear_n_59;
  wire ed_clear_n_6;
  wire ed_clear_n_60;
  wire ed_clear_n_61;
  wire ed_clear_n_62;
  wire ed_clear_n_63;
  wire ed_clear_n_64;
  wire ed_clear_n_65;
  wire ed_clear_n_66;
  wire ed_clear_n_67;
  wire ed_clear_n_68;
  wire ed_clear_n_7;
  wire ed_clear_n_70;
  wire ed_clear_n_71;
  wire ed_clear_n_72;
  wire ed_clear_n_73;
  wire ed_clear_n_75;
  wire ed_clear_n_8;
  wire ed_clear_n_9;
  wire ff_cur_reg;
  wire ff_old_reg;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire i__carry__0_i_1__6_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_2__6_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__10_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_1;
  wire i__carry_i_1__6_n_2;
  wire i__carry_i_1__6_n_3;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1__9_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__10_n_0;
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
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6__3_n_0;
  wire i__carry_i_6__4_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire [7:0]lap_count;
  wire \lap_count[5]_i_2_n_0 ;
  wire \lap_count[7]_i_4_n_0 ;
  wire \lap_count[7]_i_6_n_0 ;
  wire \lap_count_reg[1]_0 ;
  wire [6:0]lap_csec;
  wire \lap_csec[5]_i_2_n_0 ;
  wire \lap_csec[6]_i_3_n_0 ;
  wire lap_flag;
  wire lap_flag010_out;
  wire [5:0]lap_min;
  wire \lap_min[5]_i_1_n_0 ;
  wire \lap_min[5]_i_3_n_0 ;
  wire \lap_min[5]_i_6_n_0 ;
  wire [5:0]lap_sec;
  wire \lap_sec[5]_i_3_n_0 ;
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
  wire \min[5]_i_4_n_0 ;
  wire [1:0]p_0_in;
  wire [7:0]p_1_in;
  wire p_2_in;
  wire [6:0]prev_csec;
  wire \prev_csec[0]_i_1_n_0 ;
  wire \prev_csec[1]_i_1_n_0 ;
  wire \prev_csec[2]_i_1_n_0 ;
  wire \prev_csec[3]_i_1_n_0 ;
  wire \prev_csec[4]_i_1_n_0 ;
  wire \prev_csec[5]_i_1_n_0 ;
  wire \prev_csec[6]_i_1_n_0 ;
  wire prev_min;
  wire \prev_min[0]_i_1_n_0 ;
  wire \prev_min[1]_i_1_n_0 ;
  wire \prev_min[2]_i_1_n_0 ;
  wire \prev_min[3]_i_1_n_0 ;
  wire \prev_min[4]_i_1_n_0 ;
  wire \prev_min[5]_i_1_n_0 ;
  wire \prev_min_reg_n_0_[0] ;
  wire \prev_min_reg_n_0_[1] ;
  wire \prev_min_reg_n_0_[2] ;
  wire \prev_min_reg_n_0_[3] ;
  wire \prev_min_reg_n_0_[4] ;
  wire \prev_min_reg_n_0_[5] ;
  wire [5:0]prev_sec;
  wire [4:3]prev_sec0__15;
  wire \prev_sec[0]_i_1_n_0 ;
  wire \prev_sec[1]_i_1_n_0 ;
  wire \prev_sec[2]_i_1_n_0 ;
  wire \prev_sec[3]_i_1_n_0 ;
  wire \prev_sec[4]_i_1_n_0 ;
  wire \prev_sec[5]_i_2_n_0 ;
  wire run_reg_0;
  wire run_reg_1;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]s00_axi_rdata;
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
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire [31:0]\s00_axi_rdata[31] ;
  wire [31:0]\s00_axi_rdata[31]_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
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
  wire [5:0]sec;
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
  wire sign_flag;
  wire \sign_flag1_inferred__0/i__carry_n_1 ;
  wire \sign_flag1_inferred__0/i__carry_n_2 ;
  wire \sign_flag1_inferred__0/i__carry_n_3 ;
  wire \sign_flag1_inferred__1/i__carry_n_1 ;
  wire \sign_flag1_inferred__1/i__carry_n_2 ;
  wire \sign_flag1_inferred__1/i__carry_n_3 ;
  wire \sign_flag1_inferred__2/i__carry_n_1 ;
  wire \sign_flag1_inferred__2/i__carry_n_2 ;
  wire \sign_flag1_inferred__2/i__carry_n_3 ;
  wire \sign_flag1_inferred__3/i__carry_n_0 ;
  wire \sign_flag1_inferred__3/i__carry_n_1 ;
  wire \sign_flag1_inferred__3/i__carry_n_2 ;
  wire \sign_flag1_inferred__3/i__carry_n_3 ;
  wire sign_flag2_out;
  wire sign_flag_reg_0;
  wire [7:0]snap_lap_count;
  wire [6:0]snap_lap_csec;
  wire [5:0]snap_lap_min;
  wire [5:0]snap_lap_sec;
  wire start_p;
  wire [3:2]NLW_cnt_sysclk10_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk10_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk11_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_sysclk11_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_cnt_sysclk20_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_sysclk20_carry__6_O_UNCONNECTED;
  wire [3:0]\NLW_cnt_sysclk21_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_cnt_sysclk21_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_cnt_sysclk21_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_cnt_sysclk21_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_sysclk21_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [2:2]NLW_diff_csec0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_diff_csec0_carry__0_O_UNCONNECTED;
  wire [2:2]\NLW_diff_csec0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_diff_csec0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_diff_csec0_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [0:0]\NLW_diff_csec0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_diff_csec0_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_diff_csec_reg[7]_i_7_O_UNCONNECTED ;
  wire [3:1]NLW_diff_min0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_diff_min0_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_diff_min0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_diff_min0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_min0_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_diff_min0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_min0_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_diff_min0_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_diff_min_reg[7]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_diff_min_reg[7]_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_sec0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_diff_sec0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_diff_sec1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_diff_sec1_carry_i_11_O_UNCONNECTED;
  wire [0:0]\NLW_diff_sec_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_sec_reg[7]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_diff_sec_reg[7]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_diff_sec_reg[7]_i_6_CO_UNCONNECTED ;
  wire [3:3]NLW_i__carry_i_1__6_CO_UNCONNECTED;
  wire [3:0]NLW_i__carry_i_1__6_O_UNCONNECTED;
  wire [3:3]\NLW_sign_flag1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_sign_flag1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_sign_flag1_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_sign_flag1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_sign_flag1_inferred__2/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_sign_flag1_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_sign_flag1_inferred__3/i__carry_O_UNCONNECTED ;

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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_sysclk1[0]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk1[0]),
        .O(\cnt_sysclk1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[10]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[10]),
        .O(\cnt_sysclk1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[11]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[11]),
        .O(\cnt_sysclk1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[12]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[12]),
        .O(\cnt_sysclk1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[13]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[13]),
        .O(\cnt_sysclk1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[14]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[14]),
        .O(\cnt_sysclk1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[15]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[15]),
        .O(\cnt_sysclk1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[16]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[16]),
        .O(\cnt_sysclk1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[17]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[17]),
        .O(\cnt_sysclk1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[18]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[18]),
        .O(\cnt_sysclk1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[19]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[19]),
        .O(\cnt_sysclk1[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[1]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[1]),
        .O(\cnt_sysclk1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[20]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[20]),
        .O(\cnt_sysclk1[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[21]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[21]),
        .O(\cnt_sysclk1[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[22]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[22]),
        .O(\cnt_sysclk1[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[23]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[23]),
        .O(\cnt_sysclk1[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[24]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[24]),
        .O(\cnt_sysclk1[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[25]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[25]),
        .O(\cnt_sysclk1[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[26]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[26]),
        .O(\cnt_sysclk1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[27]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[27]),
        .O(\cnt_sysclk1[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[28]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[28]),
        .O(\cnt_sysclk1[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[29]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[29]),
        .O(\cnt_sysclk1[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[2]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[2]),
        .O(\cnt_sysclk1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[30]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[30]),
        .O(\cnt_sysclk1[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[31]_i_2 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[31]),
        .O(\cnt_sysclk1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[3]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[3]),
        .O(\cnt_sysclk1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[4]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[4]),
        .O(\cnt_sysclk1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[5]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[5]),
        .O(\cnt_sysclk1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[6]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[6]),
        .O(\cnt_sysclk1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[7]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[7]),
        .O(\cnt_sysclk1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[8]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[8]),
        .O(\cnt_sysclk1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cnt_sysclk1[9]_i_1 
       (.I0(cnt_sysclk11_carry__2_n_1),
        .I1(run_reg_0),
        .I2(cnt_sysclk10[9]),
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
        .D(\cnt_sysclk1[19]_i_1_n_0 ),
        .Q(cnt_sysclk1[19]));
  FDCE \cnt_sysclk1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[1]_i_1_n_0 ),
        .Q(cnt_sysclk1[1]));
  FDCE \cnt_sysclk1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[20]_i_1_n_0 ),
        .Q(cnt_sysclk1[20]));
  FDCE \cnt_sysclk1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[21]_i_1_n_0 ),
        .Q(cnt_sysclk1[21]));
  FDCE \cnt_sysclk1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[22]_i_1_n_0 ),
        .Q(cnt_sysclk1[22]));
  FDCE \cnt_sysclk1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[23]_i_1_n_0 ),
        .Q(cnt_sysclk1[23]));
  FDCE \cnt_sysclk1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[24]_i_1_n_0 ),
        .Q(cnt_sysclk1[24]));
  FDCE \cnt_sysclk1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[25]_i_1_n_0 ),
        .Q(cnt_sysclk1[25]));
  FDCE \cnt_sysclk1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[26]_i_1_n_0 ),
        .Q(cnt_sysclk1[26]));
  FDCE \cnt_sysclk1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[27]_i_1_n_0 ),
        .Q(cnt_sysclk1[27]));
  FDCE \cnt_sysclk1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[28]_i_1_n_0 ),
        .Q(cnt_sysclk1[28]));
  FDCE \cnt_sysclk1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[29]_i_1_n_0 ),
        .Q(cnt_sysclk1[29]));
  FDCE \cnt_sysclk1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[2]_i_1_n_0 ),
        .Q(cnt_sysclk1[2]));
  FDCE \cnt_sysclk1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[30]_i_1_n_0 ),
        .Q(cnt_sysclk1[30]));
  FDCE \cnt_sysclk1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cnt_sysclk2),
        .CLR(SR),
        .D(\cnt_sysclk1[31]_i_2_n_0 ),
        .Q(cnt_sysclk1[31]));
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
        .CO({cnt_sysclk20_carry__3_n_0,cnt_sysclk20_carry__3_n_1,cnt_sysclk20_carry__3_n_2,cnt_sysclk20_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[20:17]),
        .S({\cnt_sysclk2_reg_n_0_[20] ,\cnt_sysclk2_reg_n_0_[19] ,\cnt_sysclk2_reg_n_0_[18] ,\cnt_sysclk2_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__4
       (.CI(cnt_sysclk20_carry__3_n_0),
        .CO({cnt_sysclk20_carry__4_n_0,cnt_sysclk20_carry__4_n_1,cnt_sysclk20_carry__4_n_2,cnt_sysclk20_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[24:21]),
        .S({\cnt_sysclk2_reg_n_0_[24] ,\cnt_sysclk2_reg_n_0_[23] ,\cnt_sysclk2_reg_n_0_[22] ,\cnt_sysclk2_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__5
       (.CI(cnt_sysclk20_carry__4_n_0),
        .CO({cnt_sysclk20_carry__5_n_0,cnt_sysclk20_carry__5_n_1,cnt_sysclk20_carry__5_n_2,cnt_sysclk20_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_sysclk20[28:25]),
        .S({\cnt_sysclk2_reg_n_0_[28] ,\cnt_sysclk2_reg_n_0_[27] ,\cnt_sysclk2_reg_n_0_[26] ,\cnt_sysclk2_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_sysclk20_carry__6
       (.CI(cnt_sysclk20_carry__5_n_0),
        .CO({NLW_cnt_sysclk20_carry__6_CO_UNCONNECTED[3:2],cnt_sysclk20_carry__6_n_2,cnt_sysclk20_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_sysclk20_carry__6_O_UNCONNECTED[3],cnt_sysclk20[31:29]}),
        .S({1'b0,\cnt_sysclk2_reg_n_0_[31] ,\cnt_sysclk2_reg_n_0_[30] ,\cnt_sysclk2_reg_n_0_[29] }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk21_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\cnt_sysclk21_inferred__0/i__carry_n_0 ,\cnt_sysclk21_inferred__0/i__carry_n_1 ,\cnt_sysclk21_inferred__0/i__carry_n_2 ,\cnt_sysclk21_inferred__0/i__carry_n_3 }),
        .CYINIT(i__carry_i_1_n_0),
        .DI({i__carry_i_2_n_0,i__carry_i_3_n_0,1'b0,1'b0}),
        .O(\NLW_cnt_sysclk21_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk21_inferred__0/i__carry__0 
       (.CI(\cnt_sysclk21_inferred__0/i__carry_n_0 ),
        .CO({\cnt_sysclk21_inferred__0/i__carry__0_n_0 ,\cnt_sysclk21_inferred__0/i__carry__0_n_1 ,\cnt_sysclk21_inferred__0/i__carry__0_n_2 ,\cnt_sysclk21_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\cnt_sysclk2_reg_n_0_[15] ,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}),
        .O(\NLW_cnt_sysclk21_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk21_inferred__0/i__carry__1 
       (.CI(\cnt_sysclk21_inferred__0/i__carry__0_n_0 ),
        .CO({\cnt_sysclk21_inferred__0/i__carry__1_n_0 ,\cnt_sysclk21_inferred__0/i__carry__1_n_1 ,\cnt_sysclk21_inferred__0/i__carry__1_n_2 ,\cnt_sysclk21_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,1'b0}),
        .O(\NLW_cnt_sysclk21_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_4_n_0,i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \cnt_sysclk21_inferred__0/i__carry__2 
       (.CI(\cnt_sysclk21_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_cnt_sysclk21_inferred__0/i__carry__2_CO_UNCONNECTED [3],\cnt_sysclk21_inferred__0/i__carry__2_n_1 ,\cnt_sysclk21_inferred__0/i__carry__2_n_2 ,\cnt_sysclk21_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}),
        .O(\NLW_cnt_sysclk21_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__2_i_4_n_0,i__carry__2_i_5_n_0,i__carry__2_i_6_n_0}));
  FDCE \cnt_sysclk2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_34),
        .Q(\cnt_sysclk2_reg_n_0_[0] ));
  FDCE \cnt_sysclk2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_24),
        .Q(\cnt_sysclk2_reg_n_0_[10] ));
  FDCE \cnt_sysclk2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_23),
        .Q(\cnt_sysclk2_reg_n_0_[11] ));
  FDCE \cnt_sysclk2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_22),
        .Q(\cnt_sysclk2_reg_n_0_[12] ));
  FDCE \cnt_sysclk2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_21),
        .Q(\cnt_sysclk2_reg_n_0_[13] ));
  FDCE \cnt_sysclk2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_20),
        .Q(\cnt_sysclk2_reg_n_0_[14] ));
  FDCE \cnt_sysclk2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_19),
        .Q(\cnt_sysclk2_reg_n_0_[15] ));
  FDCE \cnt_sysclk2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_18),
        .Q(\cnt_sysclk2_reg_n_0_[16] ));
  FDCE \cnt_sysclk2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_17),
        .Q(\cnt_sysclk2_reg_n_0_[17] ));
  FDCE \cnt_sysclk2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_16),
        .Q(\cnt_sysclk2_reg_n_0_[18] ));
  FDCE \cnt_sysclk2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_15),
        .Q(\cnt_sysclk2_reg_n_0_[19] ));
  FDCE \cnt_sysclk2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_33),
        .Q(\cnt_sysclk2_reg_n_0_[1] ));
  FDCE \cnt_sysclk2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_14),
        .Q(\cnt_sysclk2_reg_n_0_[20] ));
  FDCE \cnt_sysclk2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_13),
        .Q(\cnt_sysclk2_reg_n_0_[21] ));
  FDCE \cnt_sysclk2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_12),
        .Q(\cnt_sysclk2_reg_n_0_[22] ));
  FDCE \cnt_sysclk2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_11),
        .Q(\cnt_sysclk2_reg_n_0_[23] ));
  FDCE \cnt_sysclk2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_10),
        .Q(\cnt_sysclk2_reg_n_0_[24] ));
  FDCE \cnt_sysclk2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_9),
        .Q(\cnt_sysclk2_reg_n_0_[25] ));
  FDCE \cnt_sysclk2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_8),
        .Q(\cnt_sysclk2_reg_n_0_[26] ));
  FDCE \cnt_sysclk2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_7),
        .Q(\cnt_sysclk2_reg_n_0_[27] ));
  FDCE \cnt_sysclk2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_6),
        .Q(\cnt_sysclk2_reg_n_0_[28] ));
  FDCE \cnt_sysclk2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_5),
        .Q(\cnt_sysclk2_reg_n_0_[29] ));
  FDCE \cnt_sysclk2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_32),
        .Q(\cnt_sysclk2_reg_n_0_[2] ));
  FDCE \cnt_sysclk2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_4),
        .Q(\cnt_sysclk2_reg_n_0_[30] ));
  FDCE \cnt_sysclk2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_3),
        .Q(\cnt_sysclk2_reg_n_0_[31] ));
  FDCE \cnt_sysclk2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_31),
        .Q(\cnt_sysclk2_reg_n_0_[3] ));
  FDCE \cnt_sysclk2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_30),
        .Q(\cnt_sysclk2_reg_n_0_[4] ));
  FDCE \cnt_sysclk2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_29),
        .Q(\cnt_sysclk2_reg_n_0_[5] ));
  FDCE \cnt_sysclk2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_28),
        .Q(\cnt_sysclk2_reg_n_0_[6] ));
  FDCE \cnt_sysclk2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_27),
        .Q(\cnt_sysclk2_reg_n_0_[7] ));
  FDCE \cnt_sysclk2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_26),
        .Q(\cnt_sysclk2_reg_n_0_[8] ));
  FDCE \cnt_sysclk2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_56),
        .CLR(SR),
        .D(ed_clear_n_25),
        .Q(\cnt_sysclk2_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \csec[0]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(csec[0]),
        .O(\csec[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \csec[1]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(csec[0]),
        .I2(csec[1]),
        .O(\csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \csec[2]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(csec[0]),
        .I2(csec[1]),
        .I3(csec[2]),
        .O(\csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \csec[3]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(csec[1]),
        .I2(csec[0]),
        .I3(csec[2]),
        .I4(csec[3]),
        .O(\csec[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \csec[4]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(csec[2]),
        .I2(csec[0]),
        .I3(csec[1]),
        .I4(csec[3]),
        .I5(csec[4]),
        .O(\csec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \csec[5]_i_1 
       (.I0(\csec[6]_i_4_n_0 ),
        .I1(csec[3]),
        .I2(\csec[5]_i_2_n_0 ),
        .I3(csec[2]),
        .I4(csec[4]),
        .I5(csec[5]),
        .O(\csec[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \csec[5]_i_2 
       (.I0(csec[1]),
        .I1(csec[0]),
        .O(\csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \csec[6]_i_2 
       (.I0(csec[5]),
        .I1(\csec[6]_i_3_n_0 ),
        .I2(\csec[6]_i_4_n_0 ),
        .I3(csec[6]),
        .O(\csec[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \csec[6]_i_3 
       (.I0(csec[4]),
        .I1(csec[2]),
        .I2(csec[0]),
        .I3(csec[1]),
        .I4(csec[3]),
        .O(\csec[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \csec[6]_i_4 
       (.I0(run_reg_0),
        .I1(\sec[5]_i_3_n_0 ),
        .O(\csec[6]_i_4_n_0 ));
  FDCE \csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_60),
        .CLR(SR),
        .D(\csec[0]_i_1_n_0 ),
        .Q(csec[0]));
  FDCE \csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_60),
        .CLR(SR),
        .D(\csec[1]_i_1_n_0 ),
        .Q(csec[1]));
  FDCE \csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_60),
        .CLR(SR),
        .D(\csec[2]_i_1_n_0 ),
        .Q(csec[2]));
  FDCE \csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_60),
        .CLR(SR),
        .D(\csec[3]_i_1_n_0 ),
        .Q(csec[3]));
  FDCE \csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_60),
        .CLR(SR),
        .D(\csec[4]_i_1_n_0 ),
        .Q(csec[4]));
  FDCE \csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_60),
        .CLR(SR),
        .D(\csec[5]_i_1_n_0 ),
        .Q(csec[5]));
  FDCE \csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_60),
        .CLR(SR),
        .D(\csec[6]_i_2_n_0 ),
        .Q(csec[6]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 diff_csec0_carry
       (.CI(1'b0),
        .CO({diff_csec0_carry_n_0,diff_csec0_carry_n_1,diff_csec0_carry_n_2,diff_csec0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(prev_csec[3:0]),
        .O({diff_csec0_carry_n_4,diff_csec0_carry_n_5,diff_csec0_carry_n_6,diff_csec0_carry_n_7}),
        .S({diff_csec0_carry_i_1_n_0,diff_csec0_carry_i_2_n_0,diff_csec0_carry_i_3_n_0,diff_csec0_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 diff_csec0_carry__0
       (.CI(diff_csec0_carry_n_0),
        .CO({diff_csec0_carry__0_n_0,NLW_diff_csec0_carry__0_CO_UNCONNECTED[2],diff_csec0_carry__0_n_2,diff_csec0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,prev_csec[6:4]}),
        .O({NLW_diff_csec0_carry__0_O_UNCONNECTED[3],diff_csec0_carry__0_n_5,diff_csec0_carry__0_n_6,diff_csec0_carry__0_n_7}),
        .S({1'b1,diff_csec0_carry__0_i_1_n_0,diff_csec0_carry__0_i_2_n_0,diff_csec0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry__0_i_1
       (.I0(prev_csec[6]),
        .I1(lap_csec[6]),
        .O(diff_csec0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry__0_i_2
       (.I0(prev_csec[5]),
        .I1(lap_csec[5]),
        .O(diff_csec0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry__0_i_3
       (.I0(prev_csec[4]),
        .I1(lap_csec[4]),
        .O(diff_csec0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry_i_1
       (.I0(prev_csec[3]),
        .I1(lap_csec[3]),
        .O(diff_csec0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry_i_2
       (.I0(prev_csec[2]),
        .I1(lap_csec[2]),
        .O(diff_csec0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry_i_3
       (.I0(prev_csec[1]),
        .I1(lap_csec[1]),
        .O(diff_csec0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_csec0_carry_i_4
       (.I0(prev_csec[0]),
        .I1(lap_csec[0]),
        .O(diff_csec0_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\diff_csec0_inferred__0/i__carry_n_0 ,\diff_csec0_inferred__0/i__carry_n_1 ,\diff_csec0_inferred__0/i__carry_n_2 ,\diff_csec0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(lap_csec[3:0]),
        .O(diff_csec01_in[3:0]),
        .S({i__carry_i_1__8_n_0,i__carry_i_2__5_n_0,i__carry_i_3__10_n_0,i__carry_i_4__10_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec0_inferred__0/i__carry__0 
       (.CI(\diff_csec0_inferred__0/i__carry_n_0 ),
        .CO({\diff_csec0_inferred__0/i__carry__0_n_0 ,\NLW_diff_csec0_inferred__0/i__carry__0_CO_UNCONNECTED [2],\diff_csec0_inferred__0/i__carry__0_n_2 ,\diff_csec0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,lap_csec[6:4]}),
        .O({\NLW_diff_csec0_inferred__0/i__carry__0_O_UNCONNECTED [3],diff_csec01_in[6:4]}),
        .S({1'b1,i__carry__0_i_1__4_n_0,i__carry__0_i_2__4_n_0,i__carry__0_i_3__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\diff_csec0_inferred__1/i__carry_n_0 ,\diff_csec0_inferred__1/i__carry_n_1 ,\diff_csec0_inferred__1/i__carry_n_2 ,\diff_csec0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__4_n_0,lap_csec[2],prev_csec[1:0]}),
        .O({\diff_csec0_inferred__1/i__carry_n_4 ,\diff_csec0_inferred__1/i__carry_n_5 ,\diff_csec0_inferred__1/i__carry_n_6 ,\NLW_diff_csec0_inferred__1/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2__7_n_0,i__carry_i_3__5_n_0,i__carry_i_4__7_n_0,i__carry_i_5__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec0_inferred__1/i__carry__0 
       (.CI(\diff_csec0_inferred__1/i__carry_n_0 ),
        .CO({\NLW_diff_csec0_inferred__1/i__carry__0_CO_UNCONNECTED [3],\diff_csec0_inferred__1/i__carry__0_n_1 ,\diff_csec0_inferred__1/i__carry__0_n_2 ,\diff_csec0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__1_n_0}),
        .O({\diff_csec0_inferred__1/i__carry__0_n_4 ,\diff_csec0_inferred__1/i__carry__0_n_5 ,\diff_csec0_inferred__1/i__carry__0_n_6 ,\diff_csec0_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\diff_csec0_inferred__2/i__carry_n_0 ,\diff_csec0_inferred__2/i__carry_n_1 ,\diff_csec0_inferred__2/i__carry_n_2 ,\diff_csec0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__3_n_0,prev_csec[2],lap_csec[1:0]}),
        .O({diff_csec0[3:1],\NLW_diff_csec0_inferred__2/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2__6_n_0,i__carry_i_3__4_n_0,i__carry_i_4__6_n_0,i__carry_i_5__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec0_inferred__2/i__carry__0 
       (.CI(\diff_csec0_inferred__2/i__carry_n_0 ),
        .CO({\NLW_diff_csec0_inferred__2/i__carry__0_CO_UNCONNECTED [3],\diff_csec0_inferred__2/i__carry__0_n_1 ,\diff_csec0_inferred__2/i__carry__0_n_2 ,\diff_csec0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__0_n_0}),
        .O(diff_csec0[7:4]),
        .S({i__carry__0_i_4__1_n_0,i__carry__0_i_5__1_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0}));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \diff_csec[0]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\diff_csec[0]_i_2_n_0 ),
        .I2(\diff_csec[0]_i_3_n_0 ),
        .I3(\diff_csec[0]_i_4_n_0 ),
        .I4(\diff_csec[7]_i_5_n_0 ),
        .I5(\diff_csec[0]_i_5_n_0 ),
        .O(\diff_csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00101000)) 
    \diff_csec[0]_i_2 
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(lap_csec[0]),
        .I4(prev_csec[0]),
        .O(\diff_csec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABA00BA000000BA)) 
    \diff_csec[0]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I3(\diff_csec[0]_i_6_n_0 ),
        .I4(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I5(diff_csec01_in[0]),
        .O(\diff_csec[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \diff_csec[0]_i_4 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(diff_csec0_carry_n_7),
        .O(\diff_csec[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCE4E400FFE4E4)) 
    \diff_csec[0]_i_5 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(diff_csec0_carry_n_7),
        .I2(diff_csec01_in[0]),
        .I3(\diff_csec[0]_i_7_n_0 ),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_csec[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[0]_i_6 
       (.I0(lap_csec[0]),
        .I1(prev_csec[0]),
        .O(\diff_csec[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[0]_i_7 
       (.I0(prev_csec[0]),
        .I1(lap_csec[0]),
        .O(\diff_csec[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \diff_csec[1]_i_2 
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\diff_csec0_inferred__1/i__carry_n_6 ),
        .O(\diff_csec[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA000000BA00)) 
    \diff_csec[1]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I3(diff_csec0[1]),
        .I4(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I5(diff_csec01_in[1]),
        .O(\diff_csec[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \diff_csec[1]_i_4 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(diff_csec0_carry_n_6),
        .O(\diff_csec[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCE4E4FF00E4E4)) 
    \diff_csec[1]_i_5 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(diff_csec0_carry_n_6),
        .I2(diff_csec01_in[1]),
        .I3(\diff_csec0_inferred__1/i__carry_n_6 ),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_csec[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \diff_csec[2]_i_2 
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\diff_csec0_inferred__1/i__carry_n_5 ),
        .O(\diff_csec[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA000000BA00)) 
    \diff_csec[2]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I3(diff_csec0[2]),
        .I4(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I5(diff_csec01_in[2]),
        .O(\diff_csec[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \diff_csec[2]_i_4 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(diff_csec0_carry_n_5),
        .O(\diff_csec[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCE4E4FF00E4E4)) 
    \diff_csec[2]_i_5 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(diff_csec0_carry_n_5),
        .I2(diff_csec01_in[2]),
        .I3(\diff_csec0_inferred__1/i__carry_n_5 ),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_csec[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \diff_csec[3]_i_2 
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\diff_csec0_inferred__1/i__carry_n_4 ),
        .O(\diff_csec[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA000000BA00)) 
    \diff_csec[3]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I3(diff_csec0[3]),
        .I4(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I5(diff_csec01_in[3]),
        .O(\diff_csec[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \diff_csec[3]_i_4 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(diff_csec0_carry_n_4),
        .O(\diff_csec[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCE4E4FF00E4E4)) 
    \diff_csec[3]_i_5 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(diff_csec0_carry_n_4),
        .I2(diff_csec01_in[3]),
        .I3(\diff_csec0_inferred__1/i__carry_n_4 ),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_csec[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \diff_csec[4]_i_2 
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\diff_csec0_inferred__1/i__carry__0_n_7 ),
        .O(\diff_csec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA000000BA00)) 
    \diff_csec[4]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I3(diff_csec0[4]),
        .I4(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I5(diff_csec01_in[4]),
        .O(\diff_csec[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \diff_csec[4]_i_4 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(diff_csec0_carry__0_n_7),
        .O(\diff_csec[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCE4E4FF00E4E4)) 
    \diff_csec[4]_i_5 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(diff_csec0_carry__0_n_7),
        .I2(diff_csec01_in[4]),
        .I3(\diff_csec0_inferred__1/i__carry__0_n_7 ),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_csec[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \diff_csec[5]_i_2 
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\diff_csec0_inferred__1/i__carry__0_n_6 ),
        .O(\diff_csec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA000000BA00)) 
    \diff_csec[5]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I3(diff_csec0[5]),
        .I4(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I5(diff_csec01_in[5]),
        .O(\diff_csec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \diff_csec[5]_i_4 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(diff_csec0_carry__0_n_6),
        .O(\diff_csec[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCE4E4FF00E4E4)) 
    \diff_csec[5]_i_5 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(diff_csec0_carry__0_n_6),
        .I2(diff_csec01_in[5]),
        .I3(\diff_csec0_inferred__1/i__carry__0_n_6 ),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_csec[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \diff_csec[6]_i_2 
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\diff_csec0_inferred__1/i__carry__0_n_5 ),
        .O(\diff_csec[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA000000BA00)) 
    \diff_csec[6]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I3(diff_csec0[6]),
        .I4(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I5(diff_csec01_in[6]),
        .O(\diff_csec[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \diff_csec[6]_i_4 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(diff_csec0_carry__0_n_5),
        .O(\diff_csec[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCE4E4FF00E4E4)) 
    \diff_csec[6]_i_5 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(diff_csec0_carry__0_n_5),
        .I2(diff_csec01_in[6]),
        .I3(\diff_csec0_inferred__1/i__carry__0_n_5 ),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_csec[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \diff_csec[7]_i_10 
       (.I0(prev_csec[2]),
        .I1(lap_csec[2]),
        .I2(lap_csec[3]),
        .I3(prev_csec[3]),
        .O(\diff_csec[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \diff_csec[7]_i_11 
       (.I0(prev_csec[0]),
        .I1(lap_csec[0]),
        .I2(lap_csec[1]),
        .I3(prev_csec[1]),
        .O(\diff_csec[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_csec[7]_i_12 
       (.I0(lap_csec[6]),
        .I1(prev_csec[6]),
        .O(\diff_csec[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \diff_csec[7]_i_13 
       (.I0(lap_csec[4]),
        .I1(prev_csec[4]),
        .I2(lap_csec[5]),
        .I3(prev_csec[5]),
        .O(\diff_csec[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \diff_csec[7]_i_14 
       (.I0(lap_csec[2]),
        .I1(prev_csec[2]),
        .I2(lap_csec[3]),
        .I3(prev_csec[3]),
        .O(\diff_csec[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \diff_csec[7]_i_15 
       (.I0(lap_csec[0]),
        .I1(prev_csec[0]),
        .I2(lap_csec[1]),
        .I3(prev_csec[1]),
        .O(\diff_csec[7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \diff_csec[7]_i_2 
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\diff_csec0_inferred__1/i__carry__0_n_4 ),
        .O(\diff_csec[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA00BABABA00)) 
    \diff_csec[7]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I3(diff_csec0[7]),
        .I4(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I5(\diff_csec0_inferred__0/i__carry__0_n_0 ),
        .O(\diff_csec[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \diff_csec[7]_i_4 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(diff_csec0_carry__0_n_0),
        .O(\diff_csec[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \diff_csec[7]_i_5 
       (.I0(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__2/i__carry_n_1 ),
        .O(\diff_csec[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h33331B1BFF001B1B)) 
    \diff_csec[7]_i_6 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(diff_csec0_carry__0_n_0),
        .I2(\diff_csec0_inferred__0/i__carry__0_n_0 ),
        .I3(\diff_csec0_inferred__1/i__carry__0_n_4 ),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_csec[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \diff_csec[7]_i_8 
       (.I0(prev_csec[6]),
        .I1(lap_csec[6]),
        .O(\diff_csec[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \diff_csec[7]_i_9 
       (.I0(prev_csec[4]),
        .I1(lap_csec[4]),
        .I2(lap_csec[5]),
        .I3(prev_csec[5]),
        .O(\diff_csec[7]_i_9_n_0 ));
  FDCE \diff_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_csec[0]_i_1_n_0 ),
        .Q(diff_csec[0]));
  FDCE \diff_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_68),
        .Q(diff_csec[1]));
  FDCE \diff_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_67),
        .Q(diff_csec[2]));
  FDCE \diff_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_66),
        .Q(diff_csec[3]));
  FDCE \diff_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_65),
        .Q(diff_csec[4]));
  FDCE \diff_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_64),
        .Q(diff_csec[5]));
  FDCE \diff_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_63),
        .Q(diff_csec[6]));
  FDCE \diff_csec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_62),
        .Q(diff_csec[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_csec_reg[7]_i_7 
       (.CI(1'b0),
        .CO({p_2_in,\diff_csec_reg[7]_i_7_n_1 ,\diff_csec_reg[7]_i_7_n_2 ,\diff_csec_reg[7]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_csec[7]_i_8_n_0 ,\diff_csec[7]_i_9_n_0 ,\diff_csec[7]_i_10_n_0 ,\diff_csec[7]_i_11_n_0 }),
        .O(\NLW_diff_csec_reg[7]_i_7_O_UNCONNECTED [3:0]),
        .S({\diff_csec[7]_i_12_n_0 ,\diff_csec[7]_i_13_n_0 ,\diff_csec[7]_i_14_n_0 ,\diff_csec[7]_i_15_n_0 }));
  CARRY4 diff_min0_carry
       (.CI(1'b0),
        .CO({diff_min0_carry_n_0,diff_min0_carry_n_1,diff_min0_carry_n_2,diff_min0_carry_n_3}),
        .CYINIT(lap_min[0]),
        .DI({lap_min[3:1],\sign_flag1_inferred__0/i__carry_n_1 }),
        .O(data0[3:0]),
        .S({diff_min0_carry_i_1_n_0,diff_min0_carry_i_2_n_0,diff_min0_carry_i_3_n_0,diff_min0_carry_i_4_n_0}));
  CARRY4 diff_min0_carry__0
       (.CI(diff_min0_carry_n_0),
        .CO({NLW_diff_min0_carry__0_CO_UNCONNECTED[3],diff_min0_carry__0_n_1,NLW_diff_min0_carry__0_CO_UNCONNECTED[1],diff_min0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,lap_min[5:4]}),
        .O({NLW_diff_min0_carry__0_O_UNCONNECTED[3:2],data0[5:4]}),
        .S({1'b0,1'b1,diff_min0_carry__0_i_1_n_0,diff_min0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    diff_min0_carry__0_i_1
       (.I0(\prev_min_reg_n_0_[5] ),
        .I1(lap_min[5]),
        .O(diff_min0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_min0_carry__0_i_2
       (.I0(\prev_min_reg_n_0_[4] ),
        .I1(lap_min[4]),
        .O(diff_min0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_min0_carry_i_1
       (.I0(\prev_min_reg_n_0_[3] ),
        .I1(lap_min[3]),
        .O(diff_min0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_min0_carry_i_2
       (.I0(\prev_min_reg_n_0_[2] ),
        .I1(lap_min[2]),
        .O(diff_min0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_min0_carry_i_3
       (.I0(\prev_min_reg_n_0_[1] ),
        .I1(lap_min[1]),
        .O(diff_min0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_min0_carry_i_4
       (.I0(\prev_min_reg_n_0_[0] ),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .O(diff_min0_carry_i_4_n_0));
  CARRY4 \diff_min0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\diff_min0_inferred__0/i__carry_n_0 ,\diff_min0_inferred__0/i__carry_n_1 ,\diff_min0_inferred__0/i__carry_n_2 ,\diff_min0_inferred__0/i__carry_n_3 }),
        .CYINIT(\prev_min_reg_n_0_[0] ),
        .DI({\prev_min_reg_n_0_[3] ,\prev_min_reg_n_0_[2] ,\prev_min_reg_n_0_[1] ,i__carry_i_1__6_n_1}),
        .O(data1[3:0]),
        .S({i__carry_i_2__10_n_0,i__carry_i_3__9_n_0,i__carry_i_4__9_n_0,i__carry_i_5__3_n_0}));
  CARRY4 \diff_min0_inferred__0/i__carry__0 
       (.CI(\diff_min0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_diff_min0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\diff_min0_inferred__0/i__carry__0_n_1 ,\NLW_diff_min0_inferred__0/i__carry__0_CO_UNCONNECTED [1],\diff_min0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\prev_min_reg_n_0_[5] ,\prev_min_reg_n_0_[4] }),
        .O({\NLW_diff_min0_inferred__0/i__carry__0_O_UNCONNECTED [3:2],data1[5:4]}),
        .S({1'b0,1'b1,i__carry__0_i_1__6_n_0,i__carry__0_i_2__6_n_0}));
  CARRY4 \diff_min0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\diff_min0_inferred__1/i__carry_n_0 ,\diff_min0_inferred__1/i__carry_n_1 ,\diff_min0_inferred__1/i__carry_n_2 ,\diff_min0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(lap_min[3:0]),
        .O(data2[3:0]),
        .S({i__carry_i_1__7_n_0,i__carry_i_2__4_n_0,i__carry_i_3__6_n_0,i__carry_i_4__5_n_0}));
  CARRY4 \diff_min0_inferred__1/i__carry__0 
       (.CI(\diff_min0_inferred__1/i__carry_n_0 ),
        .CO({\NLW_diff_min0_inferred__1/i__carry__0_CO_UNCONNECTED [3],\diff_min0_inferred__1/i__carry__0_n_1 ,\NLW_diff_min0_inferred__1/i__carry__0_CO_UNCONNECTED [1],\diff_min0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,lap_min[5:4]}),
        .O({\NLW_diff_min0_inferred__1/i__carry__0_O_UNCONNECTED [3:2],data2[5:4]}),
        .S({1'b0,1'b1,i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0}));
  CARRY4 \diff_min0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\diff_min0_inferred__2/i__carry_n_0 ,\diff_min0_inferred__2/i__carry_n_1 ,\diff_min0_inferred__2/i__carry_n_2 ,\diff_min0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\prev_min_reg_n_0_[3] ,\prev_min_reg_n_0_[2] ,\prev_min_reg_n_0_[1] ,\prev_min_reg_n_0_[0] }),
        .O(data3[3:0]),
        .S({i__carry_i_1__10_n_0,i__carry_i_2__9_n_0,i__carry_i_3__8_n_0,i__carry_i_4__8_n_0}));
  CARRY4 \diff_min0_inferred__2/i__carry__0 
       (.CI(\diff_min0_inferred__2/i__carry_n_0 ),
        .CO({\NLW_diff_min0_inferred__2/i__carry__0_CO_UNCONNECTED [3],\diff_min0_inferred__2/i__carry__0_n_1 ,\NLW_diff_min0_inferred__2/i__carry__0_CO_UNCONNECTED [1],\diff_min0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\prev_min_reg_n_0_[5] ,\prev_min_reg_n_0_[4] }),
        .O({\NLW_diff_min0_inferred__2/i__carry__0_O_UNCONNECTED [3:2],data3[5:4]}),
        .S({1'b0,1'b1,i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0}));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \diff_min[0]_i_1 
       (.I0(\diff_min[0]_i_2_n_0 ),
        .I1(ed_clear_n_72),
        .I2(data3[0]),
        .I3(\diff_min[7]_i_4_n_0 ),
        .I4(data2[0]),
        .I5(ed_clear_n_73),
        .O(\diff_min[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEC200000EC20)) 
    \diff_min[0]_i_2 
       (.I0(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(data2[0]),
        .I3(data1[0]),
        .I4(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I5(data0[0]),
        .O(\diff_min[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \diff_min[1]_i_1 
       (.I0(\diff_min[1]_i_2_n_0 ),
        .I1(ed_clear_n_72),
        .I2(data3[1]),
        .I3(\diff_min[7]_i_4_n_0 ),
        .I4(data2[1]),
        .I5(ed_clear_n_73),
        .O(\diff_min[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEC200000EC20)) 
    \diff_min[1]_i_2 
       (.I0(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(data2[1]),
        .I3(data1[1]),
        .I4(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I5(data0[1]),
        .O(\diff_min[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \diff_min[2]_i_1 
       (.I0(\diff_min[2]_i_2_n_0 ),
        .I1(ed_clear_n_72),
        .I2(data3[2]),
        .I3(\diff_min[7]_i_4_n_0 ),
        .I4(data2[2]),
        .I5(ed_clear_n_73),
        .O(\diff_min[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEC200000EC20)) 
    \diff_min[2]_i_2 
       (.I0(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(data2[2]),
        .I3(data1[2]),
        .I4(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I5(data0[2]),
        .O(\diff_min[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \diff_min[3]_i_1 
       (.I0(\diff_min[3]_i_2_n_0 ),
        .I1(ed_clear_n_72),
        .I2(data3[3]),
        .I3(\diff_min[7]_i_4_n_0 ),
        .I4(data2[3]),
        .I5(ed_clear_n_73),
        .O(\diff_min[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEC200000EC20)) 
    \diff_min[3]_i_2 
       (.I0(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(data2[3]),
        .I3(data1[3]),
        .I4(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I5(data0[3]),
        .O(\diff_min[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \diff_min[4]_i_1 
       (.I0(\diff_min[4]_i_2_n_0 ),
        .I1(ed_clear_n_72),
        .I2(data3[4]),
        .I3(\diff_min[7]_i_4_n_0 ),
        .I4(data2[4]),
        .I5(ed_clear_n_73),
        .O(\diff_min[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEC200000EC20)) 
    \diff_min[4]_i_2 
       (.I0(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(data2[4]),
        .I3(data1[4]),
        .I4(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I5(data0[4]),
        .O(\diff_min[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \diff_min[5]_i_1 
       (.I0(\diff_min[5]_i_2_n_0 ),
        .I1(ed_clear_n_72),
        .I2(data3[5]),
        .I3(\diff_min[7]_i_4_n_0 ),
        .I4(data2[5]),
        .I5(ed_clear_n_73),
        .O(\diff_min[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEC200000EC20)) 
    \diff_min[5]_i_2 
       (.I0(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(data2[5]),
        .I3(data1[5]),
        .I4(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I5(data0[5]),
        .O(\diff_min[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888FFF88888888)) 
    \diff_min[7]_i_1 
       (.I0(\diff_min[7]_i_2_n_0 ),
        .I1(ed_clear_n_72),
        .I2(\diff_min0_inferred__2/i__carry__0_n_1 ),
        .I3(\diff_min[7]_i_4_n_0 ),
        .I4(\diff_min0_inferred__1/i__carry__0_n_1 ),
        .I5(ed_clear_n_73),
        .O(\diff_min[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \diff_min[7]_i_10 
       (.I0(lap_sec[4]),
        .I1(prev_sec[4]),
        .I2(lap_sec[5]),
        .I3(prev_sec[5]),
        .O(\diff_min[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \diff_min[7]_i_11 
       (.I0(lap_sec[2]),
        .I1(prev_sec[2]),
        .I2(lap_sec[3]),
        .I3(prev_sec[3]),
        .O(\diff_min[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \diff_min[7]_i_12 
       (.I0(lap_sec[0]),
        .I1(prev_sec[0]),
        .I2(lap_sec[1]),
        .I3(prev_sec[1]),
        .O(\diff_min[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF02CE02CE)) 
    \diff_min[7]_i_2 
       (.I0(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I2(\diff_min0_inferred__1/i__carry__0_n_1 ),
        .I3(\diff_min0_inferred__0/i__carry__0_n_1 ),
        .I4(diff_min0_carry__0_n_1),
        .I5(\sign_flag1_inferred__2/i__carry_n_1 ),
        .O(\diff_min[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \diff_min[7]_i_4 
       (.I0(\diff_min_reg[7]_i_6_n_1 ),
        .I1(\sign_flag1_inferred__3/i__carry_n_0 ),
        .O(\diff_min[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \diff_min[7]_i_7 
       (.I0(prev_sec[4]),
        .I1(lap_sec[4]),
        .I2(prev_sec[5]),
        .I3(lap_sec[5]),
        .O(\diff_min[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \diff_min[7]_i_8 
       (.I0(prev_sec[2]),
        .I1(lap_sec[2]),
        .I2(lap_sec[3]),
        .I3(prev_sec[3]),
        .O(\diff_min[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \diff_min[7]_i_9 
       (.I0(prev_sec[0]),
        .I1(lap_sec[0]),
        .I2(lap_sec[1]),
        .I3(prev_sec[1]),
        .O(\diff_min[7]_i_9_n_0 ));
  FDCE \diff_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_min[0]_i_1_n_0 ),
        .Q(diff_min[0]));
  FDCE \diff_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_min[1]_i_1_n_0 ),
        .Q(diff_min[1]));
  FDCE \diff_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_min[2]_i_1_n_0 ),
        .Q(diff_min[2]));
  FDCE \diff_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_min[3]_i_1_n_0 ),
        .Q(diff_min[3]));
  FDCE \diff_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_min[4]_i_1_n_0 ),
        .Q(diff_min[4]));
  FDCE \diff_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_min[5]_i_1_n_0 ),
        .Q(diff_min[5]));
  FDCE \diff_min_reg[7] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_min[7]_i_1_n_0 ),
        .Q(diff_min[7]));
  CARRY4 \diff_min_reg[7]_i_6 
       (.CI(1'b0),
        .CO({\NLW_diff_min_reg[7]_i_6_CO_UNCONNECTED [3],\diff_min_reg[7]_i_6_n_1 ,\diff_min_reg[7]_i_6_n_2 ,\diff_min_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\diff_min[7]_i_7_n_0 ,\diff_min[7]_i_8_n_0 ,\diff_min[7]_i_9_n_0 }),
        .O(\NLW_diff_min_reg[7]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,\diff_min[7]_i_10_n_0 ,\diff_min[7]_i_11_n_0 ,\diff_min[7]_i_12_n_0 }));
  CARRY4 \diff_sec0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\diff_sec0_inferred__0/i__carry_n_0 ,\diff_sec0_inferred__0/i__carry_n_1 ,\diff_sec0_inferred__0/i__carry_n_2 ,\diff_sec0_inferred__0/i__carry_n_3 }),
        .CYINIT(lap_sec[0]),
        .DI({lap_sec[3:1],\sign_flag1_inferred__3/i__carry_n_0 }),
        .O({\diff_sec0_inferred__0/i__carry_n_4 ,\diff_sec0_inferred__0/i__carry_n_5 ,\diff_sec0_inferred__0/i__carry_n_6 ,\diff_sec0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__9_n_0,i__carry_i_2__8_n_0,i__carry_i_3__7_n_0,i__carry_i_4__4_n_0}));
  CARRY4 \diff_sec0_inferred__0/i__carry__0 
       (.CI(\diff_sec0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_diff_sec0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\diff_sec0_inferred__0/i__carry__0_n_1 ,\NLW_diff_sec0_inferred__0/i__carry__0_CO_UNCONNECTED [1],\diff_sec0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,lap_sec[5:4]}),
        .O({\NLW_diff_sec0_inferred__0/i__carry__0_O_UNCONNECTED [3:2],\diff_sec0_inferred__0/i__carry__0_n_6 ,\diff_sec0_inferred__0/i__carry__0_n_7 }),
        .S({1'b0,1'b1,i__carry__0_i_1__5_n_0,i__carry__0_i_2__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 diff_sec1_carry
       (.CI(1'b0),
        .CO({diff_sec1_carry_n_0,diff_sec1_carry_n_1,diff_sec1_carry_n_2,diff_sec1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({diff_sec1_carry_i_1_n_0,diff_sec1_carry_i_2_n_0,diff_sec1_carry_i_3_n_0,diff_sec1_carry_i_4_n_0}),
        .O({diff_sec1_carry_n_4,diff_sec1_carry_n_5,diff_sec1_carry_n_6,diff_sec1_carry_n_7}),
        .S({diff_sec1_carry_i_5_n_0,diff_sec1_carry_i_6_n_0,diff_sec1_carry_i_7_n_0,diff_sec1_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 diff_sec1_carry__0
       (.CI(diff_sec1_carry_n_0),
        .CO({NLW_diff_sec1_carry__0_CO_UNCONNECTED[3],diff_sec1_carry__0_n_1,diff_sec1_carry__0_n_2,diff_sec1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,diff_sec1_carry__0_i_1_n_0,diff_sec1_carry__0_i_2_n_0}),
        .O({diff_sec1_carry__0_n_4,diff_sec1_carry__0_n_5,diff_sec1_carry__0_n_6,diff_sec1_carry__0_n_7}),
        .S({diff_sec1_carry__0_i_3_n_0,diff_sec1_carry__0_i_4_n_0,diff_sec1_carry__0_i_5_n_0,diff_sec1_carry__0_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    diff_sec1_carry__0_i_1
       (.I0(lap_sec[5]),
        .O(diff_sec1_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    diff_sec1_carry__0_i_10
       (.I0(prev_sec[3]),
        .I1(prev_sec[1]),
        .I2(prev_sec[0]),
        .I3(prev_sec[2]),
        .I4(prev_sec[4]),
        .O(prev_sec0__15[4]));
  LUT1 #(
    .INIT(2'h1)) 
    diff_sec1_carry__0_i_2
       (.I0(lap_sec[4]),
        .O(diff_sec1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    diff_sec1_carry__0_i_3
       (.I0(i__carry_i_1__6_n_1),
        .I1(diff_sec1_carry__0_i_7_n_0),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(prev_sec[5]),
        .O(diff_sec1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFF00EE0F)) 
    diff_sec1_carry__0_i_4
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(diff_sec1_carry__0_i_7_n_0),
        .I2(diff_sec1_carry__0_i_8_n_0),
        .I3(i__carry_i_1__6_n_1),
        .I4(prev_sec[5]),
        .O(diff_sec1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hA596A596A5965A96)) 
    diff_sec1_carry__0_i_5
       (.I0(lap_sec[5]),
        .I1(diff_sec1_carry__0_i_8_n_0),
        .I2(prev_sec[5]),
        .I3(i__carry_i_1__6_n_1),
        .I4(diff_sec1_carry__0_i_7_n_0),
        .I5(diff_sec1_carry_i_11_n_0),
        .O(diff_sec1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hA596A596AA965596)) 
    diff_sec1_carry__0_i_6
       (.I0(lap_sec[4]),
        .I1(diff_sec1_carry__0_i_9_n_0),
        .I2(prev_sec[4]),
        .I3(i__carry_i_1__6_n_1),
        .I4(prev_sec0__15[4]),
        .I5(diff_sec1_carry_i_11_n_0),
        .O(diff_sec1_carry__0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    diff_sec1_carry__0_i_7
       (.I0(prev_sec[3]),
        .I1(prev_sec[1]),
        .I2(prev_sec[0]),
        .I3(prev_sec[2]),
        .I4(prev_sec[4]),
        .O(diff_sec1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEA)) 
    diff_sec1_carry__0_i_8
       (.I0(prev_sec[3]),
        .I1(prev_sec[2]),
        .I2(prev_sec[1]),
        .I3(prev_sec[0]),
        .I4(diff_sec1_carry_i_11_n_0),
        .I5(prev_sec[4]),
        .O(diff_sec1_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    diff_sec1_carry__0_i_9
       (.I0(diff_sec1_carry_i_11_n_0),
        .I1(prev_sec[0]),
        .I2(prev_sec[1]),
        .I3(prev_sec[2]),
        .I4(prev_sec[3]),
        .O(diff_sec1_carry__0_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    diff_sec1_carry_i_1
       (.I0(lap_sec[3]),
        .O(diff_sec1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    diff_sec1_carry_i_10
       (.I0(prev_sec[2]),
        .I1(prev_sec[0]),
        .I2(prev_sec[1]),
        .I3(prev_sec[3]),
        .O(prev_sec0__15[3]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 diff_sec1_carry_i_11
       (.CI(1'b0),
        .CO({diff_sec1_carry_i_11_n_0,diff_sec1_carry_i_11_n_1,diff_sec1_carry_i_11_n_2,diff_sec1_carry_i_11_n_3}),
        .CYINIT(1'b1),
        .DI({diff_sec1_carry_i_12_n_0,diff_sec1_carry_i_13_n_0,diff_sec1_carry_i_14_n_0,diff_sec1_carry_i_15_n_0}),
        .O(NLW_diff_sec1_carry_i_11_O_UNCONNECTED[3:0]),
        .S({diff_sec1_carry_i_16_n_0,diff_sec1_carry_i_17_n_0,diff_sec1_carry_i_18_n_0,diff_sec1_carry_i_19_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    diff_sec1_carry_i_12
       (.I0(prev_csec[6]),
        .I1(lap_csec[6]),
        .O(diff_sec1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    diff_sec1_carry_i_13
       (.I0(prev_csec[4]),
        .I1(lap_csec[4]),
        .I2(lap_csec[5]),
        .I3(prev_csec[5]),
        .O(diff_sec1_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    diff_sec1_carry_i_14
       (.I0(prev_csec[2]),
        .I1(lap_csec[2]),
        .I2(lap_csec[3]),
        .I3(prev_csec[3]),
        .O(diff_sec1_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    diff_sec1_carry_i_15
       (.I0(prev_csec[0]),
        .I1(lap_csec[0]),
        .I2(lap_csec[1]),
        .I3(prev_csec[1]),
        .O(diff_sec1_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_sec1_carry_i_16
       (.I0(lap_csec[6]),
        .I1(prev_csec[6]),
        .O(diff_sec1_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    diff_sec1_carry_i_17
       (.I0(lap_csec[4]),
        .I1(prev_csec[4]),
        .I2(lap_csec[5]),
        .I3(prev_csec[5]),
        .O(diff_sec1_carry_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    diff_sec1_carry_i_18
       (.I0(lap_csec[2]),
        .I1(prev_csec[2]),
        .I2(lap_csec[3]),
        .I3(prev_csec[3]),
        .O(diff_sec1_carry_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    diff_sec1_carry_i_19
       (.I0(lap_csec[0]),
        .I1(prev_csec[0]),
        .I2(lap_csec[1]),
        .I3(prev_csec[1]),
        .O(diff_sec1_carry_i_19_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    diff_sec1_carry_i_2
       (.I0(lap_sec[2]),
        .O(diff_sec1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    diff_sec1_carry_i_3
       (.I0(lap_sec[1]),
        .O(diff_sec1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    diff_sec1_carry_i_4
       (.I0(lap_sec[0]),
        .O(diff_sec1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA596A596AA965596)) 
    diff_sec1_carry_i_5
       (.I0(lap_sec[3]),
        .I1(diff_sec1_carry_i_9_n_0),
        .I2(prev_sec[3]),
        .I3(i__carry_i_1__6_n_1),
        .I4(prev_sec0__15[3]),
        .I5(diff_sec1_carry_i_11_n_0),
        .O(diff_sec1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAA955565556AAA9)) 
    diff_sec1_carry_i_6
       (.I0(lap_sec[2]),
        .I1(diff_sec1_carry_i_11_n_0),
        .I2(prev_sec[0]),
        .I3(prev_sec[1]),
        .I4(prev_sec[2]),
        .I5(i__carry_i_1__6_n_1),
        .O(diff_sec1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    diff_sec1_carry_i_7
       (.I0(lap_sec[1]),
        .I1(prev_sec[0]),
        .I2(diff_sec1_carry_i_11_n_0),
        .I3(prev_sec[1]),
        .O(diff_sec1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    diff_sec1_carry_i_8
       (.I0(lap_sec[0]),
        .I1(prev_sec[0]),
        .I2(diff_sec1_carry_i_11_n_0),
        .O(diff_sec1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    diff_sec1_carry_i_9
       (.I0(prev_sec[2]),
        .I1(prev_sec[1]),
        .I2(prev_sec[0]),
        .I3(diff_sec1_carry_i_11_n_0),
        .O(diff_sec1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0208000)) 
    \diff_sec[0]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I3(\diff_sec0_inferred__0/i__carry_n_7 ),
        .I4(diff_sec0[0]),
        .I5(\diff_sec[0]_i_2_n_0 ),
        .O(\diff_sec[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8D8DD88)) 
    \diff_sec[0]_i_2 
       (.I0(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I1(diff_sec1_carry_n_7),
        .I2(\diff_sec0_inferred__0/i__carry_n_7 ),
        .I3(\diff_sec_reg[3]_i_3_n_7 ),
        .I4(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I5(\sign_flag1_inferred__2/i__carry_n_1 ),
        .O(\diff_sec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0208000)) 
    \diff_sec[1]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I3(\diff_sec0_inferred__0/i__carry_n_6 ),
        .I4(diff_sec0[1]),
        .I5(\diff_sec[1]_i_2_n_0 ),
        .O(\diff_sec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8D8DD88)) 
    \diff_sec[1]_i_2 
       (.I0(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I1(diff_sec1_carry_n_6),
        .I2(\diff_sec0_inferred__0/i__carry_n_6 ),
        .I3(\diff_sec_reg[3]_i_3_n_6 ),
        .I4(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I5(\sign_flag1_inferred__2/i__carry_n_1 ),
        .O(\diff_sec[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0208000)) 
    \diff_sec[2]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I3(\diff_sec0_inferred__0/i__carry_n_5 ),
        .I4(diff_sec0[2]),
        .I5(\diff_sec[2]_i_3_n_0 ),
        .O(\diff_sec[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8D8DD88)) 
    \diff_sec[2]_i_3 
       (.I0(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I1(diff_sec1_carry_n_5),
        .I2(\diff_sec0_inferred__0/i__carry_n_5 ),
        .I3(\diff_sec_reg[3]_i_3_n_5 ),
        .I4(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I5(\sign_flag1_inferred__2/i__carry_n_1 ),
        .O(\diff_sec[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff_sec[2]_i_4 
       (.I0(lap_sec[2]),
        .I1(prev_sec[2]),
        .O(\diff_sec[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_sec[2]_i_5 
       (.I0(lap_sec[1]),
        .I1(prev_sec[1]),
        .O(\diff_sec[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \diff_sec[2]_i_6 
       (.I0(lap_sec[0]),
        .I1(prev_sec[0]),
        .O(\diff_sec[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0208000)) 
    \diff_sec[3]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I3(\diff_sec0_inferred__0/i__carry_n_4 ),
        .I4(diff_sec0[3]),
        .I5(\diff_sec[3]_i_2_n_0 ),
        .O(\diff_sec[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA55A659)) 
    \diff_sec[3]_i_10 
       (.I0(lap_sec[1]),
        .I1(\diff_min_reg[7]_i_6_n_1 ),
        .I2(prev_sec[0]),
        .I3(prev_sec[1]),
        .I4(p_2_in),
        .O(\diff_sec[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hA569)) 
    \diff_sec[3]_i_11 
       (.I0(lap_sec[0]),
        .I1(\diff_min_reg[7]_i_6_n_1 ),
        .I2(prev_sec[0]),
        .I3(p_2_in),
        .O(\diff_sec[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8D8DD88)) 
    \diff_sec[3]_i_2 
       (.I0(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I1(diff_sec1_carry_n_4),
        .I2(\diff_sec0_inferred__0/i__carry_n_4 ),
        .I3(\diff_sec_reg[3]_i_3_n_4 ),
        .I4(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I5(\sign_flag1_inferred__2/i__carry_n_1 ),
        .O(\diff_sec[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0F66)) 
    \diff_sec[3]_i_4 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(prev_sec[3]),
        .I2(lap_sec[3]),
        .I3(\diff_min_reg[7]_i_6_n_1 ),
        .O(\diff_sec[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0F66)) 
    \diff_sec[3]_i_5 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(prev_sec[2]),
        .I2(lap_sec[2]),
        .I3(\diff_min_reg[7]_i_6_n_1 ),
        .O(\diff_sec[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0F66)) 
    \diff_sec[3]_i_6 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(prev_sec[1]),
        .I2(lap_sec[1]),
        .I3(\diff_min_reg[7]_i_6_n_1 ),
        .O(\diff_sec[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0F66)) 
    \diff_sec[3]_i_7 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(prev_sec[0]),
        .I2(lap_sec[0]),
        .I3(\diff_min_reg[7]_i_6_n_1 ),
        .O(\diff_sec[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA5A5A965)) 
    \diff_sec[3]_i_8 
       (.I0(lap_sec[3]),
        .I1(\diff_min_reg[7]_i_6_n_1 ),
        .I2(prev_sec[3]),
        .I3(prev_sec0__15[3]),
        .I4(p_2_in),
        .O(\diff_sec[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF00FE11EF00F)) 
    \diff_sec[3]_i_9 
       (.I0(prev_sec[1]),
        .I1(prev_sec[0]),
        .I2(prev_sec[2]),
        .I3(lap_sec[2]),
        .I4(\diff_min_reg[7]_i_6_n_1 ),
        .I5(p_2_in),
        .O(\diff_sec[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0208000)) 
    \diff_sec[4]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I3(\diff_sec0_inferred__0/i__carry__0_n_7 ),
        .I4(diff_sec0[4]),
        .I5(\diff_sec[4]_i_2_n_0 ),
        .O(\diff_sec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8D8DD88)) 
    \diff_sec[4]_i_2 
       (.I0(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I1(diff_sec1_carry__0_n_7),
        .I2(\diff_sec0_inferred__0/i__carry__0_n_7 ),
        .I3(\diff_sec_reg[7]_i_6_n_7 ),
        .I4(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I5(\sign_flag1_inferred__2/i__carry_n_1 ),
        .O(\diff_sec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0208000)) 
    \diff_sec[5]_i_1 
       (.I0(\lap_count_reg[1]_0 ),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I3(\diff_sec0_inferred__0/i__carry__0_n_6 ),
        .I4(diff_sec0[5]),
        .I5(\diff_sec[5]_i_3_n_0 ),
        .O(\diff_sec[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \diff_sec[5]_i_10 
       (.I0(lap_sec[3]),
        .I1(prev_sec[3]),
        .I2(lap_sec[4]),
        .I3(prev_sec[4]),
        .O(\diff_sec[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \diff_sec[5]_i_11 
       (.I0(prev_sec[2]),
        .I1(lap_sec[3]),
        .I2(prev_sec[3]),
        .O(\diff_sec[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8D8DD88)) 
    \diff_sec[5]_i_3 
       (.I0(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I1(diff_sec1_carry__0_n_6),
        .I2(\diff_sec0_inferred__0/i__carry__0_n_6 ),
        .I3(\diff_sec_reg[7]_i_6_n_6 ),
        .I4(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I5(\sign_flag1_inferred__2/i__carry_n_1 ),
        .O(\diff_sec[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \diff_sec[5]_i_4 
       (.I0(lap_sec[5]),
        .I1(prev_sec[5]),
        .O(\diff_sec[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \diff_sec[5]_i_5 
       (.I0(lap_sec[4]),
        .I1(prev_sec[4]),
        .O(\diff_sec[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \diff_sec[5]_i_6 
       (.I0(lap_sec[3]),
        .I1(prev_sec[3]),
        .O(\diff_sec[5]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff_sec[5]_i_7 
       (.I0(prev_sec[2]),
        .O(\diff_sec[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sec[5]_i_8 
       (.I0(prev_sec[5]),
        .I1(lap_sec[5]),
        .O(\diff_sec[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \diff_sec[5]_i_9 
       (.I0(lap_sec[4]),
        .I1(prev_sec[4]),
        .I2(lap_sec[5]),
        .I3(prev_sec[5]),
        .O(\diff_sec[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h22032200)) 
    \diff_sec[6]_i_2 
       (.I0(diff_sec0[6]),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I4(\diff_sec_reg[7]_i_6_n_5 ),
        .O(\diff_sec[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \diff_sec[7]_i_10 
       (.I0(\diff_min_reg[7]_i_6_n_1 ),
        .I1(prev_sec[5]),
        .I2(p_2_in),
        .I3(diff_sec1_carry__0_i_7_n_0),
        .O(\diff_sec[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \diff_sec[7]_i_11 
       (.I0(\diff_min_reg[7]_i_6_n_1 ),
        .I1(prev_sec[5]),
        .I2(p_2_in),
        .I3(diff_sec1_carry__0_i_7_n_0),
        .O(\diff_sec[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAA55A659)) 
    \diff_sec[7]_i_12 
       (.I0(lap_sec[5]),
        .I1(\diff_min_reg[7]_i_6_n_1 ),
        .I2(diff_sec1_carry__0_i_7_n_0),
        .I3(prev_sec[5]),
        .I4(p_2_in),
        .O(\diff_sec[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hA5A5A965)) 
    \diff_sec[7]_i_13 
       (.I0(lap_sec[4]),
        .I1(\diff_min_reg[7]_i_6_n_1 ),
        .I2(prev_sec[4]),
        .I3(prev_sec0__15[4]),
        .I4(p_2_in),
        .O(\diff_sec[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \diff_sec[7]_i_3 
       (.I0(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I1(\sign_flag1_inferred__1/i__carry_n_1 ),
        .O(\diff_sec[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h11031100)) 
    \diff_sec[7]_i_4 
       (.I0(\diff_sec_reg[7]_i_5_n_3 ),
        .I1(\sign_flag1_inferred__0/i__carry_n_1 ),
        .I2(\sign_flag1_inferred__1/i__carry_n_1 ),
        .I3(\sign_flag1_inferred__2/i__carry_n_1 ),
        .I4(\diff_sec_reg[7]_i_6_n_4 ),
        .O(\diff_sec[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \diff_sec[7]_i_7 
       (.I0(\diff_min_reg[7]_i_6_n_1 ),
        .I1(\sign_flag1_inferred__3/i__carry_n_0 ),
        .O(\diff_sec[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0F66)) 
    \diff_sec[7]_i_8 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(prev_sec[5]),
        .I2(lap_sec[5]),
        .I3(\diff_min_reg[7]_i_6_n_1 ),
        .O(\diff_sec[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0F66)) 
    \diff_sec[7]_i_9 
       (.I0(\sign_flag1_inferred__3/i__carry_n_0 ),
        .I1(prev_sec[4]),
        .I2(lap_sec[4]),
        .I3(\diff_min_reg[7]_i_6_n_1 ),
        .O(\diff_sec[7]_i_9_n_0 ));
  FDCE \diff_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_sec[0]_i_1_n_0 ),
        .Q(diff_sec[0]));
  FDCE \diff_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_sec[1]_i_1_n_0 ),
        .Q(diff_sec[1]));
  FDCE \diff_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_sec[2]_i_1_n_0 ),
        .Q(diff_sec[2]));
  CARRY4 \diff_sec_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\diff_sec_reg[2]_i_2_n_0 ,\diff_sec_reg[2]_i_2_n_1 ,\diff_sec_reg[2]_i_2_n_2 ,\diff_sec_reg[2]_i_2_n_3 }),
        .CYINIT(\sign_flag1_inferred__3/i__carry_n_0 ),
        .DI({prev_sec[2],lap_sec[1:0],1'b0}),
        .O({diff_sec0[2:0],\NLW_diff_sec_reg[2]_i_2_O_UNCONNECTED [0]}),
        .S({\diff_sec[2]_i_4_n_0 ,\diff_sec[2]_i_5_n_0 ,\diff_sec[2]_i_6_n_0 ,1'b1}));
  FDCE \diff_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_sec[3]_i_1_n_0 ),
        .Q(diff_sec[3]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\diff_sec_reg[3]_i_3_n_0 ,\diff_sec_reg[3]_i_3_n_1 ,\diff_sec_reg[3]_i_3_n_2 ,\diff_sec_reg[3]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff_sec[3]_i_4_n_0 ,\diff_sec[3]_i_5_n_0 ,\diff_sec[3]_i_6_n_0 ,\diff_sec[3]_i_7_n_0 }),
        .O({\diff_sec_reg[3]_i_3_n_4 ,\diff_sec_reg[3]_i_3_n_5 ,\diff_sec_reg[3]_i_3_n_6 ,\diff_sec_reg[3]_i_3_n_7 }),
        .S({\diff_sec[3]_i_8_n_0 ,\diff_sec[3]_i_9_n_0 ,\diff_sec[3]_i_10_n_0 ,\diff_sec[3]_i_11_n_0 }));
  FDCE \diff_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_sec[4]_i_1_n_0 ),
        .Q(diff_sec[4]));
  FDCE \diff_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\diff_sec[5]_i_1_n_0 ),
        .Q(diff_sec[5]));
  CARRY4 \diff_sec_reg[5]_i_2 
       (.CI(\diff_sec_reg[2]_i_2_n_0 ),
        .CO({\diff_sec_reg[5]_i_2_n_0 ,\diff_sec_reg[5]_i_2_n_1 ,\diff_sec_reg[5]_i_2_n_2 ,\diff_sec_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff_sec[5]_i_4_n_0 ,\diff_sec[5]_i_5_n_0 ,\diff_sec[5]_i_6_n_0 ,\diff_sec[5]_i_7_n_0 }),
        .O(diff_sec0[6:3]),
        .S({\diff_sec[5]_i_8_n_0 ,\diff_sec[5]_i_9_n_0 ,\diff_sec[5]_i_10_n_0 ,\diff_sec[5]_i_11_n_0 }));
  FDCE \diff_sec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_71),
        .Q(diff_sec[6]));
  FDCE \diff_sec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(ed_clear_n_70),
        .Q(diff_sec[7]));
  CARRY4 \diff_sec_reg[7]_i_5 
       (.CI(\diff_sec_reg[5]_i_2_n_0 ),
        .CO({\NLW_diff_sec_reg[7]_i_5_CO_UNCONNECTED [3:1],\diff_sec_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_diff_sec_reg[7]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \diff_sec_reg[7]_i_6 
       (.CI(\diff_sec_reg[3]_i_3_n_0 ),
        .CO({\NLW_diff_sec_reg[7]_i_6_CO_UNCONNECTED [3],\diff_sec_reg[7]_i_6_n_1 ,\diff_sec_reg[7]_i_6_n_2 ,\diff_sec_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\diff_sec[7]_i_7_n_0 ,\diff_sec[7]_i_8_n_0 ,\diff_sec[7]_i_9_n_0 }),
        .O({\diff_sec_reg[7]_i_6_n_4 ,\diff_sec_reg[7]_i_6_n_5 ,\diff_sec_reg[7]_i_6_n_6 ,\diff_sec_reg[7]_i_6_n_7 }),
        .S({\diff_sec[7]_i_10_n_0 ,\diff_sec[7]_i_11_n_0 ,\diff_sec[7]_i_12_n_0 ,\diff_sec[7]_i_13_n_0 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p ed_clear
       (.AR(SR),
        .CO(\cnt_sysclk21_inferred__0/i__carry__2_n_1 ),
        .D({ed_clear_n_3,ed_clear_n_4,ed_clear_n_5,ed_clear_n_6,ed_clear_n_7,ed_clear_n_8,ed_clear_n_9,ed_clear_n_10,ed_clear_n_11,ed_clear_n_12,ed_clear_n_13,ed_clear_n_14,ed_clear_n_15,ed_clear_n_16,ed_clear_n_17,ed_clear_n_18,ed_clear_n_19,ed_clear_n_20,ed_clear_n_21,ed_clear_n_22,ed_clear_n_23,ed_clear_n_24,ed_clear_n_25,ed_clear_n_26,ed_clear_n_27,ed_clear_n_28,ed_clear_n_29,ed_clear_n_30,ed_clear_n_31,ed_clear_n_32,ed_clear_n_33,ed_clear_n_34}),
        .E(ed_clear_n_54),
        .O({diff_sec1_carry__0_n_4,diff_sec1_carry__0_n_5}),
        .Q(Q[1]),
        .clear_p(clear_p),
        .cnt_sysclk20(cnt_sysclk20),
        .cnt_sysclk21__0(cnt_sysclk21__0),
        .\cnt_sysclk2_reg[0] (run_reg_0),
        .\cnt_sysclk2_reg[0]_0 (\cnt_sysclk2_reg_n_0_[0] ),
        .\diff_csec_reg[1] (\diff_csec[1]_i_2_n_0 ),
        .\diff_csec_reg[1]_0 (\diff_csec[1]_i_3_n_0 ),
        .\diff_csec_reg[1]_1 (\diff_csec[1]_i_4_n_0 ),
        .\diff_csec_reg[1]_2 (\diff_csec[7]_i_5_n_0 ),
        .\diff_csec_reg[1]_3 (\diff_csec[1]_i_5_n_0 ),
        .\diff_csec_reg[1]_4 (lap_count[3:0]),
        .\diff_csec_reg[1]_5 (\lap_count[7]_i_6_n_0 ),
        .\diff_csec_reg[2] (\diff_csec[2]_i_2_n_0 ),
        .\diff_csec_reg[2]_0 (\diff_csec[2]_i_3_n_0 ),
        .\diff_csec_reg[2]_1 (\diff_csec[2]_i_4_n_0 ),
        .\diff_csec_reg[2]_2 (\diff_csec[2]_i_5_n_0 ),
        .\diff_csec_reg[3] (\diff_csec[3]_i_2_n_0 ),
        .\diff_csec_reg[3]_0 (\diff_csec[3]_i_3_n_0 ),
        .\diff_csec_reg[3]_1 (\diff_csec[3]_i_4_n_0 ),
        .\diff_csec_reg[3]_2 (\diff_csec[3]_i_5_n_0 ),
        .\diff_csec_reg[4] (\diff_csec[4]_i_2_n_0 ),
        .\diff_csec_reg[4]_0 (\diff_csec[4]_i_3_n_0 ),
        .\diff_csec_reg[4]_1 (\diff_csec[4]_i_4_n_0 ),
        .\diff_csec_reg[4]_2 (\diff_csec[4]_i_5_n_0 ),
        .\diff_csec_reg[5] (\diff_csec[5]_i_2_n_0 ),
        .\diff_csec_reg[5]_0 (\diff_csec[5]_i_3_n_0 ),
        .\diff_csec_reg[5]_1 (\diff_csec[5]_i_4_n_0 ),
        .\diff_csec_reg[5]_2 (\diff_csec[5]_i_5_n_0 ),
        .\diff_csec_reg[6] (\diff_csec[6]_i_2_n_0 ),
        .\diff_csec_reg[6]_0 (\diff_csec[6]_i_3_n_0 ),
        .\diff_csec_reg[6]_1 (\diff_csec[6]_i_4_n_0 ),
        .\diff_csec_reg[6]_2 (\diff_csec[6]_i_5_n_0 ),
        .\diff_csec_reg[7] (\diff_csec[7]_i_2_n_0 ),
        .\diff_csec_reg[7]_0 (\diff_csec[7]_i_3_n_0 ),
        .\diff_csec_reg[7]_1 (\diff_csec[7]_i_4_n_0 ),
        .\diff_csec_reg[7]_2 (\diff_csec[7]_i_6_n_0 ),
        .\diff_min_reg[7] (\sign_flag1_inferred__2/i__carry_n_1 ),
        .\diff_min_reg[7]_0 (\sign_flag1_inferred__1/i__carry_n_1 ),
        .\diff_sec_reg[6] (\diff_sec0_inferred__0/i__carry__0_n_1 ),
        .\diff_sec_reg[6]_0 (\sign_flag1_inferred__0/i__carry_n_1 ),
        .\diff_sec_reg[6]_1 (\diff_sec[7]_i_3_n_0 ),
        .\diff_sec_reg[6]_2 (\diff_sec[6]_i_2_n_0 ),
        .\diff_sec_reg[7] (\diff_sec[7]_i_4_n_0 ),
        .ff_cur_reg_0(ed_clear_n_56),
        .ff_old_reg_0(ed_clear_n_61),
        .\lap_count_reg[1] ({ed_clear_n_62,ed_clear_n_63,ed_clear_n_64,ed_clear_n_65,ed_clear_n_66,ed_clear_n_67,ed_clear_n_68}),
        .\lap_count_reg[1]_0 (\lap_count_reg[1]_0 ),
        .\lap_count_reg[1]_1 ({ed_clear_n_70,ed_clear_n_71}),
        .\lap_count_reg[1]_2 (ed_clear_n_72),
        .\lap_count_reg[1]_3 (ed_clear_n_73),
        .\lap_csec_reg[5] ({ed_clear_n_47,ed_clear_n_48,ed_clear_n_49,ed_clear_n_50,ed_clear_n_51,ed_clear_n_52,ed_clear_n_53}),
        .\lap_csec_reg[5]_0 (\lap_csec[5]_i_2_n_0 ),
        .\lap_csec_reg[6] (lap_csec),
        .\lap_csec_reg[6]_0 (\lap_csec[6]_i_3_n_0 ),
        .lap_flag010_out(lap_flag010_out),
        .\lap_min_reg[3] ({ed_clear_n_35,ed_clear_n_36,ed_clear_n_37,ed_clear_n_38,ed_clear_n_39,ed_clear_n_40}),
        .\lap_min_reg[5] (lap_min),
        .\lap_min_reg[5]_0 (\lap_min[5]_i_6_n_0 ),
        .\lap_sec_reg[0] (\lap_sec[5]_i_3_n_0 ),
        .\lap_sec_reg[3] ({ed_clear_n_41,ed_clear_n_42,ed_clear_n_43,ed_clear_n_44,ed_clear_n_45,ed_clear_n_46}),
        .\lap_sec_reg[5] (lap_sec),
        .\lap_sec_reg[5]_0 (\lap_sec[5]_i_5_n_0 ),
        .\lap_sec_reg[5]_1 (\lap_min[5]_i_3_n_0 ),
        .\min_reg[0] (\min[5]_i_3_n_0 ),
        .\min_reg[0]_0 (cnt_sysclk11_carry__2_n_1),
        .\min_reg[0]_1 (\sec[5]_i_3_n_0 ),
        .p_0_in(p_0_in),
        .run_reg(ed_clear_n_55),
        .run_reg_0(cnt_sysclk2),
        .run_reg_1(ed_clear_n_58),
        .run_reg_2(ed_clear_n_59),
        .run_reg_3(ed_clear_n_60),
        .run_reg_4(ed_clear_n_75),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sign_flag2_out(sign_flag2_out),
        .sign_flag_reg(\sign_flag1_inferred__3/i__carry_n_0 ),
        .sign_flag_reg_0(\diff_min_reg[7]_i_6_n_1 ),
        .\snap_lap_csec_reg[0] (ff_old_reg),
        .\snap_lap_csec_reg[0]_0 (ff_cur_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 ed_start
       (.AR(SR),
        .D(p_1_in),
        .E(prev_min),
        .Q(Q[0]),
        .cnt_sysclk21__0(cnt_sysclk21__0),
        .ff_cur_reg_0(ff_cur_reg),
        .ff_old_reg_0(ff_old_reg),
        .\lap_count_reg[0] (run_reg_0),
        .\lap_count_reg[0]_0 (\lap_count[7]_i_6_n_0 ),
        .\lap_count_reg[5] (\lap_count[5]_i_2_n_0 ),
        .\lap_count_reg[6] (\lap_count[7]_i_4_n_0 ),
        .\lap_count_reg[7] (lap_count),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk),
        .start_p(start_p));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\cnt_sysclk2_reg_n_0_[12] ),
        .I1(\cnt_sysclk2_reg_n_0_[13] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__0
       (.I0(prev_csec[5]),
        .I1(lap_csec[5]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__1
       (.I0(lap_csec[5]),
        .I1(prev_csec[5]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(\prev_min_reg_n_0_[5] ),
        .I1(lap_min[5]),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__3
       (.I0(lap_min[5]),
        .I1(\prev_min_reg_n_0_[5] ),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__4
       (.I0(lap_csec[6]),
        .I1(prev_csec[6]),
        .O(i__carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__5
       (.I0(prev_sec[5]),
        .I1(lap_sec[5]),
        .O(i__carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__6
       (.I0(lap_min[5]),
        .I1(\prev_min_reg_n_0_[5] ),
        .O(i__carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(\cnt_sysclk2_reg_n_0_[10] ),
        .I1(\cnt_sysclk2_reg_n_0_[11] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__0
       (.I0(lap_csec[5]),
        .I1(prev_csec[5]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__1
       (.I0(prev_csec[5]),
        .I1(lap_csec[5]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__2
       (.I0(\prev_min_reg_n_0_[4] ),
        .I1(lap_min[4]),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__3
       (.I0(lap_min[4]),
        .I1(\prev_min_reg_n_0_[4] ),
        .O(i__carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__4
       (.I0(lap_csec[5]),
        .I1(prev_csec[5]),
        .O(i__carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__5
       (.I0(prev_sec[4]),
        .I1(lap_sec[4]),
        .O(i__carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__6
       (.I0(lap_min[4]),
        .I1(\prev_min_reg_n_0_[4] ),
        .O(i__carry__0_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_3
       (.I0(\cnt_sysclk2_reg_n_0_[16] ),
        .I1(\cnt_sysclk2_reg_n_0_[17] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3__0
       (.I0(lap_csec[3]),
        .I1(prev_csec[3]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3__1
       (.I0(prev_csec[3]),
        .I1(lap_csec[3]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__2
       (.I0(lap_csec[4]),
        .I1(prev_csec[4]),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4
       (.I0(\cnt_sysclk2_reg_n_0_[14] ),
        .I1(\cnt_sysclk2_reg_n_0_[15] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__0
       (.I0(lap_csec[6]),
        .I1(prev_csec[6]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__1
       (.I0(prev_csec[6]),
        .I1(lap_csec[6]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(\cnt_sysclk2_reg_n_0_[13] ),
        .I1(\cnt_sysclk2_reg_n_0_[12] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5__0
       (.I0(prev_csec[5]),
        .I1(lap_csec[5]),
        .I2(lap_csec[6]),
        .I3(prev_csec[6]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5__1
       (.I0(lap_csec[5]),
        .I1(prev_csec[5]),
        .I2(prev_csec[6]),
        .I3(lap_csec[6]),
        .O(i__carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(\cnt_sysclk2_reg_n_0_[11] ),
        .I1(\cnt_sysclk2_reg_n_0_[10] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    i__carry__0_i_6__0
       (.I0(prev_csec[5]),
        .I1(lap_csec[5]),
        .I2(prev_csec[4]),
        .I3(lap_csec[4]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    i__carry__0_i_6__1
       (.I0(lap_csec[5]),
        .I1(prev_csec[5]),
        .I2(lap_csec[4]),
        .I3(prev_csec[4]),
        .O(i__carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_7
       (.I0(lap_csec[3]),
        .I1(prev_csec[3]),
        .I2(lap_csec[4]),
        .I3(prev_csec[4]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_7__0
       (.I0(prev_csec[3]),
        .I1(lap_csec[3]),
        .I2(prev_csec[4]),
        .I3(lap_csec[4]),
        .O(i__carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(\cnt_sysclk2_reg_n_0_[24] ),
        .I1(\cnt_sysclk2_reg_n_0_[25] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(\cnt_sysclk2_reg_n_0_[22] ),
        .I1(\cnt_sysclk2_reg_n_0_[23] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(\cnt_sysclk2_reg_n_0_[20] ),
        .I1(\cnt_sysclk2_reg_n_0_[21] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(\cnt_sysclk2_reg_n_0_[25] ),
        .I1(\cnt_sysclk2_reg_n_0_[24] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_5
       (.I0(\cnt_sysclk2_reg_n_0_[23] ),
        .I1(\cnt_sysclk2_reg_n_0_[22] ),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_6
       (.I0(\cnt_sysclk2_reg_n_0_[21] ),
        .I1(\cnt_sysclk2_reg_n_0_[20] ),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_7
       (.I0(\cnt_sysclk2_reg_n_0_[18] ),
        .I1(\cnt_sysclk2_reg_n_0_[19] ),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(\cnt_sysclk2_reg_n_0_[30] ),
        .I1(\cnt_sysclk2_reg_n_0_[31] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(\cnt_sysclk2_reg_n_0_[28] ),
        .I1(\cnt_sysclk2_reg_n_0_[29] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(\cnt_sysclk2_reg_n_0_[26] ),
        .I1(\cnt_sysclk2_reg_n_0_[27] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_4
       (.I0(\cnt_sysclk2_reg_n_0_[31] ),
        .I1(\cnt_sysclk2_reg_n_0_[30] ),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_5
       (.I0(\cnt_sysclk2_reg_n_0_[29] ),
        .I1(\cnt_sysclk2_reg_n_0_[28] ),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_6
       (.I0(\cnt_sysclk2_reg_n_0_[27] ),
        .I1(\cnt_sysclk2_reg_n_0_[26] ),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1
       (.I0(\cnt_sysclk2_reg_n_0_[0] ),
        .I1(\cnt_sysclk2_reg_n_0_[1] ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_10
       (.I0(lap_sec[2]),
        .I1(prev_sec[2]),
        .I2(lap_sec[3]),
        .I3(prev_sec[3]),
        .O(i__carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_11
       (.I0(lap_sec[0]),
        .I1(prev_sec[0]),
        .I2(lap_sec[1]),
        .I3(prev_sec[1]),
        .O(i__carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(lap_sec[4]),
        .I1(prev_sec[4]),
        .I2(prev_sec[5]),
        .I3(lap_sec[5]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(\prev_min_reg_n_0_[4] ),
        .I1(lap_min[4]),
        .I2(lap_min[5]),
        .I3(\prev_min_reg_n_0_[5] ),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__10
       (.I0(\prev_min_reg_n_0_[3] ),
        .I1(lap_min[3]),
        .O(i__carry_i_1__10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__2
       (.I0(lap_min[4]),
        .I1(\prev_min_reg_n_0_[4] ),
        .I2(\prev_min_reg_n_0_[5] ),
        .I3(lap_min[5]),
        .O(i__carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__3
       (.I0(prev_csec[2]),
        .O(i__carry_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__4
       (.I0(lap_csec[2]),
        .O(i__carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__5
       (.I0(lap_csec[6]),
        .I1(prev_csec[6]),
        .O(i__carry_i_1__5_n_0));
  CARRY4 i__carry_i_1__6
       (.CI(1'b0),
        .CO({NLW_i__carry_i_1__6_CO_UNCONNECTED[3],i__carry_i_1__6_n_1,i__carry_i_1__6_n_2,i__carry_i_1__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_6__1_n_0,i__carry_i_7__0_n_0,i__carry_i_8_n_0}),
        .O(NLW_i__carry_i_1__6_O_UNCONNECTED[3:0]),
        .S({1'b0,i__carry_i_9_n_0,i__carry_i_10_n_0,i__carry_i_11_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__7
       (.I0(lap_min[3]),
        .I1(\prev_min_reg_n_0_[3] ),
        .O(i__carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__8
       (.I0(lap_csec[3]),
        .I1(prev_csec[3]),
        .O(i__carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__9
       (.I0(prev_sec[3]),
        .I1(lap_sec[3]),
        .O(i__carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2
       (.I0(\cnt_sysclk2_reg_n_0_[8] ),
        .I1(\cnt_sysclk2_reg_n_0_[9] ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(lap_sec[2]),
        .I1(prev_sec[2]),
        .I2(prev_sec[3]),
        .I3(lap_sec[3]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(\prev_min_reg_n_0_[2] ),
        .I1(lap_min[2]),
        .I2(lap_min[3]),
        .I3(\prev_min_reg_n_0_[3] ),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__10
       (.I0(lap_min[3]),
        .I1(\prev_min_reg_n_0_[3] ),
        .O(i__carry_i_2__10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__2
       (.I0(lap_min[2]),
        .I1(\prev_min_reg_n_0_[2] ),
        .I2(\prev_min_reg_n_0_[3] ),
        .I3(lap_min[3]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__3
       (.I0(lap_csec[4]),
        .I1(prev_csec[4]),
        .I2(prev_csec[5]),
        .I3(lap_csec[5]),
        .O(i__carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__4
       (.I0(lap_min[2]),
        .I1(\prev_min_reg_n_0_[2] ),
        .O(i__carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__5
       (.I0(lap_csec[2]),
        .I1(prev_csec[2]),
        .O(i__carry_i_2__5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2__6
       (.I0(prev_csec[2]),
        .I1(prev_csec[3]),
        .I2(lap_csec[3]),
        .O(i__carry_i_2__6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2__7
       (.I0(lap_csec[2]),
        .I1(lap_csec[3]),
        .I2(prev_csec[3]),
        .O(i__carry_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__8
       (.I0(prev_sec[2]),
        .I1(lap_sec[2]),
        .O(i__carry_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__9
       (.I0(\prev_min_reg_n_0_[2] ),
        .I1(lap_min[2]),
        .O(i__carry_i_2__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(\cnt_sysclk2_reg_n_0_[6] ),
        .I1(\cnt_sysclk2_reg_n_0_[7] ),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(lap_sec[0]),
        .I1(prev_sec[0]),
        .I2(prev_sec[1]),
        .I3(lap_sec[1]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(\prev_min_reg_n_0_[0] ),
        .I1(lap_min[0]),
        .I2(lap_min[1]),
        .I3(\prev_min_reg_n_0_[1] ),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__10
       (.I0(lap_csec[1]),
        .I1(prev_csec[1]),
        .O(i__carry_i_3__10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__2
       (.I0(lap_min[0]),
        .I1(\prev_min_reg_n_0_[0] ),
        .I2(\prev_min_reg_n_0_[1] ),
        .I3(lap_min[1]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__3
       (.I0(lap_csec[2]),
        .I1(prev_csec[2]),
        .I2(prev_csec[3]),
        .I3(lap_csec[3]),
        .O(i__carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__4
       (.I0(lap_csec[2]),
        .I1(prev_csec[2]),
        .O(i__carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__5
       (.I0(lap_csec[2]),
        .I1(prev_csec[2]),
        .O(i__carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__6
       (.I0(lap_min[1]),
        .I1(\prev_min_reg_n_0_[1] ),
        .O(i__carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__7
       (.I0(prev_sec[1]),
        .I1(lap_sec[1]),
        .O(i__carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__8
       (.I0(\prev_min_reg_n_0_[1] ),
        .I1(lap_min[1]),
        .O(i__carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__9
       (.I0(lap_min[2]),
        .I1(\prev_min_reg_n_0_[2] ),
        .O(i__carry_i_3__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(\cnt_sysclk2_reg_n_0_[9] ),
        .I1(\cnt_sysclk2_reg_n_0_[8] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_4__0
       (.I0(lap_min[4]),
        .I1(\prev_min_reg_n_0_[4] ),
        .I2(lap_min[5]),
        .I3(\prev_min_reg_n_0_[5] ),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__1
       (.I0(lap_csec[0]),
        .I1(prev_csec[0]),
        .I2(prev_csec[1]),
        .I3(lap_csec[1]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__10
       (.I0(lap_csec[0]),
        .I1(prev_csec[0]),
        .O(i__carry_i_4__10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_4__2
       (.I0(lap_sec[4]),
        .I1(prev_sec[4]),
        .I2(lap_sec[5]),
        .I3(prev_sec[5]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_4__3
       (.I0(lap_min[4]),
        .I1(\prev_min_reg_n_0_[4] ),
        .I2(lap_min[5]),
        .I3(\prev_min_reg_n_0_[5] ),
        .O(i__carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__4
       (.I0(prev_sec[0]),
        .I1(\sign_flag1_inferred__3/i__carry_n_0 ),
        .O(i__carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__5
       (.I0(lap_min[0]),
        .I1(\prev_min_reg_n_0_[0] ),
        .O(i__carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__6
       (.I0(lap_csec[1]),
        .I1(prev_csec[1]),
        .O(i__carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__7
       (.I0(prev_csec[1]),
        .I1(lap_csec[1]),
        .O(i__carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__8
       (.I0(\prev_min_reg_n_0_[0] ),
        .I1(lap_min[0]),
        .O(i__carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__9
       (.I0(lap_min[1]),
        .I1(\prev_min_reg_n_0_[1] ),
        .O(i__carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(\cnt_sysclk2_reg_n_0_[7] ),
        .I1(\cnt_sysclk2_reg_n_0_[6] ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(lap_min[2]),
        .I1(\prev_min_reg_n_0_[2] ),
        .I2(lap_min[3]),
        .I3(\prev_min_reg_n_0_[3] ),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(lap_sec[2]),
        .I1(prev_sec[2]),
        .I2(lap_sec[3]),
        .I3(prev_sec[3]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(lap_min[2]),
        .I1(\prev_min_reg_n_0_[2] ),
        .I2(lap_min[3]),
        .I3(\prev_min_reg_n_0_[3] ),
        .O(i__carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__3
       (.I0(lap_min[0]),
        .I1(i__carry_i_1__6_n_1),
        .O(i__carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__4
       (.I0(prev_csec[6]),
        .I1(lap_csec[6]),
        .O(i__carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__5
       (.I0(prev_csec[0]),
        .I1(lap_csec[0]),
        .O(i__carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__6
       (.I0(lap_csec[0]),
        .I1(prev_csec[0]),
        .O(i__carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_6
       (.I0(\cnt_sysclk2_reg_n_0_[4] ),
        .I1(\cnt_sysclk2_reg_n_0_[5] ),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(lap_min[0]),
        .I1(\prev_min_reg_n_0_[0] ),
        .I2(lap_min[1]),
        .I3(\prev_min_reg_n_0_[1] ),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_6__1
       (.I0(prev_sec[4]),
        .I1(lap_sec[4]),
        .I2(prev_sec[5]),
        .I3(lap_sec[5]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(lap_sec[0]),
        .I1(prev_sec[0]),
        .I2(lap_sec[1]),
        .I3(prev_sec[1]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__3
       (.I0(lap_min[0]),
        .I1(\prev_min_reg_n_0_[0] ),
        .I2(lap_min[1]),
        .I3(\prev_min_reg_n_0_[1] ),
        .O(i__carry_i_6__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__4
       (.I0(lap_csec[4]),
        .I1(prev_csec[4]),
        .I2(lap_csec[5]),
        .I3(prev_csec[5]),
        .O(i__carry_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_7
       (.I0(\cnt_sysclk2_reg_n_0_[2] ),
        .I1(\cnt_sysclk2_reg_n_0_[3] ),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_7__0
       (.I0(prev_sec[2]),
        .I1(lap_sec[2]),
        .I2(lap_sec[3]),
        .I3(prev_sec[3]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(lap_csec[2]),
        .I1(prev_csec[2]),
        .I2(lap_csec[3]),
        .I3(prev_csec[3]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_8
       (.I0(prev_sec[0]),
        .I1(lap_sec[0]),
        .I2(lap_sec[1]),
        .I3(prev_sec[1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(lap_csec[0]),
        .I1(prev_csec[0]),
        .I2(lap_csec[1]),
        .I3(prev_csec[1]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_9
       (.I0(lap_sec[4]),
        .I1(prev_sec[4]),
        .I2(lap_sec[5]),
        .I3(prev_sec[5]),
        .O(i__carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \lap_count[5]_i_2 
       (.I0(lap_count[4]),
        .I1(lap_count[2]),
        .I2(lap_count[0]),
        .I3(lap_count[1]),
        .I4(lap_count[3]),
        .O(\lap_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lap_count[7]_i_4 
       (.I0(lap_count[5]),
        .I1(lap_count[3]),
        .I2(lap_count[1]),
        .I3(lap_count[0]),
        .I4(lap_count[2]),
        .I5(lap_count[4]),
        .O(\lap_count[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \lap_count[7]_i_6 
       (.I0(lap_count[7]),
        .I1(lap_count[6]),
        .I2(lap_count[5]),
        .I3(lap_count[4]),
        .O(\lap_count[7]_i_6_n_0 ));
  FDCE \lap_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_61),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(lap_count[0]));
  FDCE \lap_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_61),
        .CLR(SR),
        .D(p_1_in[1]),
        .Q(lap_count[1]));
  FDCE \lap_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_61),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(lap_count[2]));
  FDCE \lap_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_61),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(lap_count[3]));
  FDCE \lap_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_61),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(lap_count[4]));
  FDCE \lap_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_61),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(lap_count[5]));
  FDCE \lap_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_61),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(lap_count[6]));
  FDCE \lap_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_61),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(lap_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_csec[5]_i_2 
       (.I0(lap_csec[1]),
        .I1(lap_csec[0]),
        .O(\lap_csec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \lap_csec[6]_i_3 
       (.I0(lap_csec[4]),
        .I1(lap_csec[2]),
        .I2(lap_csec[0]),
        .I3(lap_csec[1]),
        .I4(lap_csec[3]),
        .O(\lap_csec[6]_i_3_n_0 ));
  FDCE \lap_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_54),
        .CLR(SR),
        .D(ed_clear_n_53),
        .Q(lap_csec[0]));
  FDCE \lap_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_54),
        .CLR(SR),
        .D(ed_clear_n_52),
        .Q(lap_csec[1]));
  FDCE \lap_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_54),
        .CLR(SR),
        .D(ed_clear_n_51),
        .Q(lap_csec[2]));
  FDCE \lap_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_54),
        .CLR(SR),
        .D(ed_clear_n_50),
        .Q(lap_csec[3]));
  FDCE \lap_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_54),
        .CLR(SR),
        .D(ed_clear_n_49),
        .Q(lap_csec[4]));
  FDCE \lap_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_54),
        .CLR(SR),
        .D(ed_clear_n_48),
        .Q(lap_csec[5]));
  FDCE \lap_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_54),
        .CLR(SR),
        .D(ed_clear_n_47),
        .Q(lap_csec[6]));
  FDCE lap_flag_reg
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(lap_flag010_out),
        .Q(lap_flag));
  LUT6 #(
    .INIT(64'h0000FFFF00008000)) 
    \lap_min[5]_i_1 
       (.I0(\lap_min[5]_i_3_n_0 ),
        .I1(\cnt_sysclk21_inferred__0/i__carry__2_n_1 ),
        .I2(run_reg_0),
        .I3(\lap_sec[5]_i_3_n_0 ),
        .I4(cnt_sysclk21__0),
        .I5(clear_p),
        .O(\lap_min[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    \lap_min[5]_i_3 
       (.I0(lap_sec[4]),
        .I1(lap_sec[3]),
        .I2(lap_sec[5]),
        .I3(lap_sec[2]),
        .I4(lap_sec[0]),
        .I5(lap_sec[1]),
        .O(\lap_min[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_min[5]_i_6 
       (.I0(lap_min[1]),
        .I1(lap_min[0]),
        .O(\lap_min[5]_i_6_n_0 ));
  FDCE \lap_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\lap_min[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_clear_n_40),
        .Q(lap_min[0]));
  FDCE \lap_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\lap_min[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_clear_n_39),
        .Q(lap_min[1]));
  FDCE \lap_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\lap_min[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_clear_n_38),
        .Q(lap_min[2]));
  FDCE \lap_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\lap_min[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_clear_n_37),
        .Q(lap_min[3]));
  FDCE \lap_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\lap_min[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_clear_n_36),
        .Q(lap_min[4]));
  FDCE \lap_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\lap_min[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_clear_n_35),
        .Q(lap_min[5]));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \lap_sec[5]_i_3 
       (.I0(lap_csec[6]),
        .I1(lap_csec[5]),
        .I2(lap_csec[2]),
        .I3(lap_csec[3]),
        .I4(lap_csec[4]),
        .I5(\lap_csec[5]_i_2_n_0 ),
        .O(\lap_sec[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lap_sec[5]_i_5 
       (.I0(lap_sec[1]),
        .I1(lap_sec[0]),
        .O(\lap_sec[5]_i_5_n_0 ));
  FDCE \lap_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_55),
        .CLR(SR),
        .D(ed_clear_n_46),
        .Q(lap_sec[0]));
  FDCE \lap_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_55),
        .CLR(SR),
        .D(ed_clear_n_45),
        .Q(lap_sec[1]));
  FDCE \lap_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_55),
        .CLR(SR),
        .D(ed_clear_n_44),
        .Q(lap_sec[2]));
  FDCE \lap_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_55),
        .CLR(SR),
        .D(ed_clear_n_43),
        .Q(lap_sec[3]));
  FDCE \lap_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_55),
        .CLR(SR),
        .D(ed_clear_n_42),
        .Q(lap_sec[4]));
  FDCE \lap_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_55),
        .CLR(SR),
        .D(ed_clear_n_41),
        .Q(lap_sec[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min[0]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[0]),
        .O(\min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \min[1]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[0]),
        .I2(min[1]),
        .O(\min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \min[2]_i_1 
       (.I0(\min[4]_i_2_n_0 ),
        .I1(min[0]),
        .I2(min[1]),
        .I3(min[2]),
        .O(\min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \min[4]_i_2 
       (.I0(run_reg_0),
        .I1(\min[5]_i_4_n_0 ),
        .I2(min[2]),
        .I3(min[5]),
        .I4(min[3]),
        .I5(min[4]),
        .O(\min[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0280AA00AA00AA00)) 
    \min[5]_i_2 
       (.I0(run_reg_0),
        .I1(\min[5]_i_4_n_0 ),
        .I2(min[2]),
        .I3(min[5]),
        .I4(min[3]),
        .I5(min[4]),
        .O(\min[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    \min[5]_i_3 
       (.I0(sec[4]),
        .I1(sec[3]),
        .I2(sec[5]),
        .I3(sec[2]),
        .I4(sec[0]),
        .I5(sec[1]),
        .O(\min[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \min[5]_i_4 
       (.I0(min[1]),
        .I1(min[0]),
        .O(\min[5]_i_4_n_0 ));
  FDCE \min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_58),
        .CLR(SR),
        .D(\min[0]_i_1_n_0 ),
        .Q(min[0]));
  FDCE \min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_58),
        .CLR(SR),
        .D(\min[1]_i_1_n_0 ),
        .Q(min[1]));
  FDCE \min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_58),
        .CLR(SR),
        .D(\min[2]_i_1_n_0 ),
        .Q(min[2]));
  FDCE \min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_58),
        .CLR(SR),
        .D(\min[3]_i_1_n_0 ),
        .Q(min[3]));
  FDCE \min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_58),
        .CLR(SR),
        .D(\min[4]_i_1_n_0 ),
        .Q(min[4]));
  FDCE \min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_58),
        .CLR(SR),
        .D(\min[5]_i_2_n_0 ),
        .Q(min[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_csec[0]_i_1 
       (.I0(run_reg_0),
        .I1(lap_csec[0]),
        .O(\prev_csec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_csec[1]_i_1 
       (.I0(run_reg_0),
        .I1(lap_csec[1]),
        .O(\prev_csec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_csec[2]_i_1 
       (.I0(run_reg_0),
        .I1(lap_csec[2]),
        .O(\prev_csec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_csec[3]_i_1 
       (.I0(run_reg_0),
        .I1(lap_csec[3]),
        .O(\prev_csec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_csec[4]_i_1 
       (.I0(run_reg_0),
        .I1(lap_csec[4]),
        .O(\prev_csec[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_csec[5]_i_1 
       (.I0(run_reg_0),
        .I1(lap_csec[5]),
        .O(\prev_csec[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_csec[6]_i_1 
       (.I0(run_reg_0),
        .I1(lap_csec[6]),
        .O(\prev_csec[6]_i_1_n_0 ));
  FDCE \prev_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_csec[0]_i_1_n_0 ),
        .Q(prev_csec[0]));
  FDCE \prev_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_csec[1]_i_1_n_0 ),
        .Q(prev_csec[1]));
  FDCE \prev_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_csec[2]_i_1_n_0 ),
        .Q(prev_csec[2]));
  FDCE \prev_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_csec[3]_i_1_n_0 ),
        .Q(prev_csec[3]));
  FDCE \prev_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_csec[4]_i_1_n_0 ),
        .Q(prev_csec[4]));
  FDCE \prev_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_csec[5]_i_1_n_0 ),
        .Q(prev_csec[5]));
  FDCE \prev_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_csec[6]_i_1_n_0 ),
        .Q(prev_csec[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_min[0]_i_1 
       (.I0(run_reg_0),
        .I1(lap_min[0]),
        .O(\prev_min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_min[1]_i_1 
       (.I0(run_reg_0),
        .I1(lap_min[1]),
        .O(\prev_min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_min[2]_i_1 
       (.I0(run_reg_0),
        .I1(lap_min[2]),
        .O(\prev_min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_min[3]_i_1 
       (.I0(run_reg_0),
        .I1(lap_min[3]),
        .O(\prev_min[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_min[4]_i_1 
       (.I0(run_reg_0),
        .I1(lap_min[4]),
        .O(\prev_min[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_min[5]_i_1 
       (.I0(run_reg_0),
        .I1(lap_min[5]),
        .O(\prev_min[5]_i_1_n_0 ));
  FDCE \prev_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_min[0]_i_1_n_0 ),
        .Q(\prev_min_reg_n_0_[0] ));
  FDCE \prev_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_min[1]_i_1_n_0 ),
        .Q(\prev_min_reg_n_0_[1] ));
  FDCE \prev_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_min[2]_i_1_n_0 ),
        .Q(\prev_min_reg_n_0_[2] ));
  FDCE \prev_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_min[3]_i_1_n_0 ),
        .Q(\prev_min_reg_n_0_[3] ));
  FDCE \prev_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_min[4]_i_1_n_0 ),
        .Q(\prev_min_reg_n_0_[4] ));
  FDCE \prev_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_min[5]_i_1_n_0 ),
        .Q(\prev_min_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_sec[0]_i_1 
       (.I0(run_reg_0),
        .I1(lap_sec[0]),
        .O(\prev_sec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_sec[1]_i_1 
       (.I0(run_reg_0),
        .I1(lap_sec[1]),
        .O(\prev_sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_sec[2]_i_1 
       (.I0(run_reg_0),
        .I1(lap_sec[2]),
        .O(\prev_sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_sec[3]_i_1 
       (.I0(run_reg_0),
        .I1(lap_sec[3]),
        .O(\prev_sec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_sec[4]_i_1 
       (.I0(run_reg_0),
        .I1(lap_sec[4]),
        .O(\prev_sec[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prev_sec[5]_i_2 
       (.I0(run_reg_0),
        .I1(lap_sec[5]),
        .O(\prev_sec[5]_i_2_n_0 ));
  FDCE \prev_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_sec[0]_i_1_n_0 ),
        .Q(prev_sec[0]));
  FDCE \prev_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_sec[1]_i_1_n_0 ),
        .Q(prev_sec[1]));
  FDCE \prev_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_sec[2]_i_1_n_0 ),
        .Q(prev_sec[2]));
  FDCE \prev_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_sec[3]_i_1_n_0 ),
        .Q(prev_sec[3]));
  FDCE \prev_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_sec[4]_i_1_n_0 ),
        .Q(prev_sec[4]));
  FDCE \prev_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(prev_min),
        .CLR(SR),
        .D(\prev_sec[5]_i_2_n_0 ),
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
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(run_reg_0),
        .I1(lap_csec[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Q[0]),
        .I5(csec[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(snap_lap_csec[0]),
        .I1(\s00_axi_rdata[31] [0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_csec[0]),
        .I5(\s00_axi_rdata[31]_0 [0]),
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
        .I1(sec[2]),
        .I2(lap_sec[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(snap_lap_sec[2]),
        .I1(\s00_axi_rdata[31] [10]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_sec[2]),
        .I5(\s00_axi_rdata[31]_0 [10]),
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
        .I1(sec[3]),
        .I2(lap_sec[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(snap_lap_sec[3]),
        .I1(\s00_axi_rdata[31] [11]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_sec[3]),
        .I5(\s00_axi_rdata[31]_0 [11]),
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
        .I1(sec[4]),
        .I2(lap_sec[4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(snap_lap_sec[4]),
        .I1(\s00_axi_rdata[31] [12]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_sec[4]),
        .I5(\s00_axi_rdata[31]_0 [12]),
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
        .I1(sec[5]),
        .I2(lap_sec[5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(snap_lap_sec[5]),
        .I1(\s00_axi_rdata[31] [13]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_sec[5]),
        .I5(\s00_axi_rdata[31]_0 [13]),
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
    .INIT(64'hD591C48000000000)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [14]),
        .I3(\s00_axi_rdata[31]_0 [14]),
        .I4(diff_sec[6]),
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
    .INIT(64'hD591C48000000000)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [15]),
        .I3(\s00_axi_rdata[31]_0 [15]),
        .I4(diff_sec[7]),
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
        .I1(min[0]),
        .I2(lap_min[0]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(snap_lap_min[0]),
        .I1(\s00_axi_rdata[31] [16]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_min[0]),
        .I5(\s00_axi_rdata[31]_0 [16]),
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
        .I1(min[1]),
        .I2(lap_min[1]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(snap_lap_min[1]),
        .I1(\s00_axi_rdata[31] [17]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_min[1]),
        .I5(\s00_axi_rdata[31]_0 [17]),
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
        .I1(min[2]),
        .I2(lap_min[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(snap_lap_min[2]),
        .I1(\s00_axi_rdata[31] [18]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_min[2]),
        .I5(\s00_axi_rdata[31]_0 [18]),
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
        .I1(min[3]),
        .I2(lap_min[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(snap_lap_min[3]),
        .I1(\s00_axi_rdata[31] [19]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_min[3]),
        .I5(\s00_axi_rdata[31]_0 [19]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(lap_flag),
        .I1(lap_csec[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Q[1]),
        .I5(csec[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(snap_lap_csec[1]),
        .I1(\s00_axi_rdata[31] [1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_csec[1]),
        .I5(\s00_axi_rdata[31]_0 [1]),
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
        .I1(min[4]),
        .I2(lap_min[4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(snap_lap_min[4]),
        .I1(\s00_axi_rdata[31] [20]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_min[4]),
        .I5(\s00_axi_rdata[31]_0 [20]),
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
        .I1(min[5]),
        .I2(lap_min[5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(snap_lap_min[5]),
        .I1(\s00_axi_rdata[31] [21]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_min[5]),
        .I5(\s00_axi_rdata[31]_0 [21]),
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
    .INIT(64'hD591C48000000000)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [22]),
        .I3(\s00_axi_rdata[31]_0 [22]),
        .I4(diff_min[7]),
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
    .INIT(64'hD591C48000000000)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [23]),
        .I3(\s00_axi_rdata[31]_0 [23]),
        .I4(diff_min[7]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41400100)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Q[24]),
        .I4(lap_count[0]),
        .I5(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [24]),
        .I3(snap_lap_count[0]),
        .I4(\s00_axi_rdata[31]_0 [24]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41400100)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Q[25]),
        .I4(lap_count[1]),
        .I5(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [25]),
        .I3(snap_lap_count[1]),
        .I4(\s00_axi_rdata[31]_0 [25]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41400100)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Q[26]),
        .I4(lap_count[2]),
        .I5(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [26]),
        .I3(snap_lap_count[2]),
        .I4(\s00_axi_rdata[31]_0 [26]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41400100)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Q[27]),
        .I4(lap_count[3]),
        .I5(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [27]),
        .I3(snap_lap_count[3]),
        .I4(\s00_axi_rdata[31]_0 [27]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41400100)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Q[28]),
        .I4(lap_count[4]),
        .I5(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [28]),
        .I3(snap_lap_count[4]),
        .I4(\s00_axi_rdata[31]_0 [28]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41400100)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Q[29]),
        .I4(lap_count[5]),
        .I5(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [29]),
        .I3(snap_lap_count[5]),
        .I4(\s00_axi_rdata[31]_0 [29]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(sign_flag),
        .I1(lap_csec[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Q[2]),
        .I5(csec[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(snap_lap_csec[2]),
        .I1(\s00_axi_rdata[31] [2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_csec[2]),
        .I5(\s00_axi_rdata[31]_0 [2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41400100)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Q[30]),
        .I4(lap_count[6]),
        .I5(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [30]),
        .I3(snap_lap_count[6]),
        .I4(\s00_axi_rdata[31]_0 [30]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41400100)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(Q[31]),
        .I4(lap_count[7]),
        .I5(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hE6C4A28000000000)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [31]),
        .I3(snap_lap_count[7]),
        .I4(\s00_axi_rdata[31]_0 [31]),
        .I5(sel0[2]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(Q[3]),
        .I1(csec[3]),
        .I2(lap_csec[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(snap_lap_csec[3]),
        .I1(\s00_axi_rdata[31] [3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_csec[3]),
        .I5(\s00_axi_rdata[31]_0 [3]),
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
        .I1(csec[4]),
        .I2(lap_csec[4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(snap_lap_csec[4]),
        .I1(\s00_axi_rdata[31] [4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_csec[4]),
        .I5(\s00_axi_rdata[31]_0 [4]),
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
        .I1(csec[5]),
        .I2(lap_csec[5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(snap_lap_csec[5]),
        .I1(\s00_axi_rdata[31] [5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_csec[5]),
        .I5(\s00_axi_rdata[31]_0 [5]),
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
        .I1(csec[6]),
        .I2(lap_csec[6]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(snap_lap_csec[6]),
        .I1(\s00_axi_rdata[31] [6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_csec[6]),
        .I5(\s00_axi_rdata[31]_0 [6]),
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
    .INIT(64'hD591C48000000000)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[31] [7]),
        .I3(\s00_axi_rdata[31]_0 [7]),
        .I4(diff_csec[7]),
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
        .I1(sec[0]),
        .I2(lap_sec[0]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(snap_lap_sec[0]),
        .I1(\s00_axi_rdata[31] [8]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_sec[0]),
        .I5(\s00_axi_rdata[31]_0 [8]),
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
        .I1(sec[1]),
        .I2(lap_sec[1]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(snap_lap_sec[1]),
        .I1(\s00_axi_rdata[31] [9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(diff_sec[1]),
        .I5(\s00_axi_rdata[31]_0 [9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sec[0]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[0]),
        .O(\sec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \sec[1]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[0]),
        .I2(sec[1]),
        .O(\sec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \sec[2]_i_1 
       (.I0(\sec[4]_i_2_n_0 ),
        .I1(sec[0]),
        .I2(sec[1]),
        .I3(sec[2]),
        .O(\sec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \sec[4]_i_2 
       (.I0(run_reg_0),
        .I1(\sec[5]_i_4_n_0 ),
        .I2(sec[2]),
        .I3(sec[5]),
        .I4(sec[3]),
        .I5(sec[4]),
        .O(\sec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0280AA00AA00AA00)) 
    \sec[5]_i_2 
       (.I0(run_reg_0),
        .I1(\sec[5]_i_4_n_0 ),
        .I2(sec[2]),
        .I3(sec[5]),
        .I4(sec[3]),
        .I5(sec[4]),
        .O(\sec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \sec[5]_i_3 
       (.I0(csec[6]),
        .I1(csec[5]),
        .I2(csec[2]),
        .I3(csec[3]),
        .I4(csec[4]),
        .I5(\csec[5]_i_2_n_0 ),
        .O(\sec[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sec[5]_i_4 
       (.I0(sec[1]),
        .I1(sec[0]),
        .O(\sec[5]_i_4_n_0 ));
  FDCE \sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_59),
        .CLR(SR),
        .D(\sec[0]_i_1_n_0 ),
        .Q(sec[0]));
  FDCE \sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_59),
        .CLR(SR),
        .D(\sec[1]_i_1_n_0 ),
        .Q(sec[1]));
  FDCE \sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_59),
        .CLR(SR),
        .D(\sec[2]_i_1_n_0 ),
        .Q(sec[2]));
  FDCE \sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_59),
        .CLR(SR),
        .D(\sec[3]_i_1_n_0 ),
        .Q(sec[3]));
  FDCE \sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_59),
        .CLR(SR),
        .D(\sec[4]_i_1_n_0 ),
        .Q(sec[4]));
  FDCE \sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_59),
        .CLR(SR),
        .D(\sec[5]_i_2_n_0 ),
        .Q(sec[5]));
  CARRY4 \sign_flag1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_sign_flag1_inferred__0/i__carry_CO_UNCONNECTED [3],\sign_flag1_inferred__0/i__carry_n_1 ,\sign_flag1_inferred__0/i__carry_n_2 ,\sign_flag1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0}),
        .O(\NLW_sign_flag1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_4__2_n_0,i__carry_i_5__1_n_0,i__carry_i_6__2_n_0}));
  CARRY4 \sign_flag1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NLW_sign_flag1_inferred__1/i__carry_CO_UNCONNECTED [3],\sign_flag1_inferred__1/i__carry_n_1 ,\sign_flag1_inferred__1/i__carry_n_2 ,\sign_flag1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0}),
        .O(\NLW_sign_flag1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_4__3_n_0,i__carry_i_5__2_n_0,i__carry_i_6__3_n_0}));
  CARRY4 \sign_flag1_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\NLW_sign_flag1_inferred__2/i__carry_CO_UNCONNECTED [3],\sign_flag1_inferred__2/i__carry_n_1 ,\sign_flag1_inferred__2/i__carry_n_2 ,\sign_flag1_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0}),
        .O(\NLW_sign_flag1_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sign_flag1_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\sign_flag1_inferred__3/i__carry_n_0 ,\sign_flag1_inferred__3/i__carry_n_1 ,\sign_flag1_inferred__3/i__carry_n_2 ,\sign_flag1_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__5_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_sign_flag1_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__4_n_0,i__carry_i_6__4_n_0,i__carry_i_7__1_n_0,i__carry_i_8__0_n_0}));
  FDCE sign_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(sign_flag_reg_0),
        .Q(sign_flag));
  FDCE \snap_lap_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_count[0]),
        .Q(snap_lap_count[0]));
  FDCE \snap_lap_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_count[1]),
        .Q(snap_lap_count[1]));
  FDCE \snap_lap_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_count[2]),
        .Q(snap_lap_count[2]));
  FDCE \snap_lap_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_count[3]),
        .Q(snap_lap_count[3]));
  FDCE \snap_lap_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_count[4]),
        .Q(snap_lap_count[4]));
  FDCE \snap_lap_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_count[5]),
        .Q(snap_lap_count[5]));
  FDCE \snap_lap_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_count[6]),
        .Q(snap_lap_count[6]));
  FDCE \snap_lap_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_count[7]),
        .Q(snap_lap_count[7]));
  FDCE \snap_lap_csec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_csec[0]),
        .Q(snap_lap_csec[0]));
  FDCE \snap_lap_csec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_csec[1]),
        .Q(snap_lap_csec[1]));
  FDCE \snap_lap_csec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_csec[2]),
        .Q(snap_lap_csec[2]));
  FDCE \snap_lap_csec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_csec[3]),
        .Q(snap_lap_csec[3]));
  FDCE \snap_lap_csec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_csec[4]),
        .Q(snap_lap_csec[4]));
  FDCE \snap_lap_csec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_csec[5]),
        .Q(snap_lap_csec[5]));
  FDCE \snap_lap_csec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_csec[6]),
        .Q(snap_lap_csec[6]));
  FDCE \snap_lap_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_min[0]),
        .Q(snap_lap_min[0]));
  FDCE \snap_lap_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_min[1]),
        .Q(snap_lap_min[1]));
  FDCE \snap_lap_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_min[2]),
        .Q(snap_lap_min[2]));
  FDCE \snap_lap_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_min[3]),
        .Q(snap_lap_min[3]));
  FDCE \snap_lap_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_min[4]),
        .Q(snap_lap_min[4]));
  FDCE \snap_lap_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_min[5]),
        .Q(snap_lap_min[5]));
  FDCE \snap_lap_sec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_sec[0]),
        .Q(snap_lap_sec[0]));
  FDCE \snap_lap_sec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_sec[1]),
        .Q(snap_lap_sec[1]));
  FDCE \snap_lap_sec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_sec[2]),
        .Q(snap_lap_sec[2]));
  FDCE \snap_lap_sec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_sec[3]),
        .Q(snap_lap_sec[3]));
  FDCE \snap_lap_sec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_sec[4]),
        .Q(snap_lap_sec[4]));
  FDCE \snap_lap_sec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_clear_n_75),
        .CLR(SR),
        .D(lap_sec[5]),
        .Q(snap_lap_sec[5]));
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
