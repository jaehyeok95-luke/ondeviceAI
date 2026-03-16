// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Mar 15 20:45:24 2026
// Host        : jaehyeok95-AORUS-5-MB running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_npu_myip_npu_OCR_0_1_sim_netlist.v
// Design      : soc_npu_myip_npu_OCR_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_argmax
   (E,
    ADDRBWRADDR,
    \fmap_rd_addr_reg[8]_0 ,
    done_reg_0,
    \layer_idx_reg[1] ,
    \layer_idx_reg[1]_0 ,
    \max_val_reg[7]_0 ,
    \result_idx_reg[7]_0 ,
    s00_axi_aclk,
    done_reg_1,
    \FSM_sequential_state_reg[0]_0 ,
    dout,
    patch_src,
    \max_val_reg[7]_1 ,
    CO,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state_reg[0]_2 ,
    \FSM_onehot_state_reg[0]_3 ,
    mem_reg_0_7,
    mem_reg_0_7_0,
    Q,
    mem_reg_0_7_1,
    mem_reg_0_7_2,
    mem_reg_0_7_3,
    mem_reg_0_7_4,
    mem_reg_0_7_5,
    \result_jong_reg[0] ,
    \result_jung_reg[0] ,
    \FSM_sequential_state[0]_i_4_0 );
  output [0:0]E;
  output [8:0]ADDRBWRADDR;
  output [8:0]\fmap_rd_addr_reg[8]_0 ;
  output [0:0]done_reg_0;
  output [0:0]\layer_idx_reg[1] ;
  output [0:0]\layer_idx_reg[1]_0 ;
  output [7:0]\max_val_reg[7]_0 ;
  output [7:0]\result_idx_reg[7]_0 ;
  input s00_axi_aclk;
  input done_reg_1;
  input \FSM_sequential_state_reg[0]_0 ;
  input [7:0]dout;
  input patch_src;
  input [7:0]\max_val_reg[7]_1 ;
  input [0:0]CO;
  input \FSM_onehot_state_reg[0] ;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input \FSM_onehot_state_reg[0]_2 ;
  input \FSM_onehot_state_reg[0]_3 ;
  input mem_reg_0_7;
  input mem_reg_0_7_0;
  input [8:0]Q;
  input [8:0]mem_reg_0_7_1;
  input mem_reg_0_7_2;
  input mem_reg_0_7_3;
  input mem_reg_0_7_4;
  input mem_reg_0_7_5;
  input \result_jong_reg[0] ;
  input [3:0]\result_jung_reg[0] ;
  input [8:0]\FSM_sequential_state[0]_i_4_0 ;

  wire [8:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[0]_2 ;
  wire \FSM_onehot_state_reg[0]_3 ;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire [8:0]\FSM_sequential_state[0]_i_4_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_8_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_1 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_2 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_3 ;
  wire [8:0]Q;
  wire argmax_done;
  wire [8:0]argmax_fmap_rd_addr;
  wire [0:0]done_reg_0;
  wire done_reg_1;
  wire [7:0]dout;
  wire \fmap_rd_addr[0]_i_1_n_0 ;
  wire \fmap_rd_addr[1]_i_1_n_0 ;
  wire \fmap_rd_addr[2]_i_1_n_0 ;
  wire \fmap_rd_addr[3]_i_1_n_0 ;
  wire \fmap_rd_addr[4]_i_1_n_0 ;
  wire \fmap_rd_addr[5]_i_1_n_0 ;
  wire \fmap_rd_addr[6]_i_1_n_0 ;
  wire \fmap_rd_addr[7]_i_1_n_0 ;
  wire \fmap_rd_addr[8]_i_1_n_0 ;
  wire \fmap_rd_addr[8]_i_2_n_0 ;
  wire [8:0]\fmap_rd_addr_reg[8]_0 ;
  wire idx;
  wire \idx[0]_i_1__0_n_0 ;
  wire \idx[1]_i_1__0_n_0 ;
  wire \idx[2]_i_1__0_n_0 ;
  wire \idx[3]_i_1__0_n_0 ;
  wire \idx[4]_i_1__0_n_0 ;
  wire \idx[5]_i_1__0_n_0 ;
  wire \idx[5]_i_2_n_0 ;
  wire \idx[6]_i_1__0_n_0 ;
  wire \idx[7]_i_1__0_n_0 ;
  wire \idx[8]_i_2_n_0 ;
  wire \idx[8]_i_3_n_0 ;
  wire \idx_reg_n_0_[0] ;
  wire \idx_reg_n_0_[1] ;
  wire \idx_reg_n_0_[2] ;
  wire \idx_reg_n_0_[3] ;
  wire \idx_reg_n_0_[4] ;
  wire \idx_reg_n_0_[5] ;
  wire \idx_reg_n_0_[6] ;
  wire \idx_reg_n_0_[7] ;
  wire \idx_reg_n_0_[8] ;
  wire [0:0]\layer_idx_reg[1] ;
  wire [0:0]\layer_idx_reg[1]_0 ;
  wire \max_idx[0]_i_1_n_0 ;
  wire \max_idx[1]_i_1_n_0 ;
  wire \max_idx[2]_i_1_n_0 ;
  wire \max_idx[3]_i_1_n_0 ;
  wire \max_idx[4]_i_1_n_0 ;
  wire \max_idx[5]_i_1_n_0 ;
  wire \max_idx[6]_i_1_n_0 ;
  wire \max_idx[7]_i_1_n_0 ;
  wire \max_idx_reg_n_0_[0] ;
  wire \max_idx_reg_n_0_[1] ;
  wire \max_idx_reg_n_0_[2] ;
  wire \max_idx_reg_n_0_[3] ;
  wire \max_idx_reg_n_0_[4] ;
  wire \max_idx_reg_n_0_[5] ;
  wire \max_idx_reg_n_0_[6] ;
  wire \max_idx_reg_n_0_[7] ;
  wire max_val;
  wire \max_val[0]_i_1_n_0 ;
  wire \max_val[1]_i_1_n_0 ;
  wire \max_val[2]_i_1_n_0 ;
  wire \max_val[3]_i_1_n_0 ;
  wire \max_val[4]_i_1_n_0 ;
  wire \max_val[5]_i_1_n_0 ;
  wire \max_val[6]_i_1_n_0 ;
  wire \max_val[7]_i_13_n_0 ;
  wire \max_val[7]_i_2_n_0 ;
  wire \max_val[7]_i_4_n_0 ;
  wire [7:0]\max_val_reg[7]_0 ;
  wire [7:0]\max_val_reg[7]_1 ;
  wire mem_reg_0_7;
  wire mem_reg_0_7_0;
  wire [8:0]mem_reg_0_7_1;
  wire mem_reg_0_7_2;
  wire mem_reg_0_7_3;
  wire mem_reg_0_7_4;
  wire mem_reg_0_7_5;
  wire [7:0]p_0_in;
  wire patch_src;
  wire \result_idx[7]_i_1_n_0 ;
  wire [7:0]\result_idx_reg[7]_0 ;
  wire \result_jong_reg[0] ;
  wire [3:0]\result_jung_reg[0] ;
  wire s00_axi_aclk;
  wire [1:0]state;
  wire [3:0]\NLW_FSM_sequential_state_reg[0]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \FSM_onehot_state[8]_i_1__0 
       (.I0(argmax_done),
        .I1(\FSM_onehot_state_reg[0] ),
        .I2(\FSM_onehot_state_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[0]_1 ),
        .I4(\FSM_onehot_state_reg[0]_2 ),
        .I5(\FSM_onehot_state_reg[0]_3 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4F4C)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\idx_reg_n_0_[8] ),
        .I1(\idx_reg_n_0_[6] ),
        .I2(\idx[8]_i_3_n_0 ),
        .I3(\idx_reg_n_0_[7] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6900)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\idx[8]_i_3_n_0 ),
        .I1(\idx_reg_n_0_[6] ),
        .I2(\FSM_sequential_state[0]_i_4_0 [6]),
        .I3(\FSM_sequential_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\FSM_sequential_state[0]_i_8_n_0 ),
        .I1(\FSM_sequential_state[0]_i_4_0 [3]),
        .I2(\FSM_sequential_state[0]_i_4_0 [5]),
        .I3(\idx[5]_i_2_n_0 ),
        .I4(\FSM_sequential_state[0]_i_4_0 [4]),
        .I5(\FSM_sequential_state[0]_i_9_n_0 ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\FSM_sequential_state[0]_i_4_0 [0]),
        .I1(\FSM_sequential_state[0]_i_4_0 [2]),
        .I2(\idx_reg_n_0_[2] ),
        .I3(\idx_reg_n_0_[1] ),
        .I4(\idx_reg_n_0_[0] ),
        .I5(\FSM_sequential_state[0]_i_4_0 [1]),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2A95400040002A95)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(\FSM_sequential_state[0]_i_4_0 [7]),
        .I1(\idx_reg_n_0_[6] ),
        .I2(\idx[8]_i_3_n_0 ),
        .I3(\idx_reg_n_0_[7] ),
        .I4(\idx_reg_n_0_[8] ),
        .I5(\FSM_sequential_state[0]_i_4_0 [8]),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(\idx_reg_n_0_[3] ),
        .O(\FSM_sequential_state[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(\idx_reg_n_0_[2] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(\idx_reg_n_0_[1] ),
        .I3(\idx_reg_n_0_[3] ),
        .I4(\idx_reg_n_0_[4] ),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "S_WAIT:10,S_COMP:11,S_IDLE:00,S_READ:01" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]));
  CARRY4 \FSM_sequential_state_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[0]_i_2_n_0 ,\FSM_sequential_state_reg[0]_i_2_n_1 ,\FSM_sequential_state_reg[0]_i_2_n_2 ,\FSM_sequential_state_reg[0]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_state_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[0]_i_3_n_0 ,\FSM_sequential_state[0]_i_4_n_0 ,\FSM_sequential_state[0]_i_5_n_0 ,\FSM_sequential_state[0]_i_6_n_0 }));
  (* FSM_ENCODED_STATES = "S_WAIT:10,S_COMP:11,S_IDLE:00,S_READ:01" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]));
  FDCE done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\result_idx[7]_i_1_n_0 ),
        .Q(argmax_done));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[0]_i_1 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[0] ),
        .O(\fmap_rd_addr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[1]_i_1 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[1] ),
        .O(\fmap_rd_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[2]_i_1 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[2] ),
        .O(\fmap_rd_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[3]_i_1 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[3] ),
        .O(\fmap_rd_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[4]_i_1 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[4] ),
        .O(\fmap_rd_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[5]_i_1 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[5] ),
        .O(\fmap_rd_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[6]_i_1 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[6] ),
        .O(\fmap_rd_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[7]_i_1 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[7] ),
        .O(\fmap_rd_addr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \fmap_rd_addr[8]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state[1]),
        .O(\fmap_rd_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fmap_rd_addr[8]_i_2 
       (.I0(state[0]),
        .I1(\idx_reg_n_0_[8] ),
        .O(\fmap_rd_addr[8]_i_2_n_0 ));
  FDCE \fmap_rd_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[0]_i_1_n_0 ),
        .Q(argmax_fmap_rd_addr[0]));
  FDCE \fmap_rd_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[1]_i_1_n_0 ),
        .Q(argmax_fmap_rd_addr[1]));
  FDCE \fmap_rd_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[2]_i_1_n_0 ),
        .Q(argmax_fmap_rd_addr[2]));
  FDCE \fmap_rd_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[3]_i_1_n_0 ),
        .Q(argmax_fmap_rd_addr[3]));
  FDCE \fmap_rd_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[4]_i_1_n_0 ),
        .Q(argmax_fmap_rd_addr[4]));
  FDCE \fmap_rd_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[5]_i_1_n_0 ),
        .Q(argmax_fmap_rd_addr[5]));
  FDCE \fmap_rd_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[6]_i_1_n_0 ),
        .Q(argmax_fmap_rd_addr[6]));
  FDCE \fmap_rd_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[7]_i_1_n_0 ),
        .Q(argmax_fmap_rd_addr[7]));
  FDCE \fmap_rd_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[8]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\fmap_rd_addr[8]_i_2_n_0 ),
        .Q(argmax_fmap_rd_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \idx[0]_i_1__0 
       (.I0(state[1]),
        .I1(\idx_reg_n_0_[0] ),
        .O(\idx[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \idx[1]_i_1__0 
       (.I0(state[1]),
        .I1(\idx_reg_n_0_[1] ),
        .I2(\idx_reg_n_0_[0] ),
        .O(\idx[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \idx[2]_i_1__0 
       (.I0(state[1]),
        .I1(\idx_reg_n_0_[2] ),
        .I2(\idx_reg_n_0_[1] ),
        .I3(\idx_reg_n_0_[0] ),
        .O(\idx[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \idx[3]_i_1__0 
       (.I0(state[1]),
        .I1(\idx_reg_n_0_[3] ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(\idx_reg_n_0_[0] ),
        .I4(\idx_reg_n_0_[1] ),
        .O(\idx[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \idx[4]_i_1__0 
       (.I0(state[1]),
        .I1(\idx_reg_n_0_[4] ),
        .I2(\idx_reg_n_0_[3] ),
        .I3(\idx_reg_n_0_[1] ),
        .I4(\idx_reg_n_0_[0] ),
        .I5(\idx_reg_n_0_[2] ),
        .O(\idx[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[5]_i_1__0 
       (.I0(state[1]),
        .I1(\idx[5]_i_2_n_0 ),
        .O(\idx[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \idx[5]_i_2 
       (.I0(\idx_reg_n_0_[3] ),
        .I1(\idx_reg_n_0_[1] ),
        .I2(\idx_reg_n_0_[0] ),
        .I3(\idx_reg_n_0_[2] ),
        .I4(\idx_reg_n_0_[4] ),
        .I5(\idx_reg_n_0_[5] ),
        .O(\idx[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \idx[6]_i_1__0 
       (.I0(state[1]),
        .I1(\idx_reg_n_0_[6] ),
        .I2(\idx[8]_i_3_n_0 ),
        .O(\idx[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \idx[7]_i_1__0 
       (.I0(state[1]),
        .I1(\idx_reg_n_0_[7] ),
        .I2(\idx_reg_n_0_[6] ),
        .I3(\idx[8]_i_3_n_0 ),
        .O(\idx[7]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hA4)) 
    \idx[8]_i_1__0 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state[1]),
        .O(idx));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \idx[8]_i_2 
       (.I0(state[1]),
        .I1(\idx_reg_n_0_[8] ),
        .I2(\idx_reg_n_0_[7] ),
        .I3(\idx[8]_i_3_n_0 ),
        .I4(\idx_reg_n_0_[6] ),
        .O(\idx[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \idx[8]_i_3 
       (.I0(\idx_reg_n_0_[5] ),
        .I1(\idx_reg_n_0_[3] ),
        .I2(\idx_reg_n_0_[1] ),
        .I3(\idx_reg_n_0_[0] ),
        .I4(\idx_reg_n_0_[2] ),
        .I5(\idx_reg_n_0_[4] ),
        .O(\idx[8]_i_3_n_0 ));
  FDCE \idx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[0]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[0] ));
  FDCE \idx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[1]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[1] ));
  FDCE \idx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[2]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[2] ));
  FDCE \idx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[3]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[3] ));
  FDCE \idx_reg[4] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[4]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[4] ));
  FDCE \idx_reg[5] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[5]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[5] ));
  FDCE \idx_reg[6] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[6]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[6] ));
  FDCE \idx_reg[7] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[7]_i_1__0_n_0 ),
        .Q(\idx_reg_n_0_[7] ));
  FDCE \idx_reg[8] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[8]_i_2_n_0 ),
        .Q(\idx_reg_n_0_[8] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF0E01000)) 
    \max_idx[0]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\max_idx_reg_n_0_[0] ),
        .I4(\idx_reg_n_0_[0] ),
        .O(\max_idx[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E01000)) 
    \max_idx[1]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\max_idx_reg_n_0_[1] ),
        .I4(\idx_reg_n_0_[1] ),
        .O(\max_idx[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E01000)) 
    \max_idx[2]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\max_idx_reg_n_0_[2] ),
        .I4(\idx_reg_n_0_[2] ),
        .O(\max_idx[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E01000)) 
    \max_idx[3]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\max_idx_reg_n_0_[3] ),
        .I4(\idx_reg_n_0_[3] ),
        .O(\max_idx[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E01000)) 
    \max_idx[4]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\max_idx_reg_n_0_[4] ),
        .I4(\idx_reg_n_0_[4] ),
        .O(\max_idx[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E01000)) 
    \max_idx[5]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\max_idx_reg_n_0_[5] ),
        .I4(\idx_reg_n_0_[5] ),
        .O(\max_idx[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E01000)) 
    \max_idx[6]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\max_idx_reg_n_0_[6] ),
        .I4(\idx_reg_n_0_[6] ),
        .O(\max_idx[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E01000)) 
    \max_idx[7]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\max_idx_reg_n_0_[7] ),
        .I4(\idx_reg_n_0_[7] ),
        .O(\max_idx[7]_i_1_n_0 ));
  FDCE \max_idx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\max_idx[0]_i_1_n_0 ),
        .Q(\max_idx_reg_n_0_[0] ));
  FDCE \max_idx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\max_idx[1]_i_1_n_0 ),
        .Q(\max_idx_reg_n_0_[1] ));
  FDCE \max_idx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\max_idx[2]_i_1_n_0 ),
        .Q(\max_idx_reg_n_0_[2] ));
  FDCE \max_idx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\max_idx[3]_i_1_n_0 ),
        .Q(\max_idx_reg_n_0_[3] ));
  FDCE \max_idx_reg[4] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\max_idx[4]_i_1_n_0 ),
        .Q(\max_idx_reg_n_0_[4] ));
  FDCE \max_idx_reg[5] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\max_idx[5]_i_1_n_0 ),
        .Q(\max_idx_reg_n_0_[5] ));
  FDCE \max_idx_reg[6] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\max_idx[6]_i_1_n_0 ),
        .Q(\max_idx_reg_n_0_[6] ));
  FDCE \max_idx_reg[7] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\max_idx[7]_i_1_n_0 ),
        .Q(\max_idx_reg_n_0_[7] ));
  LUT4 #(
    .INIT(16'hA808)) 
    \max_val[0]_i_1 
       (.I0(state[1]),
        .I1(dout[0]),
        .I2(patch_src),
        .I3(\max_val_reg[7]_1 [0]),
        .O(\max_val[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \max_val[1]_i_1 
       (.I0(state[1]),
        .I1(dout[1]),
        .I2(patch_src),
        .I3(\max_val_reg[7]_1 [1]),
        .O(\max_val[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \max_val[2]_i_1 
       (.I0(state[1]),
        .I1(dout[2]),
        .I2(patch_src),
        .I3(\max_val_reg[7]_1 [2]),
        .O(\max_val[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \max_val[3]_i_1 
       (.I0(state[1]),
        .I1(dout[3]),
        .I2(patch_src),
        .I3(\max_val_reg[7]_1 [3]),
        .O(\max_val[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \max_val[4]_i_1 
       (.I0(state[1]),
        .I1(dout[4]),
        .I2(patch_src),
        .I3(\max_val_reg[7]_1 [4]),
        .O(\max_val[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \max_val[5]_i_1 
       (.I0(state[1]),
        .I1(dout[5]),
        .I2(patch_src),
        .I3(\max_val_reg[7]_1 [5]),
        .O(\max_val[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \max_val[6]_i_1 
       (.I0(state[1]),
        .I1(dout[6]),
        .I2(patch_src),
        .I3(\max_val_reg[7]_1 [6]),
        .O(\max_val[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0E00F00)) 
    \max_val[7]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(state[1]),
        .O(max_val));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \max_val[7]_i_13 
       (.I0(\idx_reg_n_0_[2] ),
        .I1(\idx_reg_n_0_[3] ),
        .I2(\idx_reg_n_0_[0] ),
        .I3(\idx_reg_n_0_[1] ),
        .O(\max_val[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \max_val[7]_i_2 
       (.I0(state[1]),
        .I1(dout[7]),
        .I2(patch_src),
        .I3(\max_val_reg[7]_1 [7]),
        .O(\max_val[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \max_val[7]_i_4 
       (.I0(\idx_reg_n_0_[7] ),
        .I1(\max_val[7]_i_13_n_0 ),
        .I2(\idx_reg_n_0_[6] ),
        .I3(\idx_reg_n_0_[8] ),
        .I4(\idx_reg_n_0_[4] ),
        .I5(\idx_reg_n_0_[5] ),
        .O(\max_val[7]_i_4_n_0 ));
  FDCE \max_val_reg[0] 
       (.C(s00_axi_aclk),
        .CE(max_val),
        .CLR(done_reg_1),
        .D(\max_val[0]_i_1_n_0 ),
        .Q(\max_val_reg[7]_0 [0]));
  FDCE \max_val_reg[1] 
       (.C(s00_axi_aclk),
        .CE(max_val),
        .CLR(done_reg_1),
        .D(\max_val[1]_i_1_n_0 ),
        .Q(\max_val_reg[7]_0 [1]));
  FDCE \max_val_reg[2] 
       (.C(s00_axi_aclk),
        .CE(max_val),
        .CLR(done_reg_1),
        .D(\max_val[2]_i_1_n_0 ),
        .Q(\max_val_reg[7]_0 [2]));
  FDCE \max_val_reg[3] 
       (.C(s00_axi_aclk),
        .CE(max_val),
        .CLR(done_reg_1),
        .D(\max_val[3]_i_1_n_0 ),
        .Q(\max_val_reg[7]_0 [3]));
  FDCE \max_val_reg[4] 
       (.C(s00_axi_aclk),
        .CE(max_val),
        .CLR(done_reg_1),
        .D(\max_val[4]_i_1_n_0 ),
        .Q(\max_val_reg[7]_0 [4]));
  FDCE \max_val_reg[5] 
       (.C(s00_axi_aclk),
        .CE(max_val),
        .CLR(done_reg_1),
        .D(\max_val[5]_i_1_n_0 ),
        .Q(\max_val_reg[7]_0 [5]));
  FDCE \max_val_reg[6] 
       (.C(s00_axi_aclk),
        .CE(max_val),
        .CLR(done_reg_1),
        .D(\max_val[6]_i_1_n_0 ),
        .Q(\max_val_reg[7]_0 [6]));
  FDCE \max_val_reg[7] 
       (.C(s00_axi_aclk),
        .CE(max_val),
        .CLR(done_reg_1),
        .D(\max_val[7]_i_2_n_0 ),
        .Q(\max_val_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_23
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[8]),
        .I2(mem_reg_0_7_0),
        .I3(Q[8]),
        .I4(mem_reg_0_7_1[8]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_23__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[8]),
        .I2(mem_reg_0_7_4),
        .I3(Q[8]),
        .I4(mem_reg_0_7_1[8]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_24
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[7]),
        .I2(mem_reg_0_7_0),
        .I3(Q[7]),
        .I4(mem_reg_0_7_1[7]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_24__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[7]),
        .I2(mem_reg_0_7_4),
        .I3(Q[7]),
        .I4(mem_reg_0_7_1[7]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_25
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[6]),
        .I2(mem_reg_0_7_0),
        .I3(Q[6]),
        .I4(mem_reg_0_7_1[6]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_25__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[6]),
        .I2(mem_reg_0_7_4),
        .I3(Q[6]),
        .I4(mem_reg_0_7_1[6]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_26
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[5]),
        .I2(mem_reg_0_7_0),
        .I3(Q[5]),
        .I4(mem_reg_0_7_1[5]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_26__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[5]),
        .I2(mem_reg_0_7_4),
        .I3(Q[5]),
        .I4(mem_reg_0_7_1[5]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_27
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[4]),
        .I2(mem_reg_0_7_0),
        .I3(Q[4]),
        .I4(mem_reg_0_7_1[4]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_27__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[4]),
        .I2(mem_reg_0_7_4),
        .I3(Q[4]),
        .I4(mem_reg_0_7_1[4]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_28
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[3]),
        .I2(mem_reg_0_7_0),
        .I3(Q[3]),
        .I4(mem_reg_0_7_1[3]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_28__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[3]),
        .I2(mem_reg_0_7_4),
        .I3(Q[3]),
        .I4(mem_reg_0_7_1[3]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_29
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[2]),
        .I2(mem_reg_0_7_0),
        .I3(Q[2]),
        .I4(mem_reg_0_7_1[2]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_29__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[2]),
        .I2(mem_reg_0_7_4),
        .I3(Q[2]),
        .I4(mem_reg_0_7_1[2]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_30
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[1]),
        .I2(mem_reg_0_7_0),
        .I3(Q[1]),
        .I4(mem_reg_0_7_1[1]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_30__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[1]),
        .I2(mem_reg_0_7_4),
        .I3(Q[1]),
        .I4(mem_reg_0_7_1[1]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_31
       (.I0(mem_reg_0_7),
        .I1(argmax_fmap_rd_addr[0]),
        .I2(mem_reg_0_7_0),
        .I3(Q[0]),
        .I4(mem_reg_0_7_1[0]),
        .I5(mem_reg_0_7_2),
        .O(ADDRBWRADDR[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_31__0
       (.I0(mem_reg_0_7_3),
        .I1(argmax_fmap_rd_addr[0]),
        .I2(mem_reg_0_7_4),
        .I3(Q[0]),
        .I4(mem_reg_0_7_1[0]),
        .I5(mem_reg_0_7_5),
        .O(\fmap_rd_addr_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \result_cho[7]_i_1 
       (.I0(\result_jung_reg[0] [1]),
        .I1(\result_jung_reg[0] [0]),
        .I2(\result_jung_reg[0] [3]),
        .I3(argmax_done),
        .I4(\result_jung_reg[0] [2]),
        .I5(\result_jong_reg[0] ),
        .O(\layer_idx_reg[1] ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \result_idx[0]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(\idx_reg_n_0_[0] ),
        .I3(\max_idx_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \result_idx[1]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(\idx_reg_n_0_[1] ),
        .I3(\max_idx_reg_n_0_[1] ),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \result_idx[2]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(\idx_reg_n_0_[2] ),
        .I3(\max_idx_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \result_idx[3]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(\idx_reg_n_0_[3] ),
        .I3(\max_idx_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \result_idx[4]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(\idx_reg_n_0_[4] ),
        .I3(\max_idx_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \result_idx[5]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(\idx_reg_n_0_[5] ),
        .I3(\max_idx_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \result_idx[6]_i_1 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(\idx_reg_n_0_[6] ),
        .I3(\max_idx_reg_n_0_[6] ),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \result_idx[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .O(\result_idx[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \result_idx[7]_i_2 
       (.I0(CO),
        .I1(\max_val[7]_i_4_n_0 ),
        .I2(\idx_reg_n_0_[7] ),
        .I3(\max_idx_reg_n_0_[7] ),
        .O(p_0_in[7]));
  FDCE \result_idx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\result_idx[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(p_0_in[0]),
        .Q(\result_idx_reg[7]_0 [0]));
  FDCE \result_idx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\result_idx[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(p_0_in[1]),
        .Q(\result_idx_reg[7]_0 [1]));
  FDCE \result_idx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\result_idx[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(p_0_in[2]),
        .Q(\result_idx_reg[7]_0 [2]));
  FDCE \result_idx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\result_idx[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(p_0_in[3]),
        .Q(\result_idx_reg[7]_0 [3]));
  FDCE \result_idx_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\result_idx[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(p_0_in[4]),
        .Q(\result_idx_reg[7]_0 [4]));
  FDCE \result_idx_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\result_idx[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(p_0_in[5]),
        .Q(\result_idx_reg[7]_0 [5]));
  FDCE \result_idx_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\result_idx[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(p_0_in[6]),
        .Q(\result_idx_reg[7]_0 [6]));
  FDCE \result_idx_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\result_idx[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(p_0_in[7]),
        .Q(\result_idx_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \result_jong[7]_i_1 
       (.I0(argmax_done),
        .I1(\result_jong_reg[0] ),
        .I2(\result_jung_reg[0] [2]),
        .I3(\result_jung_reg[0] [1]),
        .I4(\result_jung_reg[0] [0]),
        .I5(\result_jung_reg[0] [3]),
        .O(done_reg_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \result_jung[7]_i_1 
       (.I0(\result_jung_reg[0] [1]),
        .I1(\result_jung_reg[0] [0]),
        .I2(\result_jung_reg[0] [2]),
        .I3(\result_jung_reg[0] [3]),
        .I4(argmax_done),
        .I5(\result_jong_reg[0] ),
        .O(\layer_idx_reg[1]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_conv3x3_relu
   (need_patch,
    \target_row_reg[1]_0 ,
    \target_col_reg[1]_0 ,
    S,
    \cur_ci_reg[7]_0 ,
    \cur_ci_reg[4]_0 ,
    \cur_ci_reg[3]_0 ,
    DI,
    \cur_in_w_reg[4] ,
    \cur_in_w_reg[4]_0 ,
    \cur_in_w_reg[6] ,
    WEA,
    \acc_reg[16]_0 ,
    A,
    done_reg_0,
    pool_start,
    ADDRARDADDR,
    D,
    \target_row_reg[5]_0 ,
    \FSM_onehot_state_reg[4]_0 ,
    patch_reg__0,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    \acc_reg[15]_i_26 ,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    \acc[7]_i_15_0 ,
    \acc_reg[3]_i_7_0 ,
    mem_reg_12,
    mem_reg_13,
    \weight_offset_reg[11]_0 ,
    \out_pixel_reg[7]_0 ,
    s00_axi_aclk,
    done_reg_1,
    Q,
    ky__0,
    \bram_addr_reg[14]_i_12_0 ,
    O,
    patch_ch_offset_wide,
    patch_ch_offset_wide_0,
    patch_ch_offset_wide_1,
    patch_ch_offset_wide_2,
    patch_ch_offset_wide_i_27,
    patch_ch_offset_wide_i_27_0,
    patch_ch_offset_wide_i_21,
    patch_ch_offset_wide_i_27_1,
    patch_ch_offset_wide_i_27_2,
    patch_ch_offset_wide_i_27_3,
    patch_ch_offset_wide_3,
    CO,
    pool_start_reg,
    P,
    \FSM_onehot_state_reg[0]_0 ,
    pool_start_reg_0,
    \bram_addr_reg[14]_i_12_1 ,
    \bram_addr[7]_i_22_0 ,
    \bram_addr[7]_i_22_1 ,
    \bram_addr[3]_i_9_0 ,
    \bram_addr[3]_i_9_1 ,
    patch_valid,
    \FSM_onehot_state_reg[9]_0 ,
    DOBDO,
    \acc_reg[15]_i_3 ,
    \acc_reg[7]_i_7_0 ,
    \co_reg[0]_0 ,
    \bias_saved_reg[31]_0 ,
    \acc_reg[15]_0 ,
    \acc[3]_i_6_0 ,
    \acc[3]_i_6_1 ,
    \acc[7]_i_15_1 ,
    \acc[7]_i_15_2 ,
    \acc[7]_i_8_0 ,
    \acc[7]_i_8_1 ,
    \acc[15]_i_15 ,
    \acc[7]_i_6_0 ,
    \acc_reg[15]_1 ,
    \acc_reg[19]_0 ,
    \acc_reg[19]_1 ,
    E,
    \patch_reg_reg[0][7]_0 ,
    \patch_reg_reg[1][7]_0 ,
    \patch_reg_reg[2][7]_0 ,
    \patch_reg_reg[3][7]_0 ,
    \patch_reg_reg[4][7]_0 ,
    \patch_reg_reg[5][7]_0 ,
    \patch_reg_reg[6][7]_0 ,
    \patch_reg_reg[7][7]_0 ,
    \patch_reg_reg[8][7]_0 );
  output need_patch;
  output [1:0]\target_row_reg[1]_0 ;
  output [1:0]\target_col_reg[1]_0 ;
  output [3:0]S;
  output [7:0]\cur_ci_reg[7]_0 ;
  output [3:0]\cur_ci_reg[4]_0 ;
  output [3:0]\cur_ci_reg[3]_0 ;
  output [0:0]DI;
  output [3:0]\cur_in_w_reg[4] ;
  output [0:0]\cur_in_w_reg[4]_0 ;
  output [3:0]\cur_in_w_reg[6] ;
  output [0:0]WEA;
  output [1:0]\acc_reg[16]_0 ;
  output [0:0]A;
  output done_reg_0;
  output pool_start;
  output [11:0]ADDRARDADDR;
  output [14:0]D;
  output \target_row_reg[5]_0 ;
  output [0:0]\FSM_onehot_state_reg[4]_0 ;
  output [7:0]patch_reg__0;
  output mem_reg;
  output mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output mem_reg_3;
  output mem_reg_4;
  output mem_reg_5;
  output mem_reg_6;
  output [1:0]\acc_reg[15]_i_26 ;
  output [3:0]mem_reg_7;
  output [0:0]mem_reg_8;
  output [0:0]mem_reg_9;
  output [2:0]mem_reg_10;
  output [0:0]mem_reg_11;
  output [0:0]\acc[7]_i_15_0 ;
  output [0:0]\acc_reg[3]_i_7_0 ;
  output [0:0]mem_reg_12;
  output [0:0]mem_reg_13;
  output [11:0]\weight_offset_reg[11]_0 ;
  output [7:0]\out_pixel_reg[7]_0 ;
  input s00_axi_aclk;
  input done_reg_1;
  input [4:0]Q;
  input [1:0]ky__0;
  input \bram_addr_reg[14]_i_12_0 ;
  input [3:0]O;
  input [3:0]patch_ch_offset_wide;
  input patch_ch_offset_wide_0;
  input [1:0]patch_ch_offset_wide_1;
  input patch_ch_offset_wide_2;
  input [3:0]patch_ch_offset_wide_i_27;
  input patch_ch_offset_wide_i_27_0;
  input patch_ch_offset_wide_i_21;
  input patch_ch_offset_wide_i_27_1;
  input patch_ch_offset_wide_i_27_2;
  input patch_ch_offset_wide_i_27_3;
  input [1:0]patch_ch_offset_wide_3;
  input [0:0]CO;
  input [1:0]pool_start_reg;
  input [14:0]P;
  input \FSM_onehot_state_reg[0]_0 ;
  input [0:0]pool_start_reg_0;
  input \bram_addr_reg[14]_i_12_1 ;
  input [1:0]\bram_addr[7]_i_22_0 ;
  input [0:0]\bram_addr[7]_i_22_1 ;
  input [1:0]\bram_addr[3]_i_9_0 ;
  input [0:0]\bram_addr[3]_i_9_1 ;
  input patch_valid;
  input [7:0]\FSM_onehot_state_reg[9]_0 ;
  input [7:0]DOBDO;
  input [1:0]\acc_reg[15]_i_3 ;
  input [2:0]\acc_reg[7]_i_7_0 ;
  input \co_reg[0]_0 ;
  input [7:0]\bias_saved_reg[31]_0 ;
  input [7:0]\acc_reg[15]_0 ;
  input [1:0]\acc[3]_i_6_0 ;
  input [0:0]\acc[3]_i_6_1 ;
  input [1:0]\acc[7]_i_15_1 ;
  input [0:0]\acc[7]_i_15_2 ;
  input [0:0]\acc[7]_i_8_0 ;
  input [1:0]\acc[7]_i_8_1 ;
  input [3:0]\acc[15]_i_15 ;
  input [0:0]\acc[7]_i_6_0 ;
  input [0:0]\acc_reg[15]_1 ;
  input [0:0]\acc_reg[19]_0 ;
  input [0:0]\acc_reg[19]_1 ;
  input [0:0]E;
  input [7:0]\patch_reg_reg[0][7]_0 ;
  input [7:0]\patch_reg_reg[1][7]_0 ;
  input [7:0]\patch_reg_reg[2][7]_0 ;
  input [7:0]\patch_reg_reg[3][7]_0 ;
  input [7:0]\patch_reg_reg[4][7]_0 ;
  input [7:0]\patch_reg_reg[5][7]_0 ;
  input [7:0]\patch_reg_reg[6][7]_0 ;
  input [7:0]\patch_reg_reg[7][7]_0 ;
  input [7:0]\patch_reg_reg[8][7]_0 ;

  wire [0:0]A;
  wire [11:0]ADDRARDADDR;
  wire [11:0]A_0;
  wire [11:2]C;
  wire [0:0]CO;
  wire [14:0]D;
  wire [0:0]DI;
  wire [7:0]DOBDO;
  wire [0:0]E;
  wire \FSM_onehot_state[12]_i_1_n_0 ;
  wire \FSM_onehot_state[12]_i_4_n_0 ;
  wire \FSM_onehot_state[12]_i_5_n_0 ;
  wire \FSM_onehot_state[12]_i_6_n_0 ;
  wire \FSM_onehot_state[12]_i_7_n_0 ;
  wire \FSM_onehot_state[12]_i_8_n_0 ;
  wire \FSM_onehot_state[13]_i_1_n_0 ;
  wire \FSM_onehot_state[13]_i_2_n_0 ;
  wire \FSM_onehot_state[13]_i_3_n_0 ;
  wire \FSM_onehot_state[13]_i_4_n_0 ;
  wire \FSM_onehot_state[13]_i_6_n_0 ;
  wire \FSM_onehot_state[13]_i_7_n_0 ;
  wire \FSM_onehot_state[1]_i_1__2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_4_n_0 ;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state[9]_i_7_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[12]_i_2_n_3 ;
  wire \FSM_onehot_state_reg[12]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[12]_i_3_n_1 ;
  wire \FSM_onehot_state_reg[12]_i_3_n_2 ;
  wire \FSM_onehot_state_reg[12]_i_3_n_3 ;
  wire [0:0]\FSM_onehot_state_reg[4]_0 ;
  wire [7:0]\FSM_onehot_state_reg[9]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[12] ;
  wire \FSM_onehot_state_reg_n_0_[13] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [3:0]O;
  wire [14:0]P;
  wire [4:0]Q;
  wire [3:0]S;
  wire [0:0]WEA;
  wire [31:0]acc;
  wire [31:0]acc0;
  wire [7:0]acc1;
  wire \acc[0]_i_1_n_0 ;
  wire \acc[10]_i_1_n_0 ;
  wire \acc[11]_i_1_n_0 ;
  wire \acc[11]_i_3_n_0 ;
  wire \acc[11]_i_4_n_0 ;
  wire \acc[11]_i_5_n_0 ;
  wire \acc[11]_i_6_n_0 ;
  wire \acc[12]_i_1_n_0 ;
  wire \acc[13]_i_1_n_0 ;
  wire \acc[14]_i_1_n_0 ;
  wire [3:0]\acc[15]_i_15 ;
  wire \acc[15]_i_1_n_0 ;
  wire \acc[15]_i_35_n_0 ;
  wire \acc[15]_i_36_n_0 ;
  wire \acc[15]_i_37_n_0 ;
  wire \acc[15]_i_38_n_0 ;
  wire \acc[15]_i_57_n_0 ;
  wire \acc[15]_i_59_n_0 ;
  wire \acc[15]_i_5_n_0 ;
  wire \acc[15]_i_60_n_0 ;
  wire \acc[15]_i_63_n_0 ;
  wire \acc[15]_i_6_n_0 ;
  wire \acc[15]_i_74_n_0 ;
  wire \acc[15]_i_75_n_0 ;
  wire \acc[15]_i_76_n_0 ;
  wire \acc[15]_i_77_n_0 ;
  wire \acc[15]_i_7_n_0 ;
  wire \acc[15]_i_86_n_0 ;
  wire \acc[15]_i_87_n_0 ;
  wire \acc[15]_i_88_n_0 ;
  wire \acc[15]_i_89_n_0 ;
  wire \acc[16]_i_1_n_0 ;
  wire \acc[17]_i_1_n_0 ;
  wire \acc[18]_i_1_n_0 ;
  wire \acc[19]_i_1_n_0 ;
  wire \acc[19]_i_4_n_0 ;
  wire \acc[19]_i_5_n_0 ;
  wire \acc[19]_i_6_n_0 ;
  wire \acc[1]_i_1_n_0 ;
  wire \acc[20]_i_1_n_0 ;
  wire \acc[21]_i_1_n_0 ;
  wire \acc[22]_i_1_n_0 ;
  wire \acc[23]_i_1_n_0 ;
  wire \acc[23]_i_3_n_0 ;
  wire \acc[23]_i_4_n_0 ;
  wire \acc[23]_i_5_n_0 ;
  wire \acc[23]_i_6_n_0 ;
  wire \acc[24]_i_1_n_0 ;
  wire \acc[25]_i_1_n_0 ;
  wire \acc[26]_i_1_n_0 ;
  wire \acc[27]_i_1_n_0 ;
  wire \acc[27]_i_3_n_0 ;
  wire \acc[27]_i_4_n_0 ;
  wire \acc[27]_i_5_n_0 ;
  wire \acc[27]_i_6_n_0 ;
  wire \acc[28]_i_1_n_0 ;
  wire \acc[29]_i_1_n_0 ;
  wire \acc[2]_i_1_n_0 ;
  wire \acc[30]_i_1_n_0 ;
  wire \acc[31]_i_1_n_0 ;
  wire \acc[31]_i_2_n_0 ;
  wire \acc[31]_i_4_n_0 ;
  wire \acc[31]_i_5_n_0 ;
  wire \acc[31]_i_6_n_0 ;
  wire \acc[31]_i_7_n_0 ;
  wire \acc[3]_i_11_n_0 ;
  wire \acc[3]_i_12_n_0 ;
  wire \acc[3]_i_13_n_0 ;
  wire \acc[3]_i_15_n_0 ;
  wire \acc[3]_i_18_n_0 ;
  wire \acc[3]_i_19_n_0 ;
  wire \acc[3]_i_1_n_0 ;
  wire \acc[3]_i_20_n_0 ;
  wire \acc[3]_i_22_n_0 ;
  wire \acc[3]_i_27_n_0 ;
  wire \acc[3]_i_28_n_0 ;
  wire \acc[3]_i_29_n_0 ;
  wire \acc[3]_i_30_n_0 ;
  wire \acc[3]_i_31_n_0 ;
  wire \acc[3]_i_32_n_0 ;
  wire \acc[3]_i_33_n_0 ;
  wire \acc[3]_i_34_n_0 ;
  wire \acc[3]_i_35_n_0 ;
  wire \acc[3]_i_36_n_0 ;
  wire \acc[3]_i_3_n_0 ;
  wire \acc[3]_i_4_n_0 ;
  wire \acc[3]_i_5_n_0 ;
  wire [1:0]\acc[3]_i_6_0 ;
  wire [0:0]\acc[3]_i_6_1 ;
  wire \acc[3]_i_6_n_0 ;
  wire \acc[4]_i_1_n_0 ;
  wire \acc[5]_i_1_n_0 ;
  wire \acc[6]_i_1_n_0 ;
  wire \acc[7]_i_10_n_0 ;
  wire \acc[7]_i_11_n_0 ;
  wire \acc[7]_i_13_n_0 ;
  wire \acc[7]_i_14_n_0 ;
  wire [0:0]\acc[7]_i_15_0 ;
  wire [1:0]\acc[7]_i_15_1 ;
  wire [0:0]\acc[7]_i_15_2 ;
  wire \acc[7]_i_15_n_0 ;
  wire \acc[7]_i_1_n_0 ;
  wire \acc[7]_i_3_n_0 ;
  wire \acc[7]_i_4_n_0 ;
  wire \acc[7]_i_5_n_0 ;
  wire [0:0]\acc[7]_i_6_0 ;
  wire \acc[7]_i_6_n_0 ;
  wire [0:0]\acc[7]_i_8_0 ;
  wire [1:0]\acc[7]_i_8_1 ;
  wire \acc[7]_i_9_n_0 ;
  wire \acc[8]_i_1_n_0 ;
  wire \acc[9]_i_1_n_0 ;
  wire \acc_reg[11]_i_2_n_0 ;
  wire \acc_reg[11]_i_2_n_1 ;
  wire \acc_reg[11]_i_2_n_2 ;
  wire \acc_reg[11]_i_2_n_3 ;
  wire [7:0]\acc_reg[15]_0 ;
  wire [0:0]\acc_reg[15]_1 ;
  wire \acc_reg[15]_i_23_n_1 ;
  wire \acc_reg[15]_i_23_n_2 ;
  wire \acc_reg[15]_i_23_n_3 ;
  wire [1:0]\acc_reg[15]_i_26 ;
  wire \acc_reg[15]_i_29_n_0 ;
  wire \acc_reg[15]_i_29_n_1 ;
  wire \acc_reg[15]_i_29_n_2 ;
  wire \acc_reg[15]_i_29_n_3 ;
  wire \acc_reg[15]_i_29_n_7 ;
  wire \acc_reg[15]_i_2_n_0 ;
  wire \acc_reg[15]_i_2_n_1 ;
  wire \acc_reg[15]_i_2_n_2 ;
  wire \acc_reg[15]_i_2_n_3 ;
  wire [1:0]\acc_reg[15]_i_3 ;
  wire [1:0]\acc_reg[16]_0 ;
  wire [0:0]\acc_reg[19]_0 ;
  wire [0:0]\acc_reg[19]_1 ;
  wire \acc_reg[19]_i_2_n_0 ;
  wire \acc_reg[19]_i_2_n_1 ;
  wire \acc_reg[19]_i_2_n_2 ;
  wire \acc_reg[19]_i_2_n_3 ;
  wire \acc_reg[23]_i_2_n_0 ;
  wire \acc_reg[23]_i_2_n_1 ;
  wire \acc_reg[23]_i_2_n_2 ;
  wire \acc_reg[23]_i_2_n_3 ;
  wire \acc_reg[27]_i_2_n_0 ;
  wire \acc_reg[27]_i_2_n_1 ;
  wire \acc_reg[27]_i_2_n_2 ;
  wire \acc_reg[27]_i_2_n_3 ;
  wire \acc_reg[31]_i_3_n_1 ;
  wire \acc_reg[31]_i_3_n_2 ;
  wire \acc_reg[31]_i_3_n_3 ;
  wire \acc_reg[3]_i_2_n_0 ;
  wire \acc_reg[3]_i_2_n_1 ;
  wire \acc_reg[3]_i_2_n_2 ;
  wire \acc_reg[3]_i_2_n_3 ;
  wire [0:0]\acc_reg[3]_i_7_0 ;
  wire \acc_reg[3]_i_7_n_1 ;
  wire \acc_reg[3]_i_7_n_2 ;
  wire \acc_reg[3]_i_7_n_3 ;
  wire \acc_reg[3]_i_7_n_4 ;
  wire \acc_reg[3]_i_7_n_5 ;
  wire \acc_reg[3]_i_7_n_6 ;
  wire \acc_reg[3]_i_7_n_7 ;
  wire \acc_reg[3]_i_8_n_1 ;
  wire \acc_reg[3]_i_8_n_2 ;
  wire \acc_reg[3]_i_8_n_3 ;
  wire \acc_reg[3]_i_8_n_4 ;
  wire \acc_reg[7]_i_2_n_0 ;
  wire \acc_reg[7]_i_2_n_1 ;
  wire \acc_reg[7]_i_2_n_2 ;
  wire \acc_reg[7]_i_2_n_3 ;
  wire [2:0]\acc_reg[7]_i_7_0 ;
  wire \acc_reg[7]_i_7_n_1 ;
  wire \acc_reg[7]_i_7_n_2 ;
  wire \acc_reg[7]_i_7_n_3 ;
  wire bias_saved;
  wire [31:7]bias_saved__0;
  wire [7:0]\bias_saved_reg[31]_0 ;
  wire \bram_addr[11]_i_10_n_0 ;
  wire \bram_addr[11]_i_12_n_0 ;
  wire \bram_addr[11]_i_13_n_0 ;
  wire \bram_addr[11]_i_14_n_0 ;
  wire \bram_addr[11]_i_15_n_0 ;
  wire \bram_addr[11]_i_16_n_0 ;
  wire \bram_addr[11]_i_17_n_0 ;
  wire \bram_addr[11]_i_18_n_0 ;
  wire \bram_addr[11]_i_19_n_0 ;
  wire \bram_addr[11]_i_20_n_0 ;
  wire \bram_addr[11]_i_21_n_0 ;
  wire \bram_addr[11]_i_3_n_0 ;
  wire \bram_addr[11]_i_4_n_0 ;
  wire \bram_addr[11]_i_5_n_0 ;
  wire \bram_addr[11]_i_6_n_0 ;
  wire \bram_addr[11]_i_7_n_0 ;
  wire \bram_addr[11]_i_8_n_0 ;
  wire \bram_addr[11]_i_9_n_0 ;
  wire \bram_addr[14]_i_10_n_0 ;
  wire \bram_addr[14]_i_11_n_0 ;
  wire \bram_addr[14]_i_13_n_0 ;
  wire \bram_addr[14]_i_14_n_0 ;
  wire \bram_addr[14]_i_15_n_0 ;
  wire \bram_addr[14]_i_16_n_0 ;
  wire \bram_addr[14]_i_17_n_0 ;
  wire \bram_addr[14]_i_18_n_0 ;
  wire \bram_addr[14]_i_19_n_0 ;
  wire \bram_addr[14]_i_20_n_0 ;
  wire \bram_addr[14]_i_21_n_0 ;
  wire \bram_addr[14]_i_22_n_0 ;
  wire \bram_addr[14]_i_23_n_0 ;
  wire \bram_addr[14]_i_24_n_0 ;
  wire \bram_addr[14]_i_26_n_0 ;
  wire \bram_addr[14]_i_27_n_0 ;
  wire \bram_addr[14]_i_28_n_0 ;
  wire \bram_addr[14]_i_29_n_0 ;
  wire \bram_addr[14]_i_30_n_0 ;
  wire \bram_addr[14]_i_31_n_0 ;
  wire \bram_addr[14]_i_32_n_0 ;
  wire \bram_addr[14]_i_33_n_0 ;
  wire \bram_addr[14]_i_34_n_0 ;
  wire \bram_addr[14]_i_35_n_0 ;
  wire \bram_addr[14]_i_36_n_0 ;
  wire \bram_addr[14]_i_37_n_0 ;
  wire \bram_addr[14]_i_40_n_0 ;
  wire \bram_addr[14]_i_42_n_0 ;
  wire \bram_addr[14]_i_43_n_0 ;
  wire \bram_addr[14]_i_45_n_0 ;
  wire \bram_addr[14]_i_47_n_0 ;
  wire \bram_addr[14]_i_49_n_0 ;
  wire \bram_addr[14]_i_50_n_0 ;
  wire \bram_addr[14]_i_52_n_0 ;
  wire \bram_addr[14]_i_53_n_0 ;
  wire \bram_addr[14]_i_54_n_0 ;
  wire \bram_addr[14]_i_55_n_0 ;
  wire \bram_addr[14]_i_56_n_0 ;
  wire \bram_addr[14]_i_57_n_0 ;
  wire \bram_addr[14]_i_60_n_0 ;
  wire \bram_addr[14]_i_61_n_0 ;
  wire \bram_addr[14]_i_62_n_0 ;
  wire \bram_addr[14]_i_63_n_0 ;
  wire \bram_addr[14]_i_64_n_0 ;
  wire \bram_addr[14]_i_65_n_0 ;
  wire \bram_addr[14]_i_66_n_0 ;
  wire \bram_addr[14]_i_67_n_0 ;
  wire \bram_addr[14]_i_68_n_0 ;
  wire \bram_addr[14]_i_69_n_0 ;
  wire \bram_addr[14]_i_70_n_0 ;
  wire \bram_addr[14]_i_71_n_0 ;
  wire \bram_addr[14]_i_72_n_0 ;
  wire \bram_addr[14]_i_7_n_0 ;
  wire \bram_addr[14]_i_8_n_0 ;
  wire \bram_addr[14]_i_9_n_0 ;
  wire \bram_addr[3]_i_3_n_0 ;
  wire \bram_addr[3]_i_4_n_0 ;
  wire \bram_addr[3]_i_5_n_0 ;
  wire \bram_addr[3]_i_6_n_0 ;
  wire \bram_addr[3]_i_7_n_0 ;
  wire \bram_addr[3]_i_8_n_0 ;
  wire [1:0]\bram_addr[3]_i_9_0 ;
  wire [0:0]\bram_addr[3]_i_9_1 ;
  wire \bram_addr[3]_i_9_n_0 ;
  wire \bram_addr[7]_i_10_n_0 ;
  wire \bram_addr[7]_i_12_n_0 ;
  wire \bram_addr[7]_i_14_n_0 ;
  wire \bram_addr[7]_i_15_n_0 ;
  wire \bram_addr[7]_i_16_n_0 ;
  wire \bram_addr[7]_i_17_n_0 ;
  wire \bram_addr[7]_i_18_n_0 ;
  wire \bram_addr[7]_i_19_n_0 ;
  wire \bram_addr[7]_i_20_n_0 ;
  wire \bram_addr[7]_i_21_n_0 ;
  wire [1:0]\bram_addr[7]_i_22_0 ;
  wire [0:0]\bram_addr[7]_i_22_1 ;
  wire \bram_addr[7]_i_22_n_0 ;
  wire \bram_addr[7]_i_23_n_0 ;
  wire \bram_addr[7]_i_24_n_0 ;
  wire \bram_addr[7]_i_25_n_0 ;
  wire \bram_addr[7]_i_3_n_0 ;
  wire \bram_addr[7]_i_4_n_0 ;
  wire \bram_addr[7]_i_5_n_0 ;
  wire \bram_addr[7]_i_6_n_0 ;
  wire \bram_addr[7]_i_7_n_0 ;
  wire \bram_addr[7]_i_8_n_0 ;
  wire \bram_addr[7]_i_9_n_0 ;
  wire \bram_addr_reg[11]_i_11_n_0 ;
  wire \bram_addr_reg[11]_i_11_n_1 ;
  wire \bram_addr_reg[11]_i_11_n_2 ;
  wire \bram_addr_reg[11]_i_11_n_3 ;
  wire \bram_addr_reg[11]_i_11_n_4 ;
  wire \bram_addr_reg[11]_i_11_n_5 ;
  wire \bram_addr_reg[11]_i_11_n_6 ;
  wire \bram_addr_reg[11]_i_11_n_7 ;
  wire \bram_addr_reg[11]_i_2_n_0 ;
  wire \bram_addr_reg[11]_i_2_n_1 ;
  wire \bram_addr_reg[11]_i_2_n_2 ;
  wire \bram_addr_reg[11]_i_2_n_3 ;
  wire \bram_addr_reg[14]_i_12_0 ;
  wire \bram_addr_reg[14]_i_12_1 ;
  wire \bram_addr_reg[14]_i_12_n_0 ;
  wire \bram_addr_reg[14]_i_12_n_1 ;
  wire \bram_addr_reg[14]_i_12_n_2 ;
  wire \bram_addr_reg[14]_i_12_n_3 ;
  wire \bram_addr_reg[14]_i_12_n_4 ;
  wire \bram_addr_reg[14]_i_12_n_5 ;
  wire \bram_addr_reg[14]_i_12_n_6 ;
  wire \bram_addr_reg[14]_i_12_n_7 ;
  wire \bram_addr_reg[14]_i_25_n_0 ;
  wire \bram_addr_reg[14]_i_25_n_1 ;
  wire \bram_addr_reg[14]_i_25_n_2 ;
  wire \bram_addr_reg[14]_i_25_n_3 ;
  wire \bram_addr_reg[14]_i_25_n_4 ;
  wire \bram_addr_reg[14]_i_25_n_5 ;
  wire \bram_addr_reg[14]_i_25_n_6 ;
  wire \bram_addr_reg[14]_i_25_n_7 ;
  wire \bram_addr_reg[14]_i_2_n_2 ;
  wire \bram_addr_reg[14]_i_2_n_3 ;
  wire \bram_addr_reg[14]_i_38_n_2 ;
  wire \bram_addr_reg[14]_i_38_n_3 ;
  wire \bram_addr_reg[14]_i_38_n_5 ;
  wire \bram_addr_reg[14]_i_38_n_6 ;
  wire \bram_addr_reg[14]_i_38_n_7 ;
  wire \bram_addr_reg[14]_i_3_n_1 ;
  wire \bram_addr_reg[14]_i_3_n_2 ;
  wire \bram_addr_reg[14]_i_3_n_3 ;
  wire \bram_addr_reg[14]_i_3_n_4 ;
  wire \bram_addr_reg[14]_i_3_n_5 ;
  wire \bram_addr_reg[14]_i_3_n_6 ;
  wire \bram_addr_reg[14]_i_3_n_7 ;
  wire \bram_addr_reg[14]_i_4_n_0 ;
  wire \bram_addr_reg[14]_i_4_n_1 ;
  wire \bram_addr_reg[14]_i_4_n_2 ;
  wire \bram_addr_reg[14]_i_4_n_3 ;
  wire \bram_addr_reg[14]_i_58_n_2 ;
  wire \bram_addr_reg[14]_i_58_n_7 ;
  wire \bram_addr_reg[14]_i_59_n_0 ;
  wire \bram_addr_reg[14]_i_59_n_1 ;
  wire \bram_addr_reg[14]_i_59_n_2 ;
  wire \bram_addr_reg[14]_i_59_n_3 ;
  wire \bram_addr_reg[14]_i_59_n_4 ;
  wire \bram_addr_reg[14]_i_59_n_5 ;
  wire \bram_addr_reg[14]_i_59_n_6 ;
  wire \bram_addr_reg[14]_i_59_n_7 ;
  wire \bram_addr_reg[14]_i_5_n_1 ;
  wire \bram_addr_reg[14]_i_5_n_2 ;
  wire \bram_addr_reg[14]_i_5_n_3 ;
  wire \bram_addr_reg[14]_i_5_n_4 ;
  wire \bram_addr_reg[14]_i_5_n_5 ;
  wire \bram_addr_reg[14]_i_5_n_6 ;
  wire \bram_addr_reg[14]_i_5_n_7 ;
  wire \bram_addr_reg[14]_i_6_n_0 ;
  wire \bram_addr_reg[14]_i_6_n_1 ;
  wire \bram_addr_reg[14]_i_6_n_2 ;
  wire \bram_addr_reg[14]_i_6_n_3 ;
  wire \bram_addr_reg[3]_i_2_n_0 ;
  wire \bram_addr_reg[3]_i_2_n_1 ;
  wire \bram_addr_reg[3]_i_2_n_2 ;
  wire \bram_addr_reg[3]_i_2_n_3 ;
  wire \bram_addr_reg[7]_i_11_n_0 ;
  wire \bram_addr_reg[7]_i_11_n_1 ;
  wire \bram_addr_reg[7]_i_11_n_2 ;
  wire \bram_addr_reg[7]_i_11_n_3 ;
  wire \bram_addr_reg[7]_i_11_n_4 ;
  wire \bram_addr_reg[7]_i_11_n_5 ;
  wire \bram_addr_reg[7]_i_11_n_6 ;
  wire \bram_addr_reg[7]_i_11_n_7 ;
  wire \bram_addr_reg[7]_i_13_n_0 ;
  wire \bram_addr_reg[7]_i_13_n_1 ;
  wire \bram_addr_reg[7]_i_13_n_2 ;
  wire \bram_addr_reg[7]_i_13_n_3 ;
  wire \bram_addr_reg[7]_i_13_n_4 ;
  wire \bram_addr_reg[7]_i_13_n_5 ;
  wire \bram_addr_reg[7]_i_13_n_6 ;
  wire \bram_addr_reg[7]_i_13_n_7 ;
  wire \bram_addr_reg[7]_i_2_n_0 ;
  wire \bram_addr_reg[7]_i_2_n_1 ;
  wire \bram_addr_reg[7]_i_2_n_2 ;
  wire \bram_addr_reg[7]_i_2_n_3 ;
  wire [7:0]ci;
  wire \ci[0]_i_1_n_0 ;
  wire \ci[1]_i_1_n_0 ;
  wire \ci[2]_i_1_n_0 ;
  wire \ci[3]_i_1_n_0 ;
  wire \ci[4]_i_1_n_0 ;
  wire \ci[5]_i_1_n_0 ;
  wire \ci[6]_i_1_n_0 ;
  wire \ci[7]_i_1_n_0 ;
  wire \ci[7]_i_2_n_0 ;
  wire \ci[7]_i_3_n_0 ;
  wire [7:0]co;
  wire \co[0]_i_1_n_0 ;
  wire \co[1]_i_1_n_0 ;
  wire \co[2]_i_1_n_0 ;
  wire \co[3]_i_1_n_0 ;
  wire \co[4]_i_1_n_0 ;
  wire \co[5]_i_1_n_0 ;
  wire \co[6]_i_1_n_0 ;
  wire \co[7]_i_1_n_0 ;
  wire \co[7]_i_2_n_0 ;
  wire \co[7]_i_3_n_0 ;
  wire \co_reg[0]_0 ;
  wire conv_done;
  wire [11:0]conv_out_pixel_pos;
  wire conv_out_valid;
  wire [6:2]conv_target_col;
  wire [6:2]conv_target_row;
  wire [3:0]\cur_ci_reg[3]_0 ;
  wire [3:0]\cur_ci_reg[4]_0 ;
  wire [7:0]\cur_ci_reg[7]_0 ;
  wire [6:0]cur_col;
  wire \cur_col[4]_i_2_n_0 ;
  wire \cur_col[5]_i_2_n_0 ;
  wire \cur_col[6]_i_2_n_0 ;
  wire \cur_col_reg_n_0_[0] ;
  wire \cur_col_reg_n_0_[1] ;
  wire \cur_col_reg_n_0_[2] ;
  wire \cur_col_reg_n_0_[3] ;
  wire \cur_col_reg_n_0_[4] ;
  wire \cur_col_reg_n_0_[5] ;
  wire \cur_col_reg_n_0_[6] ;
  wire [3:0]\cur_in_w_reg[4] ;
  wire [0:0]\cur_in_w_reg[4]_0 ;
  wire [3:0]\cur_in_w_reg[6] ;
  wire [6:0]cur_row;
  wire \cur_row[4]_i_2_n_0 ;
  wire \cur_row[6]_i_1_n_0 ;
  wire \cur_row[6]_i_3_n_0 ;
  wire \cur_row[6]_i_4_n_0 ;
  wire \cur_row[6]_i_5_n_0 ;
  wire \cur_row[6]_i_6_n_0 ;
  wire \cur_row[6]_i_7_n_0 ;
  wire \cur_row_reg_n_0_[0] ;
  wire \cur_row_reg_n_0_[1] ;
  wire \cur_row_reg_n_0_[2] ;
  wire \cur_row_reg_n_0_[3] ;
  wire \cur_row_reg_n_0_[4] ;
  wire \cur_row_reg_n_0_[5] ;
  wire \cur_row_reg_n_0_[6] ;
  wire done_reg_0;
  wire done_reg_1;
  wire [5:4]in10;
  wire in5;
  wire [5:5]in8;
  wire [3:0]k_idx;
  wire \k_idx[3]_i_1_n_0 ;
  wire \k_idx[3]_i_3_n_0 ;
  wire \k_idx_reg_n_0_[0] ;
  wire \k_idx_reg_n_0_[1] ;
  wire \k_idx_reg_n_0_[2] ;
  wire \k_idx_reg_n_0_[3] ;
  wire [1:0]ky__0;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [2:0]mem_reg_10;
  wire [0:0]mem_reg_11;
  wire [0:0]mem_reg_12;
  wire [0:0]mem_reg_13;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire [3:0]mem_reg_7;
  wire [0:0]mem_reg_8;
  wire [0:0]mem_reg_9;
  wire need_patch;
  wire out_pixel1;
  wire \out_pixel[0]_i_1_n_0 ;
  wire \out_pixel[1]_i_1_n_0 ;
  wire \out_pixel[2]_i_1_n_0 ;
  wire \out_pixel[3]_i_1_n_0 ;
  wire \out_pixel[4]_i_1_n_0 ;
  wire \out_pixel[5]_i_1_n_0 ;
  wire \out_pixel[6]_i_1_n_0 ;
  wire \out_pixel[7]_i_1_n_0 ;
  wire \out_pixel[7]_i_3_n_0 ;
  wire \out_pixel[7]_i_4_n_0 ;
  wire \out_pixel[7]_i_5_n_0 ;
  wire [7:0]\out_pixel_reg[7]_0 ;
  wire [11:0]p_0_in;
  wire [14:1]p_1_in;
  wire [3:0]patch_ch_offset_wide;
  wire patch_ch_offset_wide_0;
  wire [1:0]patch_ch_offset_wide_1;
  wire patch_ch_offset_wide_2;
  wire [1:0]patch_ch_offset_wide_3;
  wire patch_ch_offset_wide_i_21;
  wire [3:0]patch_ch_offset_wide_i_27;
  wire patch_ch_offset_wide_i_27_0;
  wire patch_ch_offset_wide_i_27_1;
  wire patch_ch_offset_wide_i_27_2;
  wire patch_ch_offset_wide_i_27_3;
  wire [7:0]patch_reg__0;
  wire [7:0]\patch_reg_reg[0][7]_0 ;
  wire [7:0]\patch_reg_reg[0]_9 ;
  wire [7:0]\patch_reg_reg[1][7]_0 ;
  wire [7:0]\patch_reg_reg[1]_10 ;
  wire [7:0]\patch_reg_reg[2][7]_0 ;
  wire [7:0]\patch_reg_reg[2]_11 ;
  wire [7:0]\patch_reg_reg[3][7]_0 ;
  wire [7:0]\patch_reg_reg[3]_12 ;
  wire [7:0]\patch_reg_reg[4][7]_0 ;
  wire [7:0]\patch_reg_reg[4]_13 ;
  wire [7:0]\patch_reg_reg[5][7]_0 ;
  wire [7:0]\patch_reg_reg[5]_14 ;
  wire [7:0]\patch_reg_reg[6][7]_0 ;
  wire [7:0]\patch_reg_reg[6]_15 ;
  wire [7:0]\patch_reg_reg[7][7]_0 ;
  wire [7:0]\patch_reg_reg[7]_16 ;
  wire [7:0]\patch_reg_reg[8][7]_0 ;
  wire [7:0]\patch_reg_reg[8]_17 ;
  wire patch_valid;
  wire [14:0]pix;
  wire \pix[0]_i_1_n_0 ;
  wire \pix[10]_i_1_n_0 ;
  wire \pix[11]_i_1_n_0 ;
  wire \pix[12]_i_1_n_0 ;
  wire \pix[13]_i_1_n_0 ;
  wire \pix[14]_i_1_n_0 ;
  wire \pix[14]_i_2_n_0 ;
  wire \pix[1]_i_1_n_0 ;
  wire \pix[2]_i_1_n_0 ;
  wire \pix[3]_i_1_n_0 ;
  wire \pix[4]_i_1_n_0 ;
  wire \pix[5]_i_1_n_0 ;
  wire \pix[6]_i_1_n_0 ;
  wire \pix[7]_i_1_n_0 ;
  wire \pix[8]_i_1_n_0 ;
  wire \pix[9]_i_1_n_0 ;
  wire \pix_reg[12]_i_2_n_0 ;
  wire \pix_reg[12]_i_2_n_1 ;
  wire \pix_reg[12]_i_2_n_2 ;
  wire \pix_reg[12]_i_2_n_3 ;
  wire \pix_reg[14]_i_3_n_3 ;
  wire \pix_reg[4]_i_2_n_0 ;
  wire \pix_reg[4]_i_2_n_1 ;
  wire \pix_reg[4]_i_2_n_2 ;
  wire \pix_reg[4]_i_2_n_3 ;
  wire \pix_reg[8]_i_2_n_0 ;
  wire \pix_reg[8]_i_2_n_1 ;
  wire \pix_reg[8]_i_2_n_2 ;
  wire \pix_reg[8]_i_2_n_3 ;
  wire pool_start;
  wire [1:0]pool_start_reg;
  wire [0:0]pool_start_reg_0;
  wire s00_axi_aclk;
  wire [1:0]\target_col_reg[1]_0 ;
  wire [1:0]\target_row_reg[1]_0 ;
  wire \target_row_reg[5]_0 ;
  wire total_pixels;
  wire [13:5]total_pixels0;
  wire \total_pixels[12]_i_11_n_0 ;
  wire \total_pixels[12]_i_12_n_0 ;
  wire \total_pixels[12]_i_13_n_0 ;
  wire \total_pixels[12]_i_14_n_0 ;
  wire \total_pixels[12]_i_15_n_0 ;
  wire \total_pixels[12]_i_16_n_0 ;
  wire \total_pixels[12]_i_17_n_0 ;
  wire \total_pixels[12]_i_18_n_0 ;
  wire \total_pixels[12]_i_2_n_0 ;
  wire \total_pixels[12]_i_3_n_0 ;
  wire \total_pixels[12]_i_4_n_0 ;
  wire \total_pixels[12]_i_5_n_0 ;
  wire \total_pixels[12]_i_6_n_0 ;
  wire \total_pixels[12]_i_7_n_0 ;
  wire \total_pixels[12]_i_8_n_0 ;
  wire \total_pixels[12]_i_9_n_0 ;
  wire \total_pixels[13]_i_3_n_0 ;
  wire \total_pixels[13]_i_5_n_0 ;
  wire \total_pixels[13]_i_6_n_0 ;
  wire \total_pixels[8]_i_2_n_0 ;
  wire \total_pixels[8]_i_3_n_0 ;
  wire \total_pixels[8]_i_4_n_0 ;
  wire \total_pixels[8]_i_5_n_0 ;
  wire \total_pixels[8]_i_6_n_0 ;
  wire \total_pixels[8]_i_7_n_0 ;
  wire \total_pixels[8]_i_8_n_0 ;
  wire \total_pixels_reg[12]_i_10_n_0 ;
  wire \total_pixels_reg[12]_i_10_n_1 ;
  wire \total_pixels_reg[12]_i_10_n_2 ;
  wire \total_pixels_reg[12]_i_10_n_3 ;
  wire \total_pixels_reg[12]_i_10_n_4 ;
  wire \total_pixels_reg[12]_i_10_n_5 ;
  wire \total_pixels_reg[12]_i_10_n_6 ;
  wire \total_pixels_reg[12]_i_10_n_7 ;
  wire \total_pixels_reg[12]_i_1_n_0 ;
  wire \total_pixels_reg[12]_i_1_n_1 ;
  wire \total_pixels_reg[12]_i_1_n_2 ;
  wire \total_pixels_reg[12]_i_1_n_3 ;
  wire \total_pixels_reg[13]_i_4_n_2 ;
  wire \total_pixels_reg[13]_i_4_n_7 ;
  wire \total_pixels_reg[8]_i_1_n_0 ;
  wire \total_pixels_reg[8]_i_1_n_1 ;
  wire \total_pixels_reg[8]_i_1_n_2 ;
  wire \total_pixels_reg[8]_i_1_n_3 ;
  wire \total_pixels_reg_n_0_[10] ;
  wire \total_pixels_reg_n_0_[11] ;
  wire \total_pixels_reg_n_0_[12] ;
  wire \total_pixels_reg_n_0_[13] ;
  wire \total_pixels_reg_n_0_[4] ;
  wire \total_pixels_reg_n_0_[5] ;
  wire \total_pixels_reg_n_0_[6] ;
  wire \total_pixels_reg_n_0_[7] ;
  wire \total_pixels_reg_n_0_[8] ;
  wire \total_pixels_reg_n_0_[9] ;
  wire [14:0]\u_patch/bram_addr0 ;
  wire [11:2]w_base1;
  wire [11:0]weight_offset0;
  wire \weight_offset[11]_i_10_n_0 ;
  wire \weight_offset[11]_i_11_n_0 ;
  wire \weight_offset[11]_i_13_n_0 ;
  wire \weight_offset[11]_i_14_n_0 ;
  wire \weight_offset[11]_i_15_n_0 ;
  wire \weight_offset[11]_i_16_n_0 ;
  wire \weight_offset[11]_i_19_n_0 ;
  wire \weight_offset[11]_i_20_n_0 ;
  wire \weight_offset[11]_i_21_n_0 ;
  wire \weight_offset[11]_i_22_n_0 ;
  wire \weight_offset[11]_i_23_n_0 ;
  wire \weight_offset[11]_i_24_n_0 ;
  wire \weight_offset[11]_i_25_n_0 ;
  wire \weight_offset[11]_i_26_n_0 ;
  wire \weight_offset[11]_i_28_n_0 ;
  wire \weight_offset[11]_i_30_n_0 ;
  wire \weight_offset[11]_i_31_n_0 ;
  wire \weight_offset[11]_i_32_n_0 ;
  wire \weight_offset[11]_i_33_n_0 ;
  wire \weight_offset[11]_i_34_n_0 ;
  wire \weight_offset[11]_i_35_n_0 ;
  wire \weight_offset[11]_i_36_n_0 ;
  wire \weight_offset[11]_i_39_n_0 ;
  wire \weight_offset[11]_i_41_n_0 ;
  wire \weight_offset[11]_i_42_n_0 ;
  wire \weight_offset[11]_i_43_n_0 ;
  wire \weight_offset[11]_i_44_n_0 ;
  wire \weight_offset[11]_i_45_n_0 ;
  wire \weight_offset[11]_i_46_n_0 ;
  wire \weight_offset[11]_i_47_n_0 ;
  wire \weight_offset[11]_i_48_n_0 ;
  wire \weight_offset[11]_i_49_n_0 ;
  wire \weight_offset[11]_i_50_n_0 ;
  wire \weight_offset[11]_i_51_n_0 ;
  wire \weight_offset[11]_i_52_n_0 ;
  wire \weight_offset[11]_i_53_n_0 ;
  wire \weight_offset[11]_i_54_n_0 ;
  wire \weight_offset[11]_i_55_n_0 ;
  wire \weight_offset[11]_i_56_n_0 ;
  wire \weight_offset[11]_i_57_n_0 ;
  wire \weight_offset[11]_i_58_n_0 ;
  wire \weight_offset[11]_i_59_n_0 ;
  wire \weight_offset[11]_i_5_n_0 ;
  wire \weight_offset[11]_i_60_n_0 ;
  wire \weight_offset[11]_i_61_n_0 ;
  wire \weight_offset[11]_i_62_n_0 ;
  wire \weight_offset[11]_i_63_n_0 ;
  wire \weight_offset[11]_i_64_n_0 ;
  wire \weight_offset[11]_i_65_n_0 ;
  wire \weight_offset[11]_i_66_n_0 ;
  wire \weight_offset[11]_i_67_n_0 ;
  wire \weight_offset[11]_i_68_n_0 ;
  wire \weight_offset[11]_i_69_n_0 ;
  wire \weight_offset[11]_i_6_n_0 ;
  wire \weight_offset[11]_i_70_n_0 ;
  wire \weight_offset[11]_i_71_n_0 ;
  wire \weight_offset[11]_i_72_n_0 ;
  wire \weight_offset[11]_i_73_n_0 ;
  wire \weight_offset[11]_i_74_n_0 ;
  wire \weight_offset[11]_i_75_n_0 ;
  wire \weight_offset[11]_i_76_n_0 ;
  wire \weight_offset[11]_i_77_n_0 ;
  wire \weight_offset[11]_i_78_n_0 ;
  wire \weight_offset[11]_i_79_n_0 ;
  wire \weight_offset[11]_i_7_n_0 ;
  wire \weight_offset[11]_i_80_n_0 ;
  wire \weight_offset[11]_i_81_n_0 ;
  wire \weight_offset[11]_i_82_n_0 ;
  wire \weight_offset[11]_i_83_n_0 ;
  wire \weight_offset[11]_i_84_n_0 ;
  wire \weight_offset[11]_i_85_n_0 ;
  wire \weight_offset[11]_i_86_n_0 ;
  wire \weight_offset[11]_i_87_n_0 ;
  wire \weight_offset[11]_i_88_n_0 ;
  wire \weight_offset[11]_i_89_n_0 ;
  wire \weight_offset[11]_i_8_n_0 ;
  wire \weight_offset[11]_i_90_n_0 ;
  wire \weight_offset[11]_i_92_n_0 ;
  wire \weight_offset[3]_i_2_n_0 ;
  wire \weight_offset[3]_i_3_n_0 ;
  wire \weight_offset[3]_i_4_n_0 ;
  wire \weight_offset[3]_i_5_n_0 ;
  wire \weight_offset[3]_i_6_n_0 ;
  wire \weight_offset[3]_i_7_n_0 ;
  wire \weight_offset[3]_i_8_n_0 ;
  wire \weight_offset[7]_i_11_n_0 ;
  wire \weight_offset[7]_i_12_n_0 ;
  wire \weight_offset[7]_i_13_n_0 ;
  wire \weight_offset[7]_i_14_n_0 ;
  wire \weight_offset[7]_i_15_n_0 ;
  wire \weight_offset[7]_i_16_n_0 ;
  wire \weight_offset[7]_i_17_n_0 ;
  wire \weight_offset[7]_i_19_n_0 ;
  wire \weight_offset[7]_i_20_n_0 ;
  wire \weight_offset[7]_i_21_n_0 ;
  wire \weight_offset[7]_i_22_n_0 ;
  wire \weight_offset[7]_i_23_n_0 ;
  wire \weight_offset[7]_i_24_n_0 ;
  wire \weight_offset[7]_i_25_n_0 ;
  wire \weight_offset[7]_i_26_n_0 ;
  wire \weight_offset[7]_i_27_n_0 ;
  wire \weight_offset[7]_i_28_n_0 ;
  wire \weight_offset[7]_i_29_n_0 ;
  wire \weight_offset[7]_i_3_n_0 ;
  wire \weight_offset[7]_i_6_n_0 ;
  wire \weight_offset[7]_i_7_n_0 ;
  wire \weight_offset[7]_i_8_n_0 ;
  wire \weight_offset[7]_i_9_n_0 ;
  wire [11:0]\weight_offset_reg[11]_0 ;
  wire \weight_offset_reg[11]_i_12_n_0 ;
  wire \weight_offset_reg[11]_i_12_n_1 ;
  wire \weight_offset_reg[11]_i_12_n_2 ;
  wire \weight_offset_reg[11]_i_12_n_3 ;
  wire \weight_offset_reg[11]_i_18_n_0 ;
  wire \weight_offset_reg[11]_i_18_n_1 ;
  wire \weight_offset_reg[11]_i_18_n_2 ;
  wire \weight_offset_reg[11]_i_18_n_3 ;
  wire \weight_offset_reg[11]_i_1_n_1 ;
  wire \weight_offset_reg[11]_i_1_n_2 ;
  wire \weight_offset_reg[11]_i_1_n_3 ;
  wire \weight_offset_reg[11]_i_29_n_0 ;
  wire \weight_offset_reg[11]_i_29_n_1 ;
  wire \weight_offset_reg[11]_i_29_n_2 ;
  wire \weight_offset_reg[11]_i_29_n_3 ;
  wire \weight_offset_reg[11]_i_29_n_4 ;
  wire \weight_offset_reg[11]_i_29_n_5 ;
  wire \weight_offset_reg[11]_i_29_n_6 ;
  wire \weight_offset_reg[11]_i_29_n_7 ;
  wire \weight_offset_reg[11]_i_2_n_1 ;
  wire \weight_offset_reg[11]_i_2_n_2 ;
  wire \weight_offset_reg[11]_i_2_n_3 ;
  wire \weight_offset_reg[11]_i_37_n_0 ;
  wire \weight_offset_reg[11]_i_37_n_1 ;
  wire \weight_offset_reg[11]_i_37_n_2 ;
  wire \weight_offset_reg[11]_i_37_n_3 ;
  wire \weight_offset_reg[11]_i_37_n_4 ;
  wire \weight_offset_reg[11]_i_37_n_5 ;
  wire \weight_offset_reg[11]_i_37_n_6 ;
  wire \weight_offset_reg[11]_i_37_n_7 ;
  wire \weight_offset_reg[11]_i_38_n_1 ;
  wire \weight_offset_reg[11]_i_38_n_3 ;
  wire \weight_offset_reg[11]_i_38_n_6 ;
  wire \weight_offset_reg[11]_i_38_n_7 ;
  wire \weight_offset_reg[11]_i_3_n_3 ;
  wire \weight_offset_reg[11]_i_40_n_0 ;
  wire \weight_offset_reg[11]_i_40_n_1 ;
  wire \weight_offset_reg[11]_i_40_n_2 ;
  wire \weight_offset_reg[11]_i_40_n_3 ;
  wire \weight_offset_reg[11]_i_40_n_4 ;
  wire \weight_offset_reg[11]_i_40_n_5 ;
  wire \weight_offset_reg[11]_i_40_n_6 ;
  wire \weight_offset_reg[11]_i_40_n_7 ;
  wire \weight_offset_reg[11]_i_4_n_0 ;
  wire \weight_offset_reg[11]_i_4_n_1 ;
  wire \weight_offset_reg[11]_i_4_n_2 ;
  wire \weight_offset_reg[11]_i_4_n_3 ;
  wire \weight_offset_reg[11]_i_91_n_7 ;
  wire \weight_offset_reg[11]_i_9_n_0 ;
  wire \weight_offset_reg[11]_i_9_n_1 ;
  wire \weight_offset_reg[11]_i_9_n_2 ;
  wire \weight_offset_reg[11]_i_9_n_3 ;
  wire \weight_offset_reg[3]_i_1_n_0 ;
  wire \weight_offset_reg[3]_i_1_n_1 ;
  wire \weight_offset_reg[3]_i_1_n_2 ;
  wire \weight_offset_reg[3]_i_1_n_3 ;
  wire \weight_offset_reg[7]_i_10_n_0 ;
  wire \weight_offset_reg[7]_i_10_n_1 ;
  wire \weight_offset_reg[7]_i_10_n_2 ;
  wire \weight_offset_reg[7]_i_10_n_3 ;
  wire \weight_offset_reg[7]_i_10_n_4 ;
  wire \weight_offset_reg[7]_i_18_n_0 ;
  wire \weight_offset_reg[7]_i_18_n_1 ;
  wire \weight_offset_reg[7]_i_18_n_2 ;
  wire \weight_offset_reg[7]_i_18_n_3 ;
  wire \weight_offset_reg[7]_i_1_n_0 ;
  wire \weight_offset_reg[7]_i_1_n_1 ;
  wire \weight_offset_reg[7]_i_1_n_2 ;
  wire \weight_offset_reg[7]_i_1_n_3 ;
  wire \weight_offset_reg[7]_i_2_n_0 ;
  wire \weight_offset_reg[7]_i_2_n_1 ;
  wire \weight_offset_reg[7]_i_2_n_2 ;
  wire \weight_offset_reg[7]_i_2_n_3 ;
  wire \weight_offset_reg[7]_i_4_n_0 ;
  wire \weight_offset_reg[7]_i_4_n_1 ;
  wire \weight_offset_reg[7]_i_4_n_2 ;
  wire \weight_offset_reg[7]_i_4_n_3 ;
  wire \weight_offset_reg[7]_i_5_n_0 ;
  wire \weight_offset_reg[7]_i_5_n_1 ;
  wire \weight_offset_reg[7]_i_5_n_2 ;
  wire \weight_offset_reg[7]_i_5_n_3 ;
  wire [3:1]\NLW_FSM_onehot_state_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[12]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[12]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_acc_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram_addr_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[14]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram_addr_reg[14]_i_38_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[14]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_bram_addr_reg[14]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[14]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_bram_addr_reg[14]_i_58_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram_addr_reg[14]_i_58_O_UNCONNECTED ;
  wire [3:0]\NLW_bram_addr_reg[14]_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_pix_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_pix_reg[14]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_total_pixels_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_total_pixels_reg[13]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_total_pixels_reg[13]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_total_pixels_reg[13]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_weight_offset_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_weight_offset_reg[11]_i_17_CO_UNCONNECTED ;
  wire [3:1]\NLW_weight_offset_reg[11]_i_17_O_UNCONNECTED ;
  wire [3:3]\NLW_weight_offset_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_weight_offset_reg[11]_i_27_CO_UNCONNECTED ;
  wire [3:1]\NLW_weight_offset_reg[11]_i_27_O_UNCONNECTED ;
  wire [3:1]\NLW_weight_offset_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_weight_offset_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_weight_offset_reg[11]_i_38_CO_UNCONNECTED ;
  wire [3:2]\NLW_weight_offset_reg[11]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_weight_offset_reg[11]_i_91_CO_UNCONNECTED ;
  wire [3:1]\NLW_weight_offset_reg[11]_i_91_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .O(\FSM_onehot_state[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h41000041)) 
    \FSM_onehot_state[12]_i_4 
       (.I0(p_1_in[14]),
        .I1(p_1_in[12]),
        .I2(\total_pixels_reg_n_0_[12] ),
        .I3(\total_pixels_reg_n_0_[13] ),
        .I4(p_1_in[13]),
        .O(\FSM_onehot_state[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_state[12]_i_5 
       (.I0(p_1_in[10]),
        .I1(\total_pixels_reg_n_0_[10] ),
        .I2(p_1_in[9]),
        .I3(\total_pixels_reg_n_0_[9] ),
        .I4(\total_pixels_reg_n_0_[11] ),
        .I5(p_1_in[11]),
        .O(\FSM_onehot_state[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_state[12]_i_6 
       (.I0(p_1_in[7]),
        .I1(\total_pixels_reg_n_0_[7] ),
        .I2(p_1_in[6]),
        .I3(\total_pixels_reg_n_0_[6] ),
        .I4(\total_pixels_reg_n_0_[8] ),
        .I5(p_1_in[8]),
        .O(\FSM_onehot_state[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h41000041)) 
    \FSM_onehot_state[12]_i_7 
       (.I0(p_1_in[3]),
        .I1(p_1_in[4]),
        .I2(\total_pixels_reg_n_0_[4] ),
        .I3(\total_pixels_reg_n_0_[5] ),
        .I4(p_1_in[5]),
        .O(\FSM_onehot_state[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[12]_i_8 
       (.I0(p_1_in[2]),
        .I1(pix[0]),
        .I2(p_1_in[1]),
        .O(\FSM_onehot_state[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[13]_i_1 
       (.I0(\FSM_onehot_state[13]_i_3_n_0 ),
        .I1(bias_saved),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_state[13]_i_4_n_0 ),
        .O(\FSM_onehot_state[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[13]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(in5),
        .O(\FSM_onehot_state[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[13]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[13]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[13] ),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .I3(\FSM_onehot_state_reg_n_0_[10] ),
        .I4(total_pixels),
        .I5(\FSM_onehot_state[13]_i_6_n_0 ),
        .O(\FSM_onehot_state[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8002)) 
    \FSM_onehot_state[13]_i_5 
       (.I0(\FSM_onehot_state[13]_i_7_n_0 ),
        .I1(co[7]),
        .I2(co[6]),
        .I3(\co[7]_i_3_n_0 ),
        .O(in5));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[13]_i_6 
       (.I0(\FSM_onehot_state_reg[4]_0 ),
        .I1(patch_valid),
        .O(\FSM_onehot_state[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[13]_i_7 
       (.I0(co[5]),
        .I1(co[4]),
        .I2(co[2]),
        .I3(co[0]),
        .I4(co[1]),
        .I5(co[3]),
        .O(\FSM_onehot_state[13]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(in5),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(bias_saved),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA8AAA8)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state[9]_i_5_n_0 ),
        .I2(\FSM_onehot_state[9]_i_4_n_0 ),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I5(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEBBEFFFFFFFFEBBE)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(\FSM_onehot_state[3]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [1]),
        .I2(ci[1]),
        .I3(ci[0]),
        .I4(in10[5]),
        .I5(\FSM_onehot_state_reg[9]_0 [5]),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9666666666666666)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(\FSM_onehot_state_reg[9]_0 [4]),
        .I1(ci[4]),
        .I2(ci[3]),
        .I3(ci[1]),
        .I4(ci[0]),
        .I5(ci[2]),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\k_idx_reg_n_0_[3] ),
        .I1(\k_idx_reg_n_0_[0] ),
        .I2(\k_idx_reg_n_0_[1] ),
        .I3(\k_idx_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_state_reg[4]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\k_idx_reg_n_0_[3] ),
        .I2(\k_idx_reg_n_0_[2] ),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFCCCCECC)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(conv_done),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .I2(pool_start_reg[0]),
        .I3(pool_start_reg_0),
        .I4(pool_start_reg[1]),
        .O(done_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000082)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg[9]_0 [5]),
        .I2(in10[5]),
        .I3(\FSM_onehot_state[9]_i_3_n_0 ),
        .I4(\FSM_onehot_state[9]_i_4_n_0 ),
        .I5(\FSM_onehot_state[9]_i_5_n_0 ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(ci[3]),
        .I1(ci[1]),
        .I2(ci[0]),
        .I3(ci[2]),
        .I4(ci[4]),
        .I5(ci[5]),
        .O(in10[5]));
  LUT5 #(
    .INIT(32'h96FFFF96)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(ci[0]),
        .I1(ci[1]),
        .I2(\FSM_onehot_state_reg[9]_0 [1]),
        .I3(in10[4]),
        .I4(\FSM_onehot_state_reg[9]_0 [4]),
        .O(\FSM_onehot_state[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEABFBFEA)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(\FSM_onehot_state[9]_i_7_n_0 ),
        .I1(ci[0]),
        .I2(ci[1]),
        .I3(ci[2]),
        .I4(\FSM_onehot_state_reg[9]_0 [2]),
        .O(\FSM_onehot_state[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF66F9FF6)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(ci[7]),
        .I1(\FSM_onehot_state_reg[9]_0 [7]),
        .I2(\ci[7]_i_3_n_0 ),
        .I3(ci[6]),
        .I4(\FSM_onehot_state_reg[9]_0 [6]),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \FSM_onehot_state[9]_i_6 
       (.I0(ci[2]),
        .I1(ci[0]),
        .I2(ci[1]),
        .I3(ci[3]),
        .I4(ci[4]),
        .O(in10[4]));
  LUT6 #(
    .INIT(64'hE5A5BFFFBFFFE5A5)) 
    \FSM_onehot_state[9]_i_7 
       (.I0(\FSM_onehot_state_reg[9]_0 [0]),
        .I1(ci[1]),
        .I2(ci[0]),
        .I3(ci[2]),
        .I4(ci[3]),
        .I5(\FSM_onehot_state_reg[9]_0 [3]),
        .O(\FSM_onehot_state[9]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[13] ),
        .PRE(done_reg_1),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ));
  CARRY4 \FSM_onehot_state_reg[12]_i_2 
       (.CI(\FSM_onehot_state_reg[12]_i_3_n_0 ),
        .CO({\NLW_FSM_onehot_state_reg[12]_i_2_CO_UNCONNECTED [3:1],\FSM_onehot_state_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[12]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\FSM_onehot_state[12]_i_4_n_0 }));
  CARRY4 \FSM_onehot_state_reg[12]_i_3 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[12]_i_3_n_0 ,\FSM_onehot_state_reg[12]_i_3_n_1 ,\FSM_onehot_state_reg[12]_i_3_n_2 ,\FSM_onehot_state_reg[12]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[12]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[12]_i_5_n_0 ,\FSM_onehot_state[12]_i_6_n_0 ,\FSM_onehot_state[12]_i_7_n_0 ,\FSM_onehot_state[12]_i_8_n_0 }));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state[13]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state[1]_i_1__2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(bias_saved));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg[4]_0 ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "S_WAIT_P:00000000010000,S_REQ_PATCH:00000000001000,S_WAIT_B:00000000000100,S_DONE:10000000000000,S_NEXT_CO:01000000000000,S_NEXT_POS:00100000000000,S_NEXT_CI:00000100000000,S_LOAD_B:00000000000010,S_IDLE:00000000000001,S_MAC:00000010000000,S_OUTPUT:00010000000000,S_WAIT_W:00000001000000,S_RELU:00001000000000,S_LOAD_W:00000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[13]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[0]),
        .O(\acc[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[10]),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[10]),
        .I4(\bias_saved_reg[31]_0 [3]),
        .I5(bias_saved),
        .O(\acc[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[11]),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[11]),
        .I4(\bias_saved_reg[31]_0 [4]),
        .I5(bias_saved),
        .O(\acc[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_3 
       (.I0(acc[11]),
        .I1(\acc_reg[15]_0 [3]),
        .O(\acc[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_4 
       (.I0(acc[10]),
        .I1(\acc_reg[15]_0 [2]),
        .O(\acc[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_5 
       (.I0(acc[9]),
        .I1(\acc_reg[15]_0 [1]),
        .O(\acc[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_6 
       (.I0(acc[8]),
        .I1(\acc_reg[15]_0 [0]),
        .O(\acc[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[12]),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[12]),
        .I4(\bias_saved_reg[31]_0 [5]),
        .I5(bias_saved),
        .O(\acc[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[13]),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[13]),
        .I4(\bias_saved_reg[31]_0 [6]),
        .I5(bias_saved),
        .O(\acc[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[14]_i_1 
       (.I0(acc0[14]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[15]_i_1 
       (.I0(acc0[15]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[15]_i_10 
       (.I0(mem_reg_7[2]),
        .I1(\acc_reg[15]_i_3 [1]),
        .O(\acc_reg[15]_i_26 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[15]_i_11 
       (.I0(mem_reg_7[1]),
        .I1(\acc_reg[15]_i_3 [0]),
        .O(\acc_reg[15]_i_26 [0]));
  LUT5 #(
    .INIT(32'h738CC0C0)) 
    \acc[15]_i_35 
       (.I0(patch_reg__0[5]),
        .I1(patch_reg__0[6]),
        .I2(DOBDO[7]),
        .I3(patch_reg__0[7]),
        .I4(DOBDO[6]),
        .O(\acc[15]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \acc[15]_i_36 
       (.I0(patch_reg__0[4]),
        .I1(patch_reg__0[5]),
        .I2(DOBDO[7]),
        .I3(patch_reg__0[6]),
        .I4(DOBDO[6]),
        .O(\acc[15]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \acc[15]_i_37 
       (.I0(patch_reg__0[3]),
        .I1(patch_reg__0[4]),
        .I2(DOBDO[7]),
        .I3(patch_reg__0[5]),
        .I4(DOBDO[6]),
        .O(\acc[15]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \acc[15]_i_38 
       (.I0(patch_reg__0[2]),
        .I1(patch_reg__0[3]),
        .I2(DOBDO[7]),
        .I3(patch_reg__0[4]),
        .I4(DOBDO[6]),
        .O(\acc[15]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \acc[15]_i_39 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\acc[15]_i_74_n_0 ),
        .I2(\acc[15]_i_75_n_0 ),
        .I3(\k_idx_reg_n_0_[3] ),
        .I4(\patch_reg_reg[8]_17 [6]),
        .O(patch_reg__0[6]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \acc[15]_i_40 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\acc[15]_i_76_n_0 ),
        .I2(\acc[15]_i_77_n_0 ),
        .I3(\k_idx_reg_n_0_[3] ),
        .I4(\patch_reg_reg[8]_17 [7]),
        .O(patch_reg__0[7]));
  LUT4 #(
    .INIT(16'h2F5F)) 
    \acc[15]_i_43 
       (.I0(patch_reg__0[6]),
        .I1(DOBDO[4]),
        .I2(DOBDO[5]),
        .I3(patch_reg__0[7]),
        .O(mem_reg_13));
  LUT4 #(
    .INIT(16'h2F5F)) 
    \acc[15]_i_47 
       (.I0(patch_reg__0[6]),
        .I1(DOBDO[1]),
        .I2(DOBDO[2]),
        .I3(patch_reg__0[7]),
        .O(mem_reg_12));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[15]_i_5 
       (.I0(acc[14]),
        .I1(\acc_reg[15]_0 [6]),
        .O(\acc[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_57 
       (.I0(patch_reg__0[1]),
        .I1(DOBDO[7]),
        .O(\acc[15]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_59 
       (.I0(patch_reg__0[0]),
        .I1(DOBDO[7]),
        .O(\acc[15]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[15]_i_6 
       (.I0(acc[13]),
        .I1(\acc_reg[15]_0 [5]),
        .O(\acc[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h9F606060)) 
    \acc[15]_i_60 
       (.I0(patch_reg__0[1]),
        .I1(patch_reg__0[2]),
        .I2(DOBDO[7]),
        .I3(patch_reg__0[3]),
        .I4(DOBDO[6]),
        .O(\acc[15]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[15]_i_63 
       (.I0(patch_reg__0[0]),
        .I1(DOBDO[6]),
        .O(\acc[15]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[15]_i_7 
       (.I0(acc[12]),
        .I1(\acc_reg[15]_0 [4]),
        .O(\acc[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \acc[15]_i_72 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\acc[15]_i_86_n_0 ),
        .I2(\acc[15]_i_87_n_0 ),
        .I3(\k_idx_reg_n_0_[3] ),
        .I4(\patch_reg_reg[8]_17 [5]),
        .O(patch_reg__0[5]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \acc[15]_i_73 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\acc[15]_i_88_n_0 ),
        .I2(\acc[15]_i_89_n_0 ),
        .I3(\k_idx_reg_n_0_[3] ),
        .I4(\patch_reg_reg[8]_17 [4]),
        .O(patch_reg__0[4]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[15]_i_74 
       (.I0(\patch_reg_reg[1]_10 [6]),
        .I1(\patch_reg_reg[3]_12 [6]),
        .I2(\patch_reg_reg[0]_9 [6]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[2]_11 [6]),
        .O(\acc[15]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[15]_i_75 
       (.I0(\patch_reg_reg[5]_14 [6]),
        .I1(\patch_reg_reg[7]_16 [6]),
        .I2(\patch_reg_reg[4]_13 [6]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[6]_15 [6]),
        .O(\acc[15]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[15]_i_76 
       (.I0(\patch_reg_reg[1]_10 [7]),
        .I1(\patch_reg_reg[3]_12 [7]),
        .I2(\patch_reg_reg[0]_9 [7]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[2]_11 [7]),
        .O(\acc[15]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[15]_i_77 
       (.I0(\patch_reg_reg[5]_14 [7]),
        .I1(\patch_reg_reg[7]_16 [7]),
        .I2(\patch_reg_reg[4]_13 [7]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[6]_15 [7]),
        .O(\acc[15]_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_78 
       (.I0(patch_reg__0[5]),
        .I1(DOBDO[5]),
        .O(mem_reg));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_79 
       (.I0(patch_reg__0[4]),
        .I1(DOBDO[5]),
        .O(mem_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_80 
       (.I0(patch_reg__0[3]),
        .I1(DOBDO[5]),
        .O(mem_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_81 
       (.I0(patch_reg__0[2]),
        .I1(DOBDO[5]),
        .O(mem_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_82 
       (.I0(patch_reg__0[5]),
        .I1(DOBDO[2]),
        .O(mem_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_83 
       (.I0(patch_reg__0[4]),
        .I1(DOBDO[2]),
        .O(mem_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_84 
       (.I0(patch_reg__0[3]),
        .I1(DOBDO[2]),
        .O(mem_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[15]_i_85 
       (.I0(patch_reg__0[2]),
        .I1(DOBDO[2]),
        .O(mem_reg_6));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[15]_i_86 
       (.I0(\patch_reg_reg[1]_10 [5]),
        .I1(\patch_reg_reg[3]_12 [5]),
        .I2(\patch_reg_reg[0]_9 [5]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[2]_11 [5]),
        .O(\acc[15]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[15]_i_87 
       (.I0(\patch_reg_reg[5]_14 [5]),
        .I1(\patch_reg_reg[7]_16 [5]),
        .I2(\patch_reg_reg[4]_13 [5]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[6]_15 [5]),
        .O(\acc[15]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[15]_i_88 
       (.I0(\patch_reg_reg[1]_10 [4]),
        .I1(\patch_reg_reg[3]_12 [4]),
        .I2(\patch_reg_reg[0]_9 [4]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[2]_11 [4]),
        .O(\acc[15]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[15]_i_89 
       (.I0(\patch_reg_reg[5]_14 [4]),
        .I1(\patch_reg_reg[7]_16 [4]),
        .I2(\patch_reg_reg[4]_13 [4]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[6]_15 [4]),
        .O(\acc[15]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[16]_i_1 
       (.I0(acc0[16]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[17]_i_1 
       (.I0(acc0[17]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[18]_i_1 
       (.I0(acc0[18]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[19]_i_1 
       (.I0(acc0[19]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[19]_i_4 
       (.I0(acc[18]),
        .I1(acc[19]),
        .O(\acc[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[19]_i_5 
       (.I0(acc[17]),
        .I1(acc[18]),
        .O(\acc[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[19]_i_6 
       (.I0(\acc_reg[16]_0 [1]),
        .I1(acc[17]),
        .O(\acc[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[1]),
        .O(\acc[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[20]_i_1 
       (.I0(acc0[20]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[21]_i_1 
       (.I0(acc0[21]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[22]_i_1 
       (.I0(acc0[22]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[23]_i_1 
       (.I0(acc0[23]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[23]_i_3 
       (.I0(acc[22]),
        .I1(acc[23]),
        .O(\acc[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[23]_i_4 
       (.I0(acc[21]),
        .I1(acc[22]),
        .O(\acc[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[23]_i_5 
       (.I0(acc[20]),
        .I1(acc[21]),
        .O(\acc[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[23]_i_6 
       (.I0(acc[19]),
        .I1(acc[20]),
        .O(\acc[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[24]_i_1 
       (.I0(acc0[24]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[25]_i_1 
       (.I0(acc0[25]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[26]_i_1 
       (.I0(acc0[26]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[27]_i_1 
       (.I0(acc0[27]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[27]_i_3 
       (.I0(acc[26]),
        .I1(acc[27]),
        .O(\acc[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[27]_i_4 
       (.I0(acc[25]),
        .I1(acc[26]),
        .O(\acc[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[27]_i_5 
       (.I0(acc[24]),
        .I1(acc[25]),
        .O(\acc[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[27]_i_6 
       (.I0(acc[23]),
        .I1(acc[24]),
        .O(\acc[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[28]_i_1 
       (.I0(acc0[28]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[29]_i_1 
       (.I0(acc0[29]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[2]),
        .O(\acc[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[30]_i_1 
       (.I0(acc0[30]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \acc[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(bias_saved),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\acc[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[31]_i_2 
       (.I0(acc0[31]),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[31]),
        .I4(bias_saved),
        .I5(\bias_saved_reg[31]_0 [7]),
        .O(\acc[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[31]_i_4 
       (.I0(acc[31]),
        .I1(acc[30]),
        .O(\acc[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[31]_i_5 
       (.I0(acc[29]),
        .I1(acc[30]),
        .O(\acc[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[31]_i_6 
       (.I0(acc[28]),
        .I1(acc[29]),
        .O(\acc[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[31]_i_7 
       (.I0(acc[27]),
        .I1(acc[28]),
        .O(\acc[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[3]),
        .O(\acc[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_11 
       (.I0(patch_reg__0[1]),
        .I1(DOBDO[3]),
        .O(\acc[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9699CC3399993333)) 
    \acc[3]_i_12 
       (.I0(patch_reg__0[2]),
        .I1(\acc[3]_i_27_n_0 ),
        .I2(patch_reg__0[0]),
        .I3(DOBDO[5]),
        .I4(DOBDO[4]),
        .I5(patch_reg__0[1]),
        .O(\acc[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[3]_i_13 
       (.I0(patch_reg__0[0]),
        .I1(DOBDO[5]),
        .I2(patch_reg__0[1]),
        .I3(DOBDO[4]),
        .I4(DOBDO[3]),
        .I5(patch_reg__0[2]),
        .O(\acc[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_15 
       (.I0(patch_reg__0[0]),
        .I1(DOBDO[3]),
        .O(\acc[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_18 
       (.I0(patch_reg__0[1]),
        .I1(DOBDO[0]),
        .O(\acc[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9699CC3399993333)) 
    \acc[3]_i_19 
       (.I0(patch_reg__0[2]),
        .I1(\acc[3]_i_28_n_0 ),
        .I2(patch_reg__0[0]),
        .I3(DOBDO[2]),
        .I4(DOBDO[1]),
        .I5(patch_reg__0[1]),
        .O(\acc[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[3]_i_20 
       (.I0(patch_reg__0[0]),
        .I1(DOBDO[2]),
        .I2(patch_reg__0[1]),
        .I3(DOBDO[1]),
        .I4(DOBDO[0]),
        .I5(patch_reg__0[2]),
        .O(\acc[3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_22 
       (.I0(patch_reg__0[0]),
        .I1(DOBDO[0]),
        .O(\acc[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \acc[3]_i_23 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\acc[3]_i_29_n_0 ),
        .I2(\acc[3]_i_30_n_0 ),
        .I3(\k_idx_reg_n_0_[3] ),
        .I4(\patch_reg_reg[8]_17 [3]),
        .O(patch_reg__0[3]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \acc[3]_i_24 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\acc[3]_i_31_n_0 ),
        .I2(\acc[3]_i_32_n_0 ),
        .I3(\k_idx_reg_n_0_[3] ),
        .I4(\patch_reg_reg[8]_17 [1]),
        .O(patch_reg__0[1]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \acc[3]_i_25 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\acc[3]_i_33_n_0 ),
        .I2(\acc[3]_i_34_n_0 ),
        .I3(\k_idx_reg_n_0_[3] ),
        .I4(\patch_reg_reg[8]_17 [2]),
        .O(patch_reg__0[2]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \acc[3]_i_26 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\acc[3]_i_35_n_0 ),
        .I2(\acc[3]_i_36_n_0 ),
        .I3(\k_idx_reg_n_0_[3] ),
        .I4(\patch_reg_reg[8]_17 [0]),
        .O(patch_reg__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[3]_i_27 
       (.I0(patch_reg__0[3]),
        .I1(DOBDO[3]),
        .O(\acc[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \acc[3]_i_28 
       (.I0(patch_reg__0[3]),
        .I1(DOBDO[0]),
        .O(\acc[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[3]_i_29 
       (.I0(\patch_reg_reg[1]_10 [3]),
        .I1(\patch_reg_reg[3]_12 [3]),
        .I2(\patch_reg_reg[0]_9 [3]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[2]_11 [3]),
        .O(\acc[3]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \acc[3]_i_3 
       (.I0(acc[3]),
        .I1(\acc_reg[3]_i_7_n_7 ),
        .I2(\acc_reg[3]_i_8_n_4 ),
        .O(\acc[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[3]_i_30 
       (.I0(\patch_reg_reg[5]_14 [3]),
        .I1(\patch_reg_reg[7]_16 [3]),
        .I2(\patch_reg_reg[4]_13 [3]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[6]_15 [3]),
        .O(\acc[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[3]_i_31 
       (.I0(\patch_reg_reg[1]_10 [1]),
        .I1(\patch_reg_reg[3]_12 [1]),
        .I2(\patch_reg_reg[0]_9 [1]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[2]_11 [1]),
        .O(\acc[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[3]_i_32 
       (.I0(\patch_reg_reg[5]_14 [1]),
        .I1(\patch_reg_reg[7]_16 [1]),
        .I2(\patch_reg_reg[4]_13 [1]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[6]_15 [1]),
        .O(\acc[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[3]_i_33 
       (.I0(\patch_reg_reg[1]_10 [2]),
        .I1(\patch_reg_reg[3]_12 [2]),
        .I2(\patch_reg_reg[0]_9 [2]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[2]_11 [2]),
        .O(\acc[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[3]_i_34 
       (.I0(\patch_reg_reg[5]_14 [2]),
        .I1(\patch_reg_reg[7]_16 [2]),
        .I2(\patch_reg_reg[4]_13 [2]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[6]_15 [2]),
        .O(\acc[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[3]_i_35 
       (.I0(\patch_reg_reg[1]_10 [0]),
        .I1(\patch_reg_reg[3]_12 [0]),
        .I2(\patch_reg_reg[0]_9 [0]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[2]_11 [0]),
        .O(\acc[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \acc[3]_i_36 
       (.I0(\patch_reg_reg[5]_14 [0]),
        .I1(\patch_reg_reg[7]_16 [0]),
        .I2(\patch_reg_reg[4]_13 [0]),
        .I3(\k_idx_reg_n_0_[1] ),
        .I4(\k_idx_reg_n_0_[0] ),
        .I5(\patch_reg_reg[6]_15 [0]),
        .O(\acc[3]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_4 
       (.I0(acc[2]),
        .I1(acc1[2]),
        .O(\acc[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_5 
       (.I0(acc[1]),
        .I1(acc1[1]),
        .O(\acc[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_6 
       (.I0(acc[0]),
        .I1(acc1[0]),
        .O(\acc[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[4]),
        .O(\acc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[5]),
        .O(\acc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[6]),
        .O(\acc[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[7]),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[7]),
        .I4(\bias_saved_reg[31]_0 [0]),
        .I5(bias_saved),
        .O(\acc[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[7]_i_10 
       (.I0(\acc_reg[3]_i_7_n_6 ),
        .I1(\acc_reg[7]_i_7_0 [0]),
        .O(\acc[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[7]_i_11 
       (.I0(\acc_reg[3]_i_7_n_7 ),
        .I1(\acc_reg[3]_i_8_n_4 ),
        .O(\acc[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_13 
       (.I0(\acc_reg[7]_i_7_0 [2]),
        .I1(\acc_reg[15]_i_29_n_7 ),
        .I2(\acc_reg[3]_i_7_n_4 ),
        .I3(\acc[7]_i_9_n_0 ),
        .O(\acc[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \acc[7]_i_14 
       (.I0(\acc_reg[3]_i_7_n_5 ),
        .I1(\acc_reg[7]_i_7_0 [1]),
        .I2(\acc_reg[7]_i_7_0 [0]),
        .I3(\acc_reg[3]_i_7_n_6 ),
        .O(\acc[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \acc[7]_i_15 
       (.I0(\acc_reg[3]_i_8_n_4 ),
        .I1(\acc_reg[3]_i_7_n_7 ),
        .I2(\acc_reg[3]_i_7_n_6 ),
        .I3(\acc_reg[7]_i_7_0 [0]),
        .O(\acc[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_3 
       (.I0(acc[7]),
        .I1(acc1[7]),
        .O(\acc[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_4 
       (.I0(acc[6]),
        .I1(acc1[6]),
        .O(\acc[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_5 
       (.I0(acc[5]),
        .I1(acc1[5]),
        .O(\acc[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_6 
       (.I0(acc[4]),
        .I1(acc1[4]),
        .O(\acc[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_8 
       (.I0(\acc_reg[7]_i_7_0 [2]),
        .I1(\acc_reg[15]_i_29_n_7 ),
        .I2(\acc_reg[3]_i_7_n_4 ),
        .O(\acc_reg[3]_i_7_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[7]_i_9 
       (.I0(\acc_reg[3]_i_7_n_5 ),
        .I1(\acc_reg[7]_i_7_0 [1]),
        .O(\acc[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[8]),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[8]),
        .I4(\bias_saved_reg[31]_0 [1]),
        .I5(bias_saved),
        .O(\acc[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \acc[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(acc0[9]),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(bias_saved__0[9]),
        .I4(\bias_saved_reg[31]_0 [2]),
        .I5(bias_saved),
        .O(\acc[9]_i_1_n_0 ));
  FDCE \acc_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[0]_i_1_n_0 ),
        .Q(acc[0]));
  FDCE \acc_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[10]_i_1_n_0 ),
        .Q(acc[10]));
  FDCE \acc_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[11]_i_1_n_0 ),
        .Q(acc[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[11]_i_2 
       (.CI(\acc_reg[7]_i_2_n_0 ),
        .CO({\acc_reg[11]_i_2_n_0 ,\acc_reg[11]_i_2_n_1 ,\acc_reg[11]_i_2_n_2 ,\acc_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(acc[11:8]),
        .O(acc0[11:8]),
        .S({\acc[11]_i_3_n_0 ,\acc[11]_i_4_n_0 ,\acc[11]_i_5_n_0 ,\acc[11]_i_6_n_0 }));
  FDCE \acc_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[12]_i_1_n_0 ),
        .Q(acc[12]));
  FDCE \acc_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[13]_i_1_n_0 ),
        .Q(acc[13]));
  FDCE \acc_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[14]_i_1_n_0 ),
        .Q(acc[14]));
  FDCE \acc_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[15]_i_1_n_0 ),
        .Q(\acc_reg[16]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[15]_i_2 
       (.CI(\acc_reg[11]_i_2_n_0 ),
        .CO({\acc_reg[15]_i_2_n_0 ,\acc_reg[15]_i_2_n_1 ,\acc_reg[15]_i_2_n_2 ,\acc_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg[15]_0 [7],acc[14:12]}),
        .O(acc0[15:12]),
        .S({\acc_reg[15]_1 ,\acc[15]_i_5_n_0 ,\acc[15]_i_6_n_0 ,\acc[15]_i_7_n_0 }));
  CARRY4 \acc_reg[15]_i_23 
       (.CI(\acc_reg[15]_i_29_n_0 ),
        .CO({mem_reg_11,\acc_reg[15]_i_23_n_1 ,\acc_reg[15]_i_23_n_2 ,\acc_reg[15]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI(\acc[15]_i_15 ),
        .O(mem_reg_7),
        .S({\acc[15]_i_35_n_0 ,\acc[15]_i_36_n_0 ,\acc[15]_i_37_n_0 ,\acc[15]_i_38_n_0 }));
  CARRY4 \acc_reg[15]_i_29 
       (.CI(1'b0),
        .CO({\acc_reg[15]_i_29_n_0 ,\acc_reg[15]_i_29_n_1 ,\acc_reg[15]_i_29_n_2 ,\acc_reg[15]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[15]_i_57_n_0 ,\acc[7]_i_8_0 ,\acc[15]_i_59_n_0 ,1'b0}),
        .O({mem_reg_10,\acc_reg[15]_i_29_n_7 }),
        .S({\acc[15]_i_60_n_0 ,\acc[7]_i_8_1 ,\acc[15]_i_63_n_0 }));
  FDCE \acc_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[16]_i_1_n_0 ),
        .Q(\acc_reg[16]_0 [1]));
  FDCE \acc_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[17]_i_1_n_0 ),
        .Q(acc[17]));
  FDCE \acc_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[18]_i_1_n_0 ),
        .Q(acc[18]));
  FDCE \acc_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[19]_i_1_n_0 ),
        .Q(acc[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[19]_i_2 
       (.CI(\acc_reg[15]_i_2_n_0 ),
        .CO({\acc_reg[19]_i_2_n_0 ,\acc_reg[19]_i_2_n_1 ,\acc_reg[19]_i_2_n_2 ,\acc_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({acc[18:17],\acc_reg[16]_0 [1],\acc_reg[19]_0 }),
        .O(acc0[19:16]),
        .S({\acc[19]_i_4_n_0 ,\acc[19]_i_5_n_0 ,\acc[19]_i_6_n_0 ,\acc_reg[19]_1 }));
  FDCE \acc_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[1]_i_1_n_0 ),
        .Q(acc[1]));
  FDCE \acc_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[20]_i_1_n_0 ),
        .Q(acc[20]));
  FDCE \acc_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[21]_i_1_n_0 ),
        .Q(acc[21]));
  FDCE \acc_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[22]_i_1_n_0 ),
        .Q(acc[22]));
  FDCE \acc_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[23]_i_1_n_0 ),
        .Q(acc[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[23]_i_2 
       (.CI(\acc_reg[19]_i_2_n_0 ),
        .CO({\acc_reg[23]_i_2_n_0 ,\acc_reg[23]_i_2_n_1 ,\acc_reg[23]_i_2_n_2 ,\acc_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(acc[22:19]),
        .O(acc0[23:20]),
        .S({\acc[23]_i_3_n_0 ,\acc[23]_i_4_n_0 ,\acc[23]_i_5_n_0 ,\acc[23]_i_6_n_0 }));
  FDCE \acc_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[24]_i_1_n_0 ),
        .Q(acc[24]));
  FDCE \acc_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[25]_i_1_n_0 ),
        .Q(acc[25]));
  FDCE \acc_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[26]_i_1_n_0 ),
        .Q(acc[26]));
  FDCE \acc_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[27]_i_1_n_0 ),
        .Q(acc[27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[27]_i_2 
       (.CI(\acc_reg[23]_i_2_n_0 ),
        .CO({\acc_reg[27]_i_2_n_0 ,\acc_reg[27]_i_2_n_1 ,\acc_reg[27]_i_2_n_2 ,\acc_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(acc[26:23]),
        .O(acc0[27:24]),
        .S({\acc[27]_i_3_n_0 ,\acc[27]_i_4_n_0 ,\acc[27]_i_5_n_0 ,\acc[27]_i_6_n_0 }));
  FDCE \acc_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[28]_i_1_n_0 ),
        .Q(acc[28]));
  FDCE \acc_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[29]_i_1_n_0 ),
        .Q(acc[29]));
  FDCE \acc_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[2]_i_1_n_0 ),
        .Q(acc[2]));
  FDCE \acc_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[30]_i_1_n_0 ),
        .Q(acc[30]));
  FDCE \acc_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[31]_i_2_n_0 ),
        .Q(acc[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[31]_i_3 
       (.CI(\acc_reg[27]_i_2_n_0 ),
        .CO({\NLW_acc_reg[31]_i_3_CO_UNCONNECTED [3],\acc_reg[31]_i_3_n_1 ,\acc_reg[31]_i_3_n_2 ,\acc_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,acc[29:27]}),
        .O(acc0[31:28]),
        .S({\acc[31]_i_4_n_0 ,\acc[31]_i_5_n_0 ,\acc[31]_i_6_n_0 ,\acc[31]_i_7_n_0 }));
  FDCE \acc_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[3]_i_1_n_0 ),
        .Q(acc[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\acc_reg[3]_i_2_n_0 ,\acc_reg[3]_i_2_n_1 ,\acc_reg[3]_i_2_n_2 ,\acc_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(acc[3:0]),
        .O(acc0[3:0]),
        .S({\acc[3]_i_3_n_0 ,\acc[3]_i_4_n_0 ,\acc[3]_i_5_n_0 ,\acc[3]_i_6_n_0 }));
  CARRY4 \acc_reg[3]_i_7 
       (.CI(1'b0),
        .CO({mem_reg_9,\acc_reg[3]_i_7_n_1 ,\acc_reg[3]_i_7_n_2 ,\acc_reg[3]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[7]_i_15_1 ,\acc[3]_i_11_n_0 ,1'b0}),
        .O({\acc_reg[3]_i_7_n_4 ,\acc_reg[3]_i_7_n_5 ,\acc_reg[3]_i_7_n_6 ,\acc_reg[3]_i_7_n_7 }),
        .S({\acc[3]_i_12_n_0 ,\acc[3]_i_13_n_0 ,\acc[7]_i_15_2 ,\acc[3]_i_15_n_0 }));
  CARRY4 \acc_reg[3]_i_8 
       (.CI(1'b0),
        .CO({mem_reg_8,\acc_reg[3]_i_8_n_1 ,\acc_reg[3]_i_8_n_2 ,\acc_reg[3]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[3]_i_6_0 ,\acc[3]_i_18_n_0 ,1'b0}),
        .O({\acc_reg[3]_i_8_n_4 ,acc1[2:0]}),
        .S({\acc[3]_i_19_n_0 ,\acc[3]_i_20_n_0 ,\acc[3]_i_6_1 ,\acc[3]_i_22_n_0 }));
  FDCE \acc_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[4]_i_1_n_0 ),
        .Q(acc[4]));
  FDCE \acc_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[5]_i_1_n_0 ),
        .Q(acc[5]));
  FDCE \acc_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[6]_i_1_n_0 ),
        .Q(acc[6]));
  FDCE \acc_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[7]_i_1_n_0 ),
        .Q(acc[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[7]_i_2 
       (.CI(\acc_reg[3]_i_2_n_0 ),
        .CO({\acc_reg[7]_i_2_n_0 ,\acc_reg[7]_i_2_n_1 ,\acc_reg[7]_i_2_n_2 ,\acc_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(acc[7:4]),
        .O(acc0[7:4]),
        .S({\acc[7]_i_3_n_0 ,\acc[7]_i_4_n_0 ,\acc[7]_i_5_n_0 ,\acc[7]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[7]_i_7 
       (.CI(1'b0),
        .CO({\acc[7]_i_15_0 ,\acc_reg[7]_i_7_n_1 ,\acc_reg[7]_i_7_n_2 ,\acc_reg[7]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg[3]_i_7_0 ,\acc[7]_i_9_n_0 ,\acc[7]_i_10_n_0 ,\acc[7]_i_11_n_0 }),
        .O(acc1[7:4]),
        .S({\acc[7]_i_6_0 ,\acc[7]_i_13_n_0 ,\acc[7]_i_14_n_0 ,\acc[7]_i_15_n_0 }));
  FDCE \acc_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[8]_i_1_n_0 ),
        .Q(acc[8]));
  FDCE \acc_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\acc[31]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\acc[9]_i_1_n_0 ),
        .Q(acc[9]));
  FDCE \bias_saved_reg[10] 
       (.C(s00_axi_aclk),
        .CE(bias_saved),
        .CLR(done_reg_1),
        .D(\bias_saved_reg[31]_0 [3]),
        .Q(bias_saved__0[10]));
  FDCE \bias_saved_reg[11] 
       (.C(s00_axi_aclk),
        .CE(bias_saved),
        .CLR(done_reg_1),
        .D(\bias_saved_reg[31]_0 [4]),
        .Q(bias_saved__0[11]));
  FDCE \bias_saved_reg[12] 
       (.C(s00_axi_aclk),
        .CE(bias_saved),
        .CLR(done_reg_1),
        .D(\bias_saved_reg[31]_0 [5]),
        .Q(bias_saved__0[12]));
  FDCE \bias_saved_reg[13] 
       (.C(s00_axi_aclk),
        .CE(bias_saved),
        .CLR(done_reg_1),
        .D(\bias_saved_reg[31]_0 [6]),
        .Q(bias_saved__0[13]));
  FDCE \bias_saved_reg[31] 
       (.C(s00_axi_aclk),
        .CE(bias_saved),
        .CLR(done_reg_1),
        .D(\bias_saved_reg[31]_0 [7]),
        .Q(bias_saved__0[31]));
  FDCE \bias_saved_reg[7] 
       (.C(s00_axi_aclk),
        .CE(bias_saved),
        .CLR(done_reg_1),
        .D(\bias_saved_reg[31]_0 [0]),
        .Q(bias_saved__0[7]));
  FDCE \bias_saved_reg[8] 
       (.C(s00_axi_aclk),
        .CE(bias_saved),
        .CLR(done_reg_1),
        .D(\bias_saved_reg[31]_0 [1]),
        .Q(bias_saved__0[8]));
  FDCE \bias_saved_reg[9] 
       (.C(s00_axi_aclk),
        .CE(bias_saved),
        .CLR(done_reg_1),
        .D(\bias_saved_reg[31]_0 [2]),
        .Q(bias_saved__0[9]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[0]_i_1 
       (.I0(\u_patch/bram_addr0 [0]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[10]_i_1 
       (.I0(\u_patch/bram_addr0 [10]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[11]_i_1 
       (.I0(\u_patch/bram_addr0 [11]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram_addr[11]_i_10 
       (.I0(P[7]),
        .I1(\bram_addr_reg[11]_i_11_n_7 ),
        .I2(\bram_addr_reg[11]_i_11_n_6 ),
        .I3(P[8]),
        .O(\bram_addr[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bram_addr[11]_i_12 
       (.I0(\bram_addr_reg[14]_i_59_n_5 ),
        .I1(\bram_addr_reg[14]_i_25_n_4 ),
        .I2(Q[4]),
        .O(\bram_addr[11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF8808080)) 
    \bram_addr[11]_i_13 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_5_n_5 ),
        .I2(\bram_addr_reg[14]_i_59_n_6 ),
        .I3(Q[4]),
        .I4(\bram_addr_reg[14]_i_25_n_5 ),
        .O(\bram_addr[11]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF8808080)) 
    \bram_addr[11]_i_14 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_5_n_6 ),
        .I2(\bram_addr_reg[14]_i_59_n_7 ),
        .I3(Q[4]),
        .I4(\bram_addr_reg[14]_i_25_n_6 ),
        .O(\bram_addr[11]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h87787878)) 
    \bram_addr[11]_i_15 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_5_n_6 ),
        .I2(\bram_addr_reg[14]_i_59_n_7 ),
        .I3(\bram_addr_reg[14]_i_25_n_6 ),
        .I4(Q[4]),
        .O(\bram_addr[11]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    \bram_addr[11]_i_16 
       (.I0(\bram_addr_reg[14]_i_59_n_5 ),
        .I1(\bram_addr_reg[14]_i_25_n_4 ),
        .I2(\bram_addr_reg[14]_i_59_n_4 ),
        .I3(\bram_addr_reg[14]_i_5_n_7 ),
        .I4(Q[4]),
        .O(\bram_addr[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718EF30CF30C)) 
    \bram_addr[11]_i_17 
       (.I0(\bram_addr_reg[14]_i_25_n_5 ),
        .I1(\bram_addr_reg[14]_i_59_n_6 ),
        .I2(\bram_addr[11]_i_20_n_0 ),
        .I3(\bram_addr_reg[14]_i_59_n_5 ),
        .I4(\bram_addr_reg[14]_i_25_n_4 ),
        .I5(Q[4]),
        .O(\bram_addr[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \bram_addr[11]_i_18 
       (.I0(\bram_addr[11]_i_14_n_0 ),
        .I1(Q[0]),
        .I2(\bram_addr_reg[14]_i_5_n_5 ),
        .I3(\bram_addr_reg[14]_i_59_n_6 ),
        .I4(\bram_addr_reg[14]_i_25_n_5 ),
        .I5(Q[4]),
        .O(\bram_addr[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9669C3C36969C3C3)) 
    \bram_addr[11]_i_19 
       (.I0(\bram_addr_reg[14]_i_5_n_6 ),
        .I1(\bram_addr_reg[14]_i_59_n_7 ),
        .I2(\bram_addr[11]_i_21_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_7 ),
        .I4(Q[0]),
        .I5(\bram_addr_reg[7]_i_13_n_4 ),
        .O(\bram_addr[11]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr[11]_i_20 
       (.I0(\bram_addr_reg[14]_i_5_n_5 ),
        .I1(Q[0]),
        .O(\bram_addr[11]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr[11]_i_21 
       (.I0(\bram_addr_reg[14]_i_25_n_6 ),
        .I1(Q[4]),
        .O(\bram_addr[11]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[11]_i_3 
       (.I0(\bram_addr_reg[11]_i_11_n_4 ),
        .I1(P[10]),
        .O(\bram_addr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[11]_i_4 
       (.I0(\bram_addr_reg[11]_i_11_n_5 ),
        .I1(P[9]),
        .O(\bram_addr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[11]_i_5 
       (.I0(\bram_addr_reg[11]_i_11_n_6 ),
        .I1(P[8]),
        .O(\bram_addr[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[11]_i_6 
       (.I0(\bram_addr_reg[11]_i_11_n_7 ),
        .I1(P[7]),
        .O(\bram_addr[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram_addr[11]_i_7 
       (.I0(P[10]),
        .I1(\bram_addr_reg[11]_i_11_n_4 ),
        .I2(\bram_addr_reg[14]_i_38_n_7 ),
        .I3(P[11]),
        .O(\bram_addr[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram_addr[11]_i_8 
       (.I0(P[9]),
        .I1(\bram_addr_reg[11]_i_11_n_5 ),
        .I2(\bram_addr_reg[11]_i_11_n_4 ),
        .I3(P[10]),
        .O(\bram_addr[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram_addr[11]_i_9 
       (.I0(P[8]),
        .I1(\bram_addr_reg[11]_i_11_n_6 ),
        .I2(\bram_addr_reg[11]_i_11_n_5 ),
        .I3(P[9]),
        .O(\bram_addr[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[12]_i_1 
       (.I0(\u_patch/bram_addr0 [12]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[13]_i_1 
       (.I0(\u_patch/bram_addr0 [13]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[14]_i_1 
       (.I0(\u_patch/bram_addr0 [14]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram_addr[14]_i_10 
       (.I0(P[12]),
        .I1(\bram_addr_reg[14]_i_38_n_6 ),
        .I2(\bram_addr_reg[14]_i_38_n_5 ),
        .I3(P[13]),
        .O(\bram_addr[14]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram_addr[14]_i_11 
       (.I0(P[11]),
        .I1(\bram_addr_reg[14]_i_38_n_7 ),
        .I2(\bram_addr_reg[14]_i_38_n_6 ),
        .I3(P[12]),
        .O(\bram_addr[14]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[14]_i_13 
       (.I0(conv_target_col[6]),
        .O(\bram_addr[14]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_14 
       (.I0(conv_target_col[5]),
        .I1(conv_target_col[6]),
        .O(\bram_addr[14]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_15 
       (.I0(conv_target_col[4]),
        .I1(conv_target_col[5]),
        .O(\bram_addr[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_16 
       (.I0(conv_target_col[3]),
        .I1(conv_target_col[4]),
        .O(\bram_addr[14]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bram_addr[14]_i_17 
       (.I0(Q[4]),
        .I1(\bram_addr_reg[14]_i_5_n_5 ),
        .I2(\bram_addr_reg[14]_i_5_n_4 ),
        .O(\bram_addr[14]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \bram_addr[14]_i_18 
       (.I0(\bram_addr_reg[14]_i_5_n_7 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\bram_addr_reg[14]_i_5_n_6 ),
        .O(\bram_addr[14]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \bram_addr[14]_i_19 
       (.I0(\bram_addr_reg[14]_i_25_n_5 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bram_addr_reg[14]_i_25_n_4 ),
        .O(\bram_addr[14]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr[14]_i_20 
       (.I0(\bram_addr_reg[14]_i_25_n_7 ),
        .I1(\bram_addr_reg[14]_i_25_n_6 ),
        .O(\bram_addr[14]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \bram_addr[14]_i_21 
       (.I0(\bram_addr_reg[14]_i_5_n_5 ),
        .I1(Q[4]),
        .I2(\bram_addr_reg[14]_i_5_n_4 ),
        .O(\bram_addr[14]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \bram_addr[14]_i_22 
       (.I0(\bram_addr_reg[14]_i_5_n_7 ),
        .I1(Q[2]),
        .I2(\bram_addr_reg[14]_i_5_n_6 ),
        .I3(Q[3]),
        .O(\bram_addr[14]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \bram_addr[14]_i_23 
       (.I0(\bram_addr_reg[14]_i_25_n_5 ),
        .I1(Q[0]),
        .I2(\bram_addr_reg[14]_i_25_n_4 ),
        .I3(Q[1]),
        .O(\bram_addr[14]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bram_addr[14]_i_24 
       (.I0(\bram_addr_reg[14]_i_25_n_7 ),
        .I1(\bram_addr_reg[14]_i_25_n_6 ),
        .O(\bram_addr[14]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[14]_i_26 
       (.I0(conv_target_row[6]),
        .O(\bram_addr[14]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_27 
       (.I0(conv_target_row[5]),
        .I1(conv_target_row[6]),
        .O(\bram_addr[14]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_28 
       (.I0(conv_target_row[4]),
        .I1(conv_target_row[5]),
        .O(\bram_addr[14]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_29 
       (.I0(conv_target_row[3]),
        .I1(conv_target_row[4]),
        .O(\bram_addr[14]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bram_addr[14]_i_30 
       (.I0(Q[4]),
        .I1(\bram_addr_reg[14]_i_3_n_5 ),
        .I2(\bram_addr_reg[14]_i_3_n_4 ),
        .O(\bram_addr[14]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \bram_addr[14]_i_31 
       (.I0(\bram_addr_reg[14]_i_3_n_7 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\bram_addr_reg[14]_i_3_n_6 ),
        .O(\bram_addr[14]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \bram_addr[14]_i_32 
       (.I0(\bram_addr_reg[14]_i_12_n_5 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bram_addr_reg[14]_i_12_n_4 ),
        .O(\bram_addr[14]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr[14]_i_33 
       (.I0(\bram_addr_reg[14]_i_12_n_7 ),
        .I1(\bram_addr_reg[14]_i_12_n_6 ),
        .O(\bram_addr[14]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \bram_addr[14]_i_34 
       (.I0(\bram_addr_reg[14]_i_3_n_5 ),
        .I1(Q[4]),
        .I2(\bram_addr_reg[14]_i_3_n_4 ),
        .O(\bram_addr[14]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \bram_addr[14]_i_35 
       (.I0(\bram_addr_reg[14]_i_3_n_7 ),
        .I1(Q[2]),
        .I2(\bram_addr_reg[14]_i_3_n_6 ),
        .I3(Q[3]),
        .O(\bram_addr[14]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \bram_addr[14]_i_36 
       (.I0(\bram_addr_reg[14]_i_12_n_5 ),
        .I1(Q[0]),
        .I2(\bram_addr_reg[14]_i_12_n_4 ),
        .I3(Q[1]),
        .O(\bram_addr[14]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bram_addr[14]_i_37 
       (.I0(\bram_addr_reg[14]_i_12_n_7 ),
        .I1(\bram_addr_reg[14]_i_12_n_6 ),
        .O(\bram_addr[14]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr[14]_i_40 
       (.I0(\target_col_reg[1]_0 [0]),
        .I1(\bram_addr_reg[14]_i_12_1 ),
        .O(\bram_addr[14]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_42 
       (.I0(conv_target_col[2]),
        .I1(conv_target_col[3]),
        .O(\bram_addr[14]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \bram_addr[14]_i_43 
       (.I0(\target_col_reg[1]_0 [1]),
        .I1(\bram_addr_reg[14]_i_12_0 ),
        .I2(conv_target_col[2]),
        .O(\bram_addr[14]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[14]_i_45 
       (.I0(\target_col_reg[1]_0 [0]),
        .I1(\bram_addr_reg[14]_i_12_1 ),
        .O(\bram_addr[14]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr[14]_i_47 
       (.I0(\target_row_reg[1]_0 [0]),
        .I1(ky__0[0]),
        .O(\bram_addr[14]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_49 
       (.I0(conv_target_row[2]),
        .I1(conv_target_row[3]),
        .O(\bram_addr[14]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \bram_addr[14]_i_50 
       (.I0(\target_row_reg[1]_0 [1]),
        .I1(ky__0[1]),
        .I2(conv_target_row[2]),
        .O(\bram_addr[14]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[14]_i_52 
       (.I0(\target_row_reg[1]_0 [0]),
        .I1(ky__0[0]),
        .O(\bram_addr[14]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bram_addr[14]_i_53 
       (.I0(\bram_addr_reg[14]_i_58_n_7 ),
        .I1(\bram_addr_reg[14]_i_5_n_6 ),
        .I2(Q[4]),
        .O(\bram_addr[14]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bram_addr[14]_i_54 
       (.I0(\bram_addr_reg[14]_i_59_n_4 ),
        .I1(\bram_addr_reg[14]_i_5_n_7 ),
        .I2(Q[4]),
        .O(\bram_addr[14]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bram_addr[14]_i_55 
       (.I0(\bram_addr_reg[14]_i_58_n_2 ),
        .I1(Q[4]),
        .I2(\bram_addr_reg[14]_i_5_n_5 ),
        .O(\bram_addr[14]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    \bram_addr[14]_i_56 
       (.I0(\bram_addr_reg[14]_i_58_n_7 ),
        .I1(\bram_addr_reg[14]_i_5_n_6 ),
        .I2(\bram_addr_reg[14]_i_58_n_2 ),
        .I3(\bram_addr_reg[14]_i_5_n_5 ),
        .I4(Q[4]),
        .O(\bram_addr[14]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    \bram_addr[14]_i_57 
       (.I0(\bram_addr_reg[14]_i_59_n_4 ),
        .I1(\bram_addr_reg[14]_i_5_n_7 ),
        .I2(\bram_addr_reg[14]_i_58_n_7 ),
        .I3(\bram_addr_reg[14]_i_5_n_6 ),
        .I4(Q[4]),
        .O(\bram_addr[14]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \bram_addr[14]_i_60 
       (.I0(Q[3]),
        .I1(\bram_addr_reg[14]_i_5_n_6 ),
        .I2(Q[2]),
        .I3(\bram_addr_reg[14]_i_5_n_5 ),
        .O(\bram_addr[14]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \bram_addr[14]_i_61 
       (.I0(Q[2]),
        .I1(\bram_addr_reg[14]_i_5_n_6 ),
        .I2(Q[3]),
        .I3(\bram_addr_reg[14]_i_5_n_5 ),
        .O(\bram_addr[14]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \bram_addr[14]_i_62 
       (.I0(Q[3]),
        .I1(\bram_addr_reg[14]_i_5_n_7 ),
        .I2(Q[2]),
        .I3(\bram_addr_reg[14]_i_5_n_6 ),
        .I4(Q[1]),
        .I5(\bram_addr_reg[14]_i_5_n_5 ),
        .O(\bram_addr[14]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \bram_addr[14]_i_63 
       (.I0(Q[3]),
        .I1(\bram_addr_reg[14]_i_25_n_4 ),
        .I2(Q[2]),
        .I3(\bram_addr_reg[14]_i_5_n_7 ),
        .I4(Q[1]),
        .I5(\bram_addr_reg[14]_i_5_n_6 ),
        .O(\bram_addr[14]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \bram_addr[14]_i_64 
       (.I0(Q[3]),
        .I1(\bram_addr_reg[14]_i_25_n_5 ),
        .I2(Q[2]),
        .I3(\bram_addr_reg[14]_i_25_n_4 ),
        .I4(Q[1]),
        .I5(\bram_addr_reg[14]_i_5_n_7 ),
        .O(\bram_addr[14]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \bram_addr[14]_i_65 
       (.I0(Q[3]),
        .I1(\bram_addr_reg[14]_i_25_n_6 ),
        .I2(Q[2]),
        .I3(\bram_addr_reg[14]_i_25_n_5 ),
        .I4(Q[1]),
        .I5(\bram_addr_reg[14]_i_25_n_4 ),
        .O(\bram_addr[14]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \bram_addr[14]_i_66 
       (.I0(Q[1]),
        .I1(\bram_addr_reg[14]_i_5_n_7 ),
        .I2(\bram_addr_reg[14]_i_5_n_6 ),
        .I3(Q[3]),
        .I4(\bram_addr_reg[14]_i_5_n_5 ),
        .I5(Q[2]),
        .O(\bram_addr[14]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \bram_addr[14]_i_67 
       (.I0(\bram_addr[14]_i_63_n_0 ),
        .I1(Q[2]),
        .I2(\bram_addr_reg[14]_i_5_n_6 ),
        .I3(\bram_addr[14]_i_70_n_0 ),
        .I4(\bram_addr_reg[14]_i_5_n_5 ),
        .I5(Q[1]),
        .O(\bram_addr[14]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \bram_addr[14]_i_68 
       (.I0(\bram_addr[14]_i_64_n_0 ),
        .I1(Q[2]),
        .I2(\bram_addr_reg[14]_i_5_n_7 ),
        .I3(\bram_addr[14]_i_71_n_0 ),
        .I4(\bram_addr_reg[14]_i_5_n_6 ),
        .I5(Q[1]),
        .O(\bram_addr[14]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \bram_addr[14]_i_69 
       (.I0(\bram_addr[14]_i_65_n_0 ),
        .I1(Q[2]),
        .I2(\bram_addr_reg[14]_i_25_n_4 ),
        .I3(\bram_addr[14]_i_72_n_0 ),
        .I4(\bram_addr_reg[14]_i_5_n_7 ),
        .I5(Q[1]),
        .O(\bram_addr[14]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[14]_i_7 
       (.I0(\bram_addr_reg[14]_i_38_n_6 ),
        .I1(P[12]),
        .O(\bram_addr[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr[14]_i_70 
       (.I0(\bram_addr_reg[14]_i_5_n_7 ),
        .I1(Q[3]),
        .O(\bram_addr[14]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr[14]_i_71 
       (.I0(\bram_addr_reg[14]_i_25_n_4 ),
        .I1(Q[3]),
        .O(\bram_addr[14]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr[14]_i_72 
       (.I0(\bram_addr_reg[14]_i_25_n_5 ),
        .I1(Q[3]),
        .O(\bram_addr[14]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[14]_i_8 
       (.I0(\bram_addr_reg[14]_i_38_n_7 ),
        .I1(P[11]),
        .O(\bram_addr[14]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \bram_addr[14]_i_9 
       (.I0(P[13]),
        .I1(\bram_addr_reg[14]_i_38_n_5 ),
        .I2(P[14]),
        .O(\bram_addr[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[1]_i_1 
       (.I0(\u_patch/bram_addr0 [1]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[2]_i_1 
       (.I0(\u_patch/bram_addr0 [2]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[3]_i_1 
       (.I0(\u_patch/bram_addr0 [3]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[3]));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \bram_addr[3]_i_3 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_25_n_7 ),
        .I2(\bram_addr_reg[14]_i_12_n_5 ),
        .I3(P[2]),
        .O(\bram_addr[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[3]_i_4 
       (.I0(\bram_addr_reg[14]_i_12_n_6 ),
        .I1(P[1]),
        .O(\bram_addr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[3]_i_5 
       (.I0(P[0]),
        .I1(\bram_addr_reg[14]_i_12_n_7 ),
        .O(\bram_addr[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \bram_addr[3]_i_6 
       (.I0(\bram_addr_reg[14]_i_12_n_4 ),
        .I1(\bram_addr_reg[7]_i_11_n_7 ),
        .I2(P[3]),
        .I3(\bram_addr[3]_i_3_n_0 ),
        .O(\bram_addr[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \bram_addr[3]_i_7 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_25_n_7 ),
        .I2(\bram_addr_reg[14]_i_12_n_5 ),
        .I3(P[2]),
        .I4(\bram_addr[3]_i_4_n_0 ),
        .O(\bram_addr[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \bram_addr[3]_i_8 
       (.I0(\bram_addr_reg[14]_i_12_n_6 ),
        .I1(P[1]),
        .I2(P[0]),
        .I3(\bram_addr_reg[14]_i_12_n_7 ),
        .O(\bram_addr[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[3]_i_9 
       (.I0(P[0]),
        .I1(\bram_addr_reg[14]_i_12_n_7 ),
        .O(\bram_addr[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[4]_i_1 
       (.I0(\u_patch/bram_addr0 [4]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[5]_i_1 
       (.I0(\u_patch/bram_addr0 [5]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[6]_i_1 
       (.I0(\u_patch/bram_addr0 [6]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[7]_i_1 
       (.I0(\u_patch/bram_addr0 [7]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[7]));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \bram_addr[7]_i_10 
       (.I0(\bram_addr_reg[14]_i_3_n_7 ),
        .I1(\bram_addr_reg[7]_i_11_n_6 ),
        .I2(P[4]),
        .I3(\bram_addr[7]_i_6_n_0 ),
        .O(\bram_addr[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \bram_addr[7]_i_12 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_5_n_7 ),
        .I2(\bram_addr_reg[7]_i_13_n_4 ),
        .O(\bram_addr[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \bram_addr[7]_i_14 
       (.I0(\bram_addr_reg[7]_i_13_n_4 ),
        .I1(\bram_addr_reg[14]_i_5_n_7 ),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(\bram_addr_reg[14]_i_25_n_7 ),
        .O(\bram_addr[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \bram_addr[7]_i_15 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_25_n_4 ),
        .I2(\bram_addr_reg[7]_i_13_n_5 ),
        .O(\bram_addr[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \bram_addr[7]_i_16 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_25_n_5 ),
        .I2(\bram_addr_reg[7]_i_13_n_6 ),
        .O(\bram_addr[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \bram_addr[7]_i_17 
       (.I0(Q[0]),
        .I1(\bram_addr_reg[14]_i_25_n_6 ),
        .I2(\bram_addr_reg[7]_i_13_n_7 ),
        .O(\bram_addr[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \bram_addr[7]_i_18 
       (.I0(Q[2]),
        .I1(\bram_addr_reg[14]_i_25_n_5 ),
        .I2(Q[3]),
        .I3(\bram_addr_reg[14]_i_25_n_6 ),
        .I4(\bram_addr_reg[14]_i_25_n_4 ),
        .I5(Q[1]),
        .O(\bram_addr[7]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \bram_addr[7]_i_19 
       (.I0(Q[2]),
        .I1(\bram_addr_reg[14]_i_25_n_6 ),
        .I2(Q[3]),
        .I3(\bram_addr_reg[14]_i_25_n_7 ),
        .O(\bram_addr[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[7]_i_20 
       (.I0(Q[1]),
        .I1(\bram_addr_reg[14]_i_25_n_6 ),
        .O(\bram_addr[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \bram_addr[7]_i_21 
       (.I0(\bram_addr_reg[14]_i_25_n_5 ),
        .I1(\bram_addr[7]_i_25_n_0 ),
        .I2(\bram_addr_reg[14]_i_25_n_6 ),
        .I3(Q[2]),
        .I4(\bram_addr_reg[14]_i_25_n_7 ),
        .I5(Q[3]),
        .O(\bram_addr[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \bram_addr[7]_i_22 
       (.I0(\bram_addr_reg[14]_i_25_n_7 ),
        .I1(Q[3]),
        .I2(\bram_addr_reg[14]_i_25_n_6 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\bram_addr_reg[14]_i_25_n_5 ),
        .O(\bram_addr[7]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \bram_addr[7]_i_23 
       (.I0(Q[1]),
        .I1(\bram_addr_reg[14]_i_25_n_6 ),
        .I2(Q[2]),
        .I3(\bram_addr_reg[14]_i_25_n_7 ),
        .O(\bram_addr[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[7]_i_24 
       (.I0(\bram_addr_reg[14]_i_25_n_7 ),
        .I1(Q[1]),
        .O(\bram_addr[7]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr[7]_i_25 
       (.I0(\bram_addr_reg[14]_i_25_n_4 ),
        .I1(Q[1]),
        .O(\bram_addr[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \bram_addr[7]_i_3 
       (.I0(\bram_addr_reg[14]_i_3_n_5 ),
        .I1(\bram_addr_reg[7]_i_11_n_4 ),
        .I2(P[6]),
        .O(\bram_addr[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \bram_addr[7]_i_4 
       (.I0(\bram_addr_reg[14]_i_3_n_6 ),
        .I1(\bram_addr_reg[7]_i_11_n_5 ),
        .I2(P[5]),
        .O(\bram_addr[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \bram_addr[7]_i_5 
       (.I0(\bram_addr_reg[14]_i_3_n_7 ),
        .I1(\bram_addr_reg[7]_i_11_n_6 ),
        .I2(P[4]),
        .O(\bram_addr[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \bram_addr[7]_i_6 
       (.I0(\bram_addr_reg[14]_i_12_n_4 ),
        .I1(\bram_addr_reg[7]_i_11_n_7 ),
        .I2(P[3]),
        .O(\bram_addr[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \bram_addr[7]_i_7 
       (.I0(P[6]),
        .I1(\bram_addr_reg[7]_i_11_n_4 ),
        .I2(\bram_addr_reg[14]_i_3_n_5 ),
        .I3(\bram_addr_reg[11]_i_11_n_7 ),
        .I4(P[7]),
        .O(\bram_addr[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \bram_addr[7]_i_8 
       (.I0(\bram_addr[7]_i_4_n_0 ),
        .I1(\bram_addr_reg[7]_i_11_n_4 ),
        .I2(\bram_addr_reg[14]_i_3_n_5 ),
        .I3(P[6]),
        .O(\bram_addr[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \bram_addr[7]_i_9 
       (.I0(\bram_addr_reg[14]_i_3_n_6 ),
        .I1(\bram_addr_reg[7]_i_11_n_5 ),
        .I2(P[5]),
        .I3(\bram_addr[7]_i_5_n_0 ),
        .O(\bram_addr[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[8]_i_1 
       (.I0(\u_patch/bram_addr0 [8]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bram_addr[9]_i_1 
       (.I0(\u_patch/bram_addr0 [9]),
        .I1(\bram_addr_reg[14]_i_3_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_5_n_4 ),
        .I4(\bram_addr_reg[14]_i_6_n_0 ),
        .O(D[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[11]_i_11 
       (.CI(\bram_addr_reg[7]_i_11_n_0 ),
        .CO({\bram_addr_reg[11]_i_11_n_0 ,\bram_addr_reg[11]_i_11_n_1 ,\bram_addr_reg[11]_i_11_n_2 ,\bram_addr_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram_addr[11]_i_12_n_0 ,\bram_addr[11]_i_13_n_0 ,\bram_addr[11]_i_14_n_0 ,\bram_addr[11]_i_15_n_0 }),
        .O({\bram_addr_reg[11]_i_11_n_4 ,\bram_addr_reg[11]_i_11_n_5 ,\bram_addr_reg[11]_i_11_n_6 ,\bram_addr_reg[11]_i_11_n_7 }),
        .S({\bram_addr[11]_i_16_n_0 ,\bram_addr[11]_i_17_n_0 ,\bram_addr[11]_i_18_n_0 ,\bram_addr[11]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[11]_i_2 
       (.CI(\bram_addr_reg[7]_i_2_n_0 ),
        .CO({\bram_addr_reg[11]_i_2_n_0 ,\bram_addr_reg[11]_i_2_n_1 ,\bram_addr_reg[11]_i_2_n_2 ,\bram_addr_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram_addr[11]_i_3_n_0 ,\bram_addr[11]_i_4_n_0 ,\bram_addr[11]_i_5_n_0 ,\bram_addr[11]_i_6_n_0 }),
        .O(\u_patch/bram_addr0 [11:8]),
        .S({\bram_addr[11]_i_7_n_0 ,\bram_addr[11]_i_8_n_0 ,\bram_addr[11]_i_9_n_0 ,\bram_addr[11]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[14]_i_12 
       (.CI(1'b0),
        .CO({\bram_addr_reg[14]_i_12_n_0 ,\bram_addr_reg[14]_i_12_n_1 ,\bram_addr_reg[14]_i_12_n_2 ,\bram_addr_reg[14]_i_12_n_3 }),
        .CYINIT(1'b1),
        .DI({conv_target_col[2],\bram_addr[3]_i_9_0 [1],\bram_addr[14]_i_40_n_0 ,\bram_addr[3]_i_9_0 [0]}),
        .O({\bram_addr_reg[14]_i_12_n_4 ,\bram_addr_reg[14]_i_12_n_5 ,\bram_addr_reg[14]_i_12_n_6 ,\bram_addr_reg[14]_i_12_n_7 }),
        .S({\bram_addr[14]_i_42_n_0 ,\bram_addr[14]_i_43_n_0 ,\bram_addr[3]_i_9_1 ,\bram_addr[14]_i_45_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[14]_i_2 
       (.CI(\bram_addr_reg[11]_i_2_n_0 ),
        .CO({\NLW_bram_addr_reg[14]_i_2_CO_UNCONNECTED [3:2],\bram_addr_reg[14]_i_2_n_2 ,\bram_addr_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bram_addr[14]_i_7_n_0 ,\bram_addr[14]_i_8_n_0 }),
        .O({\NLW_bram_addr_reg[14]_i_2_O_UNCONNECTED [3],\u_patch/bram_addr0 [14:12]}),
        .S({1'b0,\bram_addr[14]_i_9_n_0 ,\bram_addr[14]_i_10_n_0 ,\bram_addr[14]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[14]_i_25 
       (.CI(1'b0),
        .CO({\bram_addr_reg[14]_i_25_n_0 ,\bram_addr_reg[14]_i_25_n_1 ,\bram_addr_reg[14]_i_25_n_2 ,\bram_addr_reg[14]_i_25_n_3 }),
        .CYINIT(1'b1),
        .DI({conv_target_row[2],\bram_addr[7]_i_22_0 [1],\bram_addr[14]_i_47_n_0 ,\bram_addr[7]_i_22_0 [0]}),
        .O({\bram_addr_reg[14]_i_25_n_4 ,\bram_addr_reg[14]_i_25_n_5 ,\bram_addr_reg[14]_i_25_n_6 ,\bram_addr_reg[14]_i_25_n_7 }),
        .S({\bram_addr[14]_i_49_n_0 ,\bram_addr[14]_i_50_n_0 ,\bram_addr[7]_i_22_1 ,\bram_addr[14]_i_52_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[14]_i_3 
       (.CI(\bram_addr_reg[14]_i_12_n_0 ),
        .CO({\NLW_bram_addr_reg[14]_i_3_CO_UNCONNECTED [3],\bram_addr_reg[14]_i_3_n_1 ,\bram_addr_reg[14]_i_3_n_2 ,\bram_addr_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,conv_target_col[5:3]}),
        .O({\bram_addr_reg[14]_i_3_n_4 ,\bram_addr_reg[14]_i_3_n_5 ,\bram_addr_reg[14]_i_3_n_6 ,\bram_addr_reg[14]_i_3_n_7 }),
        .S({\bram_addr[14]_i_13_n_0 ,\bram_addr[14]_i_14_n_0 ,\bram_addr[14]_i_15_n_0 ,\bram_addr[14]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[14]_i_38 
       (.CI(\bram_addr_reg[11]_i_11_n_0 ),
        .CO({\NLW_bram_addr_reg[14]_i_38_CO_UNCONNECTED [3:2],\bram_addr_reg[14]_i_38_n_2 ,\bram_addr_reg[14]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bram_addr[14]_i_53_n_0 ,\bram_addr[14]_i_54_n_0 }),
        .O({\NLW_bram_addr_reg[14]_i_38_O_UNCONNECTED [3],\bram_addr_reg[14]_i_38_n_5 ,\bram_addr_reg[14]_i_38_n_6 ,\bram_addr_reg[14]_i_38_n_7 }),
        .S({1'b0,\bram_addr[14]_i_55_n_0 ,\bram_addr[14]_i_56_n_0 ,\bram_addr[14]_i_57_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bram_addr_reg[14]_i_4 
       (.CI(1'b0),
        .CO({\bram_addr_reg[14]_i_4_n_0 ,\bram_addr_reg[14]_i_4_n_1 ,\bram_addr_reg[14]_i_4_n_2 ,\bram_addr_reg[14]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({\bram_addr[14]_i_17_n_0 ,\bram_addr[14]_i_18_n_0 ,\bram_addr[14]_i_19_n_0 ,\bram_addr[14]_i_20_n_0 }),
        .O(\NLW_bram_addr_reg[14]_i_4_O_UNCONNECTED [3:0]),
        .S({\bram_addr[14]_i_21_n_0 ,\bram_addr[14]_i_22_n_0 ,\bram_addr[14]_i_23_n_0 ,\bram_addr[14]_i_24_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[14]_i_5 
       (.CI(\bram_addr_reg[14]_i_25_n_0 ),
        .CO({\NLW_bram_addr_reg[14]_i_5_CO_UNCONNECTED [3],\bram_addr_reg[14]_i_5_n_1 ,\bram_addr_reg[14]_i_5_n_2 ,\bram_addr_reg[14]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,conv_target_row[5:3]}),
        .O({\bram_addr_reg[14]_i_5_n_4 ,\bram_addr_reg[14]_i_5_n_5 ,\bram_addr_reg[14]_i_5_n_6 ,\bram_addr_reg[14]_i_5_n_7 }),
        .S({\bram_addr[14]_i_26_n_0 ,\bram_addr[14]_i_27_n_0 ,\bram_addr[14]_i_28_n_0 ,\bram_addr[14]_i_29_n_0 }));
  CARRY4 \bram_addr_reg[14]_i_58 
       (.CI(\bram_addr_reg[14]_i_59_n_0 ),
        .CO({\NLW_bram_addr_reg[14]_i_58_CO_UNCONNECTED [3:2],\bram_addr_reg[14]_i_58_n_2 ,\NLW_bram_addr_reg[14]_i_58_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bram_addr[14]_i_60_n_0 }),
        .O({\NLW_bram_addr_reg[14]_i_58_O_UNCONNECTED [3:1],\bram_addr_reg[14]_i_58_n_7 }),
        .S({1'b0,1'b0,1'b1,\bram_addr[14]_i_61_n_0 }));
  CARRY4 \bram_addr_reg[14]_i_59 
       (.CI(\bram_addr_reg[7]_i_13_n_0 ),
        .CO({\bram_addr_reg[14]_i_59_n_0 ,\bram_addr_reg[14]_i_59_n_1 ,\bram_addr_reg[14]_i_59_n_2 ,\bram_addr_reg[14]_i_59_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram_addr[14]_i_62_n_0 ,\bram_addr[14]_i_63_n_0 ,\bram_addr[14]_i_64_n_0 ,\bram_addr[14]_i_65_n_0 }),
        .O({\bram_addr_reg[14]_i_59_n_4 ,\bram_addr_reg[14]_i_59_n_5 ,\bram_addr_reg[14]_i_59_n_6 ,\bram_addr_reg[14]_i_59_n_7 }),
        .S({\bram_addr[14]_i_66_n_0 ,\bram_addr[14]_i_67_n_0 ,\bram_addr[14]_i_68_n_0 ,\bram_addr[14]_i_69_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bram_addr_reg[14]_i_6 
       (.CI(1'b0),
        .CO({\bram_addr_reg[14]_i_6_n_0 ,\bram_addr_reg[14]_i_6_n_1 ,\bram_addr_reg[14]_i_6_n_2 ,\bram_addr_reg[14]_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\bram_addr[14]_i_30_n_0 ,\bram_addr[14]_i_31_n_0 ,\bram_addr[14]_i_32_n_0 ,\bram_addr[14]_i_33_n_0 }),
        .O(\NLW_bram_addr_reg[14]_i_6_O_UNCONNECTED [3:0]),
        .S({\bram_addr[14]_i_34_n_0 ,\bram_addr[14]_i_35_n_0 ,\bram_addr[14]_i_36_n_0 ,\bram_addr[14]_i_37_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\bram_addr_reg[3]_i_2_n_0 ,\bram_addr_reg[3]_i_2_n_1 ,\bram_addr_reg[3]_i_2_n_2 ,\bram_addr_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram_addr[3]_i_3_n_0 ,\bram_addr[3]_i_4_n_0 ,\bram_addr[3]_i_5_n_0 ,1'b0}),
        .O(\u_patch/bram_addr0 [3:0]),
        .S({\bram_addr[3]_i_6_n_0 ,\bram_addr[3]_i_7_n_0 ,\bram_addr[3]_i_8_n_0 ,\bram_addr[3]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[7]_i_11 
       (.CI(1'b0),
        .CO({\bram_addr_reg[7]_i_11_n_0 ,\bram_addr_reg[7]_i_11_n_1 ,\bram_addr_reg[7]_i_11_n_2 ,\bram_addr_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram_addr[7]_i_12_n_0 ,\bram_addr_reg[7]_i_13_n_5 ,\bram_addr_reg[7]_i_13_n_6 ,\bram_addr_reg[7]_i_13_n_7 }),
        .O({\bram_addr_reg[7]_i_11_n_4 ,\bram_addr_reg[7]_i_11_n_5 ,\bram_addr_reg[7]_i_11_n_6 ,\bram_addr_reg[7]_i_11_n_7 }),
        .S({\bram_addr[7]_i_14_n_0 ,\bram_addr[7]_i_15_n_0 ,\bram_addr[7]_i_16_n_0 ,\bram_addr[7]_i_17_n_0 }));
  CARRY4 \bram_addr_reg[7]_i_13 
       (.CI(1'b0),
        .CO({\bram_addr_reg[7]_i_13_n_0 ,\bram_addr_reg[7]_i_13_n_1 ,\bram_addr_reg[7]_i_13_n_2 ,\bram_addr_reg[7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram_addr[7]_i_18_n_0 ,\bram_addr[7]_i_19_n_0 ,\bram_addr[7]_i_20_n_0 ,1'b0}),
        .O({\bram_addr_reg[7]_i_13_n_4 ,\bram_addr_reg[7]_i_13_n_5 ,\bram_addr_reg[7]_i_13_n_6 ,\bram_addr_reg[7]_i_13_n_7 }),
        .S({\bram_addr[7]_i_21_n_0 ,\bram_addr[7]_i_22_n_0 ,\bram_addr[7]_i_23_n_0 ,\bram_addr[7]_i_24_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[7]_i_2 
       (.CI(\bram_addr_reg[3]_i_2_n_0 ),
        .CO({\bram_addr_reg[7]_i_2_n_0 ,\bram_addr_reg[7]_i_2_n_1 ,\bram_addr_reg[7]_i_2_n_2 ,\bram_addr_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram_addr[7]_i_3_n_0 ,\bram_addr[7]_i_4_n_0 ,\bram_addr[7]_i_5_n_0 ,\bram_addr[7]_i_6_n_0 }),
        .O(\u_patch/bram_addr0 [7:4]),
        .S({\bram_addr[7]_i_7_n_0 ,\bram_addr[7]_i_8_n_0 ,\bram_addr[7]_i_9_n_0 ,\bram_addr[7]_i_10_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ci[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ci[0]),
        .O(\ci[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ci[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ci[1]),
        .I2(ci[0]),
        .O(\ci[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \ci[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ci[2]),
        .I2(ci[1]),
        .I3(ci[0]),
        .O(\ci[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \ci[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ci[3]),
        .I2(ci[2]),
        .I3(ci[0]),
        .I4(ci[1]),
        .O(\ci[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \ci[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ci[4]),
        .I2(ci[3]),
        .I3(ci[1]),
        .I4(ci[0]),
        .I5(ci[2]),
        .O(\ci[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ci[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in10[5]),
        .O(\ci[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ci[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ci[6]),
        .I2(\ci[7]_i_3_n_0 ),
        .O(\ci[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ci[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .O(\ci[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \ci[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ci[7]),
        .I2(ci[6]),
        .I3(\ci[7]_i_3_n_0 ),
        .O(\ci[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ci[7]_i_3 
       (.I0(ci[5]),
        .I1(ci[3]),
        .I2(ci[1]),
        .I3(ci[0]),
        .I4(ci[2]),
        .I5(ci[4]),
        .O(\ci[7]_i_3_n_0 ));
  FDCE \ci_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ci[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\ci[0]_i_1_n_0 ),
        .Q(ci[0]));
  FDCE \ci_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ci[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\ci[1]_i_1_n_0 ),
        .Q(ci[1]));
  FDCE \ci_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ci[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\ci[2]_i_1_n_0 ),
        .Q(ci[2]));
  FDCE \ci_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ci[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\ci[3]_i_1_n_0 ),
        .Q(ci[3]));
  FDCE \ci_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ci[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\ci[4]_i_1_n_0 ),
        .Q(ci[4]));
  FDCE \ci_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ci[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\ci[5]_i_1_n_0 ),
        .Q(ci[5]));
  FDCE \ci_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ci[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\ci[6]_i_1_n_0 ),
        .Q(ci[6]));
  FDCE \ci_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ci[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\ci[7]_i_2_n_0 ),
        .Q(ci[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \co[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(co[0]),
        .O(\co[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \co[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(co[1]),
        .I2(co[0]),
        .O(\co[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \co[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(co[2]),
        .I2(co[1]),
        .I3(co[0]),
        .O(\co[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \co[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(co[3]),
        .I2(co[2]),
        .I3(co[0]),
        .I4(co[1]),
        .O(\co[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \co[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(co[4]),
        .I2(co[3]),
        .I3(co[1]),
        .I4(co[0]),
        .I5(co[2]),
        .O(\co[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \co[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(in8),
        .O(\co[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \co[5]_i_2 
       (.I0(co[3]),
        .I1(co[1]),
        .I2(co[0]),
        .I3(co[2]),
        .I4(co[4]),
        .I5(co[5]),
        .O(in8));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \co[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(co[6]),
        .I2(\co[7]_i_3_n_0 ),
        .O(\co[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \co[7]_i_1 
       (.I0(in5),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\co_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\co[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \co[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(co[7]),
        .I2(co[6]),
        .I3(\co[7]_i_3_n_0 ),
        .O(\co[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \co[7]_i_3 
       (.I0(co[5]),
        .I1(co[3]),
        .I2(co[1]),
        .I3(co[0]),
        .I4(co[2]),
        .I5(co[4]),
        .O(\co[7]_i_3_n_0 ));
  FDCE \co_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\co[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\co[0]_i_1_n_0 ),
        .Q(co[0]));
  FDCE \co_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\co[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\co[1]_i_1_n_0 ),
        .Q(co[1]));
  FDCE \co_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\co[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\co[2]_i_1_n_0 ),
        .Q(co[2]));
  FDCE \co_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\co[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\co[3]_i_1_n_0 ),
        .Q(co[3]));
  FDCE \co_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\co[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\co[4]_i_1_n_0 ),
        .Q(co[4]));
  FDCE \co_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\co[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\co[5]_i_1_n_0 ),
        .Q(co[5]));
  FDCE \co_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\co[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\co[6]_i_1_n_0 ),
        .Q(co[6]));
  FDCE \co_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\co[7]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\co[7]_i_2_n_0 ),
        .Q(co[7]));
  FDCE \cur_ci_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(ci[0]),
        .Q(\cur_ci_reg[7]_0 [0]));
  FDCE \cur_ci_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(ci[1]),
        .Q(\cur_ci_reg[7]_0 [1]));
  FDCE \cur_ci_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(ci[2]),
        .Q(\cur_ci_reg[7]_0 [2]));
  FDCE \cur_ci_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(ci[3]),
        .Q(\cur_ci_reg[7]_0 [3]));
  FDCE \cur_ci_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(ci[4]),
        .Q(\cur_ci_reg[7]_0 [4]));
  FDCE \cur_ci_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(ci[5]),
        .Q(\cur_ci_reg[7]_0 [5]));
  FDCE \cur_ci_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(ci[6]),
        .Q(\cur_ci_reg[7]_0 [6]));
  FDCE \cur_ci_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(ci[7]),
        .Q(\cur_ci_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \cur_col[0]_i_1 
       (.I0(\cur_row[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\cur_col_reg_n_0_[0] ),
        .O(cur_col[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \cur_col[1]_i_1 
       (.I0(\cur_row[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\cur_col_reg_n_0_[1] ),
        .I4(\cur_col_reg_n_0_[0] ),
        .O(cur_col[1]));
  LUT6 #(
    .INIT(64'h0004040004000400)) 
    \cur_col[2]_i_1 
       (.I0(\cur_row[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\cur_col_reg_n_0_[2] ),
        .I4(\cur_col_reg_n_0_[1] ),
        .I5(\cur_col_reg_n_0_[0] ),
        .O(cur_col[2]));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \cur_col[3]_i_1 
       (.I0(\cur_row[6]_i_3_n_0 ),
        .I1(\cur_row[4]_i_2_n_0 ),
        .I2(\cur_col_reg_n_0_[3] ),
        .I3(\cur_col_reg_n_0_[2] ),
        .I4(\cur_col_reg_n_0_[0] ),
        .I5(\cur_col_reg_n_0_[1] ),
        .O(cur_col[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \cur_col[4]_i_1 
       (.I0(\cur_row[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\cur_col[4]_i_2_n_0 ),
        .O(cur_col[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cur_col[4]_i_2 
       (.I0(\cur_col_reg_n_0_[2] ),
        .I1(\cur_col_reg_n_0_[0] ),
        .I2(\cur_col_reg_n_0_[1] ),
        .I3(\cur_col_reg_n_0_[3] ),
        .I4(\cur_col_reg_n_0_[4] ),
        .O(\cur_col[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \cur_col[5]_i_1 
       (.I0(\cur_row[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\cur_col[5]_i_2_n_0 ),
        .O(cur_col[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cur_col[5]_i_2 
       (.I0(\cur_col_reg_n_0_[3] ),
        .I1(\cur_col_reg_n_0_[1] ),
        .I2(\cur_col_reg_n_0_[0] ),
        .I3(\cur_col_reg_n_0_[2] ),
        .I4(\cur_col_reg_n_0_[4] ),
        .I5(\cur_col_reg_n_0_[5] ),
        .O(\cur_col[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004040004000400)) 
    \cur_col[6]_i_1 
       (.I0(\cur_row[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\cur_col_reg_n_0_[6] ),
        .I4(\cur_col_reg_n_0_[5] ),
        .I5(\cur_col[6]_i_2_n_0 ),
        .O(cur_col[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cur_col[6]_i_2 
       (.I0(\cur_col_reg_n_0_[4] ),
        .I1(\cur_col_reg_n_0_[2] ),
        .I2(\cur_col_reg_n_0_[0] ),
        .I3(\cur_col_reg_n_0_[1] ),
        .I4(\cur_col_reg_n_0_[3] ),
        .O(\cur_col[6]_i_2_n_0 ));
  FDCE \cur_col_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_col[0]),
        .Q(\cur_col_reg_n_0_[0] ));
  FDCE \cur_col_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_col[1]),
        .Q(\cur_col_reg_n_0_[1] ));
  FDCE \cur_col_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_col[2]),
        .Q(\cur_col_reg_n_0_[2] ));
  FDCE \cur_col_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_col[3]),
        .Q(\cur_col_reg_n_0_[3] ));
  FDCE \cur_col_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_col[4]),
        .Q(\cur_col_reg_n_0_[4] ));
  FDCE \cur_col_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_col[5]),
        .Q(\cur_col_reg_n_0_[5] ));
  FDCE \cur_col_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_col[6]),
        .Q(\cur_col_reg_n_0_[6] ));
  LUT3 #(
    .INIT(8'h04)) 
    \cur_row[0]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cur_row_reg_n_0_[0] ),
        .O(cur_row[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \cur_row[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I2(\cur_row_reg_n_0_[0] ),
        .I3(\cur_row_reg_n_0_[1] ),
        .O(cur_row[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \cur_row[2]_i_1 
       (.I0(\cur_row_reg_n_0_[1] ),
        .I1(\cur_row_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\cur_row_reg_n_0_[2] ),
        .O(cur_row[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \cur_row[3]_i_1 
       (.I0(\cur_row_reg_n_0_[2] ),
        .I1(\cur_row_reg_n_0_[0] ),
        .I2(\cur_row_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I4(\FSM_onehot_state_reg_n_0_[11] ),
        .I5(\cur_row_reg_n_0_[3] ),
        .O(cur_row[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \cur_row[4]_i_1 
       (.I0(\cur_row_reg_n_0_[3] ),
        .I1(\cur_row_reg_n_0_[1] ),
        .I2(\cur_row_reg_n_0_[0] ),
        .I3(\cur_row_reg_n_0_[2] ),
        .I4(\cur_row[4]_i_2_n_0 ),
        .I5(\cur_row_reg_n_0_[4] ),
        .O(cur_row[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cur_row[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .O(\cur_row[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \cur_row[5]_i_1 
       (.I0(\cur_row[6]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(\cur_row_reg_n_0_[5] ),
        .O(cur_row[5]));
  LUT4 #(
    .INIT(16'hFAEA)) 
    \cur_row[6]_i_1 
       (.I0(\co[7]_i_1_n_0 ),
        .I1(\cur_row[6]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .O(\cur_row[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \cur_row[6]_i_2 
       (.I0(\cur_row_reg_n_0_[5] ),
        .I1(\cur_row[6]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\cur_row_reg_n_0_[6] ),
        .O(cur_row[6]));
  LUT5 #(
    .INIT(32'h2A80802A)) 
    \cur_row[6]_i_3 
       (.I0(\cur_row[6]_i_5_n_0 ),
        .I1(\cur_col[6]_i_2_n_0 ),
        .I2(\cur_col_reg_n_0_[5] ),
        .I3(\cur_col_reg_n_0_[6] ),
        .I4(Q[4]),
        .O(\cur_row[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cur_row[6]_i_4 
       (.I0(\cur_row_reg_n_0_[4] ),
        .I1(\cur_row_reg_n_0_[2] ),
        .I2(\cur_row_reg_n_0_[0] ),
        .I3(\cur_row_reg_n_0_[1] ),
        .I4(\cur_row_reg_n_0_[3] ),
        .O(\cur_row[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0480804040080804)) 
    \cur_row[6]_i_5 
       (.I0(Q[2]),
        .I1(\cur_row[6]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(\cur_row[6]_i_7_n_0 ),
        .I4(\cur_col_reg_n_0_[4] ),
        .I5(\cur_col_reg_n_0_[5] ),
        .O(\cur_row[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0080400040000080)) 
    \cur_row[6]_i_6 
       (.I0(Q[0]),
        .I1(\cur_col_reg_n_0_[1] ),
        .I2(\cur_col_reg_n_0_[0] ),
        .I3(\cur_col_reg_n_0_[2] ),
        .I4(\cur_col_reg_n_0_[3] ),
        .I5(Q[1]),
        .O(\cur_row[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cur_row[6]_i_7 
       (.I0(\cur_col_reg_n_0_[3] ),
        .I1(\cur_col_reg_n_0_[1] ),
        .I2(\cur_col_reg_n_0_[0] ),
        .I3(\cur_col_reg_n_0_[2] ),
        .O(\cur_row[6]_i_7_n_0 ));
  FDCE \cur_row_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cur_row[6]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_row[0]),
        .Q(\cur_row_reg_n_0_[0] ));
  FDCE \cur_row_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cur_row[6]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_row[1]),
        .Q(\cur_row_reg_n_0_[1] ));
  FDCE \cur_row_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cur_row[6]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_row[2]),
        .Q(\cur_row_reg_n_0_[2] ));
  FDCE \cur_row_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cur_row[6]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_row[3]),
        .Q(\cur_row_reg_n_0_[3] ));
  FDCE \cur_row_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cur_row[6]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_row[4]),
        .Q(\cur_row_reg_n_0_[4] ));
  FDCE \cur_row_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cur_row[6]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_row[5]),
        .Q(\cur_row_reg_n_0_[5] ));
  FDCE \cur_row_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cur_row[6]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(cur_row[6]),
        .Q(\cur_row_reg_n_0_[6] ));
  FDCE done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[13] ),
        .Q(conv_done));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_padding_i_1
       (.I0(\bram_addr_reg[14]_i_6_n_0 ),
        .I1(\bram_addr_reg[14]_i_5_n_4 ),
        .I2(\bram_addr_reg[14]_i_4_n_0 ),
        .I3(\bram_addr_reg[14]_i_3_n_4 ),
        .O(\target_row_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k_idx[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\k_idx_reg_n_0_[0] ),
        .O(k_idx[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \k_idx[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\k_idx_reg_n_0_[0] ),
        .I2(\k_idx_reg_n_0_[1] ),
        .O(k_idx[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \k_idx[2]_i_1 
       (.I0(\k_idx_reg_n_0_[0] ),
        .I1(\k_idx_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\k_idx_reg_n_0_[2] ),
        .O(k_idx[2]));
  LUT6 #(
    .INIT(64'hFFFFFD00FD00FD00)) 
    \k_idx[3]_i_1 
       (.I0(\k_idx_reg_n_0_[3] ),
        .I1(\k_idx[3]_i_3_n_0 ),
        .I2(\k_idx_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(patch_valid),
        .I5(\FSM_onehot_state_reg[4]_0 ),
        .O(\k_idx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \k_idx[3]_i_2 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(\k_idx_reg_n_0_[1] ),
        .I2(\k_idx_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\k_idx_reg_n_0_[3] ),
        .O(k_idx[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \k_idx[3]_i_3 
       (.I0(\k_idx_reg_n_0_[0] ),
        .I1(\k_idx_reg_n_0_[1] ),
        .O(\k_idx[3]_i_3_n_0 ));
  FDCE \k_idx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\k_idx[3]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(k_idx[0]),
        .Q(\k_idx_reg_n_0_[0] ));
  FDCE \k_idx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\k_idx[3]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(k_idx[1]),
        .Q(\k_idx_reg_n_0_[1] ));
  FDCE \k_idx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\k_idx[3]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(k_idx[2]),
        .Q(\k_idx_reg_n_0_[2] ));
  FDCE \k_idx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\k_idx[3]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(k_idx[3]),
        .Q(\k_idx_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_10
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[3]),
        .O(ADDRARDADDR[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_11
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[2]),
        .O(ADDRARDADDR[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_12
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[1]),
        .O(ADDRARDADDR[1]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_13
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[0]),
        .O(ADDRARDADDR[0]));
  LUT3 #(
    .INIT(8'h02)) 
    mem_reg_i_1__0
       (.I0(conv_out_valid),
        .I1(pool_start_reg[1]),
        .I2(pool_start_reg[0]),
        .O(WEA));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_2
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[11]),
        .O(ADDRARDADDR[11]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_3
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[10]),
        .O(ADDRARDADDR[10]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_4
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[9]),
        .O(ADDRARDADDR[9]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_5
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[8]),
        .O(ADDRARDADDR[8]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_6
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[7]),
        .O(ADDRARDADDR[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_7
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[6]),
        .O(ADDRARDADDR[6]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_8
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[5]),
        .O(ADDRARDADDR[5]));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_i_9
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(conv_out_valid),
        .I3(conv_out_pixel_pos[4]),
        .O(ADDRARDADDR[4]));
  FDCE need_patch_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(need_patch));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \out_pixel[0]_i_1 
       (.I0(acc[7]),
        .I1(acc[31]),
        .I2(out_pixel1),
        .O(\out_pixel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \out_pixel[1]_i_1 
       (.I0(acc[8]),
        .I1(acc[31]),
        .I2(out_pixel1),
        .O(\out_pixel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \out_pixel[2]_i_1 
       (.I0(acc[9]),
        .I1(acc[31]),
        .I2(out_pixel1),
        .O(\out_pixel[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \out_pixel[3]_i_1 
       (.I0(acc[10]),
        .I1(acc[31]),
        .I2(out_pixel1),
        .O(\out_pixel[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \out_pixel[4]_i_1 
       (.I0(acc[11]),
        .I1(acc[31]),
        .I2(out_pixel1),
        .O(\out_pixel[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \out_pixel[5]_i_1 
       (.I0(acc[12]),
        .I1(acc[31]),
        .I2(out_pixel1),
        .O(\out_pixel[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \out_pixel[6]_i_1 
       (.I0(acc[13]),
        .I1(acc[31]),
        .I2(out_pixel1),
        .O(\out_pixel[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \out_pixel[7]_i_1 
       (.I0(acc[31]),
        .I1(acc[14]),
        .I2(out_pixel1),
        .O(\out_pixel[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_pixel[7]_i_2 
       (.I0(acc[27]),
        .I1(acc[26]),
        .I2(acc[25]),
        .I3(acc[24]),
        .I4(\out_pixel[7]_i_3_n_0 ),
        .I5(\out_pixel[7]_i_4_n_0 ),
        .O(out_pixel1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_pixel[7]_i_3 
       (.I0(acc[30]),
        .I1(acc[31]),
        .I2(acc[14]),
        .I3(\acc_reg[16]_0 [0]),
        .I4(acc[29]),
        .I5(acc[28]),
        .O(\out_pixel[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_pixel[7]_i_4 
       (.I0(acc[20]),
        .I1(acc[21]),
        .I2(acc[22]),
        .I3(acc[23]),
        .I4(\out_pixel[7]_i_5_n_0 ),
        .O(\out_pixel[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_pixel[7]_i_5 
       (.I0(acc[19]),
        .I1(acc[18]),
        .I2(acc[17]),
        .I3(\acc_reg[16]_0 [1]),
        .O(\out_pixel[7]_i_5_n_0 ));
  FDCE \out_pixel_pos_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[0]),
        .Q(conv_out_pixel_pos[0]));
  FDCE \out_pixel_pos_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[10]),
        .Q(conv_out_pixel_pos[10]));
  FDCE \out_pixel_pos_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[11]),
        .Q(conv_out_pixel_pos[11]));
  FDCE \out_pixel_pos_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[1]),
        .Q(conv_out_pixel_pos[1]));
  FDCE \out_pixel_pos_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[2]),
        .Q(conv_out_pixel_pos[2]));
  FDCE \out_pixel_pos_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[3]),
        .Q(conv_out_pixel_pos[3]));
  FDCE \out_pixel_pos_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[4]),
        .Q(conv_out_pixel_pos[4]));
  FDCE \out_pixel_pos_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[5]),
        .Q(conv_out_pixel_pos[5]));
  FDCE \out_pixel_pos_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[6]),
        .Q(conv_out_pixel_pos[6]));
  FDCE \out_pixel_pos_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[7]),
        .Q(conv_out_pixel_pos[7]));
  FDCE \out_pixel_pos_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[8]),
        .Q(conv_out_pixel_pos[8]));
  FDCE \out_pixel_pos_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[10] ),
        .CLR(done_reg_1),
        .D(pix[9]),
        .Q(conv_out_pixel_pos[9]));
  FDCE \out_pixel_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[9] ),
        .CLR(done_reg_1),
        .D(\out_pixel[0]_i_1_n_0 ),
        .Q(\out_pixel_reg[7]_0 [0]));
  FDCE \out_pixel_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[9] ),
        .CLR(done_reg_1),
        .D(\out_pixel[1]_i_1_n_0 ),
        .Q(\out_pixel_reg[7]_0 [1]));
  FDCE \out_pixel_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[9] ),
        .CLR(done_reg_1),
        .D(\out_pixel[2]_i_1_n_0 ),
        .Q(\out_pixel_reg[7]_0 [2]));
  FDCE \out_pixel_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[9] ),
        .CLR(done_reg_1),
        .D(\out_pixel[3]_i_1_n_0 ),
        .Q(\out_pixel_reg[7]_0 [3]));
  FDCE \out_pixel_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[9] ),
        .CLR(done_reg_1),
        .D(\out_pixel[4]_i_1_n_0 ),
        .Q(\out_pixel_reg[7]_0 [4]));
  FDCE \out_pixel_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[9] ),
        .CLR(done_reg_1),
        .D(\out_pixel[5]_i_1_n_0 ),
        .Q(\out_pixel_reg[7]_0 [5]));
  FDCE \out_pixel_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[9] ),
        .CLR(done_reg_1),
        .D(\out_pixel[6]_i_1_n_0 ),
        .Q(\out_pixel_reg[7]_0 [6]));
  FDCE \out_pixel_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[9] ),
        .CLR(done_reg_1),
        .D(\out_pixel[7]_i_1_n_0 ),
        .Q(\out_pixel_reg[7]_0 [7]));
  FDCE out_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(conv_out_valid));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    patch_ch_offset_wide_i_10
       (.I0(patch_ch_offset_wide_3[0]),
        .I1(\cur_ci_reg[7]_0 [5]),
        .I2(patch_ch_offset_wide_3[1]),
        .I3(\cur_ci_reg[7]_0 [6]),
        .I4(Q[4]),
        .O(\cur_in_w_reg[6] [1]));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    patch_ch_offset_wide_i_11
       (.I0(patch_ch_offset_wide[3]),
        .I1(\cur_ci_reg[7]_0 [4]),
        .I2(patch_ch_offset_wide_3[0]),
        .I3(\cur_ci_reg[7]_0 [5]),
        .I4(Q[4]),
        .O(\cur_in_w_reg[6] [0]));
  LUT6 #(
    .INIT(64'h8E71718EF30CF30C)) 
    patch_ch_offset_wide_i_16
       (.I0(\cur_ci_reg[7]_0 [3]),
        .I1(patch_ch_offset_wide[2]),
        .I2(patch_ch_offset_wide_2),
        .I3(patch_ch_offset_wide[3]),
        .I4(\cur_ci_reg[7]_0 [4]),
        .I5(Q[4]),
        .O(\cur_ci_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    patch_ch_offset_wide_i_17
       (.I0(patch_ch_offset_wide_1[1]),
        .I1(Q[0]),
        .I2(\cur_ci_reg[7]_0 [7]),
        .I3(patch_ch_offset_wide[2]),
        .I4(\cur_ci_reg[7]_0 [3]),
        .I5(Q[4]),
        .O(\cur_ci_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    patch_ch_offset_wide_i_18
       (.I0(patch_ch_offset_wide_1[0]),
        .I1(Q[0]),
        .I2(\cur_ci_reg[7]_0 [6]),
        .I3(patch_ch_offset_wide[1]),
        .I4(\cur_ci_reg[7]_0 [2]),
        .I5(Q[4]),
        .O(\cur_ci_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h9669C3C36969C3C3)) 
    patch_ch_offset_wide_i_19
       (.I0(\cur_ci_reg[7]_0 [5]),
        .I1(patch_ch_offset_wide[0]),
        .I2(patch_ch_offset_wide_0),
        .I3(\cur_ci_reg[7]_0 [4]),
        .I4(Q[0]),
        .I5(O[3]),
        .O(\cur_ci_reg[3]_0 [0]));
  LUT3 #(
    .INIT(8'h78)) 
    patch_ch_offset_wide_i_20
       (.I0(Q[0]),
        .I1(\cur_ci_reg[7]_0 [4]),
        .I2(O[3]),
        .O(DI));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    patch_ch_offset_wide_i_22
       (.I0(O[3]),
        .I1(\cur_ci_reg[7]_0 [4]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(\cur_ci_reg[7]_0 [0]),
        .O(\cur_ci_reg[4]_0 [3]));
  LUT3 #(
    .INIT(8'h78)) 
    patch_ch_offset_wide_i_23
       (.I0(Q[0]),
        .I1(\cur_ci_reg[7]_0 [3]),
        .I2(O[2]),
        .O(\cur_ci_reg[4]_0 [2]));
  LUT3 #(
    .INIT(8'h78)) 
    patch_ch_offset_wide_i_24
       (.I0(Q[0]),
        .I1(\cur_ci_reg[7]_0 [2]),
        .I2(O[1]),
        .O(\cur_ci_reg[4]_0 [1]));
  LUT3 #(
    .INIT(8'h78)) 
    patch_ch_offset_wide_i_25
       (.I0(Q[0]),
        .I1(\cur_ci_reg[7]_0 [1]),
        .I2(O[0]),
        .O(\cur_ci_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    patch_ch_offset_wide_i_33
       (.I0(\cur_ci_reg[7]_0 [2]),
        .I1(patch_ch_offset_wide_i_21),
        .I2(\cur_ci_reg[7]_0 [1]),
        .I3(Q[2]),
        .I4(\cur_ci_reg[7]_0 [0]),
        .I5(Q[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    patch_ch_offset_wide_i_34
       (.I0(\cur_ci_reg[7]_0 [0]),
        .I1(Q[3]),
        .I2(\cur_ci_reg[7]_0 [1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\cur_ci_reg[7]_0 [2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h7888)) 
    patch_ch_offset_wide_i_35
       (.I0(Q[1]),
        .I1(\cur_ci_reg[7]_0 [1]),
        .I2(Q[2]),
        .I3(\cur_ci_reg[7]_0 [0]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    patch_ch_offset_wide_i_36
       (.I0(\cur_ci_reg[7]_0 [0]),
        .I1(Q[1]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h7000)) 
    patch_ch_offset_wide_i_39
       (.I0(Q[2]),
        .I1(\cur_ci_reg[7]_0 [6]),
        .I2(Q[3]),
        .I3(\cur_ci_reg[7]_0 [7]),
        .O(\cur_in_w_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    patch_ch_offset_wide_i_4
       (.I0(\cur_ci_reg[7]_0 [0]),
        .I1(Q[0]),
        .O(A));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    patch_ch_offset_wide_i_45
       (.I0(patch_ch_offset_wide_i_27[3]),
        .I1(Q[2]),
        .I2(\cur_ci_reg[7]_0 [6]),
        .I3(patch_ch_offset_wide_i_27_3),
        .I4(\cur_ci_reg[7]_0 [7]),
        .I5(Q[1]),
        .O(\cur_in_w_reg[4] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    patch_ch_offset_wide_i_46
       (.I0(patch_ch_offset_wide_i_27[2]),
        .I1(Q[2]),
        .I2(\cur_ci_reg[7]_0 [5]),
        .I3(patch_ch_offset_wide_i_27_2),
        .I4(\cur_ci_reg[7]_0 [6]),
        .I5(Q[1]),
        .O(\cur_in_w_reg[4] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    patch_ch_offset_wide_i_47
       (.I0(patch_ch_offset_wide_i_27[1]),
        .I1(Q[2]),
        .I2(\cur_ci_reg[7]_0 [4]),
        .I3(patch_ch_offset_wide_i_27_1),
        .I4(\cur_ci_reg[7]_0 [5]),
        .I5(Q[1]),
        .O(\cur_in_w_reg[4] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    patch_ch_offset_wide_i_48
       (.I0(patch_ch_offset_wide_i_27[0]),
        .I1(Q[2]),
        .I2(\cur_ci_reg[7]_0 [3]),
        .I3(patch_ch_offset_wide_i_27_0),
        .I4(\cur_ci_reg[7]_0 [4]),
        .I5(Q[1]),
        .O(\cur_in_w_reg[4] [0]));
  LUT3 #(
    .INIT(8'h80)) 
    patch_ch_offset_wide_i_8
       (.I0(CO),
        .I1(Q[4]),
        .I2(\cur_ci_reg[7]_0 [7]),
        .O(\cur_in_w_reg[6] [3]));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    patch_ch_offset_wide_i_9
       (.I0(patch_ch_offset_wide_3[1]),
        .I1(\cur_ci_reg[7]_0 [6]),
        .I2(CO),
        .I3(\cur_ci_reg[7]_0 [7]),
        .I4(Q[4]),
        .O(\cur_in_w_reg[6] [2]));
  FDRE \patch_reg_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[0][7]_0 [0]),
        .Q(\patch_reg_reg[0]_9 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[0][7]_0 [1]),
        .Q(\patch_reg_reg[0]_9 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[0][7]_0 [2]),
        .Q(\patch_reg_reg[0]_9 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[0][7]_0 [3]),
        .Q(\patch_reg_reg[0]_9 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[0][7]_0 [4]),
        .Q(\patch_reg_reg[0]_9 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[0][7]_0 [5]),
        .Q(\patch_reg_reg[0]_9 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[0][7]_0 [6]),
        .Q(\patch_reg_reg[0]_9 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[0][7]_0 [7]),
        .Q(\patch_reg_reg[0]_9 [7]),
        .R(1'b0));
  FDRE \patch_reg_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[1][7]_0 [0]),
        .Q(\patch_reg_reg[1]_10 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[1][7]_0 [1]),
        .Q(\patch_reg_reg[1]_10 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[1][7]_0 [2]),
        .Q(\patch_reg_reg[1]_10 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[1][7]_0 [3]),
        .Q(\patch_reg_reg[1]_10 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[1][7]_0 [4]),
        .Q(\patch_reg_reg[1]_10 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[1][7]_0 [5]),
        .Q(\patch_reg_reg[1]_10 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[1][7]_0 [6]),
        .Q(\patch_reg_reg[1]_10 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[1][7]_0 [7]),
        .Q(\patch_reg_reg[1]_10 [7]),
        .R(1'b0));
  FDRE \patch_reg_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[2][7]_0 [0]),
        .Q(\patch_reg_reg[2]_11 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[2][7]_0 [1]),
        .Q(\patch_reg_reg[2]_11 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[2][7]_0 [2]),
        .Q(\patch_reg_reg[2]_11 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[2][7]_0 [3]),
        .Q(\patch_reg_reg[2]_11 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[2][7]_0 [4]),
        .Q(\patch_reg_reg[2]_11 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[2][7]_0 [5]),
        .Q(\patch_reg_reg[2]_11 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[2][7]_0 [6]),
        .Q(\patch_reg_reg[2]_11 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[2][7]_0 [7]),
        .Q(\patch_reg_reg[2]_11 [7]),
        .R(1'b0));
  FDRE \patch_reg_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[3][7]_0 [0]),
        .Q(\patch_reg_reg[3]_12 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[3][7]_0 [1]),
        .Q(\patch_reg_reg[3]_12 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[3][7]_0 [2]),
        .Q(\patch_reg_reg[3]_12 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[3][7]_0 [3]),
        .Q(\patch_reg_reg[3]_12 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[3][7]_0 [4]),
        .Q(\patch_reg_reg[3]_12 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[3][7]_0 [5]),
        .Q(\patch_reg_reg[3]_12 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[3][7]_0 [6]),
        .Q(\patch_reg_reg[3]_12 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[3][7]_0 [7]),
        .Q(\patch_reg_reg[3]_12 [7]),
        .R(1'b0));
  FDRE \patch_reg_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[4][7]_0 [0]),
        .Q(\patch_reg_reg[4]_13 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[4][7]_0 [1]),
        .Q(\patch_reg_reg[4]_13 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[4][7]_0 [2]),
        .Q(\patch_reg_reg[4]_13 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[4][7]_0 [3]),
        .Q(\patch_reg_reg[4]_13 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[4][7]_0 [4]),
        .Q(\patch_reg_reg[4]_13 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[4][7]_0 [5]),
        .Q(\patch_reg_reg[4]_13 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[4][7]_0 [6]),
        .Q(\patch_reg_reg[4]_13 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[4][7]_0 [7]),
        .Q(\patch_reg_reg[4]_13 [7]),
        .R(1'b0));
  FDRE \patch_reg_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[5][7]_0 [0]),
        .Q(\patch_reg_reg[5]_14 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[5][7]_0 [1]),
        .Q(\patch_reg_reg[5]_14 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[5][7]_0 [2]),
        .Q(\patch_reg_reg[5]_14 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[5][7]_0 [3]),
        .Q(\patch_reg_reg[5]_14 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[5][7]_0 [4]),
        .Q(\patch_reg_reg[5]_14 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[5][7]_0 [5]),
        .Q(\patch_reg_reg[5]_14 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[5][7]_0 [6]),
        .Q(\patch_reg_reg[5]_14 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[5][7]_0 [7]),
        .Q(\patch_reg_reg[5]_14 [7]),
        .R(1'b0));
  FDRE \patch_reg_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[6][7]_0 [0]),
        .Q(\patch_reg_reg[6]_15 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[6][7]_0 [1]),
        .Q(\patch_reg_reg[6]_15 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[6][7]_0 [2]),
        .Q(\patch_reg_reg[6]_15 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[6][7]_0 [3]),
        .Q(\patch_reg_reg[6]_15 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[6][7]_0 [4]),
        .Q(\patch_reg_reg[6]_15 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[6][7]_0 [5]),
        .Q(\patch_reg_reg[6]_15 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[6][7]_0 [6]),
        .Q(\patch_reg_reg[6]_15 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[6][7]_0 [7]),
        .Q(\patch_reg_reg[6]_15 [7]),
        .R(1'b0));
  FDRE \patch_reg_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[7][7]_0 [0]),
        .Q(\patch_reg_reg[7]_16 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[7][7]_0 [1]),
        .Q(\patch_reg_reg[7]_16 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[7][7]_0 [2]),
        .Q(\patch_reg_reg[7]_16 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[7][7]_0 [3]),
        .Q(\patch_reg_reg[7]_16 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[7][7]_0 [4]),
        .Q(\patch_reg_reg[7]_16 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[7][7]_0 [5]),
        .Q(\patch_reg_reg[7]_16 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[7][7]_0 [6]),
        .Q(\patch_reg_reg[7]_16 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[7][7]_0 [7]),
        .Q(\patch_reg_reg[7]_16 [7]),
        .R(1'b0));
  FDRE \patch_reg_reg[8][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[8][7]_0 [0]),
        .Q(\patch_reg_reg[8]_17 [0]),
        .R(1'b0));
  FDRE \patch_reg_reg[8][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[8][7]_0 [1]),
        .Q(\patch_reg_reg[8]_17 [1]),
        .R(1'b0));
  FDRE \patch_reg_reg[8][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[8][7]_0 [2]),
        .Q(\patch_reg_reg[8]_17 [2]),
        .R(1'b0));
  FDRE \patch_reg_reg[8][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[8][7]_0 [3]),
        .Q(\patch_reg_reg[8]_17 [3]),
        .R(1'b0));
  FDRE \patch_reg_reg[8][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[8][7]_0 [4]),
        .Q(\patch_reg_reg[8]_17 [4]),
        .R(1'b0));
  FDRE \patch_reg_reg[8][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[8][7]_0 [5]),
        .Q(\patch_reg_reg[8]_17 [5]),
        .R(1'b0));
  FDRE \patch_reg_reg[8][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[8][7]_0 [6]),
        .Q(\patch_reg_reg[8]_17 [6]),
        .R(1'b0));
  FDRE \patch_reg_reg[8][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\patch_reg_reg[8][7]_0 [7]),
        .Q(\patch_reg_reg[8]_17 [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pix[0]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(pix[0]),
        .O(\pix[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[10]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[10]),
        .O(\pix[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[11]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[11]),
        .O(\pix[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[12]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[12]),
        .O(\pix[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[13]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[13]),
        .O(\pix[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[14]_i_1 
       (.I0(\co[7]_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\pix[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[14]_i_2 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[14]),
        .O(\pix[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[1]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[1]),
        .O(\pix[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[2]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[2]),
        .O(\pix[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[3]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[3]),
        .O(\pix[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[4]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[4]),
        .O(\pix[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[5]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[5]),
        .O(\pix[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[6]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[6]),
        .O(\pix[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[7]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[7]),
        .O(\pix[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[8]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[8]),
        .O(\pix[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pix[9]_i_1 
       (.I0(\FSM_onehot_state_reg[12]_i_2_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(p_1_in[9]),
        .O(\pix[9]_i_1_n_0 ));
  FDCE \pix_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[0]_i_1_n_0 ),
        .Q(pix[0]));
  FDCE \pix_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[10]_i_1_n_0 ),
        .Q(pix[10]));
  FDCE \pix_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[11]_i_1_n_0 ),
        .Q(pix[11]));
  FDCE \pix_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[12]_i_1_n_0 ),
        .Q(pix[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_reg[12]_i_2 
       (.CI(\pix_reg[8]_i_2_n_0 ),
        .CO({\pix_reg[12]_i_2_n_0 ,\pix_reg[12]_i_2_n_1 ,\pix_reg[12]_i_2_n_2 ,\pix_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(pix[12:9]));
  FDCE \pix_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[13]_i_1_n_0 ),
        .Q(pix[13]));
  FDCE \pix_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[14]_i_2_n_0 ),
        .Q(pix[14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_reg[14]_i_3 
       (.CI(\pix_reg[12]_i_2_n_0 ),
        .CO({\NLW_pix_reg[14]_i_3_CO_UNCONNECTED [3:1],\pix_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pix_reg[14]_i_3_O_UNCONNECTED [3:2],p_1_in[14:13]}),
        .S({1'b0,1'b0,pix[14:13]}));
  FDCE \pix_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[1]_i_1_n_0 ),
        .Q(pix[1]));
  FDCE \pix_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[2]_i_1_n_0 ),
        .Q(pix[2]));
  FDCE \pix_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[3]_i_1_n_0 ),
        .Q(pix[3]));
  FDCE \pix_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[4]_i_1_n_0 ),
        .Q(pix[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\pix_reg[4]_i_2_n_0 ,\pix_reg[4]_i_2_n_1 ,\pix_reg[4]_i_2_n_2 ,\pix_reg[4]_i_2_n_3 }),
        .CYINIT(pix[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(pix[4:1]));
  FDCE \pix_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[5]_i_1_n_0 ),
        .Q(pix[5]));
  FDCE \pix_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[6]_i_1_n_0 ),
        .Q(pix[6]));
  FDCE \pix_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[7]_i_1_n_0 ),
        .Q(pix[7]));
  FDCE \pix_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[8]_i_1_n_0 ),
        .Q(pix[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_reg[8]_i_2 
       (.CI(\pix_reg[4]_i_2_n_0 ),
        .CO({\pix_reg[8]_i_2_n_0 ,\pix_reg[8]_i_2_n_1 ,\pix_reg[8]_i_2_n_2 ,\pix_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(pix[8:5]));
  FDCE \pix_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\pix[14]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\pix[9]_i_1_n_0 ),
        .Q(pix[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    pool_start_i_1
       (.I0(pool_start_reg[0]),
        .I1(pool_start_reg[1]),
        .I2(pool_start_reg_0),
        .I3(conv_done),
        .O(pool_start));
  FDCE \target_col_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_col_reg_n_0_[0] ),
        .Q(\target_col_reg[1]_0 [0]));
  FDCE \target_col_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_col_reg_n_0_[1] ),
        .Q(\target_col_reg[1]_0 [1]));
  FDCE \target_col_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_col_reg_n_0_[2] ),
        .Q(conv_target_col[2]));
  FDCE \target_col_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_col_reg_n_0_[3] ),
        .Q(conv_target_col[3]));
  FDCE \target_col_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_col_reg_n_0_[4] ),
        .Q(conv_target_col[4]));
  FDCE \target_col_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_col_reg_n_0_[5] ),
        .Q(conv_target_col[5]));
  FDCE \target_col_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_col_reg_n_0_[6] ),
        .Q(conv_target_col[6]));
  FDCE \target_row_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_row_reg_n_0_[0] ),
        .Q(\target_row_reg[1]_0 [0]));
  FDCE \target_row_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_row_reg_n_0_[1] ),
        .Q(\target_row_reg[1]_0 [1]));
  FDCE \target_row_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_row_reg_n_0_[2] ),
        .Q(conv_target_row[2]));
  FDCE \target_row_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_row_reg_n_0_[3] ),
        .Q(conv_target_row[3]));
  FDCE \target_row_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_row_reg_n_0_[4] ),
        .Q(conv_target_row[4]));
  FDCE \target_row_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_row_reg_n_0_[5] ),
        .Q(conv_target_row[5]));
  FDCE \target_row_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[3] ),
        .CLR(done_reg_1),
        .D(\cur_row_reg_n_0_[6] ),
        .Q(conv_target_row[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \total_pixels[12]_i_11 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\total_pixels[12]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_pixels[12]_i_12 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(\total_pixels[12]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_pixels[12]_i_13 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\total_pixels[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \total_pixels[12]_i_14 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\total_pixels[12]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \total_pixels[12]_i_15 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .O(\total_pixels[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \total_pixels[12]_i_16 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .O(\total_pixels[12]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \total_pixels[12]_i_17 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\total_pixels[12]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7080)) 
    \total_pixels[12]_i_18 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\total_pixels[12]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \total_pixels[12]_i_2 
       (.I0(\total_pixels_reg[13]_i_4_n_7 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\total_pixels[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \total_pixels[12]_i_3 
       (.I0(\total_pixels_reg[12]_i_10_n_4 ),
        .I1(Q[4]),
        .I2(Q[2]),
        .O(\total_pixels[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \total_pixels[12]_i_4 
       (.I0(\total_pixels_reg[12]_i_10_n_5 ),
        .I1(Q[4]),
        .I2(Q[1]),
        .O(\total_pixels[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_pixels[12]_i_5 
       (.I0(Q[4]),
        .I1(Q[0]),
        .O(\total_pixels[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8F70)) 
    \total_pixels[12]_i_6 
       (.I0(Q[3]),
        .I1(\total_pixels_reg[13]_i_4_n_7 ),
        .I2(Q[4]),
        .I3(\total_pixels_reg[13]_i_4_n_2 ),
        .O(\total_pixels[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h87F078F0)) 
    \total_pixels[12]_i_7 
       (.I0(Q[2]),
        .I1(\total_pixels_reg[12]_i_10_n_4 ),
        .I2(\total_pixels_reg[13]_i_4_n_7 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\total_pixels[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    \total_pixels[12]_i_8 
       (.I0(Q[1]),
        .I1(\total_pixels_reg[12]_i_10_n_5 ),
        .I2(\total_pixels_reg[12]_i_10_n_4 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\total_pixels[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h96CC)) 
    \total_pixels[12]_i_9 
       (.I0(Q[0]),
        .I1(\total_pixels_reg[12]_i_10_n_5 ),
        .I2(Q[1]),
        .I3(Q[4]),
        .O(\total_pixels[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_pixels[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\co_reg[0]_0 ),
        .O(total_pixels));
  LUT2 #(
    .INIT(4'h8)) 
    \total_pixels[13]_i_3 
       (.I0(Q[4]),
        .I1(\total_pixels_reg[13]_i_4_n_2 ),
        .O(\total_pixels[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \total_pixels[13]_i_5 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\total_pixels[13]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \total_pixels[13]_i_6 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\total_pixels[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \total_pixels[8]_i_2 
       (.I0(\total_pixels_reg[12]_i_10_n_7 ),
        .I1(Q[0]),
        .I2(Q[3]),
        .O(\total_pixels[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \total_pixels[8]_i_3 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(\total_pixels_reg[12]_i_10_n_7 ),
        .O(\total_pixels[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \total_pixels[8]_i_4 
       (.I0(Q[1]),
        .O(\total_pixels[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_pixels[8]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\total_pixels[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \total_pixels[8]_i_6 
       (.I0(Q[3]),
        .I1(\total_pixels_reg[12]_i_10_n_7 ),
        .I2(Q[0]),
        .I3(\total_pixels_reg[12]_i_10_n_6 ),
        .O(\total_pixels[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h66AA96AA)) 
    \total_pixels[8]_i_7 
       (.I0(\total_pixels_reg[12]_i_10_n_7 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\total_pixels[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \total_pixels[8]_i_8 
       (.I0(Q[1]),
        .O(\total_pixels[8]_i_8_n_0 ));
  FDCE \total_pixels_reg[10] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[10]),
        .Q(\total_pixels_reg_n_0_[10] ));
  FDCE \total_pixels_reg[11] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[11]),
        .Q(\total_pixels_reg_n_0_[11] ));
  FDCE \total_pixels_reg[12] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[12]),
        .Q(\total_pixels_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \total_pixels_reg[12]_i_1 
       (.CI(\total_pixels_reg[8]_i_1_n_0 ),
        .CO({\total_pixels_reg[12]_i_1_n_0 ,\total_pixels_reg[12]_i_1_n_1 ,\total_pixels_reg[12]_i_1_n_2 ,\total_pixels_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_pixels[12]_i_2_n_0 ,\total_pixels[12]_i_3_n_0 ,\total_pixels[12]_i_4_n_0 ,\total_pixels[12]_i_5_n_0 }),
        .O(total_pixels0[12:9]),
        .S({\total_pixels[12]_i_6_n_0 ,\total_pixels[12]_i_7_n_0 ,\total_pixels[12]_i_8_n_0 ,\total_pixels[12]_i_9_n_0 }));
  CARRY4 \total_pixels_reg[12]_i_10 
       (.CI(1'b0),
        .CO({\total_pixels_reg[12]_i_10_n_0 ,\total_pixels_reg[12]_i_10_n_1 ,\total_pixels_reg[12]_i_10_n_2 ,\total_pixels_reg[12]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_pixels[12]_i_11_n_0 ,\total_pixels[12]_i_12_n_0 ,\total_pixels[12]_i_13_n_0 ,\total_pixels[12]_i_14_n_0 }),
        .O({\total_pixels_reg[12]_i_10_n_4 ,\total_pixels_reg[12]_i_10_n_5 ,\total_pixels_reg[12]_i_10_n_6 ,\total_pixels_reg[12]_i_10_n_7 }),
        .S({\total_pixels[12]_i_15_n_0 ,\total_pixels[12]_i_16_n_0 ,\total_pixels[12]_i_17_n_0 ,\total_pixels[12]_i_18_n_0 }));
  FDCE \total_pixels_reg[13] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[13]),
        .Q(\total_pixels_reg_n_0_[13] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \total_pixels_reg[13]_i_2 
       (.CI(\total_pixels_reg[12]_i_1_n_0 ),
        .CO(\NLW_total_pixels_reg[13]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_total_pixels_reg[13]_i_2_O_UNCONNECTED [3:1],total_pixels0[13]}),
        .S({1'b0,1'b0,1'b0,\total_pixels[13]_i_3_n_0 }));
  CARRY4 \total_pixels_reg[13]_i_4 
       (.CI(\total_pixels_reg[12]_i_10_n_0 ),
        .CO({\NLW_total_pixels_reg[13]_i_4_CO_UNCONNECTED [3:2],\total_pixels_reg[13]_i_4_n_2 ,\NLW_total_pixels_reg[13]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\total_pixels[13]_i_5_n_0 }),
        .O({\NLW_total_pixels_reg[13]_i_4_O_UNCONNECTED [3:1],\total_pixels_reg[13]_i_4_n_7 }),
        .S({1'b0,1'b0,1'b1,\total_pixels[13]_i_6_n_0 }));
  FDCE \total_pixels_reg[4] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(Q[0]),
        .Q(\total_pixels_reg_n_0_[4] ));
  FDCE \total_pixels_reg[5] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[5]),
        .Q(\total_pixels_reg_n_0_[5] ));
  FDCE \total_pixels_reg[6] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[6]),
        .Q(\total_pixels_reg_n_0_[6] ));
  FDCE \total_pixels_reg[7] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[7]),
        .Q(\total_pixels_reg_n_0_[7] ));
  FDCE \total_pixels_reg[8] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[8]),
        .Q(\total_pixels_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \total_pixels_reg[8]_i_1 
       (.CI(1'b0),
        .CO({\total_pixels_reg[8]_i_1_n_0 ,\total_pixels_reg[8]_i_1_n_1 ,\total_pixels_reg[8]_i_1_n_2 ,\total_pixels_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_pixels[8]_i_2_n_0 ,\total_pixels[8]_i_3_n_0 ,\total_pixels[8]_i_4_n_0 ,\total_pixels[8]_i_5_n_0 }),
        .O(total_pixels0[8:5]),
        .S({\total_pixels[8]_i_6_n_0 ,\total_pixels[8]_i_7_n_0 ,\total_pixels[8]_i_8_n_0 ,1'b0}));
  FDCE \total_pixels_reg[9] 
       (.C(s00_axi_aclk),
        .CE(total_pixels),
        .CLR(done_reg_1),
        .D(total_pixels0[9]),
        .Q(\total_pixels_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_10 
       (.I0(A_0[11]),
        .I1(A_0[8]),
        .O(\weight_offset[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_11 
       (.I0(A_0[10]),
        .I1(A_0[7]),
        .O(\weight_offset[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_13 
       (.I0(A_0[9]),
        .I1(A_0[6]),
        .O(\weight_offset[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_14 
       (.I0(A_0[8]),
        .I1(A_0[5]),
        .O(\weight_offset[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_15 
       (.I0(A_0[7]),
        .I1(A_0[4]),
        .O(\weight_offset[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_16 
       (.I0(A_0[6]),
        .I1(A_0[3]),
        .O(\weight_offset[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFD4D400D400D400)) 
    \weight_offset[11]_i_19 
       (.I0(\weight_offset[11]_i_36_n_0 ),
        .I1(\weight_offset_reg[11]_i_37_n_6 ),
        .I2(\weight_offset_reg[11]_i_38_n_7 ),
        .I3(\weight_offset[11]_i_39_n_0 ),
        .I4(\FSM_onehot_state_reg[9]_0 [6]),
        .I5(co[3]),
        .O(\weight_offset[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0800080000000)) 
    \weight_offset[11]_i_20 
       (.I0(\weight_offset_reg[11]_i_29_n_5 ),
        .I1(\weight_offset_reg[11]_i_40_n_4 ),
        .I2(\FSM_onehot_state_reg[9]_0 [6]),
        .I3(co[1]),
        .I4(\weight_offset[11]_i_41_n_0 ),
        .I5(co[2]),
        .O(\weight_offset[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h807FFF007F80FF00)) 
    \weight_offset[11]_i_21 
       (.I0(co[1]),
        .I1(\weight_offset_reg[11]_i_40_n_4 ),
        .I2(\weight_offset_reg[11]_i_29_n_5 ),
        .I3(\weight_offset[11]_i_41_n_0 ),
        .I4(\FSM_onehot_state_reg[9]_0 [6]),
        .I5(co[2]),
        .O(\weight_offset[11]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \weight_offset[11]_i_22 
       (.I0(\FSM_onehot_state_reg[9]_0 [7]),
        .I1(co[0]),
        .I2(\weight_offset_reg[11]_i_37_n_7 ),
        .I3(\weight_offset_reg[11]_i_29_n_4 ),
        .O(\weight_offset[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB42DD2B4D2B44BD2)) 
    \weight_offset[11]_i_23 
       (.I0(\weight_offset[11]_i_42_n_0 ),
        .I1(\weight_offset[11]_i_43_n_0 ),
        .I2(\weight_offset[11]_i_44_n_0 ),
        .I3(\weight_offset[11]_i_45_n_0 ),
        .I4(\weight_offset_reg[11]_i_37_n_5 ),
        .I5(\weight_offset_reg[11]_i_38_n_6 ),
        .O(\weight_offset[11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hB42DD2B4D2B44BD2)) 
    \weight_offset[11]_i_24 
       (.I0(\weight_offset[11]_i_46_n_0 ),
        .I1(\weight_offset[11]_i_47_n_0 ),
        .I2(\weight_offset[11]_i_48_n_0 ),
        .I3(\weight_offset[11]_i_36_n_0 ),
        .I4(\weight_offset_reg[11]_i_37_n_6 ),
        .I5(\weight_offset_reg[11]_i_38_n_7 ),
        .O(\weight_offset[11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6669699969996999)) 
    \weight_offset[11]_i_25 
       (.I0(\weight_offset[11]_i_49_n_0 ),
        .I1(\weight_offset[11]_i_47_n_0 ),
        .I2(\weight_offset_reg[11]_i_29_n_4 ),
        .I3(\weight_offset_reg[11]_i_37_n_7 ),
        .I4(co[0]),
        .I5(\FSM_onehot_state_reg[9]_0 [7]),
        .O(\weight_offset[11]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \weight_offset[11]_i_26 
       (.I0(\weight_offset[11]_i_22_n_0 ),
        .I1(co[1]),
        .I2(\FSM_onehot_state_reg[9]_0 [6]),
        .I3(\weight_offset_reg[11]_i_40_n_4 ),
        .I4(\weight_offset_reg[11]_i_29_n_5 ),
        .O(\weight_offset[11]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_28 
       (.I0(\weight_offset_reg[11]_i_29_n_5 ),
        .I1(\weight_offset_reg[11]_i_40_n_4 ),
        .O(\weight_offset[11]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \weight_offset[11]_i_30 
       (.I0(\weight_offset_reg[11]_i_40_n_4 ),
        .I1(\weight_offset_reg[11]_i_29_n_5 ),
        .I2(\FSM_onehot_state_reg[9]_0 [6]),
        .I3(co[0]),
        .O(\weight_offset[11]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_31 
       (.I0(\weight_offset_reg[11]_i_29_n_6 ),
        .I1(\weight_offset_reg[11]_i_40_n_5 ),
        .O(\weight_offset[11]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_32 
       (.I0(\weight_offset_reg[11]_i_29_n_7 ),
        .I1(\weight_offset_reg[11]_i_40_n_6 ),
        .O(\weight_offset[11]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_33 
       (.I0(\weight_offset_reg[7]_i_10_n_4 ),
        .I1(\weight_offset_reg[11]_i_40_n_7 ),
        .O(\weight_offset[11]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_34 
       (.I0(ci[7]),
        .I1(ci[4]),
        .O(\weight_offset[11]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_35 
       (.I0(ci[6]),
        .I1(ci[3]),
        .O(\weight_offset[11]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_36 
       (.I0(co[1]),
        .I1(\FSM_onehot_state_reg[9]_0 [7]),
        .O(\weight_offset[11]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \weight_offset[11]_i_39 
       (.I0(\FSM_onehot_state_reg[9]_0 [7]),
        .I1(co[2]),
        .I2(\weight_offset_reg[11]_i_37_n_5 ),
        .I3(\weight_offset_reg[11]_i_38_n_6 ),
        .O(\weight_offset[11]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \weight_offset[11]_i_41 
       (.I0(\FSM_onehot_state_reg[9]_0 [7]),
        .I1(co[1]),
        .I2(\weight_offset_reg[11]_i_37_n_6 ),
        .I3(\weight_offset_reg[11]_i_38_n_7 ),
        .O(\weight_offset[11]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_42 
       (.I0(co[3]),
        .I1(\FSM_onehot_state_reg[9]_0 [6]),
        .O(\weight_offset[11]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \weight_offset[11]_i_43 
       (.I0(\FSM_onehot_state_reg[9]_0 [7]),
        .I1(co[1]),
        .I2(\weight_offset_reg[11]_i_37_n_6 ),
        .I3(\weight_offset_reg[11]_i_38_n_7 ),
        .O(\weight_offset[11]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878888777)) 
    \weight_offset[11]_i_44 
       (.I0(co[4]),
        .I1(\FSM_onehot_state_reg[9]_0 [6]),
        .I2(\FSM_onehot_state_reg[9]_0 [7]),
        .I3(co[3]),
        .I4(\weight_offset_reg[11]_i_37_n_4 ),
        .I5(\weight_offset_reg[11]_i_38_n_1 ),
        .O(\weight_offset[11]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_45 
       (.I0(co[2]),
        .I1(\FSM_onehot_state_reg[9]_0 [7]),
        .O(\weight_offset[11]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_46 
       (.I0(co[2]),
        .I1(\FSM_onehot_state_reg[9]_0 [6]),
        .O(\weight_offset[11]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \weight_offset[11]_i_47 
       (.I0(\weight_offset_reg[11]_i_29_n_5 ),
        .I1(\weight_offset_reg[11]_i_40_n_4 ),
        .I2(\FSM_onehot_state_reg[9]_0 [6]),
        .I3(co[1]),
        .O(\weight_offset[11]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878888777)) 
    \weight_offset[11]_i_48 
       (.I0(co[3]),
        .I1(\FSM_onehot_state_reg[9]_0 [6]),
        .I2(\FSM_onehot_state_reg[9]_0 [7]),
        .I3(co[2]),
        .I4(\weight_offset_reg[11]_i_37_n_5 ),
        .I5(\weight_offset_reg[11]_i_38_n_6 ),
        .O(\weight_offset[11]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878888777)) 
    \weight_offset[11]_i_49 
       (.I0(co[2]),
        .I1(\FSM_onehot_state_reg[9]_0 [6]),
        .I2(\FSM_onehot_state_reg[9]_0 [7]),
        .I3(co[1]),
        .I4(\weight_offset_reg[11]_i_37_n_6 ),
        .I5(\weight_offset_reg[11]_i_38_n_7 ),
        .O(\weight_offset[11]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_5 
       (.I0(w_base1[11]),
        .I1(C[11]),
        .O(\weight_offset[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB42DD2B4D2B44BD2)) 
    \weight_offset[11]_i_50 
       (.I0(\weight_offset[11]_i_78_n_0 ),
        .I1(\weight_offset[11]_i_79_n_0 ),
        .I2(\weight_offset[11]_i_80_n_0 ),
        .I3(\weight_offset[11]_i_81_n_0 ),
        .I4(\weight_offset_reg[11]_i_37_n_4 ),
        .I5(\weight_offset_reg[11]_i_38_n_1 ),
        .O(\weight_offset[11]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_51 
       (.I0(\FSM_onehot_state_reg[9]_0 [0]),
        .I1(co[6]),
        .I2(co[4]),
        .I3(\FSM_onehot_state_reg[9]_0 [2]),
        .I4(co[5]),
        .I5(\FSM_onehot_state_reg[9]_0 [1]),
        .O(\weight_offset[11]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_52 
       (.I0(\FSM_onehot_state_reg[9]_0 [0]),
        .I1(co[5]),
        .I2(co[3]),
        .I3(\FSM_onehot_state_reg[9]_0 [2]),
        .I4(co[4]),
        .I5(\FSM_onehot_state_reg[9]_0 [1]),
        .O(\weight_offset[11]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_53 
       (.I0(\FSM_onehot_state_reg[9]_0 [0]),
        .I1(co[4]),
        .I2(co[2]),
        .I3(\FSM_onehot_state_reg[9]_0 [2]),
        .I4(co[3]),
        .I5(\FSM_onehot_state_reg[9]_0 [1]),
        .O(\weight_offset[11]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_54 
       (.I0(\FSM_onehot_state_reg[9]_0 [0]),
        .I1(co[3]),
        .I2(co[1]),
        .I3(\FSM_onehot_state_reg[9]_0 [2]),
        .I4(co[2]),
        .I5(\FSM_onehot_state_reg[9]_0 [1]),
        .O(\weight_offset[11]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \weight_offset[11]_i_55 
       (.I0(\weight_offset[11]_i_51_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [1]),
        .I2(co[6]),
        .I3(\weight_offset[11]_i_82_n_0 ),
        .I4(co[7]),
        .I5(\FSM_onehot_state_reg[9]_0 [0]),
        .O(\weight_offset[11]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \weight_offset[11]_i_56 
       (.I0(\weight_offset[11]_i_52_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [1]),
        .I2(co[5]),
        .I3(\weight_offset[11]_i_83_n_0 ),
        .I4(co[6]),
        .I5(\FSM_onehot_state_reg[9]_0 [0]),
        .O(\weight_offset[11]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \weight_offset[11]_i_57 
       (.I0(\weight_offset[11]_i_53_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [1]),
        .I2(co[4]),
        .I3(\weight_offset[11]_i_84_n_0 ),
        .I4(co[5]),
        .I5(\FSM_onehot_state_reg[9]_0 [0]),
        .O(\weight_offset[11]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \weight_offset[11]_i_58 
       (.I0(\weight_offset[11]_i_54_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [1]),
        .I2(co[3]),
        .I3(\weight_offset[11]_i_85_n_0 ),
        .I4(co[4]),
        .I5(\FSM_onehot_state_reg[9]_0 [0]),
        .O(\weight_offset[11]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_59 
       (.I0(\FSM_onehot_state_reg[9]_0 [3]),
        .I1(co[6]),
        .I2(co[4]),
        .I3(\FSM_onehot_state_reg[9]_0 [5]),
        .I4(co[5]),
        .I5(\FSM_onehot_state_reg[9]_0 [4]),
        .O(\weight_offset[11]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_6 
       (.I0(w_base1[10]),
        .I1(C[10]),
        .O(\weight_offset[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_60 
       (.I0(\FSM_onehot_state_reg[9]_0 [3]),
        .I1(co[5]),
        .I2(co[3]),
        .I3(\FSM_onehot_state_reg[9]_0 [5]),
        .I4(co[4]),
        .I5(\FSM_onehot_state_reg[9]_0 [4]),
        .O(\weight_offset[11]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_61 
       (.I0(\FSM_onehot_state_reg[9]_0 [3]),
        .I1(co[4]),
        .I2(co[2]),
        .I3(\FSM_onehot_state_reg[9]_0 [5]),
        .I4(co[3]),
        .I5(\FSM_onehot_state_reg[9]_0 [4]),
        .O(\weight_offset[11]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_62 
       (.I0(\FSM_onehot_state_reg[9]_0 [3]),
        .I1(co[3]),
        .I2(co[1]),
        .I3(\FSM_onehot_state_reg[9]_0 [5]),
        .I4(co[2]),
        .I5(\FSM_onehot_state_reg[9]_0 [4]),
        .O(\weight_offset[11]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \weight_offset[11]_i_63 
       (.I0(\weight_offset[11]_i_59_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [4]),
        .I2(co[6]),
        .I3(\weight_offset[11]_i_86_n_0 ),
        .I4(co[7]),
        .I5(\FSM_onehot_state_reg[9]_0 [3]),
        .O(\weight_offset[11]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \weight_offset[11]_i_64 
       (.I0(\weight_offset[11]_i_60_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [4]),
        .I2(co[5]),
        .I3(\weight_offset[11]_i_87_n_0 ),
        .I4(co[6]),
        .I5(\FSM_onehot_state_reg[9]_0 [3]),
        .O(\weight_offset[11]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \weight_offset[11]_i_65 
       (.I0(\weight_offset[11]_i_61_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [4]),
        .I2(co[4]),
        .I3(\weight_offset[11]_i_88_n_0 ),
        .I4(co[5]),
        .I5(\FSM_onehot_state_reg[9]_0 [3]),
        .O(\weight_offset[11]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \weight_offset[11]_i_66 
       (.I0(\weight_offset[11]_i_62_n_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 [4]),
        .I2(co[3]),
        .I3(\weight_offset[11]_i_89_n_0 ),
        .I4(co[4]),
        .I5(\FSM_onehot_state_reg[9]_0 [3]),
        .O(\weight_offset[11]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \weight_offset[11]_i_67 
       (.I0(\FSM_onehot_state_reg[9]_0 [2]),
        .I1(co[6]),
        .I2(\FSM_onehot_state_reg[9]_0 [1]),
        .I3(co[7]),
        .O(\weight_offset[11]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \weight_offset[11]_i_68 
       (.I0(\FSM_onehot_state_reg[9]_0 [0]),
        .I1(co[7]),
        .I2(co[5]),
        .I3(\FSM_onehot_state_reg[9]_0 [2]),
        .I4(co[6]),
        .I5(\FSM_onehot_state_reg[9]_0 [1]),
        .O(\weight_offset[11]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \weight_offset[11]_i_69 
       (.I0(\FSM_onehot_state_reg[9]_0 [1]),
        .I1(co[6]),
        .I2(\FSM_onehot_state_reg[9]_0 [2]),
        .I3(co[7]),
        .O(\weight_offset[11]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_7 
       (.I0(w_base1[9]),
        .I1(C[9]),
        .O(\weight_offset[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE73F50007800F000)) 
    \weight_offset[11]_i_70 
       (.I0(co[5]),
        .I1(\FSM_onehot_state_reg[9]_0 [0]),
        .I2(co[6]),
        .I3(\FSM_onehot_state_reg[9]_0 [2]),
        .I4(co[7]),
        .I5(\FSM_onehot_state_reg[9]_0 [1]),
        .O(\weight_offset[11]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \weight_offset[11]_i_71 
       (.I0(\FSM_onehot_state_reg[9]_0 [3]),
        .I1(co[3]),
        .I2(co[1]),
        .I3(\FSM_onehot_state_reg[9]_0 [5]),
        .I4(co[2]),
        .I5(\FSM_onehot_state_reg[9]_0 [4]),
        .O(\weight_offset[11]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \weight_offset[11]_i_72 
       (.I0(\FSM_onehot_state_reg[9]_0 [4]),
        .I1(co[1]),
        .I2(\FSM_onehot_state_reg[9]_0 [5]),
        .I3(co[0]),
        .O(\weight_offset[11]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weight_offset[11]_i_73 
       (.I0(co[1]),
        .I1(\FSM_onehot_state_reg[9]_0 [3]),
        .O(\weight_offset[11]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h9C936C9393939393)) 
    \weight_offset[11]_i_74 
       (.I0(co[2]),
        .I1(\weight_offset[11]_i_90_n_0 ),
        .I2(\FSM_onehot_state_reg[9]_0 [4]),
        .I3(\FSM_onehot_state_reg[9]_0 [5]),
        .I4(co[0]),
        .I5(co[1]),
        .O(\weight_offset[11]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \weight_offset[11]_i_75 
       (.I0(co[0]),
        .I1(\FSM_onehot_state_reg[9]_0 [5]),
        .I2(co[1]),
        .I3(\FSM_onehot_state_reg[9]_0 [4]),
        .I4(\FSM_onehot_state_reg[9]_0 [3]),
        .I5(co[2]),
        .O(\weight_offset[11]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \weight_offset[11]_i_76 
       (.I0(\FSM_onehot_state_reg[9]_0 [3]),
        .I1(co[1]),
        .I2(\FSM_onehot_state_reg[9]_0 [4]),
        .I3(co[0]),
        .O(\weight_offset[11]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weight_offset[11]_i_77 
       (.I0(co[0]),
        .I1(\FSM_onehot_state_reg[9]_0 [3]),
        .O(\weight_offset[11]_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_78 
       (.I0(co[4]),
        .I1(\FSM_onehot_state_reg[9]_0 [6]),
        .O(\weight_offset[11]_i_78_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \weight_offset[11]_i_79 
       (.I0(\FSM_onehot_state_reg[9]_0 [7]),
        .I1(co[2]),
        .I2(\weight_offset_reg[11]_i_37_n_5 ),
        .I3(\weight_offset_reg[11]_i_38_n_6 ),
        .O(\weight_offset[11]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[11]_i_8 
       (.I0(w_base1[8]),
        .I1(C[8]),
        .O(\weight_offset[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    \weight_offset[11]_i_80 
       (.I0(\weight_offset_reg[11]_i_91_n_7 ),
        .I1(co[4]),
        .I2(\FSM_onehot_state_reg[9]_0 [7]),
        .I3(\FSM_onehot_state_reg[9]_0 [6]),
        .I4(co[5]),
        .O(\weight_offset[11]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_81 
       (.I0(co[3]),
        .I1(\FSM_onehot_state_reg[9]_0 [7]),
        .O(\weight_offset[11]_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_82 
       (.I0(co[5]),
        .I1(\FSM_onehot_state_reg[9]_0 [2]),
        .O(\weight_offset[11]_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_83 
       (.I0(co[4]),
        .I1(\FSM_onehot_state_reg[9]_0 [2]),
        .O(\weight_offset[11]_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_84 
       (.I0(co[3]),
        .I1(\FSM_onehot_state_reg[9]_0 [2]),
        .O(\weight_offset[11]_i_84_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_85 
       (.I0(co[2]),
        .I1(\FSM_onehot_state_reg[9]_0 [2]),
        .O(\weight_offset[11]_i_85_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_86 
       (.I0(co[5]),
        .I1(\FSM_onehot_state_reg[9]_0 [5]),
        .O(\weight_offset[11]_i_86_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_87 
       (.I0(co[4]),
        .I1(\FSM_onehot_state_reg[9]_0 [5]),
        .O(\weight_offset[11]_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_88 
       (.I0(co[3]),
        .I1(\FSM_onehot_state_reg[9]_0 [5]),
        .O(\weight_offset[11]_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_89 
       (.I0(co[2]),
        .I1(\FSM_onehot_state_reg[9]_0 [5]),
        .O(\weight_offset[11]_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[11]_i_90 
       (.I0(co[3]),
        .I1(\FSM_onehot_state_reg[9]_0 [3]),
        .O(\weight_offset[11]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hE73F50007800F000)) 
    \weight_offset[11]_i_92 
       (.I0(co[5]),
        .I1(\FSM_onehot_state_reg[9]_0 [3]),
        .I2(co[6]),
        .I3(\FSM_onehot_state_reg[9]_0 [5]),
        .I4(co[7]),
        .I5(\FSM_onehot_state_reg[9]_0 [4]),
        .O(\weight_offset[11]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weight_offset[3]_i_2 
       (.I0(\k_idx_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .O(\weight_offset[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weight_offset[3]_i_3 
       (.I0(\k_idx_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .O(\weight_offset[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weight_offset[3]_i_4 
       (.I0(\k_idx_reg_n_0_[0] ),
        .I1(p_0_in[0]),
        .O(\weight_offset[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \weight_offset[3]_i_5 
       (.I0(p_0_in[2]),
        .I1(\k_idx_reg_n_0_[2] ),
        .I2(\k_idx_reg_n_0_[3] ),
        .I3(p_0_in[3]),
        .O(\weight_offset[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \weight_offset[3]_i_6 
       (.I0(p_0_in[1]),
        .I1(\k_idx_reg_n_0_[1] ),
        .I2(\k_idx_reg_n_0_[2] ),
        .I3(p_0_in[2]),
        .O(\weight_offset[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \weight_offset[3]_i_7 
       (.I0(p_0_in[0]),
        .I1(\k_idx_reg_n_0_[0] ),
        .I2(\k_idx_reg_n_0_[1] ),
        .I3(p_0_in[1]),
        .O(\weight_offset[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[3]_i_8 
       (.I0(p_0_in[0]),
        .I1(\k_idx_reg_n_0_[0] ),
        .O(\weight_offset[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_11 
       (.I0(w_base1[3]),
        .I1(C[3]),
        .O(\weight_offset[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_12 
       (.I0(w_base1[2]),
        .I1(C[2]),
        .O(\weight_offset[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_13 
       (.I0(A_0[1]),
        .I1(ci[1]),
        .O(\weight_offset[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_14 
       (.I0(A_0[0]),
        .I1(ci[0]),
        .O(\weight_offset[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_15 
       (.I0(A_0[5]),
        .I1(A_0[2]),
        .O(\weight_offset[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_16 
       (.I0(A_0[4]),
        .I1(A_0[1]),
        .O(\weight_offset[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_17 
       (.I0(A_0[3]),
        .I1(A_0[0]),
        .O(\weight_offset[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \weight_offset[7]_i_19 
       (.I0(\FSM_onehot_state_reg[9]_0 [0]),
        .I1(co[3]),
        .I2(co[1]),
        .I3(\FSM_onehot_state_reg[9]_0 [2]),
        .I4(co[2]),
        .I5(\FSM_onehot_state_reg[9]_0 [1]),
        .O(\weight_offset[7]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \weight_offset[7]_i_20 
       (.I0(\FSM_onehot_state_reg[9]_0 [1]),
        .I1(co[1]),
        .I2(\FSM_onehot_state_reg[9]_0 [2]),
        .I3(co[0]),
        .O(\weight_offset[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weight_offset[7]_i_21 
       (.I0(co[1]),
        .I1(\FSM_onehot_state_reg[9]_0 [0]),
        .O(\weight_offset[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9C936C9393939393)) 
    \weight_offset[7]_i_22 
       (.I0(co[2]),
        .I1(\weight_offset[7]_i_29_n_0 ),
        .I2(\FSM_onehot_state_reg[9]_0 [1]),
        .I3(\FSM_onehot_state_reg[9]_0 [2]),
        .I4(co[0]),
        .I5(co[1]),
        .O(\weight_offset[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \weight_offset[7]_i_23 
       (.I0(co[0]),
        .I1(\FSM_onehot_state_reg[9]_0 [2]),
        .I2(co[1]),
        .I3(\FSM_onehot_state_reg[9]_0 [1]),
        .I4(\FSM_onehot_state_reg[9]_0 [0]),
        .I5(co[2]),
        .O(\weight_offset[7]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \weight_offset[7]_i_24 
       (.I0(\FSM_onehot_state_reg[9]_0 [0]),
        .I1(co[1]),
        .I2(\FSM_onehot_state_reg[9]_0 [1]),
        .I3(co[0]),
        .O(\weight_offset[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \weight_offset[7]_i_25 
       (.I0(co[0]),
        .I1(\FSM_onehot_state_reg[9]_0 [0]),
        .O(\weight_offset[7]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_26 
       (.I0(ci[5]),
        .I1(ci[2]),
        .O(\weight_offset[7]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_27 
       (.I0(ci[4]),
        .I1(ci[1]),
        .O(\weight_offset[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_28 
       (.I0(ci[3]),
        .I1(ci[0]),
        .O(\weight_offset[7]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \weight_offset[7]_i_29 
       (.I0(co[3]),
        .I1(\FSM_onehot_state_reg[9]_0 [0]),
        .O(\weight_offset[7]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \weight_offset[7]_i_3 
       (.I0(p_0_in[3]),
        .I1(\k_idx_reg_n_0_[3] ),
        .I2(p_0_in[4]),
        .O(\weight_offset[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_6 
       (.I0(w_base1[7]),
        .I1(C[7]),
        .O(\weight_offset[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_7 
       (.I0(w_base1[6]),
        .I1(C[6]),
        .O(\weight_offset[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_8 
       (.I0(w_base1[5]),
        .I1(C[5]),
        .O(\weight_offset[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \weight_offset[7]_i_9 
       (.I0(w_base1[4]),
        .I1(C[4]),
        .O(\weight_offset[7]_i_9_n_0 ));
  FDCE \weight_offset_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[0]),
        .Q(\weight_offset_reg[11]_0 [0]));
  FDCE \weight_offset_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[10]),
        .Q(\weight_offset_reg[11]_0 [10]));
  FDCE \weight_offset_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[11]),
        .Q(\weight_offset_reg[11]_0 [11]));
  CARRY4 \weight_offset_reg[11]_i_1 
       (.CI(\weight_offset_reg[7]_i_1_n_0 ),
        .CO({\NLW_weight_offset_reg[11]_i_1_CO_UNCONNECTED [3],\weight_offset_reg[11]_i_1_n_1 ,\weight_offset_reg[11]_i_1_n_2 ,\weight_offset_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(weight_offset0[11:8]),
        .S(p_0_in[11:8]));
  CARRY4 \weight_offset_reg[11]_i_12 
       (.CI(1'b0),
        .CO({\weight_offset_reg[11]_i_12_n_0 ,\weight_offset_reg[11]_i_12_n_1 ,\weight_offset_reg[11]_i_12_n_2 ,\weight_offset_reg[11]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\weight_offset[11]_i_28_n_0 ,\weight_offset_reg[11]_i_29_n_6 ,\weight_offset_reg[11]_i_29_n_7 ,\weight_offset_reg[7]_i_10_n_4 }),
        .O(A_0[6:3]),
        .S({\weight_offset[11]_i_30_n_0 ,\weight_offset[11]_i_31_n_0 ,\weight_offset[11]_i_32_n_0 ,\weight_offset[11]_i_33_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_17 
       (.CI(\weight_offset_reg[11]_i_18_n_0 ),
        .CO({\NLW_weight_offset_reg[11]_i_17_CO_UNCONNECTED [3:2],C[11],\NLW_weight_offset_reg[11]_i_17_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_weight_offset_reg[11]_i_17_O_UNCONNECTED [3:1],C[10]}),
        .S({1'b0,1'b0,1'b1,ci[7]}));
  CARRY4 \weight_offset_reg[11]_i_18 
       (.CI(\weight_offset_reg[7]_i_18_n_0 ),
        .CO({\weight_offset_reg[11]_i_18_n_0 ,\weight_offset_reg[11]_i_18_n_1 ,\weight_offset_reg[11]_i_18_n_2 ,\weight_offset_reg[11]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ci[7:6]}),
        .O(C[9:6]),
        .S({ci[6:5],\weight_offset[11]_i_34_n_0 ,\weight_offset[11]_i_35_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_2 
       (.CI(\weight_offset_reg[7]_i_2_n_0 ),
        .CO({\NLW_weight_offset_reg[11]_i_2_CO_UNCONNECTED [3],\weight_offset_reg[11]_i_2_n_1 ,\weight_offset_reg[11]_i_2_n_2 ,\weight_offset_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,w_base1[10:8]}),
        .O(p_0_in[11:8]),
        .S({\weight_offset[11]_i_5_n_0 ,\weight_offset[11]_i_6_n_0 ,\weight_offset[11]_i_7_n_0 ,\weight_offset[11]_i_8_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_27 
       (.CI(\weight_offset_reg[11]_i_9_n_0 ),
        .CO(\NLW_weight_offset_reg[11]_i_27_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_weight_offset_reg[11]_i_27_O_UNCONNECTED [3:1],A_0[11]}),
        .S({1'b0,1'b0,1'b0,\weight_offset[11]_i_50_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_29 
       (.CI(\weight_offset_reg[7]_i_10_n_0 ),
        .CO({\weight_offset_reg[11]_i_29_n_0 ,\weight_offset_reg[11]_i_29_n_1 ,\weight_offset_reg[11]_i_29_n_2 ,\weight_offset_reg[11]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\weight_offset[11]_i_51_n_0 ,\weight_offset[11]_i_52_n_0 ,\weight_offset[11]_i_53_n_0 ,\weight_offset[11]_i_54_n_0 }),
        .O({\weight_offset_reg[11]_i_29_n_4 ,\weight_offset_reg[11]_i_29_n_5 ,\weight_offset_reg[11]_i_29_n_6 ,\weight_offset_reg[11]_i_29_n_7 }),
        .S({\weight_offset[11]_i_55_n_0 ,\weight_offset[11]_i_56_n_0 ,\weight_offset[11]_i_57_n_0 ,\weight_offset[11]_i_58_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_3 
       (.CI(\weight_offset_reg[11]_i_4_n_0 ),
        .CO({\NLW_weight_offset_reg[11]_i_3_CO_UNCONNECTED [3:1],\weight_offset_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,A_0[10]}),
        .O({\NLW_weight_offset_reg[11]_i_3_O_UNCONNECTED [3:2],w_base1[11:10]}),
        .S({1'b0,1'b0,\weight_offset[11]_i_10_n_0 ,\weight_offset[11]_i_11_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_37 
       (.CI(\weight_offset_reg[11]_i_40_n_0 ),
        .CO({\weight_offset_reg[11]_i_37_n_0 ,\weight_offset_reg[11]_i_37_n_1 ,\weight_offset_reg[11]_i_37_n_2 ,\weight_offset_reg[11]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({\weight_offset[11]_i_59_n_0 ,\weight_offset[11]_i_60_n_0 ,\weight_offset[11]_i_61_n_0 ,\weight_offset[11]_i_62_n_0 }),
        .O({\weight_offset_reg[11]_i_37_n_4 ,\weight_offset_reg[11]_i_37_n_5 ,\weight_offset_reg[11]_i_37_n_6 ,\weight_offset_reg[11]_i_37_n_7 }),
        .S({\weight_offset[11]_i_63_n_0 ,\weight_offset[11]_i_64_n_0 ,\weight_offset[11]_i_65_n_0 ,\weight_offset[11]_i_66_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_38 
       (.CI(\weight_offset_reg[11]_i_29_n_0 ),
        .CO({\NLW_weight_offset_reg[11]_i_38_CO_UNCONNECTED [3],\weight_offset_reg[11]_i_38_n_1 ,\NLW_weight_offset_reg[11]_i_38_CO_UNCONNECTED [1],\weight_offset_reg[11]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\weight_offset[11]_i_67_n_0 ,\weight_offset[11]_i_68_n_0 }),
        .O({\NLW_weight_offset_reg[11]_i_38_O_UNCONNECTED [3:2],\weight_offset_reg[11]_i_38_n_6 ,\weight_offset_reg[11]_i_38_n_7 }),
        .S({1'b0,1'b1,\weight_offset[11]_i_69_n_0 ,\weight_offset[11]_i_70_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_4 
       (.CI(\weight_offset_reg[7]_i_5_n_0 ),
        .CO({\weight_offset_reg[11]_i_4_n_0 ,\weight_offset_reg[11]_i_4_n_1 ,\weight_offset_reg[11]_i_4_n_2 ,\weight_offset_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(A_0[9:6]),
        .O(w_base1[9:6]),
        .S({\weight_offset[11]_i_13_n_0 ,\weight_offset[11]_i_14_n_0 ,\weight_offset[11]_i_15_n_0 ,\weight_offset[11]_i_16_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_40 
       (.CI(1'b0),
        .CO({\weight_offset_reg[11]_i_40_n_0 ,\weight_offset_reg[11]_i_40_n_1 ,\weight_offset_reg[11]_i_40_n_2 ,\weight_offset_reg[11]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\weight_offset[11]_i_71_n_0 ,\weight_offset[11]_i_72_n_0 ,\weight_offset[11]_i_73_n_0 ,1'b0}),
        .O({\weight_offset_reg[11]_i_40_n_4 ,\weight_offset_reg[11]_i_40_n_5 ,\weight_offset_reg[11]_i_40_n_6 ,\weight_offset_reg[11]_i_40_n_7 }),
        .S({\weight_offset[11]_i_74_n_0 ,\weight_offset[11]_i_75_n_0 ,\weight_offset[11]_i_76_n_0 ,\weight_offset[11]_i_77_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_9 
       (.CI(\weight_offset_reg[11]_i_12_n_0 ),
        .CO({\weight_offset_reg[11]_i_9_n_0 ,\weight_offset_reg[11]_i_9_n_1 ,\weight_offset_reg[11]_i_9_n_2 ,\weight_offset_reg[11]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\weight_offset[11]_i_19_n_0 ,\weight_offset[11]_i_20_n_0 ,\weight_offset[11]_i_21_n_0 ,\weight_offset[11]_i_22_n_0 }),
        .O(A_0[10:7]),
        .S({\weight_offset[11]_i_23_n_0 ,\weight_offset[11]_i_24_n_0 ,\weight_offset[11]_i_25_n_0 ,\weight_offset[11]_i_26_n_0 }));
  CARRY4 \weight_offset_reg[11]_i_91 
       (.CI(\weight_offset_reg[11]_i_37_n_0 ),
        .CO(\NLW_weight_offset_reg[11]_i_91_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_weight_offset_reg[11]_i_91_O_UNCONNECTED [3:1],\weight_offset_reg[11]_i_91_n_7 }),
        .S({1'b0,1'b0,1'b0,\weight_offset[11]_i_92_n_0 }));
  FDCE \weight_offset_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[1]),
        .Q(\weight_offset_reg[11]_0 [1]));
  FDCE \weight_offset_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[2]),
        .Q(\weight_offset_reg[11]_0 [2]));
  FDCE \weight_offset_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[3]),
        .Q(\weight_offset_reg[11]_0 [3]));
  CARRY4 \weight_offset_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\weight_offset_reg[3]_i_1_n_0 ,\weight_offset_reg[3]_i_1_n_1 ,\weight_offset_reg[3]_i_1_n_2 ,\weight_offset_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\weight_offset[3]_i_2_n_0 ,\weight_offset[3]_i_3_n_0 ,\weight_offset[3]_i_4_n_0 ,1'b0}),
        .O(weight_offset0[3:0]),
        .S({\weight_offset[3]_i_5_n_0 ,\weight_offset[3]_i_6_n_0 ,\weight_offset[3]_i_7_n_0 ,\weight_offset[3]_i_8_n_0 }));
  FDCE \weight_offset_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[4]),
        .Q(\weight_offset_reg[11]_0 [4]));
  FDCE \weight_offset_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[5]),
        .Q(\weight_offset_reg[11]_0 [5]));
  FDCE \weight_offset_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[6]),
        .Q(\weight_offset_reg[11]_0 [6]));
  FDCE \weight_offset_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[7]),
        .Q(\weight_offset_reg[11]_0 [7]));
  CARRY4 \weight_offset_reg[7]_i_1 
       (.CI(\weight_offset_reg[3]_i_1_n_0 ),
        .CO({\weight_offset_reg[7]_i_1_n_0 ,\weight_offset_reg[7]_i_1_n_1 ,\weight_offset_reg[7]_i_1_n_2 ,\weight_offset_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[4]}),
        .O(weight_offset0[7:4]),
        .S({p_0_in[7:5],\weight_offset[7]_i_3_n_0 }));
  CARRY4 \weight_offset_reg[7]_i_10 
       (.CI(1'b0),
        .CO({\weight_offset_reg[7]_i_10_n_0 ,\weight_offset_reg[7]_i_10_n_1 ,\weight_offset_reg[7]_i_10_n_2 ,\weight_offset_reg[7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\weight_offset[7]_i_19_n_0 ,\weight_offset[7]_i_20_n_0 ,\weight_offset[7]_i_21_n_0 ,1'b0}),
        .O({\weight_offset_reg[7]_i_10_n_4 ,A_0[2:0]}),
        .S({\weight_offset[7]_i_22_n_0 ,\weight_offset[7]_i_23_n_0 ,\weight_offset[7]_i_24_n_0 ,\weight_offset[7]_i_25_n_0 }));
  CARRY4 \weight_offset_reg[7]_i_18 
       (.CI(1'b0),
        .CO({\weight_offset_reg[7]_i_18_n_0 ,\weight_offset_reg[7]_i_18_n_1 ,\weight_offset_reg[7]_i_18_n_2 ,\weight_offset_reg[7]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({ci[5:3],1'b0}),
        .O(C[5:2]),
        .S({\weight_offset[7]_i_26_n_0 ,\weight_offset[7]_i_27_n_0 ,\weight_offset[7]_i_28_n_0 ,ci[2]}));
  CARRY4 \weight_offset_reg[7]_i_2 
       (.CI(\weight_offset_reg[7]_i_4_n_0 ),
        .CO({\weight_offset_reg[7]_i_2_n_0 ,\weight_offset_reg[7]_i_2_n_1 ,\weight_offset_reg[7]_i_2_n_2 ,\weight_offset_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(w_base1[7:4]),
        .O(p_0_in[7:4]),
        .S({\weight_offset[7]_i_6_n_0 ,\weight_offset[7]_i_7_n_0 ,\weight_offset[7]_i_8_n_0 ,\weight_offset[7]_i_9_n_0 }));
  CARRY4 \weight_offset_reg[7]_i_4 
       (.CI(1'b0),
        .CO({\weight_offset_reg[7]_i_4_n_0 ,\weight_offset_reg[7]_i_4_n_1 ,\weight_offset_reg[7]_i_4_n_2 ,\weight_offset_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({w_base1[3:2],A_0[1:0]}),
        .O(p_0_in[3:0]),
        .S({\weight_offset[7]_i_11_n_0 ,\weight_offset[7]_i_12_n_0 ,\weight_offset[7]_i_13_n_0 ,\weight_offset[7]_i_14_n_0 }));
  CARRY4 \weight_offset_reg[7]_i_5 
       (.CI(1'b0),
        .CO({\weight_offset_reg[7]_i_5_n_0 ,\weight_offset_reg[7]_i_5_n_1 ,\weight_offset_reg[7]_i_5_n_2 ,\weight_offset_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({A_0[5:3],1'b0}),
        .O(w_base1[5:2]),
        .S({\weight_offset[7]_i_15_n_0 ,\weight_offset[7]_i_16_n_0 ,\weight_offset[7]_i_17_n_0 ,A_0[2]}));
  FDCE \weight_offset_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[8]),
        .Q(\weight_offset_reg[11]_0 [8]));
  FDCE \weight_offset_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .CLR(done_reg_1),
        .D(weight_offset0[9]),
        .Q(\weight_offset_reg[11]_0 [9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fc_relu
   (fc_done,
    Q,
    \cur_type_reg[0] ,
    ADDRBWRADDR,
    din,
    done_reg_0,
    \out_pixel_reg[7]_0 ,
    \fmap_val_reg[7]_0 ,
    DI,
    \fmap_val_reg[7]_1 ,
    \fmap_val_reg[7]_2 ,
    \fmap_val_reg[0]_0 ,
    \fmap_val_reg[4]_0 ,
    \fmap_val_reg[5]_0 ,
    \fmap_val_reg[6]_0 ,
    \fmap_val_reg[7]_3 ,
    S,
    CO,
    O,
    \fmap_val_reg[2]_0 ,
    \fmap_val_reg[5]_1 ,
    \fmap_rd_addr_reg[11]_0 ,
    s00_axi_aclk,
    done_reg_1,
    mem_reg,
    \FSM_onehot_state_reg[0] ,
    reg0_written,
    \FSM_onehot_state_reg[0]_0 ,
    mem_reg_0,
    mem_reg_0_0,
    mem_reg_0_7,
    mem_reg_0_0_0,
    mem_reg_0_7_0,
    pool_dst,
    wr_en,
    \FSM_sequential_state_reg[2]_i_3_0 ,
    DOBDO,
    \FSM_sequential_state_reg[0]_0 ,
    \acc_reg[31]_0 ,
    \acc_reg[19]_0 ,
    \acc[3]_i_6__0_0 ,
    \acc[3]_i_6__0_1 ,
    \acc_reg[19]_1 ,
    \acc_reg[19]_2 ,
    \acc_reg[3]_i_2__0_0 ,
    D,
    cur_relu_en);
  output fc_done;
  output [1:0]Q;
  output \cur_type_reg[0] ;
  output [11:0]ADDRBWRADDR;
  output [7:0]din;
  output done_reg_0;
  output [7:0]\out_pixel_reg[7]_0 ;
  output [7:0]\fmap_val_reg[7]_0 ;
  output [0:0]DI;
  output [0:0]\fmap_val_reg[7]_1 ;
  output [0:0]\fmap_val_reg[7]_2 ;
  output [0:0]\fmap_val_reg[0]_0 ;
  output \fmap_val_reg[4]_0 ;
  output \fmap_val_reg[5]_0 ;
  output \fmap_val_reg[6]_0 ;
  output \fmap_val_reg[7]_3 ;
  output [1:0]S;
  output [0:0]CO;
  output [0:0]O;
  output [2:0]\fmap_val_reg[2]_0 ;
  output [2:0]\fmap_val_reg[5]_1 ;
  output [11:0]\fmap_rd_addr_reg[11]_0 ;
  input s00_axi_aclk;
  input done_reg_1;
  input [1:0]mem_reg;
  input [1:0]\FSM_onehot_state_reg[0] ;
  input reg0_written;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [11:0]mem_reg_0;
  input mem_reg_0_0;
  input [7:0]mem_reg_0_7;
  input mem_reg_0_0_0;
  input [7:0]mem_reg_0_7_0;
  input pool_dst;
  input wr_en;
  input [9:0]\FSM_sequential_state_reg[2]_i_3_0 ;
  input [7:0]DOBDO;
  input \FSM_sequential_state_reg[0]_0 ;
  input [7:0]\acc_reg[31]_0 ;
  input [12:0]\acc_reg[19]_0 ;
  input [0:0]\acc[3]_i_6__0_0 ;
  input [0:0]\acc[3]_i_6__0_1 ;
  input [0:0]\acc_reg[19]_1 ;
  input [1:0]\acc_reg[19]_2 ;
  input [0:0]\acc_reg[3]_i_2__0_0 ;
  input [7:0]D;
  input cur_relu_en;

  wire [11:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]DI;
  wire [7:0]DOBDO;
  wire [1:0]\FSM_onehot_state_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_4 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_5 ;
  wire \FSM_sequential_state_reg[2]_i_13_n_6 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_3 ;
  wire [9:0]\FSM_sequential_state_reg[2]_i_3_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_4 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_5 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_6 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_7 ;
  wire \FSM_sequential_state_reg[2]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_9_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_9_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_9_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_9_n_4 ;
  wire \FSM_sequential_state_reg[2]_i_9_n_5 ;
  wire \FSM_sequential_state_reg[2]_i_9_n_6 ;
  wire \FSM_sequential_state_reg[2]_i_9_n_7 ;
  wire [0:0]O;
  wire [1:0]Q;
  wire [1:0]S;
  wire [31:0]acc0;
  wire [2:0]acc1;
  wire \acc[0]_i_1__0_n_0 ;
  wire \acc[10]_i_1__0_n_0 ;
  wire \acc[11]_i_1__0_n_0 ;
  wire \acc[11]_i_3__0_n_0 ;
  wire \acc[11]_i_4__0_n_0 ;
  wire \acc[11]_i_5__0_n_0 ;
  wire \acc[11]_i_6__0_n_0 ;
  wire \acc[12]_i_1__0_n_0 ;
  wire \acc[13]_i_1__0_n_0 ;
  wire \acc[14]_i_1__0_n_0 ;
  wire \acc[15]_i_1__0_n_0 ;
  wire \acc[15]_i_3_n_0 ;
  wire \acc[15]_i_4__0_n_0 ;
  wire \acc[15]_i_5__0_n_0 ;
  wire \acc[15]_i_6__0_n_0 ;
  wire \acc[16]_i_1__0_n_0 ;
  wire \acc[17]_i_1__0_n_0 ;
  wire \acc[18]_i_1__0_n_0 ;
  wire \acc[19]_i_1__0_n_0 ;
  wire \acc[19]_i_5__0_n_0 ;
  wire \acc[19]_i_6__0_n_0 ;
  wire \acc[1]_i_1__0_n_0 ;
  wire \acc[20]_i_1__0_n_0 ;
  wire \acc[21]_i_1__0_n_0 ;
  wire \acc[22]_i_1__0_n_0 ;
  wire \acc[23]_i_1__0_n_0 ;
  wire \acc[23]_i_3__0_n_0 ;
  wire \acc[23]_i_4__0_n_0 ;
  wire \acc[23]_i_5__0_n_0 ;
  wire \acc[23]_i_6__0_n_0 ;
  wire \acc[24]_i_1__0_n_0 ;
  wire \acc[25]_i_1__0_n_0 ;
  wire \acc[26]_i_1__0_n_0 ;
  wire \acc[27]_i_1__0_n_0 ;
  wire \acc[27]_i_3__0_n_0 ;
  wire \acc[27]_i_4__0_n_0 ;
  wire \acc[27]_i_5__0_n_0 ;
  wire \acc[27]_i_6__0_n_0 ;
  wire \acc[28]_i_1__0_n_0 ;
  wire \acc[29]_i_1__0_n_0 ;
  wire \acc[2]_i_1__0_n_0 ;
  wire \acc[30]_i_1__0_n_0 ;
  wire \acc[31]_i_1__0_n_0 ;
  wire \acc[31]_i_3_n_0 ;
  wire \acc[31]_i_4__0_n_0 ;
  wire \acc[31]_i_5__0_n_0 ;
  wire \acc[31]_i_6__0_n_0 ;
  wire \acc[3]_i_11__0_n_0 ;
  wire \acc[3]_i_12__0_n_0 ;
  wire \acc[3]_i_13__0_n_0 ;
  wire \acc[3]_i_14__0_n_0 ;
  wire \acc[3]_i_1__0_n_0 ;
  wire \acc[3]_i_3__0_n_0 ;
  wire \acc[3]_i_4__0_n_0 ;
  wire \acc[3]_i_5__0_n_0 ;
  wire [0:0]\acc[3]_i_6__0_0 ;
  wire [0:0]\acc[3]_i_6__0_1 ;
  wire \acc[3]_i_6__0_n_0 ;
  wire \acc[3]_i_9__0_n_0 ;
  wire \acc[4]_i_1__0_n_0 ;
  wire \acc[5]_i_1__0_n_0 ;
  wire \acc[6]_i_1__0_n_0 ;
  wire \acc[7]_i_1__0_n_0 ;
  wire \acc[7]_i_3__0_n_0 ;
  wire \acc[7]_i_4__0_n_0 ;
  wire \acc[7]_i_5__0_n_0 ;
  wire \acc[7]_i_6__0_n_0 ;
  wire \acc[8]_i_1__0_n_0 ;
  wire \acc[9]_i_1__0_n_0 ;
  wire \acc_reg[11]_i_2__0_n_0 ;
  wire \acc_reg[11]_i_2__0_n_1 ;
  wire \acc_reg[11]_i_2__0_n_2 ;
  wire \acc_reg[11]_i_2__0_n_3 ;
  wire \acc_reg[15]_i_2__0_n_0 ;
  wire \acc_reg[15]_i_2__0_n_1 ;
  wire \acc_reg[15]_i_2__0_n_2 ;
  wire \acc_reg[15]_i_2__0_n_3 ;
  wire [12:0]\acc_reg[19]_0 ;
  wire [0:0]\acc_reg[19]_1 ;
  wire [1:0]\acc_reg[19]_2 ;
  wire \acc_reg[19]_i_2__0_n_0 ;
  wire \acc_reg[19]_i_2__0_n_1 ;
  wire \acc_reg[19]_i_2__0_n_2 ;
  wire \acc_reg[19]_i_2__0_n_3 ;
  wire \acc_reg[23]_i_2__0_n_0 ;
  wire \acc_reg[23]_i_2__0_n_1 ;
  wire \acc_reg[23]_i_2__0_n_2 ;
  wire \acc_reg[23]_i_2__0_n_3 ;
  wire \acc_reg[27]_i_2__0_n_0 ;
  wire \acc_reg[27]_i_2__0_n_1 ;
  wire \acc_reg[27]_i_2__0_n_2 ;
  wire \acc_reg[27]_i_2__0_n_3 ;
  wire [7:0]\acc_reg[31]_0 ;
  wire \acc_reg[31]_i_2_n_1 ;
  wire \acc_reg[31]_i_2_n_2 ;
  wire \acc_reg[31]_i_2_n_3 ;
  wire [0:0]\acc_reg[3]_i_2__0_0 ;
  wire \acc_reg[3]_i_2__0_n_0 ;
  wire \acc_reg[3]_i_2__0_n_1 ;
  wire \acc_reg[3]_i_2__0_n_2 ;
  wire \acc_reg[3]_i_2__0_n_3 ;
  wire \acc_reg[3]_i_7__0_n_1 ;
  wire \acc_reg[3]_i_7__0_n_2 ;
  wire \acc_reg[3]_i_7__0_n_3 ;
  wire \acc_reg[7]_i_2__0_n_0 ;
  wire \acc_reg[7]_i_2__0_n_1 ;
  wire \acc_reg[7]_i_2__0_n_2 ;
  wire \acc_reg[7]_i_2__0_n_3 ;
  wire \acc_reg_n_0_[0] ;
  wire \acc_reg_n_0_[10] ;
  wire \acc_reg_n_0_[11] ;
  wire \acc_reg_n_0_[12] ;
  wire \acc_reg_n_0_[13] ;
  wire \acc_reg_n_0_[14] ;
  wire \acc_reg_n_0_[15] ;
  wire \acc_reg_n_0_[18] ;
  wire \acc_reg_n_0_[19] ;
  wire \acc_reg_n_0_[1] ;
  wire \acc_reg_n_0_[20] ;
  wire \acc_reg_n_0_[21] ;
  wire \acc_reg_n_0_[22] ;
  wire \acc_reg_n_0_[23] ;
  wire \acc_reg_n_0_[24] ;
  wire \acc_reg_n_0_[25] ;
  wire \acc_reg_n_0_[26] ;
  wire \acc_reg_n_0_[27] ;
  wire \acc_reg_n_0_[28] ;
  wire \acc_reg_n_0_[29] ;
  wire \acc_reg_n_0_[2] ;
  wire \acc_reg_n_0_[30] ;
  wire \acc_reg_n_0_[31] ;
  wire \acc_reg_n_0_[3] ;
  wire \acc_reg_n_0_[4] ;
  wire \acc_reg_n_0_[5] ;
  wire \acc_reg_n_0_[6] ;
  wire \acc_reg_n_0_[7] ;
  wire \acc_reg_n_0_[8] ;
  wire \acc_reg_n_0_[9] ;
  wire cur_relu_en;
  wire \cur_type_reg[0] ;
  wire [7:0]din;
  wire done_reg_0;
  wire done_reg_1;
  wire fc_done;
  wire [11:0]fc_weight_addr;
  wire \fmap_rd_addr[11]_i_1_n_0 ;
  wire [11:0]\fmap_rd_addr_reg[11]_0 ;
  wire fmap_val;
  wire [0:0]\fmap_val_reg[0]_0 ;
  wire [2:0]\fmap_val_reg[2]_0 ;
  wire \fmap_val_reg[4]_0 ;
  wire \fmap_val_reg[5]_0 ;
  wire [2:0]\fmap_val_reg[5]_1 ;
  wire \fmap_val_reg[6]_0 ;
  wire [7:0]\fmap_val_reg[7]_0 ;
  wire [0:0]\fmap_val_reg[7]_1 ;
  wire [0:0]\fmap_val_reg[7]_2 ;
  wire \fmap_val_reg[7]_3 ;
  wire idx;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[10]_i_1_n_0 ;
  wire \idx[11]_i_2_n_0 ;
  wire \idx[1]_i_1_n_0 ;
  wire \idx[2]_i_1_n_0 ;
  wire \idx[3]_i_1_n_0 ;
  wire \idx[4]_i_1_n_0 ;
  wire \idx[5]_i_1_n_0 ;
  wire \idx[6]_i_1_n_0 ;
  wire \idx[7]_i_1_n_0 ;
  wire \idx[8]_i_1_n_0 ;
  wire \idx[9]_i_1_n_0 ;
  wire \idx_reg[11]_i_3_n_2 ;
  wire \idx_reg[11]_i_3_n_3 ;
  wire \idx_reg[4]_i_2_n_0 ;
  wire \idx_reg[4]_i_2_n_1 ;
  wire \idx_reg[4]_i_2_n_2 ;
  wire \idx_reg[4]_i_2_n_3 ;
  wire \idx_reg[4]_i_2_n_7 ;
  wire \idx_reg[8]_i_2_n_0 ;
  wire \idx_reg[8]_i_2_n_1 ;
  wire \idx_reg[8]_i_2_n_2 ;
  wire \idx_reg[8]_i_2_n_3 ;
  wire \idx_reg_n_0_[0] ;
  wire \idx_reg_n_0_[10] ;
  wire \idx_reg_n_0_[11] ;
  wire \idx_reg_n_0_[1] ;
  wire \idx_reg_n_0_[2] ;
  wire \idx_reg_n_0_[3] ;
  wire \idx_reg_n_0_[4] ;
  wire \idx_reg_n_0_[5] ;
  wire \idx_reg_n_0_[6] ;
  wire \idx_reg_n_0_[7] ;
  wire \idx_reg_n_0_[8] ;
  wire \idx_reg_n_0_[9] ;
  wire [11:2]in4;
  wire [1:0]mem_reg;
  wire [11:0]mem_reg_0;
  wire mem_reg_0_0;
  wire mem_reg_0_0_0;
  wire [7:0]mem_reg_0_7;
  wire [7:0]mem_reg_0_7_0;
  wire out_pixel1;
  wire out_pixel10_in;
  wire \out_pixel[0]_i_1__0_n_0 ;
  wire \out_pixel[0]_i_2_n_0 ;
  wire \out_pixel[1]_i_1__0_n_0 ;
  wire \out_pixel[1]_i_2_n_0 ;
  wire \out_pixel[2]_i_1__0_n_0 ;
  wire \out_pixel[2]_i_2_n_0 ;
  wire \out_pixel[3]_i_1__0_n_0 ;
  wire \out_pixel[3]_i_2_n_0 ;
  wire \out_pixel[4]_i_1__0_n_0 ;
  wire \out_pixel[4]_i_2_n_0 ;
  wire \out_pixel[5]_i_1__0_n_0 ;
  wire \out_pixel[5]_i_2_n_0 ;
  wire \out_pixel[6]_i_1__0_n_0 ;
  wire \out_pixel[6]_i_2_n_0 ;
  wire \out_pixel[6]_i_3_n_0 ;
  wire \out_pixel[6]_i_4_n_0 ;
  wire \out_pixel[6]_i_5_n_0 ;
  wire \out_pixel[6]_i_6_n_0 ;
  wire \out_pixel[6]_i_7_n_0 ;
  wire \out_pixel[6]_i_8_n_0 ;
  wire \out_pixel[6]_i_9_n_0 ;
  wire \out_pixel[7]_i_10_n_0 ;
  wire \out_pixel[7]_i_11_n_0 ;
  wire \out_pixel[7]_i_12_n_0 ;
  wire \out_pixel[7]_i_13_n_0 ;
  wire \out_pixel[7]_i_14_n_0 ;
  wire \out_pixel[7]_i_15_n_0 ;
  wire \out_pixel[7]_i_16_n_0 ;
  wire \out_pixel[7]_i_18_n_0 ;
  wire \out_pixel[7]_i_19_n_0 ;
  wire \out_pixel[7]_i_1__0_n_0 ;
  wire \out_pixel[7]_i_20_n_0 ;
  wire \out_pixel[7]_i_21_n_0 ;
  wire \out_pixel[7]_i_22_n_0 ;
  wire \out_pixel[7]_i_23_n_0 ;
  wire \out_pixel[7]_i_24_n_0 ;
  wire \out_pixel[7]_i_25_n_0 ;
  wire \out_pixel[7]_i_27_n_0 ;
  wire \out_pixel[7]_i_28_n_0 ;
  wire \out_pixel[7]_i_29_n_0 ;
  wire \out_pixel[7]_i_2__0_n_0 ;
  wire \out_pixel[7]_i_30_n_0 ;
  wire \out_pixel[7]_i_31_n_0 ;
  wire \out_pixel[7]_i_32_n_0 ;
  wire \out_pixel[7]_i_33_n_0 ;
  wire \out_pixel[7]_i_34_n_0 ;
  wire \out_pixel[7]_i_35_n_0 ;
  wire \out_pixel[7]_i_36_n_0 ;
  wire \out_pixel[7]_i_37_n_0 ;
  wire \out_pixel[7]_i_38_n_0 ;
  wire \out_pixel[7]_i_39_n_0 ;
  wire \out_pixel[7]_i_40_n_0 ;
  wire \out_pixel[7]_i_41_n_0 ;
  wire \out_pixel[7]_i_42_n_0 ;
  wire \out_pixel[7]_i_44_n_0 ;
  wire \out_pixel[7]_i_45_n_0 ;
  wire \out_pixel[7]_i_46_n_0 ;
  wire \out_pixel[7]_i_47_n_0 ;
  wire \out_pixel[7]_i_48_n_0 ;
  wire \out_pixel[7]_i_49_n_0 ;
  wire \out_pixel[7]_i_50_n_0 ;
  wire \out_pixel[7]_i_51_n_0 ;
  wire \out_pixel[7]_i_52_n_0 ;
  wire \out_pixel[7]_i_53_n_0 ;
  wire \out_pixel[7]_i_54_n_0 ;
  wire \out_pixel[7]_i_55_n_0 ;
  wire \out_pixel[7]_i_56_n_0 ;
  wire \out_pixel[7]_i_6_n_0 ;
  wire \out_pixel[7]_i_7_n_0 ;
  wire \out_pixel[7]_i_9_n_0 ;
  wire [7:0]\out_pixel_reg[7]_0 ;
  wire \out_pixel_reg[7]_i_17_n_0 ;
  wire \out_pixel_reg[7]_i_17_n_1 ;
  wire \out_pixel_reg[7]_i_17_n_2 ;
  wire \out_pixel_reg[7]_i_17_n_3 ;
  wire \out_pixel_reg[7]_i_26_n_0 ;
  wire \out_pixel_reg[7]_i_26_n_1 ;
  wire \out_pixel_reg[7]_i_26_n_2 ;
  wire \out_pixel_reg[7]_i_26_n_3 ;
  wire \out_pixel_reg[7]_i_43_n_0 ;
  wire \out_pixel_reg[7]_i_43_n_1 ;
  wire \out_pixel_reg[7]_i_43_n_2 ;
  wire \out_pixel_reg[7]_i_43_n_3 ;
  wire \out_pixel_reg[7]_i_4_n_1 ;
  wire \out_pixel_reg[7]_i_4_n_2 ;
  wire \out_pixel_reg[7]_i_4_n_3 ;
  wire \out_pixel_reg[7]_i_5_n_0 ;
  wire \out_pixel_reg[7]_i_5_n_1 ;
  wire \out_pixel_reg[7]_i_5_n_2 ;
  wire \out_pixel_reg[7]_i_5_n_3 ;
  wire \out_pixel_reg[7]_i_8_n_0 ;
  wire \out_pixel_reg[7]_i_8_n_1 ;
  wire \out_pixel_reg[7]_i_8_n_2 ;
  wire \out_pixel_reg[7]_i_8_n_3 ;
  wire pool_dst;
  wire reg0_written;
  wire relu_en_reg_i_1_n_0;
  wire relu_en_reg_reg_n_0;
  wire s00_axi_aclk;
  wire [2:0]state;
  wire wr_en;
  wire [0:0]\NLW_FSM_sequential_state_reg[2]_i_13_O_UNCONNECTED ;
  wire [3:1]\NLW_FSM_sequential_state_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_FSM_sequential_state_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_acc_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_idx_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_idx_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_out_pixel_reg[7]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_out_pixel_reg[7]_i_26_O_UNCONNECTED ;
  wire [3:1]\NLW_out_pixel_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_pixel_reg[7]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_out_pixel_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_out_pixel_reg[7]_i_43_O_UNCONNECTED ;
  wire [3:0]\NLW_out_pixel_reg[7]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_out_pixel_reg[7]_i_8_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \FSM_onehot_state[8]_i_5 
       (.I0(mem_reg[0]),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .I2(fc_done),
        .I3(\FSM_onehot_state_reg[0] [1]),
        .I4(reg0_written),
        .I5(\FSM_onehot_state_reg[0]_0 ),
        .O(\cur_type_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hC373C370)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_3 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hC38C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_3 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCCB0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_3 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0900000030333933)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\FSM_sequential_state_reg[2]_i_3_0 [7]),
        .I1(\FSM_sequential_state_reg[2]_i_9_n_5 ),
        .I2(mem_reg[1]),
        .I3(mem_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_3_0 [6]),
        .I5(\FSM_sequential_state_reg[2]_i_9_n_6 ),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0900000030333933)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(\FSM_sequential_state_reg[2]_i_3_0 [4]),
        .I1(\FSM_sequential_state_reg[2]_i_13_n_4 ),
        .I2(mem_reg[1]),
        .I3(mem_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_3_0 [3]),
        .I5(\FSM_sequential_state_reg[2]_i_13_n_5 ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF6FFFFFFCFCCC6CC)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(\FSM_sequential_state_reg[2]_i_3_0 [1]),
        .I1(\idx_reg[4]_i_2_n_7 ),
        .I2(mem_reg[1]),
        .I3(mem_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_3_0 [2]),
        .I5(\FSM_sequential_state_reg[2]_i_13_n_6 ),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0100000010111111)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state_reg[2]_i_4_n_6 ),
        .I1(\FSM_sequential_state_reg[2]_i_4_n_5 ),
        .I2(mem_reg[1]),
        .I3(mem_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_3_0 [9]),
        .I5(\FSM_sequential_state_reg[2]_i_4_n_7 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h20008AAA)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\FSM_sequential_state[2]_i_10_n_0 ),
        .I1(mem_reg[1]),
        .I2(mem_reg[0]),
        .I3(\FSM_sequential_state_reg[2]_i_3_0 [8]),
        .I4(\FSM_sequential_state_reg[2]_i_9_n_4 ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h20008AAA)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\FSM_sequential_state[2]_i_11_n_0 ),
        .I1(mem_reg[1]),
        .I2(mem_reg[0]),
        .I3(\FSM_sequential_state_reg[2]_i_3_0 [5]),
        .I4(\FSM_sequential_state_reg[2]_i_9_n_7 ),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00009AAA)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(mem_reg[1]),
        .I2(mem_reg[0]),
        .I3(\FSM_sequential_state_reg[2]_i_3_0 [0]),
        .I4(\FSM_sequential_state[2]_i_12_n_0 ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_BIAS:001,S_WAIT_F:010,S_READ_W:011,S_WAIT_W:100,S_MAC:101,S_READ_F:001,S_OUTPUT:110" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_BIAS:001,S_WAIT_F:010,S_READ_W:011,S_WAIT_W:100,S_MAC:101,S_READ_F:001,S_OUTPUT:110" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_BIAS:001,S_WAIT_F:010,S_READ_W:011,S_WAIT_W:100,S_MAC:101,S_READ_F:001,S_OUTPUT:110" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  CARRY4 \FSM_sequential_state_reg[2]_i_13 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[2]_i_13_n_0 ,\FSM_sequential_state_reg[2]_i_13_n_1 ,\FSM_sequential_state_reg[2]_i_13_n_2 ,\FSM_sequential_state_reg[2]_i_13_n_3 }),
        .CYINIT(\idx_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\FSM_sequential_state_reg[2]_i_13_n_4 ,\FSM_sequential_state_reg[2]_i_13_n_5 ,\FSM_sequential_state_reg[2]_i_13_n_6 ,\NLW_FSM_sequential_state_reg[2]_i_13_O_UNCONNECTED [0]}),
        .S({\idx_reg_n_0_[4] ,\idx_reg_n_0_[3] ,\idx_reg_n_0_[2] ,\idx_reg_n_0_[1] }));
  CARRY4 \FSM_sequential_state_reg[2]_i_2 
       (.CI(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .CO({\NLW_FSM_sequential_state_reg[2]_i_2_CO_UNCONNECTED [3:1],\FSM_sequential_state_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_state_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\FSM_sequential_state_reg[2]_i_4_n_4 }));
  CARRY4 \FSM_sequential_state_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[2]_i_3_n_0 ,\FSM_sequential_state_reg[2]_i_3_n_1 ,\FSM_sequential_state_reg[2]_i_3_n_2 ,\FSM_sequential_state_reg[2]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_state_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[2]_i_5_n_0 ,\FSM_sequential_state[2]_i_6_n_0 ,\FSM_sequential_state[2]_i_7_n_0 ,\FSM_sequential_state[2]_i_8_n_0 }));
  CARRY4 \FSM_sequential_state_reg[2]_i_4 
       (.CI(\FSM_sequential_state_reg[2]_i_9_n_0 ),
        .CO({\NLW_FSM_sequential_state_reg[2]_i_4_CO_UNCONNECTED [3],\FSM_sequential_state_reg[2]_i_4_n_1 ,\FSM_sequential_state_reg[2]_i_4_n_2 ,\FSM_sequential_state_reg[2]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\FSM_sequential_state_reg[2]_i_4_n_4 ,\FSM_sequential_state_reg[2]_i_4_n_5 ,\FSM_sequential_state_reg[2]_i_4_n_6 ,\FSM_sequential_state_reg[2]_i_4_n_7 }),
        .S({1'b1,\idx_reg_n_0_[11] ,\idx_reg_n_0_[10] ,\idx_reg_n_0_[9] }));
  CARRY4 \FSM_sequential_state_reg[2]_i_9 
       (.CI(\FSM_sequential_state_reg[2]_i_13_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_9_n_0 ,\FSM_sequential_state_reg[2]_i_9_n_1 ,\FSM_sequential_state_reg[2]_i_9_n_2 ,\FSM_sequential_state_reg[2]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\FSM_sequential_state_reg[2]_i_9_n_4 ,\FSM_sequential_state_reg[2]_i_9_n_5 ,\FSM_sequential_state_reg[2]_i_9_n_6 ,\FSM_sequential_state_reg[2]_i_9_n_7 }),
        .S({\idx_reg_n_0_[8] ,\idx_reg_n_0_[7] ,\idx_reg_n_0_[6] ,\idx_reg_n_0_[5] }));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[0]_i_1__0 
       (.I0(acc0[0]),
        .I1(state[2]),
        .O(\acc[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \acc[10]_i_1__0 
       (.I0(state[2]),
        .I1(acc0[10]),
        .I2(state[0]),
        .I3(\acc_reg[31]_0 [3]),
        .O(\acc[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \acc[11]_i_1__0 
       (.I0(state[2]),
        .I1(acc0[11]),
        .I2(state[0]),
        .I3(\acc_reg[31]_0 [4]),
        .O(\acc[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[11]_i_34 
       (.I0(\fmap_val_reg[7]_0 [7]),
        .I1(DOBDO[3]),
        .O(\fmap_val_reg[7]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[11]_i_35 
       (.I0(\fmap_val_reg[7]_0 [6]),
        .I1(DOBDO[3]),
        .O(\fmap_val_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[11]_i_36 
       (.I0(\fmap_val_reg[7]_0 [5]),
        .I1(DOBDO[3]),
        .O(\fmap_val_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[11]_i_37 
       (.I0(\fmap_val_reg[7]_0 [4]),
        .I1(DOBDO[3]),
        .O(\fmap_val_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_3__0 
       (.I0(\acc_reg_n_0_[11] ),
        .I1(\acc_reg[19]_0 [7]),
        .O(\acc[11]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_4__0 
       (.I0(\acc_reg_n_0_[10] ),
        .I1(\acc_reg[19]_0 [6]),
        .O(\acc[11]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_5__0 
       (.I0(\acc_reg_n_0_[9] ),
        .I1(\acc_reg[19]_0 [5]),
        .O(\acc[11]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_6__0 
       (.I0(\acc_reg_n_0_[8] ),
        .I1(\acc_reg[19]_0 [4]),
        .O(\acc[11]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \acc[12]_i_1__0 
       (.I0(state[2]),
        .I1(acc0[12]),
        .I2(state[0]),
        .I3(\acc_reg[31]_0 [5]),
        .O(\acc[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \acc[13]_i_1__0 
       (.I0(state[2]),
        .I1(acc0[13]),
        .I2(state[0]),
        .I3(\acc_reg[31]_0 [6]),
        .O(\acc[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[14]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[14]),
        .O(\acc[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[15]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[15]),
        .O(\acc[15]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[15]_i_3 
       (.I0(\acc_reg_n_0_[15] ),
        .I1(\acc_reg[19]_0 [11]),
        .O(\acc[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[15]_i_4__0 
       (.I0(\acc_reg_n_0_[14] ),
        .I1(\acc_reg[19]_0 [10]),
        .O(\acc[15]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[15]_i_5__0 
       (.I0(\acc_reg_n_0_[13] ),
        .I1(\acc_reg[19]_0 [9]),
        .O(\acc[15]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[15]_i_6__0 
       (.I0(\acc_reg_n_0_[12] ),
        .I1(\acc_reg[19]_0 [8]),
        .O(\acc[15]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[16]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[16]),
        .O(\acc[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[17]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[17]),
        .O(\acc[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[18]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[18]),
        .O(\acc[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[19]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[19]),
        .O(\acc[19]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[19]_i_23 
       (.I0(\fmap_val_reg[7]_0 [7]),
        .I1(DOBDO[7]),
        .O(\fmap_val_reg[7]_2 ));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    \acc[19]_i_28 
       (.I0(\fmap_val_reg[7]_0 [5]),
        .I1(\fmap_val_reg[7]_0 [7]),
        .I2(DOBDO[6]),
        .I3(\fmap_val_reg[7]_0 [6]),
        .I4(DOBDO[7]),
        .O(\fmap_val_reg[5]_1 [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    \acc[19]_i_29 
       (.I0(\fmap_val_reg[7]_0 [4]),
        .I1(\fmap_val_reg[7]_0 [6]),
        .I2(DOBDO[6]),
        .I3(\fmap_val_reg[7]_0 [5]),
        .I4(DOBDO[7]),
        .O(\fmap_val_reg[5]_1 [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    \acc[19]_i_30 
       (.I0(\fmap_val_reg[7]_0 [3]),
        .I1(\fmap_val_reg[7]_0 [5]),
        .I2(DOBDO[6]),
        .I3(\fmap_val_reg[7]_0 [4]),
        .I4(DOBDO[7]),
        .O(\fmap_val_reg[5]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[19]_i_31 
       (.I0(\fmap_val_reg[7]_0 [7]),
        .I1(DOBDO[5]),
        .O(\fmap_val_reg[7]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[19]_i_37 
       (.I0(\fmap_val_reg[7]_0 [7]),
        .I1(DOBDO[2]),
        .O(DI));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    \acc[19]_i_46 
       (.I0(\fmap_val_reg[7]_0 [2]),
        .I1(\fmap_val_reg[7]_0 [4]),
        .I2(DOBDO[6]),
        .I3(\fmap_val_reg[7]_0 [3]),
        .I4(DOBDO[7]),
        .O(\fmap_val_reg[2]_0 [2]));
  LUT5 #(
    .INIT(32'h356AC0C0)) 
    \acc[19]_i_47 
       (.I0(\fmap_val_reg[7]_0 [1]),
        .I1(\fmap_val_reg[7]_0 [3]),
        .I2(DOBDO[6]),
        .I3(\fmap_val_reg[7]_0 [2]),
        .I4(DOBDO[7]),
        .O(\fmap_val_reg[2]_0 [1]));
  LUT5 #(
    .INIT(32'hCA953F3F)) 
    \acc[19]_i_48 
       (.I0(\fmap_val_reg[7]_0 [0]),
        .I1(\fmap_val_reg[7]_0 [2]),
        .I2(DOBDO[6]),
        .I3(\fmap_val_reg[7]_0 [1]),
        .I4(DOBDO[7]),
        .O(\fmap_val_reg[2]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[19]_i_5__0 
       (.I0(\acc_reg_n_0_[18] ),
        .I1(\acc_reg_n_0_[19] ),
        .O(\acc[19]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[19]_i_6__0 
       (.I0(Q[1]),
        .I1(\acc_reg_n_0_[18] ),
        .O(\acc[19]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[1]_i_1__0 
       (.I0(acc0[1]),
        .I1(state[2]),
        .O(\acc[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[20]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[20]),
        .O(\acc[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[21]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[21]),
        .O(\acc[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[22]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[22]),
        .O(\acc[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[23]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[23]),
        .O(\acc[23]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[23]_i_3__0 
       (.I0(\acc_reg_n_0_[22] ),
        .I1(\acc_reg_n_0_[23] ),
        .O(\acc[23]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[23]_i_4__0 
       (.I0(\acc_reg_n_0_[21] ),
        .I1(\acc_reg_n_0_[22] ),
        .O(\acc[23]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[23]_i_5__0 
       (.I0(\acc_reg_n_0_[20] ),
        .I1(\acc_reg_n_0_[21] ),
        .O(\acc[23]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[23]_i_6__0 
       (.I0(\acc_reg_n_0_[19] ),
        .I1(\acc_reg_n_0_[20] ),
        .O(\acc[23]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[24]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[24]),
        .O(\acc[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[25]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[25]),
        .O(\acc[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[26]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[26]),
        .O(\acc[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[27]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[27]),
        .O(\acc[27]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[27]_i_3__0 
       (.I0(\acc_reg_n_0_[26] ),
        .I1(\acc_reg_n_0_[27] ),
        .O(\acc[27]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[27]_i_4__0 
       (.I0(\acc_reg_n_0_[25] ),
        .I1(\acc_reg_n_0_[26] ),
        .O(\acc[27]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[27]_i_5__0 
       (.I0(\acc_reg_n_0_[24] ),
        .I1(\acc_reg_n_0_[25] ),
        .O(\acc[27]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[27]_i_6__0 
       (.I0(\acc_reg_n_0_[23] ),
        .I1(\acc_reg_n_0_[24] ),
        .O(\acc[27]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[28]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[28]),
        .O(\acc[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[29]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[29]),
        .O(\acc[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[2]_i_1__0 
       (.I0(acc0[2]),
        .I1(state[2]),
        .O(\acc[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \acc[30]_i_1__0 
       (.I0(state[0]),
        .I1(\acc_reg[31]_0 [7]),
        .I2(state[2]),
        .I3(acc0[30]),
        .O(\acc[30]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \acc[31]_i_1__0 
       (.I0(state[2]),
        .I1(acc0[31]),
        .I2(state[0]),
        .I3(\acc_reg[31]_0 [7]),
        .O(\acc[31]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[31]_i_3 
       (.I0(\acc_reg_n_0_[30] ),
        .I1(\acc_reg_n_0_[31] ),
        .O(\acc[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[31]_i_4__0 
       (.I0(\acc_reg_n_0_[29] ),
        .I1(\acc_reg_n_0_[30] ),
        .O(\acc[31]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[31]_i_5__0 
       (.I0(\acc_reg_n_0_[28] ),
        .I1(\acc_reg_n_0_[29] ),
        .O(\acc[31]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc[31]_i_6__0 
       (.I0(\acc_reg_n_0_[27] ),
        .I1(\acc_reg_n_0_[28] ),
        .O(\acc[31]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_11__0 
       (.I0(\fmap_val_reg[7]_0 [0]),
        .I1(DOBDO[1]),
        .O(\acc[3]_i_11__0_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \acc[3]_i_12__0 
       (.I0(\acc[3]_i_9__0_n_0 ),
        .I1(\fmap_val_reg[7]_0 [1]),
        .I2(DOBDO[2]),
        .I3(\fmap_val_reg[7]_0 [0]),
        .I4(DOBDO[1]),
        .O(\acc[3]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[3]_i_13__0 
       (.I0(\fmap_val_reg[7]_0 [0]),
        .I1(DOBDO[2]),
        .I2(\fmap_val_reg[7]_0 [1]),
        .I3(DOBDO[1]),
        .I4(\fmap_val_reg[7]_0 [2]),
        .I5(DOBDO[0]),
        .O(\acc[3]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[3]_i_14__0 
       (.I0(\fmap_val_reg[7]_0 [1]),
        .I1(DOBDO[0]),
        .I2(DOBDO[1]),
        .I3(\fmap_val_reg[7]_0 [0]),
        .O(\acc[3]_i_14__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_18__0 
       (.I0(\fmap_val_reg[7]_0 [0]),
        .I1(DOBDO[4]),
        .O(\fmap_val_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_1__0 
       (.I0(acc0[3]),
        .I1(state[2]),
        .O(\acc[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[3]_i_20__0 
       (.I0(\fmap_val_reg[7]_0 [0]),
        .I1(DOBDO[5]),
        .I2(\fmap_val_reg[7]_0 [1]),
        .I3(DOBDO[4]),
        .I4(DOBDO[3]),
        .I5(\fmap_val_reg[7]_0 [2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_22__0 
       (.I0(\fmap_val_reg[7]_0 [0]),
        .I1(DOBDO[3]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \acc[3]_i_3__0 
       (.I0(\acc_reg_n_0_[3] ),
        .I1(O),
        .I2(\acc_reg[3]_i_2__0_0 ),
        .O(\acc[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_4__0 
       (.I0(\acc_reg_n_0_[2] ),
        .I1(acc1[2]),
        .O(\acc[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_5__0 
       (.I0(\acc_reg_n_0_[1] ),
        .I1(acc1[1]),
        .O(\acc[3]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_6__0 
       (.I0(\acc_reg_n_0_[0] ),
        .I1(acc1[0]),
        .O(\acc[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[3]_i_9__0 
       (.I0(\fmap_val_reg[7]_0 [3]),
        .I1(DOBDO[0]),
        .I2(DOBDO[2]),
        .I3(\fmap_val_reg[7]_0 [1]),
        .I4(DOBDO[1]),
        .I5(\fmap_val_reg[7]_0 [2]),
        .O(\acc[3]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[4]_i_1__0 
       (.I0(acc0[4]),
        .I1(state[2]),
        .O(\acc[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[5]_i_1__0 
       (.I0(acc0[5]),
        .I1(state[2]),
        .O(\acc[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[6]_i_1__0 
       (.I0(acc0[6]),
        .I1(state[2]),
        .O(\acc[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \acc[7]_i_1__0 
       (.I0(state[2]),
        .I1(acc0[7]),
        .I2(state[0]),
        .I3(\acc_reg[31]_0 [0]),
        .O(\acc[7]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_3__0 
       (.I0(\acc_reg_n_0_[7] ),
        .I1(\acc_reg[19]_0 [3]),
        .O(\acc[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_4__0 
       (.I0(\acc_reg_n_0_[6] ),
        .I1(\acc_reg[19]_0 [2]),
        .O(\acc[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_5__0 
       (.I0(\acc_reg_n_0_[5] ),
        .I1(\acc_reg[19]_0 [1]),
        .O(\acc[7]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_6__0 
       (.I0(\acc_reg_n_0_[4] ),
        .I1(\acc_reg[19]_0 [0]),
        .O(\acc[7]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \acc[8]_i_1__0 
       (.I0(state[2]),
        .I1(acc0[8]),
        .I2(state[0]),
        .I3(\acc_reg[31]_0 [1]),
        .O(\acc[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \acc[9]_i_1__0 
       (.I0(state[2]),
        .I1(acc0[9]),
        .I2(state[0]),
        .I3(\acc_reg[31]_0 [2]),
        .O(\acc[9]_i_1__0_n_0 ));
  FDCE \acc_reg[0] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[0]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[0] ));
  FDCE \acc_reg[10] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[10]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[10] ));
  FDCE \acc_reg[11] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[11]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[11]_i_2__0 
       (.CI(\acc_reg[7]_i_2__0_n_0 ),
        .CO({\acc_reg[11]_i_2__0_n_0 ,\acc_reg[11]_i_2__0_n_1 ,\acc_reg[11]_i_2__0_n_2 ,\acc_reg[11]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[11] ,\acc_reg_n_0_[10] ,\acc_reg_n_0_[9] ,\acc_reg_n_0_[8] }),
        .O(acc0[11:8]),
        .S({\acc[11]_i_3__0_n_0 ,\acc[11]_i_4__0_n_0 ,\acc[11]_i_5__0_n_0 ,\acc[11]_i_6__0_n_0 }));
  FDCE \acc_reg[12] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[12]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[12] ));
  FDCE \acc_reg[13] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[13]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[13] ));
  FDCE \acc_reg[14] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[14]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[14] ));
  FDCE \acc_reg[15] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[15]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[15]_i_2__0 
       (.CI(\acc_reg[11]_i_2__0_n_0 ),
        .CO({\acc_reg[15]_i_2__0_n_0 ,\acc_reg[15]_i_2__0_n_1 ,\acc_reg[15]_i_2__0_n_2 ,\acc_reg[15]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[15] ,\acc_reg_n_0_[14] ,\acc_reg_n_0_[13] ,\acc_reg_n_0_[12] }),
        .O(acc0[15:12]),
        .S({\acc[15]_i_3_n_0 ,\acc[15]_i_4__0_n_0 ,\acc[15]_i_5__0_n_0 ,\acc[15]_i_6__0_n_0 }));
  FDCE \acc_reg[16] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[16]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \acc_reg[17] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[17]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \acc_reg[18] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[18]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[18] ));
  FDCE \acc_reg[19] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[19]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[19]_i_2__0 
       (.CI(\acc_reg[15]_i_2__0_n_0 ),
        .CO({\acc_reg[19]_i_2__0_n_0 ,\acc_reg[19]_i_2__0_n_1 ,\acc_reg[19]_i_2__0_n_2 ,\acc_reg[19]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[18] ,Q[1],\acc_reg[19]_1 ,\acc_reg[19]_0 [12]}),
        .O(acc0[19:16]),
        .S({\acc[19]_i_5__0_n_0 ,\acc[19]_i_6__0_n_0 ,\acc_reg[19]_2 }));
  FDCE \acc_reg[1] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[1]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[1] ));
  FDCE \acc_reg[20] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[20]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[20] ));
  FDCE \acc_reg[21] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[21]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[21] ));
  FDCE \acc_reg[22] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[22]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[22] ));
  FDCE \acc_reg[23] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[23]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[23]_i_2__0 
       (.CI(\acc_reg[19]_i_2__0_n_0 ),
        .CO({\acc_reg[23]_i_2__0_n_0 ,\acc_reg[23]_i_2__0_n_1 ,\acc_reg[23]_i_2__0_n_2 ,\acc_reg[23]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[22] ,\acc_reg_n_0_[21] ,\acc_reg_n_0_[20] ,\acc_reg_n_0_[19] }),
        .O(acc0[23:20]),
        .S({\acc[23]_i_3__0_n_0 ,\acc[23]_i_4__0_n_0 ,\acc[23]_i_5__0_n_0 ,\acc[23]_i_6__0_n_0 }));
  FDCE \acc_reg[24] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[24]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[24] ));
  FDCE \acc_reg[25] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[25]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[25] ));
  FDCE \acc_reg[26] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[26]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[26] ));
  FDCE \acc_reg[27] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[27]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[27]_i_2__0 
       (.CI(\acc_reg[23]_i_2__0_n_0 ),
        .CO({\acc_reg[27]_i_2__0_n_0 ,\acc_reg[27]_i_2__0_n_1 ,\acc_reg[27]_i_2__0_n_2 ,\acc_reg[27]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[26] ,\acc_reg_n_0_[25] ,\acc_reg_n_0_[24] ,\acc_reg_n_0_[23] }),
        .O(acc0[27:24]),
        .S({\acc[27]_i_3__0_n_0 ,\acc[27]_i_4__0_n_0 ,\acc[27]_i_5__0_n_0 ,\acc[27]_i_6__0_n_0 }));
  FDCE \acc_reg[28] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[28]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[28] ));
  FDCE \acc_reg[29] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[29]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[29] ));
  FDCE \acc_reg[2] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[2]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[2] ));
  FDCE \acc_reg[30] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[30]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[30] ));
  FDCE \acc_reg[31] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[31]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[31]_i_2 
       (.CI(\acc_reg[27]_i_2__0_n_0 ),
        .CO({\NLW_acc_reg[31]_i_2_CO_UNCONNECTED [3],\acc_reg[31]_i_2_n_1 ,\acc_reg[31]_i_2_n_2 ,\acc_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\acc_reg_n_0_[29] ,\acc_reg_n_0_[28] ,\acc_reg_n_0_[27] }),
        .O(acc0[31:28]),
        .S({\acc[31]_i_3_n_0 ,\acc[31]_i_4__0_n_0 ,\acc[31]_i_5__0_n_0 ,\acc[31]_i_6__0_n_0 }));
  FDCE \acc_reg[3] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[3]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[3]_i_2__0 
       (.CI(1'b0),
        .CO({\acc_reg[3]_i_2__0_n_0 ,\acc_reg[3]_i_2__0_n_1 ,\acc_reg[3]_i_2__0_n_2 ,\acc_reg[3]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[3] ,\acc_reg_n_0_[2] ,\acc_reg_n_0_[1] ,\acc_reg_n_0_[0] }),
        .O(acc0[3:0]),
        .S({\acc[3]_i_3__0_n_0 ,\acc[3]_i_4__0_n_0 ,\acc[3]_i_5__0_n_0 ,\acc[3]_i_6__0_n_0 }));
  CARRY4 \acc_reg[3]_i_7__0 
       (.CI(1'b0),
        .CO({CO,\acc_reg[3]_i_7__0_n_1 ,\acc_reg[3]_i_7__0_n_2 ,\acc_reg[3]_i_7__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[3]_i_9__0_n_0 ,\acc[3]_i_6__0_0 ,\acc[3]_i_11__0_n_0 ,1'b0}),
        .O({O,acc1}),
        .S({\acc[3]_i_12__0_n_0 ,\acc[3]_i_13__0_n_0 ,\acc[3]_i_14__0_n_0 ,\acc[3]_i_6__0_1 }));
  FDCE \acc_reg[4] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[4]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[4] ));
  FDCE \acc_reg[5] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[5]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[5] ));
  FDCE \acc_reg[6] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[6]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[6] ));
  FDCE \acc_reg[7] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[7]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[7]_i_2__0 
       (.CI(\acc_reg[3]_i_2__0_n_0 ),
        .CO({\acc_reg[7]_i_2__0_n_0 ,\acc_reg[7]_i_2__0_n_1 ,\acc_reg[7]_i_2__0_n_2 ,\acc_reg[7]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[7] ,\acc_reg_n_0_[6] ,\acc_reg_n_0_[5] ,\acc_reg_n_0_[4] }),
        .O(acc0[7:4]),
        .S({\acc[7]_i_3__0_n_0 ,\acc[7]_i_4__0_n_0 ,\acc[7]_i_5__0_n_0 ,\acc[7]_i_6__0_n_0 }));
  FDCE \acc_reg[8] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[8]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[8] ));
  FDCE \acc_reg[9] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\acc[9]_i_1__0_n_0 ),
        .Q(\acc_reg_n_0_[9] ));
  FDCE done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_1),
        .D(\out_pixel[7]_i_1__0_n_0 ),
        .Q(fc_done));
  LUT3 #(
    .INIT(8'h04)) 
    \fmap_rd_addr[11]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\fmap_rd_addr[11]_i_1_n_0 ));
  FDCE \fmap_rd_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[0] ),
        .Q(\fmap_rd_addr_reg[11]_0 [0]));
  FDCE \fmap_rd_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[10] ),
        .Q(\fmap_rd_addr_reg[11]_0 [10]));
  FDCE \fmap_rd_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[11] ),
        .Q(\fmap_rd_addr_reg[11]_0 [11]));
  FDCE \fmap_rd_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[1] ),
        .Q(\fmap_rd_addr_reg[11]_0 [1]));
  FDCE \fmap_rd_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[2] ),
        .Q(\fmap_rd_addr_reg[11]_0 [2]));
  FDCE \fmap_rd_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[3] ),
        .Q(\fmap_rd_addr_reg[11]_0 [3]));
  FDCE \fmap_rd_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[4] ),
        .Q(\fmap_rd_addr_reg[11]_0 [4]));
  FDCE \fmap_rd_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[5] ),
        .Q(\fmap_rd_addr_reg[11]_0 [5]));
  FDCE \fmap_rd_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[6] ),
        .Q(\fmap_rd_addr_reg[11]_0 [6]));
  FDCE \fmap_rd_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[7] ),
        .Q(\fmap_rd_addr_reg[11]_0 [7]));
  FDCE \fmap_rd_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[8] ),
        .Q(\fmap_rd_addr_reg[11]_0 [8]));
  FDCE \fmap_rd_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\fmap_rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[9] ),
        .Q(\fmap_rd_addr_reg[11]_0 [9]));
  FDCE \fmap_val_reg[0] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(D[0]),
        .Q(\fmap_val_reg[7]_0 [0]));
  FDCE \fmap_val_reg[1] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(D[1]),
        .Q(\fmap_val_reg[7]_0 [1]));
  FDCE \fmap_val_reg[2] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(D[2]),
        .Q(\fmap_val_reg[7]_0 [2]));
  FDCE \fmap_val_reg[3] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(D[3]),
        .Q(\fmap_val_reg[7]_0 [3]));
  FDCE \fmap_val_reg[4] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(D[4]),
        .Q(\fmap_val_reg[7]_0 [4]));
  FDCE \fmap_val_reg[5] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(D[5]),
        .Q(\fmap_val_reg[7]_0 [5]));
  FDCE \fmap_val_reg[6] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(D[6]),
        .Q(\fmap_val_reg[7]_0 [6]));
  FDCE \fmap_val_reg[7] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(D[7]),
        .Q(\fmap_val_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \idx[0]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(state[2]),
        .O(\idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[10]_i_1 
       (.I0(in4[10]),
        .I1(state[2]),
        .O(\idx[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3002)) 
    \idx[11]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(idx));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[11]_i_2 
       (.I0(in4[11]),
        .I1(state[2]),
        .O(\idx[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \idx[1]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(state[2]),
        .O(\idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[2]_i_1 
       (.I0(in4[2]),
        .I1(state[2]),
        .O(\idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[3]_i_1 
       (.I0(in4[3]),
        .I1(state[2]),
        .O(\idx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[4]_i_1 
       (.I0(in4[4]),
        .I1(state[2]),
        .O(\idx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[5]_i_1 
       (.I0(in4[5]),
        .I1(state[2]),
        .O(\idx[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[6]_i_1 
       (.I0(in4[6]),
        .I1(state[2]),
        .O(\idx[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[7]_i_1 
       (.I0(in4[7]),
        .I1(state[2]),
        .O(\idx[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[8]_i_1 
       (.I0(in4[8]),
        .I1(state[2]),
        .O(\idx[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[9]_i_1 
       (.I0(in4[9]),
        .I1(state[2]),
        .O(\idx[9]_i_1_n_0 ));
  FDCE \idx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[0]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[0] ));
  FDCE \idx_reg[10] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[10]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[10] ));
  FDCE \idx_reg[11] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[11]_i_2_n_0 ),
        .Q(\idx_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \idx_reg[11]_i_3 
       (.CI(\idx_reg[8]_i_2_n_0 ),
        .CO({\NLW_idx_reg[11]_i_3_CO_UNCONNECTED [3:2],\idx_reg[11]_i_3_n_2 ,\idx_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_idx_reg[11]_i_3_O_UNCONNECTED [3],in4[11:9]}),
        .S({1'b0,\idx_reg_n_0_[11] ,\idx_reg_n_0_[10] ,\idx_reg_n_0_[9] }));
  FDCE \idx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[1]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[1] ));
  FDCE \idx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[2]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[2] ));
  FDCE \idx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[3]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[3] ));
  FDCE \idx_reg[4] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[4]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \idx_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\idx_reg[4]_i_2_n_0 ,\idx_reg[4]_i_2_n_1 ,\idx_reg[4]_i_2_n_2 ,\idx_reg[4]_i_2_n_3 }),
        .CYINIT(\idx_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({in4[4:2],\idx_reg[4]_i_2_n_7 }),
        .S({\idx_reg_n_0_[4] ,\idx_reg_n_0_[3] ,\idx_reg_n_0_[2] ,\idx_reg_n_0_[1] }));
  FDCE \idx_reg[5] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[5]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[5] ));
  FDCE \idx_reg[6] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[6]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[6] ));
  FDCE \idx_reg[7] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[7]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[7] ));
  FDCE \idx_reg[8] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[8]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \idx_reg[8]_i_2 
       (.CI(\idx_reg[4]_i_2_n_0 ),
        .CO({\idx_reg[8]_i_2_n_0 ,\idx_reg[8]_i_2_n_1 ,\idx_reg[8]_i_2_n_2 ,\idx_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:5]),
        .S({\idx_reg_n_0_[8] ,\idx_reg_n_0_[7] ,\idx_reg_n_0_[6] ,\idx_reg_n_0_[5] }));
  FDCE \idx_reg[9] 
       (.C(s00_axi_aclk),
        .CE(idx),
        .CLR(done_reg_1),
        .D(\idx[9]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_32__0
       (.I0(done_reg_0),
        .I1(\out_pixel_reg[7]_0 [0]),
        .I2(mem_reg_0_0),
        .I3(mem_reg_0_7[0]),
        .I4(mem_reg_0_0_0),
        .I5(mem_reg_0_7_0[0]),
        .O(din[0]));
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_0_i_34__0
       (.I0(fc_done),
        .I1(pool_dst),
        .I2(wr_en),
        .I3(mem_reg_0_0_0),
        .O(done_reg_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_1_i_1__0
       (.I0(done_reg_0),
        .I1(\out_pixel_reg[7]_0 [1]),
        .I2(mem_reg_0_0),
        .I3(mem_reg_0_7[1]),
        .I4(mem_reg_0_0_0),
        .I5(mem_reg_0_7_0[1]),
        .O(din[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_2_i_1__0
       (.I0(done_reg_0),
        .I1(\out_pixel_reg[7]_0 [2]),
        .I2(mem_reg_0_0),
        .I3(mem_reg_0_7[2]),
        .I4(mem_reg_0_0_0),
        .I5(mem_reg_0_7_0[2]),
        .O(din[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_3_i_1__0
       (.I0(done_reg_0),
        .I1(\out_pixel_reg[7]_0 [3]),
        .I2(mem_reg_0_0),
        .I3(mem_reg_0_7[3]),
        .I4(mem_reg_0_0_0),
        .I5(mem_reg_0_7_0[3]),
        .O(din[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_4_i_1__0
       (.I0(done_reg_0),
        .I1(\out_pixel_reg[7]_0 [4]),
        .I2(mem_reg_0_0),
        .I3(mem_reg_0_7[4]),
        .I4(mem_reg_0_0_0),
        .I5(mem_reg_0_7_0[4]),
        .O(din[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_5_i_1__0
       (.I0(done_reg_0),
        .I1(\out_pixel_reg[7]_0 [5]),
        .I2(mem_reg_0_0),
        .I3(mem_reg_0_7[5]),
        .I4(mem_reg_0_0_0),
        .I5(mem_reg_0_7_0[5]),
        .O(din[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_6_i_2__0
       (.I0(done_reg_0),
        .I1(\out_pixel_reg[7]_0 [6]),
        .I2(mem_reg_0_0),
        .I3(mem_reg_0_7[6]),
        .I4(mem_reg_0_0_0),
        .I5(mem_reg_0_7_0[6]),
        .O(din[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_7_i_1__0
       (.I0(done_reg_0),
        .I1(\out_pixel_reg[7]_0 [7]),
        .I2(mem_reg_0_0),
        .I3(mem_reg_0_7[7]),
        .I4(mem_reg_0_0_0),
        .I5(mem_reg_0_7_0[7]),
        .O(din[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_1
       (.I0(fc_weight_addr[11]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[11]),
        .O(ADDRBWRADDR[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_10__0
       (.I0(fc_weight_addr[2]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[2]),
        .O(ADDRBWRADDR[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_11__0
       (.I0(fc_weight_addr[1]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[1]),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_12__0
       (.I0(fc_weight_addr[0]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[0]),
        .O(ADDRBWRADDR[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_2__0
       (.I0(fc_weight_addr[10]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[10]),
        .O(ADDRBWRADDR[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_3__0
       (.I0(fc_weight_addr[9]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[9]),
        .O(ADDRBWRADDR[9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_4__0
       (.I0(fc_weight_addr[8]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[8]),
        .O(ADDRBWRADDR[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_5__0
       (.I0(fc_weight_addr[7]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[7]),
        .O(ADDRBWRADDR[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_6__0
       (.I0(fc_weight_addr[6]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[6]),
        .O(ADDRBWRADDR[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_7__0
       (.I0(fc_weight_addr[5]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[5]),
        .O(ADDRBWRADDR[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_8__0
       (.I0(fc_weight_addr[4]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[4]),
        .O(ADDRBWRADDR[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    mem_reg_i_9__0
       (.I0(fc_weight_addr[3]),
        .I1(mem_reg[0]),
        .I2(mem_reg[1]),
        .I3(mem_reg_0[3]),
        .O(ADDRBWRADDR[3]));
  LUT5 #(
    .INIT(32'hFFFF00BA)) 
    \out_pixel[0]_i_1__0 
       (.I0(out_pixel10_in),
        .I1(out_pixel1),
        .I2(\acc_reg_n_0_[7] ),
        .I3(relu_en_reg_reg_n_0),
        .I4(\out_pixel[0]_i_2_n_0 ),
        .O(\out_pixel[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \out_pixel[0]_i_2 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(relu_en_reg_reg_n_0),
        .I2(\out_pixel[6]_i_3_n_0 ),
        .I3(\acc_reg_n_0_[0] ),
        .O(\out_pixel[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00BA)) 
    \out_pixel[1]_i_1__0 
       (.I0(out_pixel10_in),
        .I1(out_pixel1),
        .I2(\acc_reg_n_0_[8] ),
        .I3(relu_en_reg_reg_n_0),
        .I4(\out_pixel[1]_i_2_n_0 ),
        .O(\out_pixel[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \out_pixel[1]_i_2 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(relu_en_reg_reg_n_0),
        .I2(\out_pixel[6]_i_3_n_0 ),
        .I3(\acc_reg_n_0_[1] ),
        .O(\out_pixel[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00BA)) 
    \out_pixel[2]_i_1__0 
       (.I0(out_pixel10_in),
        .I1(out_pixel1),
        .I2(\acc_reg_n_0_[9] ),
        .I3(relu_en_reg_reg_n_0),
        .I4(\out_pixel[2]_i_2_n_0 ),
        .O(\out_pixel[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \out_pixel[2]_i_2 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(relu_en_reg_reg_n_0),
        .I2(\out_pixel[6]_i_3_n_0 ),
        .I3(\acc_reg_n_0_[2] ),
        .O(\out_pixel[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00BA)) 
    \out_pixel[3]_i_1__0 
       (.I0(out_pixel10_in),
        .I1(out_pixel1),
        .I2(\acc_reg_n_0_[10] ),
        .I3(relu_en_reg_reg_n_0),
        .I4(\out_pixel[3]_i_2_n_0 ),
        .O(\out_pixel[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \out_pixel[3]_i_2 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(relu_en_reg_reg_n_0),
        .I2(\out_pixel[6]_i_3_n_0 ),
        .I3(\acc_reg_n_0_[3] ),
        .O(\out_pixel[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00BA)) 
    \out_pixel[4]_i_1__0 
       (.I0(out_pixel10_in),
        .I1(out_pixel1),
        .I2(\acc_reg_n_0_[11] ),
        .I3(relu_en_reg_reg_n_0),
        .I4(\out_pixel[4]_i_2_n_0 ),
        .O(\out_pixel[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \out_pixel[4]_i_2 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(relu_en_reg_reg_n_0),
        .I2(\out_pixel[6]_i_3_n_0 ),
        .I3(\acc_reg_n_0_[4] ),
        .O(\out_pixel[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00BA)) 
    \out_pixel[5]_i_1__0 
       (.I0(out_pixel10_in),
        .I1(out_pixel1),
        .I2(\acc_reg_n_0_[12] ),
        .I3(relu_en_reg_reg_n_0),
        .I4(\out_pixel[5]_i_2_n_0 ),
        .O(\out_pixel[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \out_pixel[5]_i_2 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(relu_en_reg_reg_n_0),
        .I2(\out_pixel[6]_i_3_n_0 ),
        .I3(\acc_reg_n_0_[5] ),
        .O(\out_pixel[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00BA)) 
    \out_pixel[6]_i_1__0 
       (.I0(out_pixel10_in),
        .I1(out_pixel1),
        .I2(\acc_reg_n_0_[13] ),
        .I3(relu_en_reg_reg_n_0),
        .I4(\out_pixel[6]_i_2_n_0 ),
        .O(\out_pixel[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \out_pixel[6]_i_2 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(relu_en_reg_reg_n_0),
        .I2(\out_pixel[6]_i_3_n_0 ),
        .I3(\acc_reg_n_0_[6] ),
        .O(\out_pixel[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_pixel[6]_i_3 
       (.I0(\out_pixel[6]_i_4_n_0 ),
        .I1(\out_pixel[6]_i_5_n_0 ),
        .I2(\out_pixel[6]_i_6_n_0 ),
        .I3(\out_pixel[6]_i_7_n_0 ),
        .I4(\out_pixel[6]_i_8_n_0 ),
        .I5(\out_pixel[6]_i_9_n_0 ),
        .O(\out_pixel[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_pixel[6]_i_4 
       (.I0(\acc_reg_n_0_[7] ),
        .I1(\acc_reg_n_0_[24] ),
        .I2(\acc_reg_n_0_[13] ),
        .I3(\acc_reg_n_0_[10] ),
        .O(\out_pixel[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_pixel[6]_i_5 
       (.I0(\acc_reg_n_0_[28] ),
        .I1(\acc_reg_n_0_[29] ),
        .I2(\acc_reg_n_0_[12] ),
        .I3(\acc_reg_n_0_[9] ),
        .O(\out_pixel[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \out_pixel[6]_i_6 
       (.I0(\acc_reg_n_0_[8] ),
        .I1(\acc_reg_n_0_[11] ),
        .I2(\acc_reg_n_0_[25] ),
        .O(\out_pixel[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_pixel[6]_i_7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\acc_reg_n_0_[22] ),
        .I3(\acc_reg_n_0_[23] ),
        .O(\out_pixel[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_pixel[6]_i_8 
       (.I0(\acc_reg_n_0_[20] ),
        .I1(\acc_reg_n_0_[21] ),
        .I2(\acc_reg_n_0_[26] ),
        .I3(\acc_reg_n_0_[27] ),
        .O(\out_pixel[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_pixel[6]_i_9 
       (.I0(\acc_reg_n_0_[18] ),
        .I1(\acc_reg_n_0_[19] ),
        .I2(\acc_reg_n_0_[15] ),
        .I3(\acc_reg_n_0_[14] ),
        .I4(\acc_reg_n_0_[30] ),
        .I5(\acc_reg_n_0_[31] ),
        .O(\out_pixel[6]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_10 
       (.I0(\acc_reg_n_0_[29] ),
        .I1(\acc_reg_n_0_[28] ),
        .O(\out_pixel[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_11 
       (.I0(\acc_reg_n_0_[27] ),
        .I1(\acc_reg_n_0_[26] ),
        .O(\out_pixel[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_12 
       (.I0(\acc_reg_n_0_[24] ),
        .I1(\acc_reg_n_0_[25] ),
        .O(\out_pixel[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_13 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(\acc_reg_n_0_[30] ),
        .O(\out_pixel[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_14 
       (.I0(\acc_reg_n_0_[28] ),
        .I1(\acc_reg_n_0_[29] ),
        .O(\out_pixel[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_15 
       (.I0(\acc_reg_n_0_[26] ),
        .I1(\acc_reg_n_0_[27] ),
        .O(\out_pixel[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_16 
       (.I0(\acc_reg_n_0_[25] ),
        .I1(\acc_reg_n_0_[24] ),
        .O(\out_pixel[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_pixel[7]_i_18 
       (.I0(\acc_reg_n_0_[28] ),
        .I1(\acc_reg_n_0_[29] ),
        .O(\out_pixel[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_pixel[7]_i_19 
       (.I0(\acc_reg_n_0_[26] ),
        .I1(\acc_reg_n_0_[27] ),
        .O(\out_pixel[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \out_pixel[7]_i_1__0 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\out_pixel[7]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_pixel[7]_i_20 
       (.I0(\acc_reg_n_0_[24] ),
        .I1(\acc_reg_n_0_[25] ),
        .O(\out_pixel[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_pixel[7]_i_21 
       (.I0(\acc_reg_n_0_[22] ),
        .I1(\acc_reg_n_0_[23] ),
        .O(\out_pixel[7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_22 
       (.I0(\acc_reg_n_0_[29] ),
        .I1(\acc_reg_n_0_[28] ),
        .O(\out_pixel[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_23 
       (.I0(\acc_reg_n_0_[27] ),
        .I1(\acc_reg_n_0_[26] ),
        .O(\out_pixel[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_24 
       (.I0(\acc_reg_n_0_[25] ),
        .I1(\acc_reg_n_0_[24] ),
        .O(\out_pixel[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_25 
       (.I0(\acc_reg_n_0_[23] ),
        .I1(\acc_reg_n_0_[22] ),
        .O(\out_pixel[7]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_27 
       (.I0(\acc_reg_n_0_[23] ),
        .I1(\acc_reg_n_0_[22] ),
        .O(\out_pixel[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_28 
       (.I0(\acc_reg_n_0_[21] ),
        .I1(\acc_reg_n_0_[20] ),
        .O(\out_pixel[7]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_29 
       (.I0(\acc_reg_n_0_[19] ),
        .I1(\acc_reg_n_0_[18] ),
        .O(\out_pixel[7]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \out_pixel[7]_i_2__0 
       (.I0(out_pixel1),
        .I1(\acc_reg_n_0_[14] ),
        .I2(relu_en_reg_reg_n_0),
        .I3(out_pixel10_in),
        .O(\out_pixel[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_30 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\out_pixel[7]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_31 
       (.I0(\acc_reg_n_0_[22] ),
        .I1(\acc_reg_n_0_[23] ),
        .O(\out_pixel[7]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_32 
       (.I0(\acc_reg_n_0_[20] ),
        .I1(\acc_reg_n_0_[21] ),
        .O(\out_pixel[7]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_33 
       (.I0(\acc_reg_n_0_[18] ),
        .I1(\acc_reg_n_0_[19] ),
        .O(\out_pixel[7]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_34 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\out_pixel[7]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_pixel[7]_i_35 
       (.I0(\acc_reg_n_0_[20] ),
        .I1(\acc_reg_n_0_[21] ),
        .O(\out_pixel[7]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_pixel[7]_i_36 
       (.I0(\acc_reg_n_0_[18] ),
        .I1(\acc_reg_n_0_[19] ),
        .O(\out_pixel[7]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_pixel[7]_i_37 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\out_pixel[7]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out_pixel[7]_i_38 
       (.I0(\acc_reg_n_0_[14] ),
        .I1(\acc_reg_n_0_[15] ),
        .O(\out_pixel[7]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_39 
       (.I0(\acc_reg_n_0_[21] ),
        .I1(\acc_reg_n_0_[20] ),
        .O(\out_pixel[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_40 
       (.I0(\acc_reg_n_0_[19] ),
        .I1(\acc_reg_n_0_[18] ),
        .O(\out_pixel[7]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_41 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\out_pixel[7]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_42 
       (.I0(\acc_reg_n_0_[15] ),
        .I1(\acc_reg_n_0_[14] ),
        .O(\out_pixel[7]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_44 
       (.I0(\acc_reg_n_0_[15] ),
        .I1(\acc_reg_n_0_[14] ),
        .O(\out_pixel[7]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_45 
       (.I0(\acc_reg_n_0_[14] ),
        .I1(\acc_reg_n_0_[15] ),
        .O(\out_pixel[7]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_46 
       (.I0(\acc_reg_n_0_[13] ),
        .I1(\acc_reg_n_0_[12] ),
        .O(\out_pixel[7]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_47 
       (.I0(\acc_reg_n_0_[11] ),
        .I1(\acc_reg_n_0_[10] ),
        .O(\out_pixel[7]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_48 
       (.I0(\acc_reg_n_0_[9] ),
        .I1(\acc_reg_n_0_[8] ),
        .O(\out_pixel[7]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_49 
       (.I0(\acc_reg_n_0_[7] ),
        .I1(\acc_reg_n_0_[6] ),
        .O(\out_pixel[7]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_50 
       (.I0(\acc_reg_n_0_[5] ),
        .I1(\acc_reg_n_0_[4] ),
        .O(\out_pixel[7]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_51 
       (.I0(\acc_reg_n_0_[3] ),
        .I1(\acc_reg_n_0_[2] ),
        .O(\out_pixel[7]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_pixel[7]_i_52 
       (.I0(\acc_reg_n_0_[1] ),
        .I1(\acc_reg_n_0_[0] ),
        .O(\out_pixel[7]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_pixel[7]_i_53 
       (.I0(\acc_reg_n_0_[7] ),
        .I1(\acc_reg_n_0_[6] ),
        .O(\out_pixel[7]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_54 
       (.I0(\acc_reg_n_0_[4] ),
        .I1(\acc_reg_n_0_[5] ),
        .O(\out_pixel[7]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_55 
       (.I0(\acc_reg_n_0_[2] ),
        .I1(\acc_reg_n_0_[3] ),
        .O(\out_pixel[7]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_pixel[7]_i_56 
       (.I0(\acc_reg_n_0_[0] ),
        .I1(\acc_reg_n_0_[1] ),
        .O(\out_pixel[7]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_pixel[7]_i_6 
       (.I0(\acc_reg_n_0_[31] ),
        .I1(\acc_reg_n_0_[30] ),
        .O(\out_pixel[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out_pixel[7]_i_7 
       (.I0(\acc_reg_n_0_[30] ),
        .I1(\acc_reg_n_0_[31] ),
        .O(\out_pixel[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_pixel[7]_i_9 
       (.I0(\acc_reg_n_0_[30] ),
        .I1(\acc_reg_n_0_[31] ),
        .O(\out_pixel[7]_i_9_n_0 ));
  FDCE \out_pixel_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\out_pixel[7]_i_1__0_n_0 ),
        .CLR(done_reg_1),
        .D(\out_pixel[0]_i_1__0_n_0 ),
        .Q(\out_pixel_reg[7]_0 [0]));
  FDCE \out_pixel_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\out_pixel[7]_i_1__0_n_0 ),
        .CLR(done_reg_1),
        .D(\out_pixel[1]_i_1__0_n_0 ),
        .Q(\out_pixel_reg[7]_0 [1]));
  FDCE \out_pixel_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\out_pixel[7]_i_1__0_n_0 ),
        .CLR(done_reg_1),
        .D(\out_pixel[2]_i_1__0_n_0 ),
        .Q(\out_pixel_reg[7]_0 [2]));
  FDCE \out_pixel_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\out_pixel[7]_i_1__0_n_0 ),
        .CLR(done_reg_1),
        .D(\out_pixel[3]_i_1__0_n_0 ),
        .Q(\out_pixel_reg[7]_0 [3]));
  FDCE \out_pixel_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\out_pixel[7]_i_1__0_n_0 ),
        .CLR(done_reg_1),
        .D(\out_pixel[4]_i_1__0_n_0 ),
        .Q(\out_pixel_reg[7]_0 [4]));
  FDCE \out_pixel_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\out_pixel[7]_i_1__0_n_0 ),
        .CLR(done_reg_1),
        .D(\out_pixel[5]_i_1__0_n_0 ),
        .Q(\out_pixel_reg[7]_0 [5]));
  FDCE \out_pixel_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\out_pixel[7]_i_1__0_n_0 ),
        .CLR(done_reg_1),
        .D(\out_pixel[6]_i_1__0_n_0 ),
        .Q(\out_pixel_reg[7]_0 [6]));
  FDCE \out_pixel_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\out_pixel[7]_i_1__0_n_0 ),
        .CLR(done_reg_1),
        .D(\out_pixel[7]_i_2__0_n_0 ),
        .Q(\out_pixel_reg[7]_0 [7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_pixel_reg[7]_i_17 
       (.CI(1'b0),
        .CO({\out_pixel_reg[7]_i_17_n_0 ,\out_pixel_reg[7]_i_17_n_1 ,\out_pixel_reg[7]_i_17_n_2 ,\out_pixel_reg[7]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_pixel[7]_i_35_n_0 ,\out_pixel[7]_i_36_n_0 ,\out_pixel[7]_i_37_n_0 ,\out_pixel[7]_i_38_n_0 }),
        .O(\NLW_out_pixel_reg[7]_i_17_O_UNCONNECTED [3:0]),
        .S({\out_pixel[7]_i_39_n_0 ,\out_pixel[7]_i_40_n_0 ,\out_pixel[7]_i_41_n_0 ,\out_pixel[7]_i_42_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_pixel_reg[7]_i_26 
       (.CI(\out_pixel_reg[7]_i_43_n_0 ),
        .CO({\out_pixel_reg[7]_i_26_n_0 ,\out_pixel_reg[7]_i_26_n_1 ,\out_pixel_reg[7]_i_26_n_2 ,\out_pixel_reg[7]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_pixel[7]_i_44_n_0 ,1'b0,1'b0,1'b0}),
        .O(\NLW_out_pixel_reg[7]_i_26_O_UNCONNECTED [3:0]),
        .S({\out_pixel[7]_i_45_n_0 ,\out_pixel[7]_i_46_n_0 ,\out_pixel[7]_i_47_n_0 ,\out_pixel[7]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_pixel_reg[7]_i_3 
       (.CI(\out_pixel_reg[7]_i_5_n_0 ),
        .CO({\NLW_out_pixel_reg[7]_i_3_CO_UNCONNECTED [3:1],out_pixel1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\out_pixel[7]_i_6_n_0 }),
        .O(\NLW_out_pixel_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\out_pixel[7]_i_7_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_pixel_reg[7]_i_4 
       (.CI(\out_pixel_reg[7]_i_8_n_0 ),
        .CO({out_pixel10_in,\out_pixel_reg[7]_i_4_n_1 ,\out_pixel_reg[7]_i_4_n_2 ,\out_pixel_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_pixel[7]_i_9_n_0 ,\out_pixel[7]_i_10_n_0 ,\out_pixel[7]_i_11_n_0 ,\out_pixel[7]_i_12_n_0 }),
        .O(\NLW_out_pixel_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\out_pixel[7]_i_13_n_0 ,\out_pixel[7]_i_14_n_0 ,\out_pixel[7]_i_15_n_0 ,\out_pixel[7]_i_16_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_pixel_reg[7]_i_43 
       (.CI(1'b0),
        .CO({\out_pixel_reg[7]_i_43_n_0 ,\out_pixel_reg[7]_i_43_n_1 ,\out_pixel_reg[7]_i_43_n_2 ,\out_pixel_reg[7]_i_43_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_pixel[7]_i_49_n_0 ,\out_pixel[7]_i_50_n_0 ,\out_pixel[7]_i_51_n_0 ,\out_pixel[7]_i_52_n_0 }),
        .O(\NLW_out_pixel_reg[7]_i_43_O_UNCONNECTED [3:0]),
        .S({\out_pixel[7]_i_53_n_0 ,\out_pixel[7]_i_54_n_0 ,\out_pixel[7]_i_55_n_0 ,\out_pixel[7]_i_56_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_pixel_reg[7]_i_5 
       (.CI(\out_pixel_reg[7]_i_17_n_0 ),
        .CO({\out_pixel_reg[7]_i_5_n_0 ,\out_pixel_reg[7]_i_5_n_1 ,\out_pixel_reg[7]_i_5_n_2 ,\out_pixel_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_pixel[7]_i_18_n_0 ,\out_pixel[7]_i_19_n_0 ,\out_pixel[7]_i_20_n_0 ,\out_pixel[7]_i_21_n_0 }),
        .O(\NLW_out_pixel_reg[7]_i_5_O_UNCONNECTED [3:0]),
        .S({\out_pixel[7]_i_22_n_0 ,\out_pixel[7]_i_23_n_0 ,\out_pixel[7]_i_24_n_0 ,\out_pixel[7]_i_25_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \out_pixel_reg[7]_i_8 
       (.CI(\out_pixel_reg[7]_i_26_n_0 ),
        .CO({\out_pixel_reg[7]_i_8_n_0 ,\out_pixel_reg[7]_i_8_n_1 ,\out_pixel_reg[7]_i_8_n_2 ,\out_pixel_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_pixel[7]_i_27_n_0 ,\out_pixel[7]_i_28_n_0 ,\out_pixel[7]_i_29_n_0 ,\out_pixel[7]_i_30_n_0 }),
        .O(\NLW_out_pixel_reg[7]_i_8_O_UNCONNECTED [3:0]),
        .S({\out_pixel[7]_i_31_n_0 ,\out_pixel[7]_i_32_n_0 ,\out_pixel[7]_i_33_n_0 ,\out_pixel[7]_i_34_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    relu_en_reg_i_1
       (.I0(cur_relu_en),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(relu_en_reg_reg_n_0),
        .O(relu_en_reg_i_1_n_0));
  FDPE relu_en_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(relu_en_reg_i_1_n_0),
        .PRE(done_reg_1),
        .Q(relu_en_reg_reg_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \weight_addr[11]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(fmap_val));
  FDCE \weight_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[0] ),
        .Q(fc_weight_addr[0]));
  FDCE \weight_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[10] ),
        .Q(fc_weight_addr[10]));
  FDCE \weight_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[11] ),
        .Q(fc_weight_addr[11]));
  FDCE \weight_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[1] ),
        .Q(fc_weight_addr[1]));
  FDCE \weight_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[2] ),
        .Q(fc_weight_addr[2]));
  FDCE \weight_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[3] ),
        .Q(fc_weight_addr[3]));
  FDCE \weight_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[4] ),
        .Q(fc_weight_addr[4]));
  FDCE \weight_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[5] ),
        .Q(fc_weight_addr[5]));
  FDCE \weight_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[6] ),
        .Q(fc_weight_addr[6]));
  FDCE \weight_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[7] ),
        .Q(fc_weight_addr[7]));
  FDCE \weight_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[8] ),
        .Q(fc_weight_addr[8]));
  FDCE \weight_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(fmap_val),
        .CLR(done_reg_1),
        .D(\idx_reg_n_0_[9] ),
        .Q(fc_weight_addr[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fmap_bram
   (\FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    patch_src_reg,
    dout,
    Q,
    mem_reg_0_7_0,
    patch_src,
    s00_axi_aclk,
    mem_reg_0_6_0,
    ADDRARDADDR,
    ADDRBWRADDR,
    din,
    WEA,
    we);
  output \FSM_onehot_state_reg[1] ;
  output \FSM_onehot_state_reg[1]_0 ;
  output patch_src_reg;
  output [7:0]dout;
  input [1:0]Q;
  input [1:0]mem_reg_0_7_0;
  input patch_src;
  input s00_axi_aclk;
  input mem_reg_0_6_0;
  input [14:0]ADDRARDADDR;
  input [14:0]ADDRBWRADDR;
  input [7:0]din;
  input [1:0]WEA;
  input we;

  wire [14:0]ADDRARDADDR;
  wire [14:0]ADDRBWRADDR;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [1:0]Q;
  wire [1:0]WEA;
  wire [7:0]din;
  wire [7:0]dout;
  wire mem_reg_0_6_0;
  wire [1:0]mem_reg_0_7_0;
  wire patch_src;
  wire patch_src_reg;
  wire s00_axi_aclk;
  wire we;
  wire NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_7_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_a/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_0_DOBDO_UNCONNECTED[31:1],dout[0]}),
        .DOPADOP(NLW_mem_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000004)) 
    mem_reg_0_0_i_40
       (.I0(patch_src),
        .I1(Q[1]),
        .I2(mem_reg_0_7_0[1]),
        .I3(mem_reg_0_7_0[0]),
        .I4(Q[0]),
        .O(patch_src_reg));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    mem_reg_0_0_i_41
       (.I0(Q[0]),
        .I1(mem_reg_0_7_0[0]),
        .I2(mem_reg_0_7_0[1]),
        .I3(Q[1]),
        .I4(patch_src),
        .O(\FSM_onehot_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    mem_reg_0_0_i_42
       (.I0(Q[0]),
        .I1(mem_reg_0_7_0[0]),
        .I2(mem_reg_0_7_0[1]),
        .I3(Q[1]),
        .I4(patch_src),
        .O(\FSM_onehot_state_reg[1] ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_a/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_1_DOBDO_UNCONNECTED[31:1],dout[1]}),
        .DOPADOP(NLW_mem_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_a/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_2
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_2_DOBDO_UNCONNECTED[31:1],dout[2]}),
        .DOPADOP(NLW_mem_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_a/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_3
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_3_DOBDO_UNCONNECTED[31:1],dout[3]}),
        .DOPADOP(NLW_mem_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_a/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_4
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_4_DOBDO_UNCONNECTED[31:1],dout[4]}),
        .DOPADOP(NLW_mem_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_a/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_5
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_5_DOBDO_UNCONNECTED[31:1],dout[5]}),
        .DOPADOP(NLW_mem_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_a/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_6
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_6_DOBDO_UNCONNECTED[31:1],dout[6]}),
        .DOPADOP(NLW_mem_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_6_0,WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_a/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_7
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_7_DOBDO_UNCONNECTED[31:1],dout[7]}),
        .DOPADOP(NLW_mem_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_6_0,mem_reg_0_6_0,mem_reg_0_6_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "fmap_bram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fmap_bram_0
   (\FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    patch_src_reg,
    D,
    dout,
    CO,
    Q,
    mem_reg_0_7_0,
    patch_src,
    \fmap_val_reg[7] ,
    \max_val_reg[7]_i_3_0 ,
    s00_axi_aclk,
    mem_reg_0_6_0,
    ADDRARDADDR,
    ADDRBWRADDR,
    din,
    WEA,
    we);
  output \FSM_onehot_state_reg[1] ;
  output \FSM_onehot_state_reg[1]_0 ;
  output patch_src_reg;
  output [7:0]D;
  output [7:0]dout;
  output [0:0]CO;
  input [1:0]Q;
  input [1:0]mem_reg_0_7_0;
  input patch_src;
  input [7:0]\fmap_val_reg[7] ;
  input [7:0]\max_val_reg[7]_i_3_0 ;
  input s00_axi_aclk;
  input mem_reg_0_6_0;
  input [14:0]ADDRARDADDR;
  input [14:0]ADDRBWRADDR;
  input [7:0]din;
  input [1:0]WEA;
  input we;

  wire [14:0]ADDRARDADDR;
  wire [14:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [7:0]D;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [1:0]Q;
  wire [1:0]WEA;
  wire [7:0]din;
  wire [7:0]dout;
  wire [7:0]\fmap_val_reg[7] ;
  wire \max_val[7]_i_10_n_0 ;
  wire \max_val[7]_i_11_n_0 ;
  wire \max_val[7]_i_12_n_0 ;
  wire \max_val[7]_i_5_n_0 ;
  wire \max_val[7]_i_6_n_0 ;
  wire \max_val[7]_i_7_n_0 ;
  wire \max_val[7]_i_8_n_0 ;
  wire \max_val[7]_i_9_n_0 ;
  wire [7:0]\max_val_reg[7]_i_3_0 ;
  wire \max_val_reg[7]_i_3_n_1 ;
  wire \max_val_reg[7]_i_3_n_2 ;
  wire \max_val_reg[7]_i_3_n_3 ;
  wire mem_reg_0_6_0;
  wire [1:0]mem_reg_0_7_0;
  wire patch_src;
  wire patch_src_reg;
  wire s00_axi_aclk;
  wire we;
  wire [3:0]\NLW_max_val_reg[7]_i_3_O_UNCONNECTED ;
  wire NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_7_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fmap_val[0]_i_1 
       (.I0(dout[0]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fmap_val[1]_i_1 
       (.I0(dout[1]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fmap_val[2]_i_1 
       (.I0(dout[2]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fmap_val[3]_i_1 
       (.I0(dout[3]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fmap_val[4]_i_1 
       (.I0(dout[4]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fmap_val[5]_i_1 
       (.I0(dout[5]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fmap_val[6]_i_1 
       (.I0(dout[6]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fmap_val[7]_i_1 
       (.I0(dout[7]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \max_val[7]_i_10 
       (.I0(dout[4]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [4]),
        .I3(\max_val_reg[7]_i_3_0 [4]),
        .I4(D[5]),
        .I5(\max_val_reg[7]_i_3_0 [5]),
        .O(\max_val[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \max_val[7]_i_11 
       (.I0(dout[2]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [2]),
        .I3(\max_val_reg[7]_i_3_0 [2]),
        .I4(D[3]),
        .I5(\max_val_reg[7]_i_3_0 [3]),
        .O(\max_val[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \max_val[7]_i_12 
       (.I0(dout[0]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [0]),
        .I3(\max_val_reg[7]_i_3_0 [0]),
        .I4(D[1]),
        .I5(\max_val_reg[7]_i_3_0 [1]),
        .O(\max_val[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    \max_val[7]_i_5 
       (.I0(\fmap_val_reg[7] [6]),
        .I1(patch_src),
        .I2(dout[6]),
        .I3(\max_val_reg[7]_i_3_0 [6]),
        .I4(\max_val_reg[7]_i_3_0 [7]),
        .I5(D[7]),
        .O(\max_val[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    \max_val[7]_i_6 
       (.I0(\fmap_val_reg[7] [4]),
        .I1(patch_src),
        .I2(dout[4]),
        .I3(\max_val_reg[7]_i_3_0 [4]),
        .I4(\max_val_reg[7]_i_3_0 [5]),
        .I5(D[5]),
        .O(\max_val[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    \max_val[7]_i_7 
       (.I0(\fmap_val_reg[7] [2]),
        .I1(patch_src),
        .I2(dout[2]),
        .I3(\max_val_reg[7]_i_3_0 [2]),
        .I4(\max_val_reg[7]_i_3_0 [3]),
        .I5(D[3]),
        .O(\max_val[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    \max_val[7]_i_8 
       (.I0(\fmap_val_reg[7] [0]),
        .I1(patch_src),
        .I2(dout[0]),
        .I3(\max_val_reg[7]_i_3_0 [0]),
        .I4(\max_val_reg[7]_i_3_0 [1]),
        .I5(D[1]),
        .O(\max_val[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \max_val[7]_i_9 
       (.I0(dout[6]),
        .I1(patch_src),
        .I2(\fmap_val_reg[7] [6]),
        .I3(\max_val_reg[7]_i_3_0 [6]),
        .I4(D[7]),
        .I5(\max_val_reg[7]_i_3_0 [7]),
        .O(\max_val[7]_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \max_val_reg[7]_i_3 
       (.CI(1'b0),
        .CO({CO,\max_val_reg[7]_i_3_n_1 ,\max_val_reg[7]_i_3_n_2 ,\max_val_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\max_val[7]_i_5_n_0 ,\max_val[7]_i_6_n_0 ,\max_val[7]_i_7_n_0 ,\max_val[7]_i_8_n_0 }),
        .O(\NLW_max_val_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({\max_val[7]_i_9_n_0 ,\max_val[7]_i_10_n_0 ,\max_val[7]_i_11_n_0 ,\max_val[7]_i_12_n_0 }));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_b/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_0_DOBDO_UNCONNECTED[31:1],dout[0]}),
        .DOPADOP(NLW_mem_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000008)) 
    mem_reg_0_0_i_34
       (.I0(patch_src),
        .I1(Q[1]),
        .I2(mem_reg_0_7_0[1]),
        .I3(mem_reg_0_7_0[0]),
        .I4(Q[0]),
        .O(patch_src_reg));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    mem_reg_0_0_i_35
       (.I0(Q[0]),
        .I1(mem_reg_0_7_0[0]),
        .I2(mem_reg_0_7_0[1]),
        .I3(Q[1]),
        .I4(patch_src),
        .O(\FSM_onehot_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    mem_reg_0_0_i_36
       (.I0(Q[0]),
        .I1(mem_reg_0_7_0[0]),
        .I2(mem_reg_0_7_0[1]),
        .I3(Q[1]),
        .I4(patch_src),
        .O(\FSM_onehot_state_reg[1] ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_b/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_1_DOBDO_UNCONNECTED[31:1],dout[1]}),
        .DOPADOP(NLW_mem_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_b/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_2
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_2_DOBDO_UNCONNECTED[31:1],dout[2]}),
        .DOPADOP(NLW_mem_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_b/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_3
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_3_DOBDO_UNCONNECTED[31:1],dout[3]}),
        .DOPADOP(NLW_mem_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_b/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_4
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_4_DOBDO_UNCONNECTED[31:1],dout[4]}),
        .DOPADOP(NLW_mem_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_b/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_5
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_5_DOBDO_UNCONNECTED[31:1],dout[5]}),
        .DOPADOP(NLW_mem_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_6_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_b/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_6
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_6_DOBDO_UNCONNECTED[31:1],dout[6]}),
        .DOPADOP(NLW_mem_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_6_0,WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_b/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_7
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_7_DOBDO_UNCONNECTED[31:1],dout[7]}),
        .DOPADOP(NLW_mem_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_6_0,mem_reg_0_6_0,mem_reg_0_6_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "fmap_bram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fmap_bram__parameterized0
   (D,
    s00_axi_aclk,
    WEA,
    ADDRARDADDR,
    Q,
    mem_reg_0);
  output [7:0]D;
  input s00_axi_aclk;
  input [0:0]WEA;
  input [11:0]ADDRARDADDR;
  input [11:0]Q;
  input [7:0]mem_reg_0;

  wire [11:0]ADDRARDADDR;
  wire [7:0]D;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [7:0]mem_reg_0;
  wire s00_axi_aclk;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_fmap_temp/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],D}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maxpool2x2
   (din,
    wr_data,
    wr_en,
    ADDRARDADDR,
    \FSM_onehot_state_reg[4]_0 ,
    \pool_wr_offset_reg[14] ,
    wr_en_reg_0,
    WEA,
    wr_en_reg_1,
    we,
    wr_en_reg_2,
    wr_en_reg_3,
    wr_en_reg_4,
    rd_addr,
    Q,
    mem_reg_0_7,
    fc_done,
    pool_dst,
    mem_reg_0_7_0,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    mem_reg_0_7_1,
    mem_reg_0_7_2,
    mem_reg_0_7_3,
    s00_axi_aclk,
    done_reg_0,
    D,
    \out_col_reg[0]_0 );
  output [7:0]din;
  output [7:0]wr_data;
  output wr_en;
  output [14:0]ADDRARDADDR;
  output \FSM_onehot_state_reg[4]_0 ;
  output [14:0]\pool_wr_offset_reg[14] ;
  output wr_en_reg_0;
  output [1:0]WEA;
  output wr_en_reg_1;
  output we;
  output [1:0]wr_en_reg_2;
  output wr_en_reg_3;
  output wr_en_reg_4;
  output [11:0]rd_addr;
  input [4:0]Q;
  input [7:0]mem_reg_0_7;
  input fc_done;
  input pool_dst;
  input [14:0]mem_reg_0_7_0;
  input [3:0]\FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input mem_reg_0_7_1;
  input mem_reg_0_7_2;
  input [14:0]mem_reg_0_7_3;
  input s00_axi_aclk;
  input done_reg_0;
  input [7:0]D;
  input \out_col_reg[0]_0 ;

  wire [6:1]A;
  wire [14:0]ADDRARDADDR;
  wire [6:1]B;
  wire [7:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[12]_i_1__0_n_0 ;
  wire \FSM_onehot_state[12]_i_2_n_0 ;
  wire \FSM_onehot_state[12]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_10_n_0 ;
  wire \FSM_onehot_state[1]_i_11_n_0 ;
  wire \FSM_onehot_state[1]_i_13_n_0 ;
  wire \FSM_onehot_state[1]_i_14_n_0 ;
  wire \FSM_onehot_state[1]_i_15_n_0 ;
  wire \FSM_onehot_state[1]_i_17_n_0 ;
  wire \FSM_onehot_state[1]_i_18_n_0 ;
  wire \FSM_onehot_state[1]_i_19_n_0 ;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_20_n_0 ;
  wire \FSM_onehot_state[1]_i_22_n_0 ;
  wire \FSM_onehot_state[1]_i_23_n_0 ;
  wire \FSM_onehot_state[1]_i_24_n_0 ;
  wire \FSM_onehot_state[1]_i_25_n_0 ;
  wire \FSM_onehot_state[1]_i_26_n_0 ;
  wire \FSM_onehot_state[1]_i_27_n_0 ;
  wire \FSM_onehot_state[1]_i_28_n_0 ;
  wire \FSM_onehot_state[1]_i_29_n_0 ;
  wire \FSM_onehot_state[1]_i_30_n_0 ;
  wire \FSM_onehot_state[1]_i_31_n_0 ;
  wire \FSM_onehot_state[1]_i_32_n_0 ;
  wire \FSM_onehot_state[1]_i_33_n_0 ;
  wire \FSM_onehot_state[1]_i_34_n_0 ;
  wire \FSM_onehot_state[1]_i_35_n_0 ;
  wire \FSM_onehot_state[1]_i_36_n_0 ;
  wire \FSM_onehot_state[1]_i_5_n_0 ;
  wire \FSM_onehot_state[1]_i_6_n_0 ;
  wire \FSM_onehot_state[1]_i_7_n_0 ;
  wire \FSM_onehot_state[1]_i_9_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[1]_i_12_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_12_n_1 ;
  wire \FSM_onehot_state_reg[1]_i_12_n_2 ;
  wire \FSM_onehot_state_reg[1]_i_12_n_3 ;
  wire \FSM_onehot_state_reg[1]_i_16_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_16_n_1 ;
  wire \FSM_onehot_state_reg[1]_i_16_n_2 ;
  wire \FSM_onehot_state_reg[1]_i_16_n_3 ;
  wire \FSM_onehot_state_reg[1]_i_21_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_21_n_1 ;
  wire \FSM_onehot_state_reg[1]_i_21_n_2 ;
  wire \FSM_onehot_state_reg[1]_i_21_n_3 ;
  wire \FSM_onehot_state_reg[1]_i_2_n_2 ;
  wire \FSM_onehot_state_reg[1]_i_2_n_3 ;
  wire \FSM_onehot_state_reg[1]_i_3_n_2 ;
  wire \FSM_onehot_state_reg[1]_i_3_n_3 ;
  wire \FSM_onehot_state_reg[1]_i_4_n_2 ;
  wire \FSM_onehot_state_reg[1]_i_4_n_3 ;
  wire \FSM_onehot_state_reg[1]_i_8_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_8_n_1 ;
  wire \FSM_onehot_state_reg[1]_i_8_n_2 ;
  wire \FSM_onehot_state_reg[1]_i_8_n_3 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[12] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [4:0]Q;
  wire [1:0]WEA;
  wire [7:0]ch;
  wire \ch[0]_i_1_n_0 ;
  wire \ch[1]_i_1_n_0 ;
  wire \ch[2]_i_1_n_0 ;
  wire \ch[3]_i_1_n_0 ;
  wire \ch[4]_i_1_n_0 ;
  wire \ch[5]_i_1_n_0 ;
  wire \ch[5]_i_2_n_0 ;
  wire \ch[6]_i_1_n_0 ;
  wire \ch[7]_i_1_n_0 ;
  wire \ch[7]_i_2_n_0 ;
  wire \ch[7]_i_3_n_0 ;
  wire [7:0]din;
  wire done_i_1_n_0;
  wire done_reg_0;
  wire fc_done;
  wire [14:0]fmap_b_wr_addr0;
  wire max_011;
  wire [7:0]max_23;
  wire max_231;
  wire [7:0]max_all;
  wire mem_reg_0_0_i_36__0_n_2;
  wire mem_reg_0_0_i_36__0_n_3;
  wire mem_reg_0_0_i_37_n_0;
  wire mem_reg_0_0_i_37_n_1;
  wire mem_reg_0_0_i_37_n_2;
  wire mem_reg_0_0_i_37_n_3;
  wire mem_reg_0_0_i_38_n_0;
  wire mem_reg_0_0_i_38_n_1;
  wire mem_reg_0_0_i_38_n_2;
  wire mem_reg_0_0_i_38_n_3;
  wire mem_reg_0_0_i_39_n_0;
  wire mem_reg_0_0_i_39_n_1;
  wire mem_reg_0_0_i_39_n_2;
  wire mem_reg_0_0_i_39_n_3;
  wire mem_reg_0_0_i_43_n_0;
  wire mem_reg_0_0_i_44_n_0;
  wire mem_reg_0_0_i_45_n_0;
  wire mem_reg_0_0_i_46_n_0;
  wire mem_reg_0_0_i_47_n_0;
  wire mem_reg_0_0_i_48_n_0;
  wire mem_reg_0_0_i_49_n_0;
  wire mem_reg_0_0_i_50_n_0;
  wire mem_reg_0_0_i_51_n_0;
  wire mem_reg_0_0_i_52_n_0;
  wire mem_reg_0_0_i_53_n_0;
  wire mem_reg_0_0_i_54_n_0;
  wire mem_reg_0_0_i_55_n_0;
  wire mem_reg_0_0_i_56_n_0;
  wire mem_reg_0_0_i_57_n_0;
  wire [7:0]mem_reg_0_7;
  wire [14:0]mem_reg_0_7_0;
  wire mem_reg_0_7_1;
  wire mem_reg_0_7_2;
  wire [14:0]mem_reg_0_7_3;
  wire [6:0]out_col;
  wire \out_col[4]_i_2_n_0 ;
  wire \out_col[6]_i_1_n_0 ;
  wire \out_col[6]_i_3_n_0 ;
  wire \out_col_reg[0]_0 ;
  wire \out_col_reg_n_0_[6] ;
  wire [6:0]out_row;
  wire \out_row[4]_i_2_n_0 ;
  wire \out_row[6]_i_1_n_0 ;
  wire \out_row[6]_i_3_n_0 ;
  wire \out_row_reg_n_0_[6] ;
  wire p00;
  wire [7:0]p00__0;
  wire p01;
  wire [7:0]p01__0;
  wire p10;
  wire [7:0]p10__0;
  wire p11;
  wire [7:0]p11__0;
  wire p_0_in;
  wire p_1_in;
  wire p_1_out0;
  wire [11:0]p_1_out__0;
  wire p_1_out_i_10_n_0;
  wire p_1_out_i_11_n_0;
  wire p_1_out_i_12_n_0;
  wire p_1_out_i_13_n_0;
  wire p_1_out_i_14_n_0;
  wire p_1_out_i_15_n_0;
  wire p_1_out_i_16_n_0;
  wire p_1_out_i_17_n_0;
  wire p_1_out_i_18_n_0;
  wire p_1_out_i_19_n_0;
  wire p_1_out_i_20_n_0;
  wire p_1_out_i_21_n_0;
  wire p_1_out_i_22_n_0;
  wire p_1_out_i_22_n_1;
  wire p_1_out_i_22_n_2;
  wire p_1_out_i_22_n_3;
  wire p_1_out_i_22_n_4;
  wire p_1_out_i_22_n_5;
  wire p_1_out_i_22_n_6;
  wire p_1_out_i_22_n_7;
  wire p_1_out_i_23_n_0;
  wire p_1_out_i_24_n_0;
  wire p_1_out_i_25_n_0;
  wire p_1_out_i_26_n_0;
  wire p_1_out_i_27_n_1;
  wire p_1_out_i_27_n_3;
  wire p_1_out_i_27_n_6;
  wire p_1_out_i_27_n_7;
  wire p_1_out_i_28_n_0;
  wire p_1_out_i_28_n_1;
  wire p_1_out_i_28_n_2;
  wire p_1_out_i_28_n_3;
  wire p_1_out_i_28_n_4;
  wire p_1_out_i_28_n_5;
  wire p_1_out_i_28_n_6;
  wire p_1_out_i_28_n_7;
  wire p_1_out_i_29_n_0;
  wire p_1_out_i_2_n_1;
  wire p_1_out_i_2_n_2;
  wire p_1_out_i_2_n_3;
  wire p_1_out_i_2_n_4;
  wire p_1_out_i_2_n_5;
  wire p_1_out_i_2_n_6;
  wire p_1_out_i_2_n_7;
  wire p_1_out_i_30_n_0;
  wire p_1_out_i_31_n_0;
  wire p_1_out_i_32_n_0;
  wire p_1_out_i_33_n_0;
  wire p_1_out_i_34_n_0;
  wire p_1_out_i_35_n_0;
  wire p_1_out_i_36_n_0;
  wire p_1_out_i_37_n_0;
  wire p_1_out_i_38_n_0;
  wire p_1_out_i_39_n_0;
  wire p_1_out_i_3_n_0;
  wire p_1_out_i_3_n_1;
  wire p_1_out_i_3_n_2;
  wire p_1_out_i_3_n_3;
  wire p_1_out_i_3_n_4;
  wire p_1_out_i_3_n_5;
  wire p_1_out_i_3_n_6;
  wire p_1_out_i_3_n_7;
  wire p_1_out_i_40_n_0;
  wire p_1_out_i_41_n_0;
  wire p_1_out_i_42_n_0;
  wire p_1_out_i_43_n_0;
  wire p_1_out_i_44_n_0;
  wire p_1_out_i_45_n_0;
  wire p_1_out_i_46_n_0;
  wire p_1_out_i_47_n_0;
  wire p_1_out_i_48_n_0;
  wire p_1_out_i_49_n_0;
  wire p_1_out_i_4_n_0;
  wire p_1_out_i_4_n_1;
  wire p_1_out_i_4_n_2;
  wire p_1_out_i_4_n_3;
  wire p_1_out_i_4_n_4;
  wire p_1_out_i_4_n_5;
  wire p_1_out_i_4_n_6;
  wire p_1_out_i_4_n_7;
  wire p_1_out_i_50_n_0;
  wire p_1_out_i_51_n_0;
  wire p_1_out_i_5_n_0;
  wire p_1_out_i_6_n_0;
  wire p_1_out_i_7_n_0;
  wire p_1_out_i_8_n_0;
  wire p_1_out_i_9_n_0;
  wire p_1_out_n_91;
  wire p_1_out_n_92;
  wire p_1_out_n_93;
  wire pool_done;
  wire pool_dst;
  wire [14:0]pool_wr_addr;
  wire [14:0]\pool_wr_offset_reg[14] ;
  wire [11:0]rd_addr;
  wire [11:4]rd_addr2;
  wire \rd_addr[11]_i_10_n_0 ;
  wire \rd_addr[11]_i_11_n_0 ;
  wire \rd_addr[11]_i_12_n_0 ;
  wire \rd_addr[11]_i_13_n_0 ;
  wire \rd_addr[11]_i_14_n_0 ;
  wire \rd_addr[11]_i_15_n_0 ;
  wire \rd_addr[11]_i_16_n_0 ;
  wire \rd_addr[11]_i_17_n_0 ;
  wire \rd_addr[11]_i_18_n_0 ;
  wire \rd_addr[11]_i_19_n_0 ;
  wire \rd_addr[11]_i_1_n_0 ;
  wire \rd_addr[11]_i_20_n_0 ;
  wire \rd_addr[11]_i_21_n_0 ;
  wire \rd_addr[11]_i_22_n_0 ;
  wire \rd_addr[11]_i_23_n_0 ;
  wire \rd_addr[11]_i_29_n_0 ;
  wire \rd_addr[11]_i_30_n_0 ;
  wire \rd_addr[11]_i_31_n_0 ;
  wire \rd_addr[11]_i_32_n_0 ;
  wire \rd_addr[11]_i_33_n_0 ;
  wire \rd_addr[11]_i_34_n_0 ;
  wire \rd_addr[11]_i_35_n_0 ;
  wire \rd_addr[11]_i_36_n_0 ;
  wire \rd_addr[11]_i_37_n_0 ;
  wire \rd_addr[11]_i_38_n_0 ;
  wire \rd_addr[11]_i_39_n_0 ;
  wire \rd_addr[11]_i_3_n_0 ;
  wire \rd_addr[11]_i_40_n_0 ;
  wire \rd_addr[11]_i_41_n_0 ;
  wire \rd_addr[11]_i_42_n_0 ;
  wire \rd_addr[11]_i_43_n_0 ;
  wire \rd_addr[11]_i_44_n_0 ;
  wire \rd_addr[11]_i_45_n_0 ;
  wire \rd_addr[11]_i_46_n_0 ;
  wire \rd_addr[11]_i_47_n_0 ;
  wire \rd_addr[11]_i_48_n_0 ;
  wire \rd_addr[11]_i_49_n_0 ;
  wire \rd_addr[11]_i_4_n_0 ;
  wire \rd_addr[11]_i_50_n_0 ;
  wire \rd_addr[11]_i_51_n_0 ;
  wire \rd_addr[11]_i_52_n_0 ;
  wire \rd_addr[11]_i_53_n_0 ;
  wire \rd_addr[11]_i_54_n_0 ;
  wire \rd_addr[11]_i_5_n_0 ;
  wire \rd_addr[11]_i_6_n_0 ;
  wire \rd_addr[5]_i_10_n_0 ;
  wire \rd_addr[5]_i_11_n_0 ;
  wire \rd_addr[5]_i_12_n_0 ;
  wire \rd_addr[5]_i_13_n_0 ;
  wire \rd_addr[5]_i_14_n_0 ;
  wire \rd_addr[5]_i_15_n_0 ;
  wire \rd_addr[5]_i_16_n_0 ;
  wire \rd_addr[5]_i_17_n_0 ;
  wire \rd_addr[5]_i_18_n_0 ;
  wire \rd_addr[5]_i_2_n_0 ;
  wire \rd_addr[5]_i_3_n_0 ;
  wire \rd_addr[5]_i_4_n_0 ;
  wire \rd_addr[5]_i_5_n_0 ;
  wire \rd_addr[5]_i_6_n_0 ;
  wire \rd_addr[5]_i_7_n_0 ;
  wire \rd_addr[5]_i_8_n_0 ;
  wire \rd_addr[9]_i_12_n_0 ;
  wire \rd_addr[9]_i_13_n_0 ;
  wire \rd_addr[9]_i_14_n_0 ;
  wire \rd_addr[9]_i_15_n_0 ;
  wire \rd_addr[9]_i_16_n_0 ;
  wire \rd_addr[9]_i_17_n_0 ;
  wire \rd_addr[9]_i_18_n_0 ;
  wire \rd_addr[9]_i_20_n_0 ;
  wire \rd_addr[9]_i_21_n_0 ;
  wire \rd_addr[9]_i_22_n_0 ;
  wire \rd_addr[9]_i_23_n_0 ;
  wire \rd_addr[9]_i_24_n_0 ;
  wire \rd_addr[9]_i_25_n_0 ;
  wire \rd_addr[9]_i_26_n_0 ;
  wire \rd_addr[9]_i_27_n_0 ;
  wire \rd_addr[9]_i_28_n_0 ;
  wire \rd_addr[9]_i_29_n_0 ;
  wire \rd_addr[9]_i_2_n_0 ;
  wire \rd_addr[9]_i_3_n_0 ;
  wire \rd_addr[9]_i_4_n_0 ;
  wire \rd_addr[9]_i_5_n_0 ;
  wire \rd_addr[9]_i_6_n_0 ;
  wire \rd_addr[9]_i_7_n_0 ;
  wire \rd_addr[9]_i_8_n_0 ;
  wire \rd_addr[9]_i_9_n_0 ;
  wire \rd_addr_reg[11]_i_24_n_0 ;
  wire \rd_addr_reg[11]_i_24_n_1 ;
  wire \rd_addr_reg[11]_i_24_n_2 ;
  wire \rd_addr_reg[11]_i_24_n_3 ;
  wire \rd_addr_reg[11]_i_24_n_4 ;
  wire \rd_addr_reg[11]_i_24_n_5 ;
  wire \rd_addr_reg[11]_i_24_n_6 ;
  wire \rd_addr_reg[11]_i_24_n_7 ;
  wire \rd_addr_reg[11]_i_25_n_7 ;
  wire \rd_addr_reg[11]_i_26_n_0 ;
  wire \rd_addr_reg[11]_i_26_n_1 ;
  wire \rd_addr_reg[11]_i_26_n_2 ;
  wire \rd_addr_reg[11]_i_26_n_3 ;
  wire \rd_addr_reg[11]_i_26_n_4 ;
  wire \rd_addr_reg[11]_i_26_n_5 ;
  wire \rd_addr_reg[11]_i_26_n_6 ;
  wire \rd_addr_reg[11]_i_26_n_7 ;
  wire \rd_addr_reg[11]_i_27_n_2 ;
  wire \rd_addr_reg[11]_i_27_n_7 ;
  wire \rd_addr_reg[11]_i_28_n_7 ;
  wire \rd_addr_reg[11]_i_2_n_3 ;
  wire \rd_addr_reg[11]_i_2_n_6 ;
  wire \rd_addr_reg[11]_i_2_n_7 ;
  wire \rd_addr_reg[11]_i_7_n_7 ;
  wire \rd_addr_reg[11]_i_8_n_2 ;
  wire \rd_addr_reg[11]_i_8_n_3 ;
  wire \rd_addr_reg[11]_i_9_n_0 ;
  wire \rd_addr_reg[11]_i_9_n_1 ;
  wire \rd_addr_reg[11]_i_9_n_2 ;
  wire \rd_addr_reg[11]_i_9_n_3 ;
  wire \rd_addr_reg[11]_i_9_n_4 ;
  wire \rd_addr_reg[11]_i_9_n_5 ;
  wire \rd_addr_reg[11]_i_9_n_6 ;
  wire \rd_addr_reg[11]_i_9_n_7 ;
  wire \rd_addr_reg[5]_i_1_n_0 ;
  wire \rd_addr_reg[5]_i_1_n_1 ;
  wire \rd_addr_reg[5]_i_1_n_2 ;
  wire \rd_addr_reg[5]_i_1_n_3 ;
  wire \rd_addr_reg[5]_i_1_n_4 ;
  wire \rd_addr_reg[5]_i_1_n_5 ;
  wire \rd_addr_reg[5]_i_1_n_6 ;
  wire \rd_addr_reg[5]_i_1_n_7 ;
  wire \rd_addr_reg[5]_i_9_n_0 ;
  wire \rd_addr_reg[5]_i_9_n_1 ;
  wire \rd_addr_reg[5]_i_9_n_2 ;
  wire \rd_addr_reg[5]_i_9_n_3 ;
  wire \rd_addr_reg[5]_i_9_n_4 ;
  wire \rd_addr_reg[5]_i_9_n_5 ;
  wire \rd_addr_reg[5]_i_9_n_6 ;
  wire \rd_addr_reg[9]_i_10_n_0 ;
  wire \rd_addr_reg[9]_i_10_n_1 ;
  wire \rd_addr_reg[9]_i_10_n_2 ;
  wire \rd_addr_reg[9]_i_10_n_3 ;
  wire \rd_addr_reg[9]_i_11_n_0 ;
  wire \rd_addr_reg[9]_i_11_n_1 ;
  wire \rd_addr_reg[9]_i_11_n_2 ;
  wire \rd_addr_reg[9]_i_11_n_3 ;
  wire \rd_addr_reg[9]_i_11_n_4 ;
  wire \rd_addr_reg[9]_i_11_n_5 ;
  wire \rd_addr_reg[9]_i_11_n_6 ;
  wire \rd_addr_reg[9]_i_11_n_7 ;
  wire \rd_addr_reg[9]_i_19_n_0 ;
  wire \rd_addr_reg[9]_i_19_n_1 ;
  wire \rd_addr_reg[9]_i_19_n_2 ;
  wire \rd_addr_reg[9]_i_19_n_3 ;
  wire \rd_addr_reg[9]_i_19_n_4 ;
  wire \rd_addr_reg[9]_i_19_n_5 ;
  wire \rd_addr_reg[9]_i_19_n_6 ;
  wire \rd_addr_reg[9]_i_19_n_7 ;
  wire \rd_addr_reg[9]_i_1_n_0 ;
  wire \rd_addr_reg[9]_i_1_n_1 ;
  wire \rd_addr_reg[9]_i_1_n_2 ;
  wire \rd_addr_reg[9]_i_1_n_3 ;
  wire \rd_addr_reg[9]_i_1_n_4 ;
  wire \rd_addr_reg[9]_i_1_n_5 ;
  wire \rd_addr_reg[9]_i_1_n_6 ;
  wire \rd_addr_reg[9]_i_1_n_7 ;
  wire s00_axi_aclk;
  wire state1;
  wire state11_out;
  wire state13_out;
  wire we;
  wire [14:0]wr_addr0__0;
  wire wr_addr0_i_10_n_0;
  wire wr_addr0_i_11_n_0;
  wire wr_addr0_i_12_n_0;
  wire wr_addr0_i_13_n_0;
  wire wr_addr0_i_14_n_0;
  wire wr_addr0_i_15_n_0;
  wire wr_addr0_i_16_n_0;
  wire wr_addr0_i_17_n_0;
  wire wr_addr0_i_18_n_0;
  wire wr_addr0_i_19_n_0;
  wire wr_addr0_i_1_n_1;
  wire wr_addr0_i_1_n_2;
  wire wr_addr0_i_1_n_3;
  wire wr_addr0_i_1_n_4;
  wire wr_addr0_i_1_n_5;
  wire wr_addr0_i_1_n_6;
  wire wr_addr0_i_1_n_7;
  wire wr_addr0_i_20_n_0;
  wire wr_addr0_i_21_n_0;
  wire wr_addr0_i_21_n_1;
  wire wr_addr0_i_21_n_2;
  wire wr_addr0_i_21_n_3;
  wire wr_addr0_i_21_n_4;
  wire wr_addr0_i_21_n_5;
  wire wr_addr0_i_21_n_6;
  wire wr_addr0_i_21_n_7;
  wire wr_addr0_i_22_n_0;
  wire wr_addr0_i_23_n_0;
  wire wr_addr0_i_24_n_0;
  wire wr_addr0_i_25_n_0;
  wire wr_addr0_i_26_n_0;
  wire wr_addr0_i_26_n_2;
  wire wr_addr0_i_26_n_3;
  wire wr_addr0_i_26_n_5;
  wire wr_addr0_i_26_n_6;
  wire wr_addr0_i_26_n_7;
  wire wr_addr0_i_27_n_0;
  wire wr_addr0_i_28_n_0;
  wire wr_addr0_i_29_n_0;
  wire wr_addr0_i_2_n_0;
  wire wr_addr0_i_2_n_1;
  wire wr_addr0_i_2_n_2;
  wire wr_addr0_i_2_n_3;
  wire wr_addr0_i_2_n_4;
  wire wr_addr0_i_2_n_5;
  wire wr_addr0_i_2_n_6;
  wire wr_addr0_i_2_n_7;
  wire wr_addr0_i_30_n_0;
  wire wr_addr0_i_31_n_0;
  wire wr_addr0_i_32_n_0;
  wire wr_addr0_i_33_n_0;
  wire wr_addr0_i_34_n_0;
  wire wr_addr0_i_35_n_0;
  wire wr_addr0_i_36_n_0;
  wire wr_addr0_i_37_n_0;
  wire wr_addr0_i_38_n_0;
  wire wr_addr0_i_39_n_0;
  wire wr_addr0_i_3_n_0;
  wire wr_addr0_i_3_n_1;
  wire wr_addr0_i_3_n_2;
  wire wr_addr0_i_3_n_3;
  wire wr_addr0_i_3_n_4;
  wire wr_addr0_i_3_n_5;
  wire wr_addr0_i_3_n_6;
  wire wr_addr0_i_3_n_7;
  wire wr_addr0_i_40_n_0;
  wire wr_addr0_i_41_n_0;
  wire wr_addr0_i_42_n_0;
  wire wr_addr0_i_43_n_0;
  wire wr_addr0_i_44_n_0;
  wire wr_addr0_i_45_n_0;
  wire wr_addr0_i_46_n_0;
  wire wr_addr0_i_47_n_0;
  wire wr_addr0_i_48_n_0;
  wire wr_addr0_i_49_n_0;
  wire wr_addr0_i_4_n_0;
  wire wr_addr0_i_50_n_0;
  wire wr_addr0_i_51_n_0;
  wire wr_addr0_i_52_n_0;
  wire wr_addr0_i_53_n_0;
  wire wr_addr0_i_54_n_0;
  wire wr_addr0_i_55_n_0;
  wire wr_addr0_i_56_n_0;
  wire wr_addr0_i_57_n_0;
  wire wr_addr0_i_58_n_0;
  wire wr_addr0_i_59_n_0;
  wire wr_addr0_i_5_n_0;
  wire wr_addr0_i_60_n_0;
  wire wr_addr0_i_61_n_0;
  wire wr_addr0_i_62_n_0;
  wire wr_addr0_i_63_n_0;
  wire wr_addr0_i_64_n_0;
  wire wr_addr0_i_6_n_0;
  wire wr_addr0_i_7_n_0;
  wire wr_addr0_i_8_n_0;
  wire wr_addr0_i_9_n_0;
  wire wr_addr0_n_100;
  wire wr_addr0_n_101;
  wire wr_addr0_n_102;
  wire wr_addr0_n_103;
  wire wr_addr0_n_104;
  wire wr_addr0_n_105;
  wire wr_addr0_n_91;
  wire wr_addr0_n_92;
  wire wr_addr0_n_93;
  wire wr_addr0_n_94;
  wire wr_addr0_n_95;
  wire wr_addr0_n_96;
  wire wr_addr0_n_97;
  wire wr_addr0_n_98;
  wire wr_addr0_n_99;
  wire wr_addr2_n_100;
  wire wr_addr2_n_101;
  wire wr_addr2_n_102;
  wire wr_addr2_n_103;
  wire wr_addr2_n_104;
  wire wr_addr2_n_105;
  wire wr_addr2_n_106;
  wire wr_addr2_n_107;
  wire wr_addr2_n_108;
  wire wr_addr2_n_109;
  wire wr_addr2_n_110;
  wire wr_addr2_n_111;
  wire wr_addr2_n_112;
  wire wr_addr2_n_113;
  wire wr_addr2_n_114;
  wire wr_addr2_n_115;
  wire wr_addr2_n_116;
  wire wr_addr2_n_117;
  wire wr_addr2_n_118;
  wire wr_addr2_n_119;
  wire wr_addr2_n_120;
  wire wr_addr2_n_121;
  wire wr_addr2_n_122;
  wire wr_addr2_n_123;
  wire wr_addr2_n_124;
  wire wr_addr2_n_125;
  wire wr_addr2_n_126;
  wire wr_addr2_n_127;
  wire wr_addr2_n_128;
  wire wr_addr2_n_129;
  wire wr_addr2_n_130;
  wire wr_addr2_n_131;
  wire wr_addr2_n_132;
  wire wr_addr2_n_133;
  wire wr_addr2_n_134;
  wire wr_addr2_n_135;
  wire wr_addr2_n_136;
  wire wr_addr2_n_137;
  wire wr_addr2_n_138;
  wire wr_addr2_n_139;
  wire wr_addr2_n_140;
  wire wr_addr2_n_141;
  wire wr_addr2_n_142;
  wire wr_addr2_n_143;
  wire wr_addr2_n_144;
  wire wr_addr2_n_145;
  wire wr_addr2_n_146;
  wire wr_addr2_n_147;
  wire wr_addr2_n_148;
  wire wr_addr2_n_149;
  wire wr_addr2_n_150;
  wire wr_addr2_n_151;
  wire wr_addr2_n_152;
  wire wr_addr2_n_153;
  wire wr_addr2_n_93;
  wire wr_addr2_n_94;
  wire wr_addr2_n_95;
  wire wr_addr2_n_96;
  wire wr_addr2_n_97;
  wire wr_addr2_n_98;
  wire wr_addr2_n_99;
  wire \wr_addr[3]_i_2_n_0 ;
  wire \wr_addr[3]_i_3_n_0 ;
  wire \wr_addr[3]_i_4_n_0 ;
  wire \wr_addr[3]_i_5_n_0 ;
  wire \wr_addr[7]_i_2_n_0 ;
  wire \wr_addr[7]_i_3_n_0 ;
  wire \wr_addr[7]_i_4_n_0 ;
  wire \wr_addr_reg[11]_i_1_n_0 ;
  wire \wr_addr_reg[11]_i_1_n_1 ;
  wire \wr_addr_reg[11]_i_1_n_2 ;
  wire \wr_addr_reg[11]_i_1_n_3 ;
  wire \wr_addr_reg[14]_i_1_n_2 ;
  wire \wr_addr_reg[14]_i_1_n_3 ;
  wire \wr_addr_reg[3]_i_1_n_0 ;
  wire \wr_addr_reg[3]_i_1_n_1 ;
  wire \wr_addr_reg[3]_i_1_n_2 ;
  wire \wr_addr_reg[3]_i_1_n_3 ;
  wire \wr_addr_reg[7]_i_1_n_0 ;
  wire \wr_addr_reg[7]_i_1_n_1 ;
  wire \wr_addr_reg[7]_i_1_n_2 ;
  wire \wr_addr_reg[7]_i_1_n_3 ;
  wire [7:0]wr_data;
  wire \wr_data[7]_i_10_n_0 ;
  wire \wr_data[7]_i_11_n_0 ;
  wire \wr_data[7]_i_12_n_0 ;
  wire \wr_data[7]_i_13_n_0 ;
  wire \wr_data[7]_i_14_n_0 ;
  wire \wr_data[7]_i_15_n_0 ;
  wire \wr_data[7]_i_16_n_0 ;
  wire \wr_data[7]_i_17_n_0 ;
  wire \wr_data[7]_i_18_n_0 ;
  wire \wr_data[7]_i_19_n_0 ;
  wire \wr_data[7]_i_20_n_0 ;
  wire \wr_data[7]_i_21_n_0 ;
  wire \wr_data[7]_i_22_n_0 ;
  wire \wr_data[7]_i_23_n_0 ;
  wire \wr_data[7]_i_24_n_0 ;
  wire \wr_data[7]_i_25_n_0 ;
  wire \wr_data[7]_i_26_n_0 ;
  wire \wr_data[7]_i_27_n_0 ;
  wire \wr_data[7]_i_28_n_0 ;
  wire \wr_data[7]_i_29_n_0 ;
  wire \wr_data[7]_i_31_n_0 ;
  wire \wr_data[7]_i_32_n_0 ;
  wire \wr_data[7]_i_33_n_0 ;
  wire \wr_data[7]_i_34_n_0 ;
  wire \wr_data[7]_i_35_n_0 ;
  wire \wr_data[7]_i_36_n_0 ;
  wire \wr_data[7]_i_37_n_0 ;
  wire \wr_data[7]_i_38_n_0 ;
  wire \wr_data[7]_i_6_n_0 ;
  wire \wr_data[7]_i_7_n_0 ;
  wire \wr_data[7]_i_8_n_0 ;
  wire \wr_data[7]_i_9_n_0 ;
  wire \wr_data_reg[7]_i_2_n_1 ;
  wire \wr_data_reg[7]_i_2_n_2 ;
  wire \wr_data_reg[7]_i_2_n_3 ;
  wire \wr_data_reg[7]_i_30_n_1 ;
  wire \wr_data_reg[7]_i_30_n_2 ;
  wire \wr_data_reg[7]_i_30_n_3 ;
  wire \wr_data_reg[7]_i_3_n_1 ;
  wire \wr_data_reg[7]_i_3_n_2 ;
  wire \wr_data_reg[7]_i_3_n_3 ;
  wire \wr_data_reg[7]_i_4_n_1 ;
  wire \wr_data_reg[7]_i_4_n_2 ;
  wire \wr_data_reg[7]_i_4_n_3 ;
  wire wr_en;
  wire wr_en_reg_0;
  wire wr_en_reg_1;
  wire [1:0]wr_en_reg_2;
  wire wr_en_reg_3;
  wire wr_en_reg_4;
  wire [3:0]\NLW_FSM_onehot_state_reg[1]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[1]_i_16_O_UNCONNECTED ;
  wire [3:3]\NLW_FSM_onehot_state_reg[1]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[1]_i_21_O_UNCONNECTED ;
  wire [3:3]\NLW_FSM_onehot_state_reg[1]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_FSM_onehot_state_reg[1]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[1]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[1]_i_8_O_UNCONNECTED ;
  wire [3:2]NLW_mem_reg_0_0_i_36__0_CO_UNCONNECTED;
  wire [3:3]NLW_mem_reg_0_0_i_36__0_O_UNCONNECTED;
  wire NLW_p_1_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_p_1_out_P_UNCONNECTED;
  wire [47:0]NLW_p_1_out_PCOUT_UNCONNECTED;
  wire [3:3]NLW_p_1_out_i_2_CO_UNCONNECTED;
  wire [3:1]NLW_p_1_out_i_27_CO_UNCONNECTED;
  wire [3:2]NLW_p_1_out_i_27_O_UNCONNECTED;
  wire [3:1]\NLW_rd_addr_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_rd_addr_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_rd_addr_reg[11]_i_25_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_addr_reg[11]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_rd_addr_reg[11]_i_27_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_addr_reg[11]_i_27_O_UNCONNECTED ;
  wire [3:0]\NLW_rd_addr_reg[11]_i_28_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_addr_reg[11]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_rd_addr_reg[11]_i_7_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_addr_reg[11]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_rd_addr_reg[11]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_rd_addr_reg[11]_i_8_O_UNCONNECTED ;
  wire NLW_wr_addr0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_wr_addr0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_wr_addr0_OVERFLOW_UNCONNECTED;
  wire NLW_wr_addr0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_wr_addr0_PATTERNDETECT_UNCONNECTED;
  wire NLW_wr_addr0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_wr_addr0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_wr_addr0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_wr_addr0_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_wr_addr0_P_UNCONNECTED;
  wire [47:0]NLW_wr_addr0_PCOUT_UNCONNECTED;
  wire [3:3]NLW_wr_addr0_i_1_CO_UNCONNECTED;
  wire [2:2]NLW_wr_addr0_i_26_CO_UNCONNECTED;
  wire [3:3]NLW_wr_addr0_i_26_O_UNCONNECTED;
  wire NLW_wr_addr2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_wr_addr2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_wr_addr2_OVERFLOW_UNCONNECTED;
  wire NLW_wr_addr2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_wr_addr2_PATTERNDETECT_UNCONNECTED;
  wire NLW_wr_addr2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_wr_addr2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_wr_addr2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_wr_addr2_CARRYOUT_UNCONNECTED;
  wire [47:13]NLW_wr_addr2_P_UNCONNECTED;
  wire [3:2]\NLW_wr_addr_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_addr_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wr_data_reg[7]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_wr_data_reg[7]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_wr_data_reg[7]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_wr_data_reg[7]_i_4_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state11_out),
        .I2(state13_out),
        .I3(state1),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[12]_i_1__0 
       (.I0(\FSM_onehot_state[12]_i_2_n_0 ),
        .I1(\FSM_onehot_state[12]_i_3_n_0 ),
        .I2(p01),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(p00),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[12]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(p10),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(p11),
        .O(\FSM_onehot_state[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_state[12]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\out_col_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_10 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_11 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_13 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_14 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_15 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_17 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_18 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_19 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state1),
        .I2(state13_out),
        .I3(state11_out),
        .I4(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_20 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_22 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_23 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_24 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_25 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_26 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \FSM_onehot_state[1]_i_27 
       (.I0(\out_col_reg_n_0_[6] ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\FSM_onehot_state[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    \FSM_onehot_state[1]_i_28 
       (.I0(B[4]),
        .I1(\FSM_onehot_state[1]_i_34_n_0 ),
        .I2(\FSM_onehot_state[1]_i_35_n_0 ),
        .I3(B[6]),
        .I4(\FSM_onehot_state[1]_i_36_n_0 ),
        .I5(B[5]),
        .O(\FSM_onehot_state[1]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h02088020)) 
    \FSM_onehot_state[1]_i_29 
       (.I0(B[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(B[3]),
        .I4(B[2]),
        .O(\FSM_onehot_state[1]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_30 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \FSM_onehot_state[1]_i_31 
       (.I0(\out_row_reg_n_0_[6] ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\FSM_onehot_state[1]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    \FSM_onehot_state[1]_i_32 
       (.I0(A[4]),
        .I1(\FSM_onehot_state[1]_i_34_n_0 ),
        .I2(\FSM_onehot_state[1]_i_35_n_0 ),
        .I3(A[6]),
        .I4(\FSM_onehot_state[1]_i_36_n_0 ),
        .I5(A[5]),
        .O(\FSM_onehot_state[1]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h02088020)) 
    \FSM_onehot_state[1]_i_33 
       (.I0(A[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(A[3]),
        .I4(A[2]),
        .O(\FSM_onehot_state[1]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \FSM_onehot_state[1]_i_34 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\FSM_onehot_state[1]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \FSM_onehot_state[1]_i_35 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \FSM_onehot_state[1]_i_36 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FSM_onehot_state[1]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[1]_i_5 
       (.I0(ch[6]),
        .I1(ch[7]),
        .O(\FSM_onehot_state[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[1]_i_6 
       (.I0(ch[5]),
        .I1(ch[4]),
        .I2(ch[3]),
        .O(\FSM_onehot_state[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[1]_i_7 
       (.I0(ch[2]),
        .I1(ch[1]),
        .I2(ch[0]),
        .O(\FSM_onehot_state[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[1]_i_9 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \FSM_onehot_state[8]_i_4 
       (.I0(\FSM_onehot_state_reg[0]_0 [2]),
        .I1(pool_done),
        .I2(\FSM_onehot_state_reg[0]_1 ),
        .I3(\FSM_onehot_state_reg[0]_0 [0]),
        .I4(\FSM_onehot_state_reg[0]_0 [3]),
        .I5(\FSM_onehot_state_reg[0]_0 [1]),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(done_reg_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state_reg_n_0_[9] ),
        .Q(p11));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(p11),
        .Q(\FSM_onehot_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state_reg_n_0_[11] ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  CARRY4 \FSM_onehot_state_reg[1]_i_12 
       (.CI(\FSM_onehot_state_reg[1]_i_21_n_0 ),
        .CO({\FSM_onehot_state_reg[1]_i_12_n_0 ,\FSM_onehot_state_reg[1]_i_12_n_1 ,\FSM_onehot_state_reg[1]_i_12_n_2 ,\FSM_onehot_state_reg[1]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[1]_i_12_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[1]_i_22_n_0 ,\FSM_onehot_state[1]_i_23_n_0 ,\FSM_onehot_state[1]_i_24_n_0 ,\FSM_onehot_state[1]_i_25_n_0 }));
  CARRY4 \FSM_onehot_state_reg[1]_i_16 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[1]_i_16_n_0 ,\FSM_onehot_state_reg[1]_i_16_n_1 ,\FSM_onehot_state_reg[1]_i_16_n_2 ,\FSM_onehot_state_reg[1]_i_16_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[1]_i_16_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[1]_i_26_n_0 ,\FSM_onehot_state[1]_i_27_n_0 ,\FSM_onehot_state[1]_i_28_n_0 ,\FSM_onehot_state[1]_i_29_n_0 }));
  CARRY4 \FSM_onehot_state_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\NLW_FSM_onehot_state_reg[1]_i_2_CO_UNCONNECTED [3],state1,\FSM_onehot_state_reg[1]_i_2_n_2 ,\FSM_onehot_state_reg[1]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\FSM_onehot_state[1]_i_5_n_0 ,\FSM_onehot_state[1]_i_6_n_0 ,\FSM_onehot_state[1]_i_7_n_0 }));
  CARRY4 \FSM_onehot_state_reg[1]_i_21 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[1]_i_21_n_0 ,\FSM_onehot_state_reg[1]_i_21_n_1 ,\FSM_onehot_state_reg[1]_i_21_n_2 ,\FSM_onehot_state_reg[1]_i_21_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[1]_i_21_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[1]_i_30_n_0 ,\FSM_onehot_state[1]_i_31_n_0 ,\FSM_onehot_state[1]_i_32_n_0 ,\FSM_onehot_state[1]_i_33_n_0 }));
  CARRY4 \FSM_onehot_state_reg[1]_i_3 
       (.CI(\FSM_onehot_state_reg[1]_i_8_n_0 ),
        .CO({\NLW_FSM_onehot_state_reg[1]_i_3_CO_UNCONNECTED [3],state13_out,\FSM_onehot_state_reg[1]_i_3_n_2 ,\FSM_onehot_state_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\FSM_onehot_state[1]_i_9_n_0 ,\FSM_onehot_state[1]_i_10_n_0 ,\FSM_onehot_state[1]_i_11_n_0 }));
  CARRY4 \FSM_onehot_state_reg[1]_i_4 
       (.CI(\FSM_onehot_state_reg[1]_i_12_n_0 ),
        .CO({\NLW_FSM_onehot_state_reg[1]_i_4_CO_UNCONNECTED [3],state11_out,\FSM_onehot_state_reg[1]_i_4_n_2 ,\FSM_onehot_state_reg[1]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[1]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\FSM_onehot_state[1]_i_13_n_0 ,\FSM_onehot_state[1]_i_14_n_0 ,\FSM_onehot_state[1]_i_15_n_0 }));
  CARRY4 \FSM_onehot_state_reg[1]_i_8 
       (.CI(\FSM_onehot_state_reg[1]_i_16_n_0 ),
        .CO({\FSM_onehot_state_reg[1]_i_8_n_0 ,\FSM_onehot_state_reg[1]_i_8_n_1 ,\FSM_onehot_state_reg[1]_i_8_n_2 ,\FSM_onehot_state_reg[1]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[1]_i_8_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[1]_i_17_n_0 ,\FSM_onehot_state[1]_i_18_n_0 ,\FSM_onehot_state[1]_i_19_n_0 ,\FSM_onehot_state[1]_i_20_n_0 }));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(p00));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(p00),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(p01));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(p01),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(p10));
  (* FSM_ENCODED_STATES = "S_WAIT0:0000000001000,S_READ1:0000000010000,S_READ0:0000000000100,S_WRITE:0100000000000,S_NEXT:1000000000000,S_COMPARE:0010000000000,S_SETUP:0000000000010,S_IDLE:0000000000001,S_WAIT3:0001000000000,S_WAIT2:0000010000000,S_READ3:0000100000000,S_READ2:0000001000000,S_WAIT1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[12]_i_1__0_n_0 ),
        .CLR(done_reg_0),
        .D(p10),
        .Q(\FSM_onehot_state_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ch[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ch[0]),
        .O(\ch[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ch[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ch[1]),
        .I2(ch[0]),
        .O(\ch[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \ch[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ch[2]),
        .I2(ch[1]),
        .I3(ch[0]),
        .O(\ch[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \ch[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ch[3]),
        .I2(ch[2]),
        .I3(ch[0]),
        .I4(ch[1]),
        .O(\ch[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \ch[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ch[4]),
        .I2(ch[3]),
        .I3(ch[1]),
        .I4(ch[0]),
        .I5(ch[2]),
        .O(\ch[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ch[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ch[5]),
        .I2(\ch[5]_i_2_n_0 ),
        .O(\ch[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \ch[5]_i_2 
       (.I0(ch[4]),
        .I1(ch[2]),
        .I2(ch[0]),
        .I3(ch[1]),
        .I4(ch[3]),
        .O(\ch[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ch[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ch[6]),
        .I2(\ch[7]_i_3_n_0 ),
        .O(\ch[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \ch[7]_i_1 
       (.I0(\out_col_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state13_out),
        .I3(state1),
        .I4(state11_out),
        .I5(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\ch[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \ch[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ch[7]),
        .I2(ch[6]),
        .I3(\ch[7]_i_3_n_0 ),
        .O(\ch[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ch[7]_i_3 
       (.I0(ch[5]),
        .I1(ch[3]),
        .I2(ch[1]),
        .I3(ch[0]),
        .I4(ch[2]),
        .I5(ch[4]),
        .O(\ch[7]_i_3_n_0 ));
  FDCE \ch_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ch[7]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\ch[0]_i_1_n_0 ),
        .Q(ch[0]));
  FDCE \ch_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ch[7]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\ch[1]_i_1_n_0 ),
        .Q(ch[1]));
  FDCE \ch_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ch[7]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\ch[2]_i_1_n_0 ),
        .Q(ch[2]));
  FDCE \ch_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ch[7]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\ch[3]_i_1_n_0 ),
        .Q(ch[3]));
  FDCE \ch_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ch[7]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\ch[4]_i_1_n_0 ),
        .Q(ch[4]));
  FDCE \ch_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ch[7]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\ch[5]_i_1_n_0 ),
        .Q(ch[5]));
  FDCE \ch_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ch[7]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\ch[6]_i_1_n_0 ),
        .Q(ch[6]));
  FDCE \ch_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ch[7]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\ch[7]_i_2_n_0 ),
        .Q(ch[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    done_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state11_out),
        .I2(state1),
        .I3(state13_out),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(done_i_1_n_0),
        .Q(pool_done));
  LUT3 #(
    .INIT(8'h32)) 
    mem_reg_0_0_i_1
       (.I0(wr_en),
        .I1(pool_dst),
        .I2(fc_done),
        .O(wr_en_reg_1));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_10
       (.I0(fmap_b_wr_addr0[6]),
        .I1(mem_reg_0_7_0[6]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_10__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[6]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[6]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[6]),
        .O(\pool_wr_offset_reg[14] [6]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_11
       (.I0(fmap_b_wr_addr0[5]),
        .I1(mem_reg_0_7_0[5]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_11__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[5]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[5]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[5]),
        .O(\pool_wr_offset_reg[14] [5]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_12
       (.I0(fmap_b_wr_addr0[4]),
        .I1(mem_reg_0_7_0[4]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_12__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[4]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[4]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[4]),
        .O(\pool_wr_offset_reg[14] [4]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_13
       (.I0(fmap_b_wr_addr0[3]),
        .I1(mem_reg_0_7_0[3]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_13__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[3]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[3]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[3]),
        .O(\pool_wr_offset_reg[14] [3]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_14
       (.I0(fmap_b_wr_addr0[2]),
        .I1(mem_reg_0_7_0[2]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_14__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[2]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[2]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[2]),
        .O(\pool_wr_offset_reg[14] [2]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_15
       (.I0(fmap_b_wr_addr0[1]),
        .I1(mem_reg_0_7_0[1]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_15__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[1]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[1]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[1]),
        .O(\pool_wr_offset_reg[14] [1]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_16
       (.I0(fmap_b_wr_addr0[0]),
        .I1(mem_reg_0_7_0[0]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_16__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[0]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[0]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[0]),
        .O(\pool_wr_offset_reg[14] [0]));
  LUT4 #(
    .INIT(16'hFECC)) 
    mem_reg_0_0_i_1__0
       (.I0(wr_en),
        .I1(mem_reg_0_7_2),
        .I2(fc_done),
        .I3(pool_dst),
        .O(wr_en_reg_3));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_2
       (.I0(fmap_b_wr_addr0[14]),
        .I1(mem_reg_0_7_0[14]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_2__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[14]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[14]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[14]),
        .O(\pool_wr_offset_reg[14] [14]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_3
       (.I0(fmap_b_wr_addr0[13]),
        .I1(mem_reg_0_7_0[13]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[13]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_32
       (.I0(wr_data[0]),
        .I1(mem_reg_0_7[0]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(din[0]));
  LUT3 #(
    .INIT(8'h32)) 
    mem_reg_0_0_i_33
       (.I0(wr_en),
        .I1(pool_dst),
        .I2(fc_done),
        .O(WEA[0]));
  LUT4 #(
    .INIT(16'hFECC)) 
    mem_reg_0_0_i_33__0
       (.I0(wr_en),
        .I1(mem_reg_0_7_2),
        .I2(fc_done),
        .I3(pool_dst),
        .O(wr_en_reg_2[0]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_0_0_i_35__0
       (.I0(wr_en),
        .I1(pool_dst),
        .I2(mem_reg_0_7_2),
        .O(wr_en_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_0_i_36__0
       (.CI(mem_reg_0_0_i_37_n_0),
        .CO({NLW_mem_reg_0_0_i_36__0_CO_UNCONNECTED[3:2],mem_reg_0_0_i_36__0_n_2,mem_reg_0_0_i_36__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,mem_reg_0_7_0[13:12]}),
        .O({NLW_mem_reg_0_0_i_36__0_O_UNCONNECTED[3],fmap_b_wr_addr0[14:12]}),
        .S({1'b0,mem_reg_0_0_i_43_n_0,mem_reg_0_0_i_44_n_0,mem_reg_0_0_i_45_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_0_i_37
       (.CI(mem_reg_0_0_i_38_n_0),
        .CO({mem_reg_0_0_i_37_n_0,mem_reg_0_0_i_37_n_1,mem_reg_0_0_i_37_n_2,mem_reg_0_0_i_37_n_3}),
        .CYINIT(1'b0),
        .DI(mem_reg_0_7_0[11:8]),
        .O(fmap_b_wr_addr0[11:8]),
        .S({mem_reg_0_0_i_46_n_0,mem_reg_0_0_i_47_n_0,mem_reg_0_0_i_48_n_0,mem_reg_0_0_i_49_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_0_i_38
       (.CI(mem_reg_0_0_i_39_n_0),
        .CO({mem_reg_0_0_i_38_n_0,mem_reg_0_0_i_38_n_1,mem_reg_0_0_i_38_n_2,mem_reg_0_0_i_38_n_3}),
        .CYINIT(1'b0),
        .DI(mem_reg_0_7_0[7:4]),
        .O(fmap_b_wr_addr0[7:4]),
        .S({mem_reg_0_0_i_50_n_0,mem_reg_0_0_i_51_n_0,mem_reg_0_0_i_52_n_0,mem_reg_0_0_i_53_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_0_i_39
       (.CI(1'b0),
        .CO({mem_reg_0_0_i_39_n_0,mem_reg_0_0_i_39_n_1,mem_reg_0_0_i_39_n_2,mem_reg_0_0_i_39_n_3}),
        .CYINIT(1'b0),
        .DI(mem_reg_0_7_0[3:0]),
        .O(fmap_b_wr_addr0[3:0]),
        .S({mem_reg_0_0_i_54_n_0,mem_reg_0_0_i_55_n_0,mem_reg_0_0_i_56_n_0,mem_reg_0_0_i_57_n_0}));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_3__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[13]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[13]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[13]),
        .O(\pool_wr_offset_reg[14] [13]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_4
       (.I0(fmap_b_wr_addr0[12]),
        .I1(mem_reg_0_7_0[12]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[12]));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_43
       (.I0(mem_reg_0_7_0[14]),
        .I1(pool_wr_addr[14]),
        .O(mem_reg_0_0_i_43_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_44
       (.I0(mem_reg_0_7_0[13]),
        .I1(pool_wr_addr[13]),
        .O(mem_reg_0_0_i_44_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_45
       (.I0(mem_reg_0_7_0[12]),
        .I1(pool_wr_addr[12]),
        .O(mem_reg_0_0_i_45_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_46
       (.I0(mem_reg_0_7_0[11]),
        .I1(pool_wr_addr[11]),
        .O(mem_reg_0_0_i_46_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_47
       (.I0(mem_reg_0_7_0[10]),
        .I1(pool_wr_addr[10]),
        .O(mem_reg_0_0_i_47_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_48
       (.I0(mem_reg_0_7_0[9]),
        .I1(pool_wr_addr[9]),
        .O(mem_reg_0_0_i_48_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_49
       (.I0(mem_reg_0_7_0[8]),
        .I1(pool_wr_addr[8]),
        .O(mem_reg_0_0_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_4__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[12]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[12]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[12]),
        .O(\pool_wr_offset_reg[14] [12]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_5
       (.I0(fmap_b_wr_addr0[11]),
        .I1(mem_reg_0_7_0[11]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[11]));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_50
       (.I0(mem_reg_0_7_0[7]),
        .I1(pool_wr_addr[7]),
        .O(mem_reg_0_0_i_50_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_51
       (.I0(mem_reg_0_7_0[6]),
        .I1(pool_wr_addr[6]),
        .O(mem_reg_0_0_i_51_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_52
       (.I0(mem_reg_0_7_0[5]),
        .I1(pool_wr_addr[5]),
        .O(mem_reg_0_0_i_52_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_53
       (.I0(mem_reg_0_7_0[4]),
        .I1(pool_wr_addr[4]),
        .O(mem_reg_0_0_i_53_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_54
       (.I0(mem_reg_0_7_0[3]),
        .I1(pool_wr_addr[3]),
        .O(mem_reg_0_0_i_54_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_55
       (.I0(mem_reg_0_7_0[2]),
        .I1(pool_wr_addr[2]),
        .O(mem_reg_0_0_i_55_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_56
       (.I0(mem_reg_0_7_0[1]),
        .I1(pool_wr_addr[1]),
        .O(mem_reg_0_0_i_56_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_0_i_57
       (.I0(mem_reg_0_7_0[0]),
        .I1(pool_wr_addr[0]),
        .O(mem_reg_0_0_i_57_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_5__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[11]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[11]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[11]),
        .O(\pool_wr_offset_reg[14] [11]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_6
       (.I0(fmap_b_wr_addr0[10]),
        .I1(mem_reg_0_7_0[10]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_6__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[10]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[10]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[10]),
        .O(\pool_wr_offset_reg[14] [10]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_7
       (.I0(fmap_b_wr_addr0[9]),
        .I1(mem_reg_0_7_0[9]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_7__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[9]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[9]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[9]),
        .O(\pool_wr_offset_reg[14] [9]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_8
       (.I0(fmap_b_wr_addr0[8]),
        .I1(mem_reg_0_7_0[8]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_8__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[8]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[8]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[8]),
        .O(\pool_wr_offset_reg[14] [8]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_0_i_9
       (.I0(fmap_b_wr_addr0[7]),
        .I1(mem_reg_0_7_0[7]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(ADDRARDADDR[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_0_0_i_9__0
       (.I0(mem_reg_0_7_1),
        .I1(mem_reg_0_7_0[7]),
        .I2(wr_en_reg_0),
        .I3(fmap_b_wr_addr0[7]),
        .I4(mem_reg_0_7_2),
        .I5(mem_reg_0_7_3[7]),
        .O(\pool_wr_offset_reg[14] [7]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_1_i_1
       (.I0(wr_data[1]),
        .I1(mem_reg_0_7[1]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(din[1]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_2_i_1
       (.I0(wr_data[2]),
        .I1(mem_reg_0_7[2]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(din[2]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_3_i_1
       (.I0(wr_data[3]),
        .I1(mem_reg_0_7[3]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(din[3]));
  LUT3 #(
    .INIT(8'h32)) 
    mem_reg_0_3_i_2
       (.I0(wr_en),
        .I1(pool_dst),
        .I2(fc_done),
        .O(WEA[1]));
  LUT4 #(
    .INIT(16'hFECC)) 
    mem_reg_0_3_i_2__0
       (.I0(wr_en),
        .I1(mem_reg_0_7_2),
        .I2(fc_done),
        .I3(pool_dst),
        .O(wr_en_reg_2[1]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_4_i_1
       (.I0(wr_data[4]),
        .I1(mem_reg_0_7[4]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(din[4]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_5_i_1
       (.I0(wr_data[5]),
        .I1(mem_reg_0_7[5]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(din[5]));
  LUT3 #(
    .INIT(8'h32)) 
    mem_reg_0_6_i_1
       (.I0(wr_en),
        .I1(pool_dst),
        .I2(fc_done),
        .O(we));
  LUT4 #(
    .INIT(16'hFECC)) 
    mem_reg_0_6_i_1__0
       (.I0(wr_en),
        .I1(mem_reg_0_7_2),
        .I2(fc_done),
        .I3(pool_dst),
        .O(wr_en_reg_4));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_6_i_2
       (.I0(wr_data[6]),
        .I1(mem_reg_0_7[6]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(din[6]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    mem_reg_0_7_i_1
       (.I0(wr_data[7]),
        .I1(mem_reg_0_7[7]),
        .I2(fc_done),
        .I3(pool_dst),
        .I4(wr_en),
        .O(din[7]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \out_col[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(B[1]),
        .I2(state13_out),
        .O(out_col[0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \out_col[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state13_out),
        .I2(B[1]),
        .I3(B[2]),
        .O(out_col[1]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \out_col[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state13_out),
        .I2(B[1]),
        .I3(B[2]),
        .I4(B[3]),
        .O(out_col[2]));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \out_col[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state13_out),
        .I2(B[2]),
        .I3(B[1]),
        .I4(B[3]),
        .I5(B[4]),
        .O(out_col[3]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \out_col[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state13_out),
        .I2(\out_col[4]_i_2_n_0 ),
        .I3(B[5]),
        .O(out_col[4]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \out_col[4]_i_2 
       (.I0(B[4]),
        .I1(B[2]),
        .I2(B[1]),
        .I3(B[3]),
        .O(\out_col[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \out_col[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state13_out),
        .I2(\out_col[6]_i_3_n_0 ),
        .I3(B[6]),
        .O(out_col[5]));
  LUT3 #(
    .INIT(8'hEA)) 
    \out_col[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\out_col_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\out_col[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \out_col[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state13_out),
        .I2(\out_col[6]_i_3_n_0 ),
        .I3(B[6]),
        .I4(\out_col_reg_n_0_[6] ),
        .O(out_col[6]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \out_col[6]_i_3 
       (.I0(B[5]),
        .I1(B[3]),
        .I2(B[1]),
        .I3(B[2]),
        .I4(B[4]),
        .O(\out_col[6]_i_3_n_0 ));
  FDCE \out_col_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\out_col[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_col[0]),
        .Q(B[1]));
  FDCE \out_col_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\out_col[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_col[1]),
        .Q(B[2]));
  FDCE \out_col_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\out_col[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_col[2]),
        .Q(B[3]));
  FDCE \out_col_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\out_col[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_col[3]),
        .Q(B[4]));
  FDCE \out_col_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\out_col[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_col[4]),
        .Q(B[5]));
  FDCE \out_col_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\out_col[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_col[5]),
        .Q(B[6]));
  FDCE \out_col_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\out_col[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_col[6]),
        .Q(\out_col_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \out_row[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(A[1]),
        .I2(state11_out),
        .O(out_row[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \out_row[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state11_out),
        .I2(A[1]),
        .I3(A[2]),
        .O(out_row[1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \out_row[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state11_out),
        .I2(A[1]),
        .I3(A[2]),
        .I4(A[3]),
        .O(out_row[2]));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \out_row[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state11_out),
        .I2(A[2]),
        .I3(A[1]),
        .I4(A[3]),
        .I5(A[4]),
        .O(out_row[3]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \out_row[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state11_out),
        .I2(\out_row[4]_i_2_n_0 ),
        .I3(A[5]),
        .O(out_row[4]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \out_row[4]_i_2 
       (.I0(A[4]),
        .I1(A[2]),
        .I2(A[1]),
        .I3(A[3]),
        .O(\out_row[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \out_row[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state11_out),
        .I2(\out_row[6]_i_3_n_0 ),
        .I3(A[6]),
        .O(out_row[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \out_row[6]_i_1 
       (.I0(\out_col_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state13_out),
        .I3(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\out_row[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \out_row[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(state11_out),
        .I2(\out_row[6]_i_3_n_0 ),
        .I3(A[6]),
        .I4(\out_row_reg_n_0_[6] ),
        .O(out_row[6]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \out_row[6]_i_3 
       (.I0(A[5]),
        .I1(A[3]),
        .I2(A[1]),
        .I3(A[2]),
        .I4(A[4]),
        .O(\out_row[6]_i_3_n_0 ));
  FDCE \out_row_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\out_row[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_row[0]),
        .Q(A[1]));
  FDCE \out_row_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\out_row[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_row[1]),
        .Q(A[2]));
  FDCE \out_row_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\out_row[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_row[2]),
        .Q(A[3]));
  FDCE \out_row_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\out_row[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_row[3]),
        .Q(A[4]));
  FDCE \out_row_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\out_row[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_row[4]),
        .Q(A[5]));
  FDCE \out_row_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\out_row[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_row[5]),
        .Q(A[6]));
  FDCE \out_row_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\out_row[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(out_row[6]),
        .Q(\out_row_reg_n_0_[6] ));
  FDCE \p00_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p00),
        .CLR(done_reg_0),
        .D(D[0]),
        .Q(p00__0[0]));
  FDCE \p00_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p00),
        .CLR(done_reg_0),
        .D(D[1]),
        .Q(p00__0[1]));
  FDCE \p00_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p00),
        .CLR(done_reg_0),
        .D(D[2]),
        .Q(p00__0[2]));
  FDCE \p00_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p00),
        .CLR(done_reg_0),
        .D(D[3]),
        .Q(p00__0[3]));
  FDCE \p00_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p00),
        .CLR(done_reg_0),
        .D(D[4]),
        .Q(p00__0[4]));
  FDCE \p00_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p00),
        .CLR(done_reg_0),
        .D(D[5]),
        .Q(p00__0[5]));
  FDCE \p00_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p00),
        .CLR(done_reg_0),
        .D(D[6]),
        .Q(p00__0[6]));
  FDCE \p00_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p00),
        .CLR(done_reg_0),
        .D(D[7]),
        .Q(p00__0[7]));
  FDCE \p01_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p01),
        .CLR(done_reg_0),
        .D(D[0]),
        .Q(p01__0[0]));
  FDCE \p01_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p01),
        .CLR(done_reg_0),
        .D(D[1]),
        .Q(p01__0[1]));
  FDCE \p01_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p01),
        .CLR(done_reg_0),
        .D(D[2]),
        .Q(p01__0[2]));
  FDCE \p01_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p01),
        .CLR(done_reg_0),
        .D(D[3]),
        .Q(p01__0[3]));
  FDCE \p01_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p01),
        .CLR(done_reg_0),
        .D(D[4]),
        .Q(p01__0[4]));
  FDCE \p01_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p01),
        .CLR(done_reg_0),
        .D(D[5]),
        .Q(p01__0[5]));
  FDCE \p01_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p01),
        .CLR(done_reg_0),
        .D(D[6]),
        .Q(p01__0[6]));
  FDCE \p01_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p01),
        .CLR(done_reg_0),
        .D(D[7]),
        .Q(p01__0[7]));
  FDCE \p10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p10),
        .CLR(done_reg_0),
        .D(D[0]),
        .Q(p10__0[0]));
  FDCE \p10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p10),
        .CLR(done_reg_0),
        .D(D[1]),
        .Q(p10__0[1]));
  FDCE \p10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p10),
        .CLR(done_reg_0),
        .D(D[2]),
        .Q(p10__0[2]));
  FDCE \p10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p10),
        .CLR(done_reg_0),
        .D(D[3]),
        .Q(p10__0[3]));
  FDCE \p10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p10),
        .CLR(done_reg_0),
        .D(D[4]),
        .Q(p10__0[4]));
  FDCE \p10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p10),
        .CLR(done_reg_0),
        .D(D[5]),
        .Q(p10__0[5]));
  FDCE \p10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p10),
        .CLR(done_reg_0),
        .D(D[6]),
        .Q(p10__0[6]));
  FDCE \p10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p10),
        .CLR(done_reg_0),
        .D(D[7]),
        .Q(p10__0[7]));
  FDCE \p11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p11),
        .CLR(done_reg_0),
        .D(D[0]),
        .Q(p11__0[0]));
  FDCE \p11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p11),
        .CLR(done_reg_0),
        .D(D[1]),
        .Q(p11__0[1]));
  FDCE \p11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p11),
        .CLR(done_reg_0),
        .D(D[2]),
        .Q(p11__0[2]));
  FDCE \p11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p11),
        .CLR(done_reg_0),
        .D(D[3]),
        .Q(p11__0[3]));
  FDCE \p11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p11),
        .CLR(done_reg_0),
        .D(D[4]),
        .Q(p11__0[4]));
  FDCE \p11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p11),
        .CLR(done_reg_0),
        .D(D[5]),
        .Q(p11__0[5]));
  FDCE \p11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p11),
        .CLR(done_reg_0),
        .D(D[6]),
        .Q(p11__0[6]));
  FDCE \p11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p11),
        .CLR(done_reg_0),
        .D(D[7]),
        .Q(p11__0[7]));
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
    .CREG(0),
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
    p_1_out
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_out_i_2_n_4,p_1_out_i_2_n_5,p_1_out_i_2_n_6,p_1_out_i_2_n_7,p_1_out_i_3_n_4,p_1_out_i_3_n_5,p_1_out_i_3_n_6,p_1_out_i_3_n_7,p_1_out_i_4_n_4,p_1_out_i_4_n_5,p_1_out_i_4_n_6,p_1_out_i_4_n_7,p_1_out_i_5_n_0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(p_1_out0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_p_1_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_1_out_OVERFLOW_UNCONNECTED),
        .P({NLW_p_1_out_P_UNCONNECTED[47:15],p_1_out_n_91,p_1_out_n_92,p_1_out_n_93,p_1_out__0}),
        .PATTERNBDETECT(NLW_p_1_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_1_out_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_p_1_out_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_1
       (.I0(p00),
        .I1(p10),
        .O(p_1_out0));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    p_1_out_i_10
       (.I0(p_1_out_i_27_n_6),
        .I1(ch[6]),
        .I2(p_1_out_i_27_n_1),
        .I3(ch[7]),
        .I4(Q[4]),
        .O(p_1_out_i_10_n_0));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    p_1_out_i_11
       (.I0(p_1_out_i_27_n_7),
        .I1(ch[5]),
        .I2(p_1_out_i_27_n_6),
        .I3(ch[6]),
        .I4(Q[4]),
        .O(p_1_out_i_11_n_0));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    p_1_out_i_12
       (.I0(p_1_out_i_28_n_4),
        .I1(ch[4]),
        .I2(p_1_out_i_27_n_7),
        .I3(ch[5]),
        .I4(Q[4]),
        .O(p_1_out_i_12_n_0));
  LUT5 #(
    .INIT(32'hF8808080)) 
    p_1_out_i_13
       (.I0(Q[0]),
        .I1(ch[7]),
        .I2(p_1_out_i_28_n_5),
        .I3(Q[4]),
        .I4(ch[3]),
        .O(p_1_out_i_13_n_0));
  LUT5 #(
    .INIT(32'hF8808080)) 
    p_1_out_i_14
       (.I0(Q[0]),
        .I1(ch[6]),
        .I2(p_1_out_i_28_n_6),
        .I3(Q[4]),
        .I4(ch[2]),
        .O(p_1_out_i_14_n_0));
  LUT5 #(
    .INIT(32'hF8808080)) 
    p_1_out_i_15
       (.I0(Q[0]),
        .I1(ch[5]),
        .I2(p_1_out_i_28_n_7),
        .I3(Q[4]),
        .I4(ch[1]),
        .O(p_1_out_i_15_n_0));
  LUT5 #(
    .INIT(32'h87787878)) 
    p_1_out_i_16
       (.I0(Q[0]),
        .I1(ch[5]),
        .I2(p_1_out_i_28_n_7),
        .I3(ch[1]),
        .I4(Q[4]),
        .O(p_1_out_i_16_n_0));
  LUT6 #(
    .INIT(64'h8E71718EF30CF30C)) 
    p_1_out_i_17
       (.I0(ch[3]),
        .I1(p_1_out_i_28_n_5),
        .I2(p_1_out_i_29_n_0),
        .I3(p_1_out_i_28_n_4),
        .I4(ch[4]),
        .I5(Q[4]),
        .O(p_1_out_i_17_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    p_1_out_i_18
       (.I0(p_1_out_i_14_n_0),
        .I1(Q[0]),
        .I2(ch[7]),
        .I3(p_1_out_i_28_n_5),
        .I4(ch[3]),
        .I5(Q[4]),
        .O(p_1_out_i_18_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    p_1_out_i_19
       (.I0(p_1_out_i_15_n_0),
        .I1(Q[0]),
        .I2(ch[6]),
        .I3(p_1_out_i_28_n_6),
        .I4(ch[2]),
        .I5(Q[4]),
        .O(p_1_out_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_1_out_i_2
       (.CI(p_1_out_i_3_n_0),
        .CO({NLW_p_1_out_i_2_CO_UNCONNECTED[3],p_1_out_i_2_n_1,p_1_out_i_2_n_2,p_1_out_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_out_i_6_n_0,p_1_out_i_7_n_0,p_1_out_i_8_n_0}),
        .O({p_1_out_i_2_n_4,p_1_out_i_2_n_5,p_1_out_i_2_n_6,p_1_out_i_2_n_7}),
        .S({p_1_out_i_9_n_0,p_1_out_i_10_n_0,p_1_out_i_11_n_0,p_1_out_i_12_n_0}));
  LUT6 #(
    .INIT(64'h9669C3C36969C3C3)) 
    p_1_out_i_20
       (.I0(ch[5]),
        .I1(p_1_out_i_28_n_7),
        .I2(p_1_out_i_30_n_0),
        .I3(ch[4]),
        .I4(Q[0]),
        .I5(p_1_out_i_22_n_4),
        .O(p_1_out_i_20_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    p_1_out_i_21
       (.I0(Q[0]),
        .I1(ch[4]),
        .I2(p_1_out_i_22_n_4),
        .O(p_1_out_i_21_n_0));
  CARRY4 p_1_out_i_22
       (.CI(1'b0),
        .CO({p_1_out_i_22_n_0,p_1_out_i_22_n_1,p_1_out_i_22_n_2,p_1_out_i_22_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out_i_31_n_0,p_1_out_i_32_n_0,p_1_out_i_33_n_0,1'b0}),
        .O({p_1_out_i_22_n_4,p_1_out_i_22_n_5,p_1_out_i_22_n_6,p_1_out_i_22_n_7}),
        .S({p_1_out_i_34_n_0,p_1_out_i_35_n_0,p_1_out_i_36_n_0,p_1_out_i_37_n_0}));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    p_1_out_i_23
       (.I0(p_1_out_i_22_n_4),
        .I1(ch[4]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(ch[0]),
        .O(p_1_out_i_23_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    p_1_out_i_24
       (.I0(Q[0]),
        .I1(ch[3]),
        .I2(p_1_out_i_22_n_5),
        .O(p_1_out_i_24_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    p_1_out_i_25
       (.I0(Q[0]),
        .I1(ch[2]),
        .I2(p_1_out_i_22_n_6),
        .O(p_1_out_i_25_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    p_1_out_i_26
       (.I0(Q[0]),
        .I1(ch[1]),
        .I2(p_1_out_i_22_n_7),
        .O(p_1_out_i_26_n_0));
  CARRY4 p_1_out_i_27
       (.CI(p_1_out_i_28_n_0),
        .CO({NLW_p_1_out_i_27_CO_UNCONNECTED[3],p_1_out_i_27_n_1,NLW_p_1_out_i_27_CO_UNCONNECTED[1],p_1_out_i_27_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_1_out_i_38_n_0,p_1_out_i_39_n_0}),
        .O({NLW_p_1_out_i_27_O_UNCONNECTED[3:2],p_1_out_i_27_n_6,p_1_out_i_27_n_7}),
        .S({1'b0,1'b1,p_1_out_i_40_n_0,p_1_out_i_41_n_0}));
  CARRY4 p_1_out_i_28
       (.CI(p_1_out_i_22_n_0),
        .CO({p_1_out_i_28_n_0,p_1_out_i_28_n_1,p_1_out_i_28_n_2,p_1_out_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out_i_42_n_0,p_1_out_i_43_n_0,p_1_out_i_44_n_0,p_1_out_i_45_n_0}),
        .O({p_1_out_i_28_n_4,p_1_out_i_28_n_5,p_1_out_i_28_n_6,p_1_out_i_28_n_7}),
        .S({p_1_out_i_46_n_0,p_1_out_i_47_n_0,p_1_out_i_48_n_0,p_1_out_i_49_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    p_1_out_i_29
       (.I0(ch[7]),
        .I1(Q[0]),
        .O(p_1_out_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_1_out_i_3
       (.CI(p_1_out_i_4_n_0),
        .CO({p_1_out_i_3_n_0,p_1_out_i_3_n_1,p_1_out_i_3_n_2,p_1_out_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out_i_13_n_0,p_1_out_i_14_n_0,p_1_out_i_15_n_0,p_1_out_i_16_n_0}),
        .O({p_1_out_i_3_n_4,p_1_out_i_3_n_5,p_1_out_i_3_n_6,p_1_out_i_3_n_7}),
        .S({p_1_out_i_17_n_0,p_1_out_i_18_n_0,p_1_out_i_19_n_0,p_1_out_i_20_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h7)) 
    p_1_out_i_30
       (.I0(ch[1]),
        .I1(Q[4]),
        .O(p_1_out_i_30_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    p_1_out_i_31
       (.I0(Q[2]),
        .I1(ch[2]),
        .I2(Q[3]),
        .I3(ch[1]),
        .I4(ch[3]),
        .I5(Q[1]),
        .O(p_1_out_i_31_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    p_1_out_i_32
       (.I0(Q[2]),
        .I1(ch[1]),
        .I2(Q[3]),
        .I3(ch[0]),
        .O(p_1_out_i_32_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    p_1_out_i_33
       (.I0(Q[1]),
        .I1(ch[1]),
        .O(p_1_out_i_33_n_0));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    p_1_out_i_34
       (.I0(ch[2]),
        .I1(p_1_out_i_50_n_0),
        .I2(ch[1]),
        .I3(Q[2]),
        .I4(ch[0]),
        .I5(Q[3]),
        .O(p_1_out_i_34_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    p_1_out_i_35
       (.I0(ch[0]),
        .I1(Q[3]),
        .I2(ch[1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(ch[2]),
        .O(p_1_out_i_35_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    p_1_out_i_36
       (.I0(Q[1]),
        .I1(ch[1]),
        .I2(Q[2]),
        .I3(ch[0]),
        .O(p_1_out_i_36_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    p_1_out_i_37
       (.I0(Q[1]),
        .I1(ch[0]),
        .O(p_1_out_i_37_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    p_1_out_i_38
       (.I0(Q[3]),
        .I1(ch[6]),
        .I2(Q[2]),
        .I3(ch[7]),
        .O(p_1_out_i_38_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    p_1_out_i_39
       (.I0(Q[3]),
        .I1(ch[5]),
        .I2(Q[2]),
        .I3(ch[6]),
        .I4(Q[1]),
        .I5(ch[7]),
        .O(p_1_out_i_39_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_1_out_i_4
       (.CI(1'b0),
        .CO({p_1_out_i_4_n_0,p_1_out_i_4_n_1,p_1_out_i_4_n_2,p_1_out_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out_i_21_n_0,p_1_out_i_22_n_5,p_1_out_i_22_n_6,p_1_out_i_22_n_7}),
        .O({p_1_out_i_4_n_4,p_1_out_i_4_n_5,p_1_out_i_4_n_6,p_1_out_i_4_n_7}),
        .S({p_1_out_i_23_n_0,p_1_out_i_24_n_0,p_1_out_i_25_n_0,p_1_out_i_26_n_0}));
  LUT4 #(
    .INIT(16'h7000)) 
    p_1_out_i_40
       (.I0(Q[2]),
        .I1(ch[6]),
        .I2(Q[3]),
        .I3(ch[7]),
        .O(p_1_out_i_40_n_0));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    p_1_out_i_41
       (.I0(Q[1]),
        .I1(ch[5]),
        .I2(ch[6]),
        .I3(Q[3]),
        .I4(ch[7]),
        .I5(Q[2]),
        .O(p_1_out_i_41_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    p_1_out_i_42
       (.I0(Q[3]),
        .I1(ch[4]),
        .I2(Q[2]),
        .I3(ch[5]),
        .I4(Q[1]),
        .I5(ch[6]),
        .O(p_1_out_i_42_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    p_1_out_i_43
       (.I0(Q[3]),
        .I1(ch[3]),
        .I2(Q[2]),
        .I3(ch[4]),
        .I4(Q[1]),
        .I5(ch[5]),
        .O(p_1_out_i_43_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    p_1_out_i_44
       (.I0(Q[3]),
        .I1(ch[2]),
        .I2(Q[2]),
        .I3(ch[3]),
        .I4(Q[1]),
        .I5(ch[4]),
        .O(p_1_out_i_44_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    p_1_out_i_45
       (.I0(Q[3]),
        .I1(ch[1]),
        .I2(Q[2]),
        .I3(ch[2]),
        .I4(Q[1]),
        .I5(ch[3]),
        .O(p_1_out_i_45_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    p_1_out_i_46
       (.I0(p_1_out_i_42_n_0),
        .I1(Q[2]),
        .I2(ch[6]),
        .I3(p_1_out_i_51_n_0),
        .I4(ch[7]),
        .I5(Q[1]),
        .O(p_1_out_i_46_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    p_1_out_i_47
       (.I0(p_1_out_i_43_n_0),
        .I1(Q[2]),
        .I2(ch[5]),
        .I3(wr_addr0_i_30_n_0),
        .I4(ch[6]),
        .I5(Q[1]),
        .O(p_1_out_i_47_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    p_1_out_i_48
       (.I0(p_1_out_i_44_n_0),
        .I1(Q[2]),
        .I2(ch[4]),
        .I3(wr_addr0_i_37_n_0),
        .I4(ch[5]),
        .I5(Q[1]),
        .O(p_1_out_i_48_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    p_1_out_i_49
       (.I0(p_1_out_i_45_n_0),
        .I1(Q[2]),
        .I2(ch[3]),
        .I3(wr_addr0_i_40_n_0),
        .I4(ch[4]),
        .I5(Q[1]),
        .O(p_1_out_i_49_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    p_1_out_i_5
       (.I0(ch[0]),
        .I1(Q[0]),
        .O(p_1_out_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h7)) 
    p_1_out_i_50
       (.I0(ch[3]),
        .I1(Q[1]),
        .O(p_1_out_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h7)) 
    p_1_out_i_51
       (.I0(ch[5]),
        .I1(Q[3]),
        .O(p_1_out_i_51_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    p_1_out_i_6
       (.I0(p_1_out_i_27_n_6),
        .I1(ch[6]),
        .I2(Q[4]),
        .O(p_1_out_i_6_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    p_1_out_i_7
       (.I0(p_1_out_i_27_n_7),
        .I1(ch[5]),
        .I2(Q[4]),
        .O(p_1_out_i_7_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    p_1_out_i_8
       (.I0(p_1_out_i_28_n_4),
        .I1(ch[4]),
        .I2(Q[4]),
        .O(p_1_out_i_8_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    p_1_out_i_9
       (.I0(p_1_out_i_27_n_1),
        .I1(Q[4]),
        .I2(ch[7]),
        .O(p_1_out_i_9_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr[11]_i_1 
       (.I0(p10),
        .I1(p01),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(p00),
        .O(\rd_addr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    \rd_addr[11]_i_10 
       (.I0(\rd_addr_reg[11]_i_24_n_4 ),
        .I1(A[4]),
        .I2(\rd_addr_reg[11]_i_25_n_7 ),
        .I3(A[5]),
        .I4(Q[4]),
        .O(\rd_addr[11]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hE888)) 
    \rd_addr[11]_i_11 
       (.I0(\rd_addr_reg[11]_i_26_n_5 ),
        .I1(\rd_addr_reg[11]_i_27_n_2 ),
        .I2(A[6]),
        .I3(Q[1]),
        .O(\rd_addr[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hE888)) 
    \rd_addr[11]_i_12 
       (.I0(\rd_addr_reg[11]_i_26_n_6 ),
        .I1(\rd_addr_reg[11]_i_27_n_7 ),
        .I2(A[6]),
        .I3(Q[0]),
        .O(\rd_addr[11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    \rd_addr[11]_i_13 
       (.I0(\rd_addr_reg[11]_i_26_n_4 ),
        .I1(Q[2]),
        .I2(\rd_addr_reg[11]_i_28_n_7 ),
        .I3(Q[3]),
        .I4(A[6]),
        .O(\rd_addr[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E83FC03FC0)) 
    \rd_addr[11]_i_14 
       (.I0(Q[1]),
        .I1(\rd_addr_reg[11]_i_27_n_2 ),
        .I2(\rd_addr_reg[11]_i_26_n_5 ),
        .I3(\rd_addr_reg[11]_i_26_n_4 ),
        .I4(Q[2]),
        .I5(A[6]),
        .O(\rd_addr[11]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \rd_addr[11]_i_15 
       (.I0(\rd_addr[11]_i_12_n_0 ),
        .I1(\rd_addr_reg[11]_i_27_n_2 ),
        .I2(\rd_addr_reg[11]_i_26_n_5 ),
        .I3(Q[1]),
        .I4(A[6]),
        .O(\rd_addr[11]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rd_addr[11]_i_16 
       (.I0(\rd_addr_reg[11]_i_24_n_5 ),
        .I1(A[3]),
        .I2(Q[4]),
        .O(\rd_addr[11]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF8808080)) 
    \rd_addr[11]_i_17 
       (.I0(Q[0]),
        .I1(A[6]),
        .I2(\rd_addr_reg[11]_i_24_n_6 ),
        .I3(Q[4]),
        .I4(A[2]),
        .O(\rd_addr[11]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hF8808080)) 
    \rd_addr[11]_i_18 
       (.I0(Q[0]),
        .I1(A[5]),
        .I2(\rd_addr_reg[11]_i_24_n_7 ),
        .I3(Q[4]),
        .I4(A[1]),
        .O(\rd_addr[11]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h87787878)) 
    \rd_addr[11]_i_19 
       (.I0(Q[0]),
        .I1(A[5]),
        .I2(\rd_addr_reg[11]_i_24_n_7 ),
        .I3(A[1]),
        .I4(Q[4]),
        .O(\rd_addr[11]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h8778F0F0)) 
    \rd_addr[11]_i_20 
       (.I0(\rd_addr_reg[11]_i_24_n_5 ),
        .I1(A[3]),
        .I2(\rd_addr_reg[11]_i_24_n_4 ),
        .I3(A[4]),
        .I4(Q[4]),
        .O(\rd_addr[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718EF30CF30C)) 
    \rd_addr[11]_i_21 
       (.I0(A[2]),
        .I1(\rd_addr_reg[11]_i_24_n_6 ),
        .I2(\rd_addr[11]_i_29_n_0 ),
        .I3(\rd_addr_reg[11]_i_24_n_5 ),
        .I4(A[3]),
        .I5(Q[4]),
        .O(\rd_addr[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \rd_addr[11]_i_22 
       (.I0(\rd_addr[11]_i_18_n_0 ),
        .I1(Q[0]),
        .I2(A[6]),
        .I3(\rd_addr_reg[11]_i_24_n_6 ),
        .I4(A[2]),
        .I5(Q[4]),
        .O(\rd_addr[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9669C3C36969C3C3)) 
    \rd_addr[11]_i_23 
       (.I0(A[5]),
        .I1(\rd_addr_reg[11]_i_24_n_7 ),
        .I2(\rd_addr[11]_i_30_n_0 ),
        .I3(A[4]),
        .I4(Q[0]),
        .I5(\rd_addr_reg[9]_i_19_n_4 ),
        .O(\rd_addr[11]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr[11]_i_29 
       (.I0(A[6]),
        .I1(Q[0]),
        .O(\rd_addr[11]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[11]_i_3 
       (.I0(\rd_addr[11]_i_5_n_0 ),
        .I1(p_1_out__0[11]),
        .O(\rd_addr[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr[11]_i_30 
       (.I0(A[1]),
        .I1(Q[4]),
        .O(\rd_addr[11]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \rd_addr[11]_i_31 
       (.I0(Q[3]),
        .I1(A[4]),
        .I2(Q[2]),
        .I3(A[5]),
        .I4(Q[1]),
        .I5(A[6]),
        .O(\rd_addr[11]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \rd_addr[11]_i_32 
       (.I0(Q[3]),
        .I1(A[3]),
        .I2(Q[2]),
        .I3(A[4]),
        .I4(Q[1]),
        .I5(A[5]),
        .O(\rd_addr[11]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \rd_addr[11]_i_33 
       (.I0(Q[3]),
        .I1(A[2]),
        .I2(Q[2]),
        .I3(A[3]),
        .I4(Q[1]),
        .I5(A[4]),
        .O(\rd_addr[11]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \rd_addr[11]_i_34 
       (.I0(Q[3]),
        .I1(A[1]),
        .I2(Q[2]),
        .I3(A[2]),
        .I4(Q[1]),
        .I5(A[3]),
        .O(\rd_addr[11]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \rd_addr[11]_i_35 
       (.I0(Q[1]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(Q[3]),
        .I4(A[6]),
        .I5(Q[2]),
        .O(\rd_addr[11]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \rd_addr[11]_i_36 
       (.I0(\rd_addr[11]_i_32_n_0 ),
        .I1(Q[2]),
        .I2(A[5]),
        .I3(\rd_addr[11]_i_50_n_0 ),
        .I4(A[6]),
        .I5(Q[1]),
        .O(\rd_addr[11]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \rd_addr[11]_i_37 
       (.I0(\rd_addr[11]_i_33_n_0 ),
        .I1(Q[2]),
        .I2(A[4]),
        .I3(\rd_addr[11]_i_51_n_0 ),
        .I4(A[5]),
        .I5(Q[1]),
        .O(\rd_addr[11]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \rd_addr[11]_i_38 
       (.I0(\rd_addr[11]_i_34_n_0 ),
        .I1(Q[2]),
        .I2(A[3]),
        .I3(\rd_addr[11]_i_52_n_0 ),
        .I4(A[4]),
        .I5(Q[1]),
        .O(\rd_addr[11]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \rd_addr[11]_i_39 
       (.I0(Q[2]),
        .I1(A[5]),
        .I2(Q[3]),
        .I3(A[6]),
        .O(\rd_addr[11]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[11]_i_4 
       (.I0(\rd_addr[11]_i_6_n_0 ),
        .I1(p_1_out__0[10]),
        .O(\rd_addr[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \rd_addr[11]_i_40 
       (.I0(A[5]),
        .I1(Q[2]),
        .I2(A[4]),
        .I3(Q[3]),
        .I4(A[3]),
        .I5(Q[4]),
        .O(\rd_addr[11]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \rd_addr[11]_i_41 
       (.I0(A[5]),
        .I1(Q[1]),
        .I2(A[4]),
        .I3(Q[2]),
        .I4(A[3]),
        .I5(Q[3]),
        .O(\rd_addr[11]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \rd_addr[11]_i_42 
       (.I0(A[5]),
        .I1(Q[0]),
        .I2(A[4]),
        .I3(Q[1]),
        .I4(A[3]),
        .I5(Q[2]),
        .O(\rd_addr[11]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rd_addr[11]_i_43 
       (.I0(Q[1]),
        .I1(A[3]),
        .I2(Q[0]),
        .I3(A[4]),
        .O(\rd_addr[11]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \rd_addr[11]_i_44 
       (.I0(A[3]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(A[5]),
        .I4(Q[4]),
        .I5(A[4]),
        .O(\rd_addr[11]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \rd_addr[11]_i_45 
       (.I0(\rd_addr[11]_i_41_n_0 ),
        .I1(A[4]),
        .I2(Q[3]),
        .I3(\rd_addr[11]_i_53_n_0 ),
        .I4(Q[4]),
        .I5(A[3]),
        .O(\rd_addr[11]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \rd_addr[11]_i_46 
       (.I0(\rd_addr[11]_i_42_n_0 ),
        .I1(A[4]),
        .I2(Q[2]),
        .I3(\rd_addr[11]_i_54_n_0 ),
        .I4(Q[3]),
        .I5(A[3]),
        .O(\rd_addr[11]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0F77F08878887888)) 
    \rd_addr[11]_i_47 
       (.I0(A[4]),
        .I1(Q[1]),
        .I2(A[5]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(A[3]),
        .O(\rd_addr[11]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr[11]_i_48 
       (.I0(Q[4]),
        .I1(A[2]),
        .O(\rd_addr[11]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \rd_addr[11]_i_49 
       (.I0(A[4]),
        .I1(Q[3]),
        .I2(A[5]),
        .I3(Q[4]),
        .O(\rd_addr[11]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0CCC0)) 
    \rd_addr[11]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[11]_i_7_n_7 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(rd_addr2[11]),
        .O(\rd_addr[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr[11]_i_50 
       (.I0(A[4]),
        .I1(Q[3]),
        .O(\rd_addr[11]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr[11]_i_51 
       (.I0(A[3]),
        .I1(Q[3]),
        .O(\rd_addr[11]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr[11]_i_52 
       (.I0(A[2]),
        .I1(Q[3]),
        .O(\rd_addr[11]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr[11]_i_53 
       (.I0(Q[2]),
        .I1(A[5]),
        .O(\rd_addr[11]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr[11]_i_54 
       (.I0(Q[1]),
        .I1(A[5]),
        .O(\rd_addr[11]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0CCC0)) 
    \rd_addr[11]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[11]_i_9_n_4 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(rd_addr2[10]),
        .O(\rd_addr[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr[5]_i_10 
       (.I0(Q[0]),
        .I1(A[1]),
        .O(\rd_addr[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr[5]_i_11 
       (.I0(A[1]),
        .I1(Q[4]),
        .O(\rd_addr[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr[5]_i_12 
       (.I0(A[1]),
        .I1(Q[3]),
        .O(\rd_addr[5]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr[5]_i_13 
       (.I0(A[1]),
        .I1(Q[2]),
        .O(\rd_addr[5]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr[5]_i_14 
       (.I0(A[1]),
        .I1(Q[1]),
        .O(\rd_addr[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \rd_addr[5]_i_15 
       (.I0(A[1]),
        .I1(Q[4]),
        .I2(A[2]),
        .I3(Q[3]),
        .O(\rd_addr[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \rd_addr[5]_i_16 
       (.I0(A[1]),
        .I1(Q[3]),
        .I2(A[2]),
        .I3(Q[2]),
        .O(\rd_addr[5]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \rd_addr[5]_i_17 
       (.I0(A[1]),
        .I1(Q[2]),
        .I2(A[2]),
        .I3(Q[1]),
        .O(\rd_addr[5]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \rd_addr[5]_i_18 
       (.I0(A[1]),
        .I1(Q[1]),
        .I2(A[2]),
        .I3(Q[0]),
        .O(\rd_addr[5]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[5]_i_2 
       (.I0(\rd_addr[5]_i_6_n_0 ),
        .I1(p_1_out__0[5]),
        .O(\rd_addr[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[5]_i_3 
       (.I0(\rd_addr[5]_i_7_n_0 ),
        .I1(p_1_out__0[4]),
        .O(\rd_addr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[5]_i_4 
       (.I0(\rd_addr[5]_i_8_n_0 ),
        .I1(p_1_out__0[3]),
        .O(\rd_addr[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \rd_addr[5]_i_5 
       (.I0(p01),
        .I1(p10),
        .I2(Q[0]),
        .I3(p_1_out__0[2]),
        .O(\rd_addr[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0CCC0)) 
    \rd_addr[5]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[9]_i_11_n_5 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(rd_addr2[5]),
        .O(\rd_addr[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0CCC0)) 
    \rd_addr[5]_i_7 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[9]_i_11_n_6 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(rd_addr2[4]),
        .O(\rd_addr[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCC0FFFFEEEA)) 
    \rd_addr[5]_i_8 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[9]_i_11_n_7 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(\rd_addr[5]_i_10_n_0 ),
        .O(\rd_addr[5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr[9]_i_12 
       (.I0(\rd_addr_reg[5]_i_9_n_4 ),
        .I1(\rd_addr_reg[11]_i_26_n_7 ),
        .O(\rd_addr[9]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[9]_i_13 
       (.I0(\rd_addr_reg[5]_i_9_n_4 ),
        .I1(\rd_addr_reg[11]_i_26_n_7 ),
        .O(\rd_addr[9]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \rd_addr[9]_i_14 
       (.I0(\rd_addr_reg[5]_i_9_n_5 ),
        .I1(Q[0]),
        .I2(A[4]),
        .I3(Q[1]),
        .I4(A[3]),
        .O(\rd_addr[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887788778)) 
    \rd_addr[9]_i_15 
       (.I0(\rd_addr_reg[5]_i_9_n_4 ),
        .I1(\rd_addr_reg[11]_i_26_n_7 ),
        .I2(\rd_addr_reg[11]_i_27_n_7 ),
        .I3(\rd_addr_reg[11]_i_26_n_6 ),
        .I4(Q[0]),
        .I5(A[6]),
        .O(\rd_addr[9]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h6966)) 
    \rd_addr[9]_i_16 
       (.I0(\rd_addr_reg[11]_i_26_n_7 ),
        .I1(\rd_addr_reg[5]_i_9_n_4 ),
        .I2(\rd_addr[9]_i_24_n_0 ),
        .I3(\rd_addr_reg[5]_i_9_n_5 ),
        .O(\rd_addr[9]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \rd_addr[9]_i_17 
       (.I0(\rd_addr_reg[5]_i_9_n_5 ),
        .I1(Q[0]),
        .I2(A[4]),
        .I3(Q[1]),
        .I4(A[3]),
        .O(\rd_addr[9]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_addr[9]_i_18 
       (.I0(\rd_addr_reg[5]_i_9_n_6 ),
        .I1(A[3]),
        .I2(Q[0]),
        .O(\rd_addr[9]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[9]_i_2 
       (.I0(\rd_addr[9]_i_6_n_0 ),
        .I1(p_1_out__0[9]),
        .O(\rd_addr[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h956A)) 
    \rd_addr[9]_i_20 
       (.I0(\rd_addr_reg[9]_i_19_n_4 ),
        .I1(A[4]),
        .I2(Q[0]),
        .I3(Q[4]),
        .O(\rd_addr[9]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \rd_addr[9]_i_21 
       (.I0(Q[0]),
        .I1(A[3]),
        .I2(\rd_addr_reg[9]_i_19_n_5 ),
        .O(\rd_addr[9]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \rd_addr[9]_i_22 
       (.I0(Q[0]),
        .I1(A[2]),
        .I2(\rd_addr_reg[9]_i_19_n_6 ),
        .O(\rd_addr[9]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \rd_addr[9]_i_23 
       (.I0(Q[0]),
        .I1(A[1]),
        .I2(\rd_addr_reg[9]_i_19_n_7 ),
        .O(\rd_addr[9]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h8777)) 
    \rd_addr[9]_i_24 
       (.I0(A[3]),
        .I1(Q[1]),
        .I2(A[4]),
        .I3(Q[0]),
        .O(\rd_addr[9]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \rd_addr[9]_i_25 
       (.I0(Q[2]),
        .I1(A[2]),
        .I2(Q[3]),
        .I3(A[1]),
        .I4(A[3]),
        .I5(Q[1]),
        .O(\rd_addr[9]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_addr[9]_i_26 
       (.I0(Q[3]),
        .I1(A[1]),
        .I2(Q[2]),
        .O(\rd_addr[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A3FC06A6AC0C0)) 
    \rd_addr[9]_i_27 
       (.I0(A[2]),
        .I1(A[3]),
        .I2(Q[1]),
        .I3(A[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\rd_addr[9]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \rd_addr[9]_i_28 
       (.I0(Q[3]),
        .I1(A[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(A[2]),
        .O(\rd_addr[9]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_addr[9]_i_29 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(A[1]),
        .O(\rd_addr[9]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[9]_i_3 
       (.I0(\rd_addr[9]_i_7_n_0 ),
        .I1(p_1_out__0[8]),
        .O(\rd_addr[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[9]_i_4 
       (.I0(\rd_addr[9]_i_8_n_0 ),
        .I1(p_1_out__0[7]),
        .O(\rd_addr[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_addr[9]_i_5 
       (.I0(\rd_addr[9]_i_9_n_0 ),
        .I1(p_1_out__0[6]),
        .O(\rd_addr[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0CCC0)) 
    \rd_addr[9]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[11]_i_9_n_5 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(rd_addr2[9]),
        .O(\rd_addr[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0CCC0)) 
    \rd_addr[9]_i_7 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[11]_i_9_n_6 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(rd_addr2[8]),
        .O(\rd_addr[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0CCC0)) 
    \rd_addr[9]_i_8 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[11]_i_9_n_7 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(rd_addr2[7]),
        .O(\rd_addr[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0CCC0)) 
    \rd_addr[9]_i_9 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\rd_addr_reg[9]_i_11_n_4 ),
        .I2(p10),
        .I3(p01),
        .I4(p00),
        .I5(rd_addr2[6]),
        .O(\rd_addr[9]_i_9_n_0 ));
  FDCE \rd_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(p_1_out__0[0]),
        .Q(rd_addr[0]));
  FDCE \rd_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[11]_i_2_n_7 ),
        .Q(rd_addr[10]));
  FDCE \rd_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[11]_i_2_n_6 ),
        .Q(rd_addr[11]));
  CARRY4 \rd_addr_reg[11]_i_2 
       (.CI(\rd_addr_reg[9]_i_1_n_0 ),
        .CO({\NLW_rd_addr_reg[11]_i_2_CO_UNCONNECTED [3:1],\rd_addr_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_out__0[10]}),
        .O({\NLW_rd_addr_reg[11]_i_2_O_UNCONNECTED [3:2],\rd_addr_reg[11]_i_2_n_6 ,\rd_addr_reg[11]_i_2_n_7 }),
        .S({1'b0,1'b0,\rd_addr[11]_i_3_n_0 ,\rd_addr[11]_i_4_n_0 }));
  CARRY4 \rd_addr_reg[11]_i_24 
       (.CI(\rd_addr_reg[9]_i_19_n_0 ),
        .CO({\rd_addr_reg[11]_i_24_n_0 ,\rd_addr_reg[11]_i_24_n_1 ,\rd_addr_reg[11]_i_24_n_2 ,\rd_addr_reg[11]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\rd_addr[11]_i_31_n_0 ,\rd_addr[11]_i_32_n_0 ,\rd_addr[11]_i_33_n_0 ,\rd_addr[11]_i_34_n_0 }),
        .O({\rd_addr_reg[11]_i_24_n_4 ,\rd_addr_reg[11]_i_24_n_5 ,\rd_addr_reg[11]_i_24_n_6 ,\rd_addr_reg[11]_i_24_n_7 }),
        .S({\rd_addr[11]_i_35_n_0 ,\rd_addr[11]_i_36_n_0 ,\rd_addr[11]_i_37_n_0 ,\rd_addr[11]_i_38_n_0 }));
  CARRY4 \rd_addr_reg[11]_i_25 
       (.CI(\rd_addr_reg[11]_i_24_n_0 ),
        .CO(\NLW_rd_addr_reg[11]_i_25_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_addr_reg[11]_i_25_O_UNCONNECTED [3:1],\rd_addr_reg[11]_i_25_n_7 }),
        .S({1'b0,1'b0,1'b0,\rd_addr[11]_i_39_n_0 }));
  CARRY4 \rd_addr_reg[11]_i_26 
       (.CI(1'b0),
        .CO({\rd_addr_reg[11]_i_26_n_0 ,\rd_addr_reg[11]_i_26_n_1 ,\rd_addr_reg[11]_i_26_n_2 ,\rd_addr_reg[11]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\rd_addr[11]_i_40_n_0 ,\rd_addr[11]_i_41_n_0 ,\rd_addr[11]_i_42_n_0 ,\rd_addr[11]_i_43_n_0 }),
        .O({\rd_addr_reg[11]_i_26_n_4 ,\rd_addr_reg[11]_i_26_n_5 ,\rd_addr_reg[11]_i_26_n_6 ,\rd_addr_reg[11]_i_26_n_7 }),
        .S({\rd_addr[11]_i_44_n_0 ,\rd_addr[11]_i_45_n_0 ,\rd_addr[11]_i_46_n_0 ,\rd_addr[11]_i_47_n_0 }));
  CARRY4 \rd_addr_reg[11]_i_27 
       (.CI(\rd_addr_reg[5]_i_9_n_0 ),
        .CO({\NLW_rd_addr_reg[11]_i_27_CO_UNCONNECTED [3:2],\rd_addr_reg[11]_i_27_n_2 ,\NLW_rd_addr_reg[11]_i_27_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_addr_reg[11]_i_27_O_UNCONNECTED [3:1],\rd_addr_reg[11]_i_27_n_7 }),
        .S({1'b0,1'b0,1'b1,\rd_addr[11]_i_48_n_0 }));
  CARRY4 \rd_addr_reg[11]_i_28 
       (.CI(\rd_addr_reg[11]_i_26_n_0 ),
        .CO(\NLW_rd_addr_reg[11]_i_28_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_addr_reg[11]_i_28_O_UNCONNECTED [3:1],\rd_addr_reg[11]_i_28_n_7 }),
        .S({1'b0,1'b0,1'b0,\rd_addr[11]_i_49_n_0 }));
  CARRY4 \rd_addr_reg[11]_i_7 
       (.CI(\rd_addr_reg[11]_i_9_n_0 ),
        .CO(\NLW_rd_addr_reg[11]_i_7_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_addr_reg[11]_i_7_O_UNCONNECTED [3:1],\rd_addr_reg[11]_i_7_n_7 }),
        .S({1'b0,1'b0,1'b0,\rd_addr[11]_i_10_n_0 }));
  CARRY4 \rd_addr_reg[11]_i_8 
       (.CI(\rd_addr_reg[9]_i_10_n_0 ),
        .CO({\NLW_rd_addr_reg[11]_i_8_CO_UNCONNECTED [3:2],\rd_addr_reg[11]_i_8_n_2 ,\rd_addr_reg[11]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rd_addr[11]_i_11_n_0 ,\rd_addr[11]_i_12_n_0 }),
        .O({\NLW_rd_addr_reg[11]_i_8_O_UNCONNECTED [3],rd_addr2[11:9]}),
        .S({1'b0,\rd_addr[11]_i_13_n_0 ,\rd_addr[11]_i_14_n_0 ,\rd_addr[11]_i_15_n_0 }));
  CARRY4 \rd_addr_reg[11]_i_9 
       (.CI(\rd_addr_reg[9]_i_11_n_0 ),
        .CO({\rd_addr_reg[11]_i_9_n_0 ,\rd_addr_reg[11]_i_9_n_1 ,\rd_addr_reg[11]_i_9_n_2 ,\rd_addr_reg[11]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\rd_addr[11]_i_16_n_0 ,\rd_addr[11]_i_17_n_0 ,\rd_addr[11]_i_18_n_0 ,\rd_addr[11]_i_19_n_0 }),
        .O({\rd_addr_reg[11]_i_9_n_4 ,\rd_addr_reg[11]_i_9_n_5 ,\rd_addr_reg[11]_i_9_n_6 ,\rd_addr_reg[11]_i_9_n_7 }),
        .S({\rd_addr[11]_i_20_n_0 ,\rd_addr[11]_i_21_n_0 ,\rd_addr[11]_i_22_n_0 ,\rd_addr[11]_i_23_n_0 }));
  FDCE \rd_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(p_1_out__0[1]),
        .Q(rd_addr[1]));
  FDCE \rd_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[5]_i_1_n_7 ),
        .Q(rd_addr[2]));
  FDCE \rd_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[5]_i_1_n_6 ),
        .Q(rd_addr[3]));
  FDCE \rd_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[5]_i_1_n_5 ),
        .Q(rd_addr[4]));
  FDCE \rd_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[5]_i_1_n_4 ),
        .Q(rd_addr[5]));
  CARRY4 \rd_addr_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\rd_addr_reg[5]_i_1_n_0 ,\rd_addr_reg[5]_i_1_n_1 ,\rd_addr_reg[5]_i_1_n_2 ,\rd_addr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_out__0[5:2]),
        .O({\rd_addr_reg[5]_i_1_n_4 ,\rd_addr_reg[5]_i_1_n_5 ,\rd_addr_reg[5]_i_1_n_6 ,\rd_addr_reg[5]_i_1_n_7 }),
        .S({\rd_addr[5]_i_2_n_0 ,\rd_addr[5]_i_3_n_0 ,\rd_addr[5]_i_4_n_0 ,\rd_addr[5]_i_5_n_0 }));
  CARRY4 \rd_addr_reg[5]_i_9 
       (.CI(1'b0),
        .CO({\rd_addr_reg[5]_i_9_n_0 ,\rd_addr_reg[5]_i_9_n_1 ,\rd_addr_reg[5]_i_9_n_2 ,\rd_addr_reg[5]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\rd_addr[5]_i_11_n_0 ,\rd_addr[5]_i_12_n_0 ,\rd_addr[5]_i_13_n_0 ,\rd_addr[5]_i_14_n_0 }),
        .O({\rd_addr_reg[5]_i_9_n_4 ,\rd_addr_reg[5]_i_9_n_5 ,\rd_addr_reg[5]_i_9_n_6 ,rd_addr2[4]}),
        .S({\rd_addr[5]_i_15_n_0 ,\rd_addr[5]_i_16_n_0 ,\rd_addr[5]_i_17_n_0 ,\rd_addr[5]_i_18_n_0 }));
  FDCE \rd_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[9]_i_1_n_7 ),
        .Q(rd_addr[6]));
  FDCE \rd_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[9]_i_1_n_6 ),
        .Q(rd_addr[7]));
  FDCE \rd_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[9]_i_1_n_5 ),
        .Q(rd_addr[8]));
  FDCE \rd_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[11]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\rd_addr_reg[9]_i_1_n_4 ),
        .Q(rd_addr[9]));
  CARRY4 \rd_addr_reg[9]_i_1 
       (.CI(\rd_addr_reg[5]_i_1_n_0 ),
        .CO({\rd_addr_reg[9]_i_1_n_0 ,\rd_addr_reg[9]_i_1_n_1 ,\rd_addr_reg[9]_i_1_n_2 ,\rd_addr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_out__0[9:6]),
        .O({\rd_addr_reg[9]_i_1_n_4 ,\rd_addr_reg[9]_i_1_n_5 ,\rd_addr_reg[9]_i_1_n_6 ,\rd_addr_reg[9]_i_1_n_7 }),
        .S({\rd_addr[9]_i_2_n_0 ,\rd_addr[9]_i_3_n_0 ,\rd_addr[9]_i_4_n_0 ,\rd_addr[9]_i_5_n_0 }));
  CARRY4 \rd_addr_reg[9]_i_10 
       (.CI(1'b0),
        .CO({\rd_addr_reg[9]_i_10_n_0 ,\rd_addr_reg[9]_i_10_n_1 ,\rd_addr_reg[9]_i_10_n_2 ,\rd_addr_reg[9]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\rd_addr[9]_i_12_n_0 ,\rd_addr[9]_i_13_n_0 ,\rd_addr[9]_i_14_n_0 ,\rd_addr_reg[5]_i_9_n_6 }),
        .O(rd_addr2[8:5]),
        .S({\rd_addr[9]_i_15_n_0 ,\rd_addr[9]_i_16_n_0 ,\rd_addr[9]_i_17_n_0 ,\rd_addr[9]_i_18_n_0 }));
  CARRY4 \rd_addr_reg[9]_i_11 
       (.CI(1'b0),
        .CO({\rd_addr_reg[9]_i_11_n_0 ,\rd_addr_reg[9]_i_11_n_1 ,\rd_addr_reg[9]_i_11_n_2 ,\rd_addr_reg[9]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[4],\rd_addr_reg[9]_i_19_n_5 ,\rd_addr_reg[9]_i_19_n_6 ,\rd_addr_reg[9]_i_19_n_7 }),
        .O({\rd_addr_reg[9]_i_11_n_4 ,\rd_addr_reg[9]_i_11_n_5 ,\rd_addr_reg[9]_i_11_n_6 ,\rd_addr_reg[9]_i_11_n_7 }),
        .S({\rd_addr[9]_i_20_n_0 ,\rd_addr[9]_i_21_n_0 ,\rd_addr[9]_i_22_n_0 ,\rd_addr[9]_i_23_n_0 }));
  CARRY4 \rd_addr_reg[9]_i_19 
       (.CI(1'b0),
        .CO({\rd_addr_reg[9]_i_19_n_0 ,\rd_addr_reg[9]_i_19_n_1 ,\rd_addr_reg[9]_i_19_n_2 ,\rd_addr_reg[9]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\rd_addr[9]_i_25_n_0 ,\rd_addr[9]_i_26_n_0 ,Q[2],1'b0}),
        .O({\rd_addr_reg[9]_i_19_n_4 ,\rd_addr_reg[9]_i_19_n_5 ,\rd_addr_reg[9]_i_19_n_6 ,\rd_addr_reg[9]_i_19_n_7 }),
        .S({\rd_addr[9]_i_27_n_0 ,\rd_addr[9]_i_28_n_0 ,\rd_addr[9]_i_29_n_0 ,Q[1]}));
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
    wr_addr0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wr_addr0_i_1_n_4,wr_addr0_i_1_n_5,wr_addr0_i_1_n_6,wr_addr0_i_1_n_7,wr_addr0_i_2_n_4,wr_addr0_i_2_n_5,wr_addr0_i_2_n_6,wr_addr0_i_2_n_7,wr_addr0_i_3_n_4,wr_addr0_i_3_n_5,wr_addr0_i_3_n_6,wr_addr0_i_3_n_7,p_1_out_i_5_n_0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_wr_addr0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_wr_addr0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_wr_addr0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_wr_addr0_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_wr_addr0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_wr_addr0_OVERFLOW_UNCONNECTED),
        .P({NLW_wr_addr0_P_UNCONNECTED[47:15],wr_addr0_n_91,wr_addr0_n_92,wr_addr0_n_93,wr_addr0_n_94,wr_addr0_n_95,wr_addr0_n_96,wr_addr0_n_97,wr_addr0_n_98,wr_addr0_n_99,wr_addr0_n_100,wr_addr0_n_101,wr_addr0_n_102,wr_addr0_n_103,wr_addr0_n_104,wr_addr0_n_105}),
        .PATTERNBDETECT(NLW_wr_addr0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_wr_addr0_PATTERNDETECT_UNCONNECTED),
        .PCIN({wr_addr2_n_106,wr_addr2_n_107,wr_addr2_n_108,wr_addr2_n_109,wr_addr2_n_110,wr_addr2_n_111,wr_addr2_n_112,wr_addr2_n_113,wr_addr2_n_114,wr_addr2_n_115,wr_addr2_n_116,wr_addr2_n_117,wr_addr2_n_118,wr_addr2_n_119,wr_addr2_n_120,wr_addr2_n_121,wr_addr2_n_122,wr_addr2_n_123,wr_addr2_n_124,wr_addr2_n_125,wr_addr2_n_126,wr_addr2_n_127,wr_addr2_n_128,wr_addr2_n_129,wr_addr2_n_130,wr_addr2_n_131,wr_addr2_n_132,wr_addr2_n_133,wr_addr2_n_134,wr_addr2_n_135,wr_addr2_n_136,wr_addr2_n_137,wr_addr2_n_138,wr_addr2_n_139,wr_addr2_n_140,wr_addr2_n_141,wr_addr2_n_142,wr_addr2_n_143,wr_addr2_n_144,wr_addr2_n_145,wr_addr2_n_146,wr_addr2_n_147,wr_addr2_n_148,wr_addr2_n_149,wr_addr2_n_150,wr_addr2_n_151,wr_addr2_n_152,wr_addr2_n_153}),
        .PCOUT(NLW_wr_addr0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_wr_addr0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_addr0_i_1
       (.CI(wr_addr0_i_2_n_0),
        .CO({NLW_wr_addr0_i_1_CO_UNCONNECTED[3],wr_addr0_i_1_n_1,wr_addr0_i_1_n_2,wr_addr0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,wr_addr0_i_4_n_0,wr_addr0_i_5_n_0,wr_addr0_i_6_n_0}),
        .O({wr_addr0_i_1_n_4,wr_addr0_i_1_n_5,wr_addr0_i_1_n_6,wr_addr0_i_1_n_7}),
        .S({wr_addr0_i_7_n_0,wr_addr0_i_8_n_0,wr_addr0_i_9_n_0,wr_addr0_i_10_n_0}));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    wr_addr0_i_10
       (.I0(wr_addr0_i_33_n_0),
        .I1(wr_addr0_i_29_n_0),
        .I2(wr_addr0_i_34_n_0),
        .I3(wr_addr0_i_27_n_0),
        .I4(wr_addr0_i_35_n_0),
        .I5(wr_addr0_i_28_n_0),
        .O(wr_addr0_i_10_n_0));
  LUT6 #(
    .INIT(64'h80F88080F8F880F8)) 
    wr_addr0_i_11
       (.I0(Q[2]),
        .I1(ch[5]),
        .I2(wr_addr0_i_36_n_0),
        .I3(wr_addr0_i_37_n_0),
        .I4(wr_addr0_i_26_n_7),
        .I5(wr_addr0_i_38_n_0),
        .O(wr_addr0_i_11_n_0));
  LUT6 #(
    .INIT(64'h80F88080F8F880F8)) 
    wr_addr0_i_12
       (.I0(Q[2]),
        .I1(ch[4]),
        .I2(wr_addr0_i_39_n_0),
        .I3(wr_addr0_i_40_n_0),
        .I4(wr_addr0_i_21_n_4),
        .I5(p_1_out_i_30_n_0),
        .O(wr_addr0_i_12_n_0));
  LUT6 #(
    .INIT(64'h80808080A8808080)) 
    wr_addr0_i_13
       (.I0(Q[2]),
        .I1(ch[3]),
        .I2(wr_addr0_i_41_n_0),
        .I3(ch[2]),
        .I4(wr_addr0_i_21_n_6),
        .I5(wr_addr0_i_42_n_0),
        .O(wr_addr0_i_13_n_0));
  LUT6 #(
    .INIT(64'h6AA66A6A6A6A6A6A)) 
    wr_addr0_i_14
       (.I0(wr_addr0_i_41_n_0),
        .I1(Q[2]),
        .I2(ch[3]),
        .I3(wr_addr0_i_42_n_0),
        .I4(wr_addr0_i_21_n_6),
        .I5(ch[2]),
        .O(wr_addr0_i_14_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    wr_addr0_i_15
       (.I0(wr_addr0_i_43_n_0),
        .I1(wr_addr0_i_36_n_0),
        .I2(wr_addr0_i_44_n_0),
        .I3(wr_addr0_i_29_n_0),
        .I4(wr_addr0_i_34_n_0),
        .I5(wr_addr0_i_33_n_0),
        .O(wr_addr0_i_15_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    wr_addr0_i_16
       (.I0(wr_addr0_i_45_n_0),
        .I1(wr_addr0_i_39_n_0),
        .I2(wr_addr0_i_46_n_0),
        .I3(wr_addr0_i_36_n_0),
        .I4(wr_addr0_i_44_n_0),
        .I5(wr_addr0_i_43_n_0),
        .O(wr_addr0_i_16_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    wr_addr0_i_17
       (.I0(wr_addr0_i_47_n_0),
        .I1(wr_addr0_i_41_n_0),
        .I2(wr_addr0_i_48_n_0),
        .I3(wr_addr0_i_39_n_0),
        .I4(wr_addr0_i_46_n_0),
        .I5(wr_addr0_i_45_n_0),
        .O(wr_addr0_i_17_n_0));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    wr_addr0_i_18
       (.I0(wr_addr0_i_41_n_0),
        .I1(wr_addr0_i_48_n_0),
        .I2(wr_addr0_i_47_n_0),
        .I3(wr_addr0_i_49_n_0),
        .I4(wr_addr0_i_21_n_5),
        .I5(wr_addr0_i_50_n_0),
        .O(wr_addr0_i_18_n_0));
  LUT5 #(
    .INIT(32'h87787878)) 
    wr_addr0_i_19
       (.I0(Q[3]),
        .I1(ch[1]),
        .I2(wr_addr0_i_21_n_5),
        .I3(ch[0]),
        .I4(Q[4]),
        .O(wr_addr0_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_addr0_i_2
       (.CI(wr_addr0_i_3_n_0),
        .CO({wr_addr0_i_2_n_0,wr_addr0_i_2_n_1,wr_addr0_i_2_n_2,wr_addr0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({wr_addr0_i_11_n_0,wr_addr0_i_12_n_0,wr_addr0_i_13_n_0,wr_addr0_i_14_n_0}),
        .O({wr_addr0_i_2_n_4,wr_addr0_i_2_n_5,wr_addr0_i_2_n_6,wr_addr0_i_2_n_7}),
        .S({wr_addr0_i_15_n_0,wr_addr0_i_16_n_0,wr_addr0_i_17_n_0,wr_addr0_i_18_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    wr_addr0_i_20
       (.I0(wr_addr0_i_21_n_6),
        .I1(ch[0]),
        .I2(Q[3]),
        .O(wr_addr0_i_20_n_0));
  CARRY4 wr_addr0_i_21
       (.CI(1'b0),
        .CO({wr_addr0_i_21_n_0,wr_addr0_i_21_n_1,wr_addr0_i_21_n_2,wr_addr0_i_21_n_3}),
        .CYINIT(1'b0),
        .DI({wr_addr0_i_51_n_0,wr_addr0_i_52_n_0,wr_addr0_i_53_n_0,wr_addr0_i_54_n_0}),
        .O({wr_addr0_i_21_n_4,wr_addr0_i_21_n_5,wr_addr0_i_21_n_6,wr_addr0_i_21_n_7}),
        .S({wr_addr0_i_55_n_0,wr_addr0_i_56_n_0,wr_addr0_i_57_n_0,wr_addr0_i_58_n_0}));
  LUT6 #(
    .INIT(64'h956A6A6A6A6A6A6A)) 
    wr_addr0_i_22
       (.I0(wr_addr0_i_19_n_0),
        .I1(ch[2]),
        .I2(Q[2]),
        .I3(wr_addr0_i_21_n_6),
        .I4(Q[3]),
        .I5(ch[0]),
        .O(wr_addr0_i_22_n_0));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    wr_addr0_i_23
       (.I0(wr_addr0_i_21_n_6),
        .I1(ch[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(ch[1]),
        .O(wr_addr0_i_23_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    wr_addr0_i_24
       (.I0(wr_addr0_i_21_n_7),
        .I1(Q[2]),
        .I2(ch[0]),
        .O(wr_addr0_i_24_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    wr_addr0_i_25
       (.I0(Q[0]),
        .I1(ch[1]),
        .I2(Q[1]),
        .I3(ch[0]),
        .O(wr_addr0_i_25_n_0));
  CARRY4 wr_addr0_i_26
       (.CI(wr_addr0_i_21_n_0),
        .CO({wr_addr0_i_26_n_0,NLW_wr_addr0_i_26_CO_UNCONNECTED[2],wr_addr0_i_26_n_2,wr_addr0_i_26_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,wr_addr0_i_59_n_0,wr_addr0_i_60_n_0,wr_addr0_i_61_n_0}),
        .O({NLW_wr_addr0_i_26_O_UNCONNECTED[3],wr_addr0_i_26_n_5,wr_addr0_i_26_n_6,wr_addr0_i_26_n_7}),
        .S({1'b1,wr_addr0_i_62_n_0,wr_addr0_i_63_n_0,wr_addr0_i_64_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h87787878)) 
    wr_addr0_i_27
       (.I0(Q[3]),
        .I1(ch[6]),
        .I2(wr_addr0_i_26_n_0),
        .I3(ch[5]),
        .I4(Q[4]),
        .O(wr_addr0_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hF8808080)) 
    wr_addr0_i_28
       (.I0(Q[4]),
        .I1(ch[4]),
        .I2(wr_addr0_i_26_n_5),
        .I3(Q[3]),
        .I4(ch[5]),
        .O(wr_addr0_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h87787878)) 
    wr_addr0_i_29
       (.I0(Q[3]),
        .I1(ch[5]),
        .I2(wr_addr0_i_26_n_5),
        .I3(ch[4]),
        .I4(Q[4]),
        .O(wr_addr0_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_addr0_i_3
       (.CI(1'b0),
        .CO({wr_addr0_i_3_n_0,wr_addr0_i_3_n_1,wr_addr0_i_3_n_2,wr_addr0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({wr_addr0_i_19_n_0,wr_addr0_i_20_n_0,wr_addr0_i_21_n_7,1'b0}),
        .O({wr_addr0_i_3_n_4,wr_addr0_i_3_n_5,wr_addr0_i_3_n_6,wr_addr0_i_3_n_7}),
        .S({wr_addr0_i_22_n_0,wr_addr0_i_23_n_0,wr_addr0_i_24_n_0,wr_addr0_i_25_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_30
       (.I0(ch[4]),
        .I1(Q[3]),
        .O(wr_addr0_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_31
       (.I0(ch[3]),
        .I1(Q[4]),
        .O(wr_addr0_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hF8808080)) 
    wr_addr0_i_32
       (.I0(Q[4]),
        .I1(ch[5]),
        .I2(wr_addr0_i_26_n_0),
        .I3(Q[3]),
        .I4(ch[6]),
        .O(wr_addr0_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hF8808080)) 
    wr_addr0_i_33
       (.I0(Q[4]),
        .I1(ch[3]),
        .I2(wr_addr0_i_26_n_6),
        .I3(Q[3]),
        .I4(ch[4]),
        .O(wr_addr0_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_34
       (.I0(ch[6]),
        .I1(Q[2]),
        .O(wr_addr0_i_34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_35
       (.I0(ch[7]),
        .I1(Q[2]),
        .O(wr_addr0_i_35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h87787878)) 
    wr_addr0_i_36
       (.I0(Q[3]),
        .I1(ch[4]),
        .I2(wr_addr0_i_26_n_6),
        .I3(ch[3]),
        .I4(Q[4]),
        .O(wr_addr0_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_37
       (.I0(ch[3]),
        .I1(Q[3]),
        .O(wr_addr0_i_37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_38
       (.I0(ch[2]),
        .I1(Q[4]),
        .O(wr_addr0_i_38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h87787878)) 
    wr_addr0_i_39
       (.I0(Q[3]),
        .I1(ch[3]),
        .I2(wr_addr0_i_26_n_7),
        .I3(ch[2]),
        .I4(Q[4]),
        .O(wr_addr0_i_39_n_0));
  LUT6 #(
    .INIT(64'h6C40400080008000)) 
    wr_addr0_i_4
       (.I0(ch[7]),
        .I1(ch[6]),
        .I2(Q[3]),
        .I3(wr_addr0_i_26_n_0),
        .I4(ch[5]),
        .I5(Q[4]),
        .O(wr_addr0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_40
       (.I0(ch[2]),
        .I1(Q[3]),
        .O(wr_addr0_i_40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h87787878)) 
    wr_addr0_i_41
       (.I0(Q[3]),
        .I1(ch[2]),
        .I2(wr_addr0_i_21_n_4),
        .I3(ch[1]),
        .I4(Q[4]),
        .O(wr_addr0_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_42
       (.I0(ch[0]),
        .I1(Q[3]),
        .O(wr_addr0_i_42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hF8808080)) 
    wr_addr0_i_43
       (.I0(Q[4]),
        .I1(ch[2]),
        .I2(wr_addr0_i_26_n_7),
        .I3(Q[3]),
        .I4(ch[3]),
        .O(wr_addr0_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_44
       (.I0(ch[5]),
        .I1(Q[2]),
        .O(wr_addr0_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hF8808080)) 
    wr_addr0_i_45
       (.I0(Q[4]),
        .I1(ch[1]),
        .I2(wr_addr0_i_21_n_4),
        .I3(Q[3]),
        .I4(ch[2]),
        .O(wr_addr0_i_45_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_46
       (.I0(ch[4]),
        .I1(Q[2]),
        .O(wr_addr0_i_46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    wr_addr0_i_47
       (.I0(ch[0]),
        .I1(Q[3]),
        .I2(wr_addr0_i_21_n_6),
        .I3(Q[2]),
        .I4(ch[2]),
        .O(wr_addr0_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_48
       (.I0(ch[3]),
        .I1(Q[2]),
        .O(wr_addr0_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_49
       (.I0(ch[1]),
        .I1(Q[3]),
        .O(wr_addr0_i_49_n_0));
  LUT4 #(
    .INIT(16'hF880)) 
    wr_addr0_i_5
       (.I0(Q[2]),
        .I1(ch[7]),
        .I2(wr_addr0_i_27_n_0),
        .I3(wr_addr0_i_28_n_0),
        .O(wr_addr0_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    wr_addr0_i_50
       (.I0(ch[0]),
        .I1(Q[4]),
        .O(wr_addr0_i_50_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    wr_addr0_i_51
       (.I0(ch[4]),
        .I1(Q[0]),
        .I2(ch[3]),
        .I3(Q[1]),
        .O(wr_addr0_i_51_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    wr_addr0_i_52
       (.I0(ch[3]),
        .I1(Q[0]),
        .I2(ch[2]),
        .I3(Q[1]),
        .O(wr_addr0_i_52_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    wr_addr0_i_53
       (.I0(ch[2]),
        .I1(Q[0]),
        .I2(ch[1]),
        .I3(Q[1]),
        .O(wr_addr0_i_53_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    wr_addr0_i_54
       (.I0(Q[0]),
        .I1(ch[2]),
        .I2(Q[1]),
        .I3(ch[1]),
        .O(wr_addr0_i_54_n_0));
  LUT5 #(
    .INIT(32'hBF40C0C0)) 
    wr_addr0_i_55
       (.I0(ch[3]),
        .I1(ch[4]),
        .I2(Q[1]),
        .I3(ch[5]),
        .I4(Q[0]),
        .O(wr_addr0_i_55_n_0));
  LUT5 #(
    .INIT(32'hBF40C0C0)) 
    wr_addr0_i_56
       (.I0(ch[2]),
        .I1(ch[3]),
        .I2(Q[1]),
        .I3(ch[4]),
        .I4(Q[0]),
        .O(wr_addr0_i_56_n_0));
  LUT5 #(
    .INIT(32'hBF40C0C0)) 
    wr_addr0_i_57
       (.I0(ch[1]),
        .I1(ch[2]),
        .I2(Q[1]),
        .I3(ch[3]),
        .I4(Q[0]),
        .O(wr_addr0_i_57_n_0));
  LUT5 #(
    .INIT(32'hAC6CA0A0)) 
    wr_addr0_i_58
       (.I0(ch[2]),
        .I1(ch[1]),
        .I2(Q[0]),
        .I3(ch[0]),
        .I4(Q[1]),
        .O(wr_addr0_i_58_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    wr_addr0_i_59
       (.I0(Q[1]),
        .I1(ch[6]),
        .I2(Q[0]),
        .I3(ch[7]),
        .O(wr_addr0_i_59_n_0));
  LUT6 #(
    .INIT(64'h80F88080F8F880F8)) 
    wr_addr0_i_6
       (.I0(Q[2]),
        .I1(ch[6]),
        .I2(wr_addr0_i_29_n_0),
        .I3(wr_addr0_i_30_n_0),
        .I4(wr_addr0_i_26_n_6),
        .I5(wr_addr0_i_31_n_0),
        .O(wr_addr0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    wr_addr0_i_60
       (.I0(ch[6]),
        .I1(Q[0]),
        .I2(ch[5]),
        .I3(Q[1]),
        .O(wr_addr0_i_60_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    wr_addr0_i_61
       (.I0(ch[5]),
        .I1(Q[0]),
        .I2(ch[4]),
        .I3(Q[1]),
        .O(wr_addr0_i_61_n_0));
  LUT4 #(
    .INIT(16'h7000)) 
    wr_addr0_i_62
       (.I0(Q[0]),
        .I1(ch[6]),
        .I2(Q[1]),
        .I3(ch[7]),
        .O(wr_addr0_i_62_n_0));
  LUT5 #(
    .INIT(32'hBF40C0C0)) 
    wr_addr0_i_63
       (.I0(ch[5]),
        .I1(ch[6]),
        .I2(Q[1]),
        .I3(ch[7]),
        .I4(Q[0]),
        .O(wr_addr0_i_63_n_0));
  LUT5 #(
    .INIT(32'hBF40C0C0)) 
    wr_addr0_i_64
       (.I0(ch[4]),
        .I1(ch[5]),
        .I2(Q[1]),
        .I3(ch[6]),
        .I4(Q[0]),
        .O(wr_addr0_i_64_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    wr_addr0_i_7
       (.I0(ch[7]),
        .I1(Q[3]),
        .I2(ch[6]),
        .I3(Q[4]),
        .O(wr_addr0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0EC070007800F000)) 
    wr_addr0_i_8
       (.I0(ch[5]),
        .I1(wr_addr0_i_26_n_0),
        .I2(ch[7]),
        .I3(Q[4]),
        .I4(ch[6]),
        .I5(Q[3]),
        .O(wr_addr0_i_8_n_0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    wr_addr0_i_9
       (.I0(wr_addr0_i_5_n_0),
        .I1(Q[3]),
        .I2(ch[7]),
        .I3(Q[4]),
        .I4(ch[6]),
        .I5(wr_addr0_i_32_n_0),
        .O(wr_addr0_i_9_n_0));
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
    wr_addr2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\out_row_reg_n_0_[6] ,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_wr_addr2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_wr_addr2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_wr_addr2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_wr_addr2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_wr_addr2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_wr_addr2_OVERFLOW_UNCONNECTED),
        .P({NLW_wr_addr2_P_UNCONNECTED[47:13],wr_addr2_n_93,wr_addr2_n_94,wr_addr2_n_95,wr_addr2_n_96,wr_addr2_n_97,wr_addr2_n_98,wr_addr2_n_99,wr_addr2_n_100,wr_addr2_n_101,wr_addr2_n_102,wr_addr2_n_103,wr_addr2_n_104,wr_addr2_n_105}),
        .PATTERNBDETECT(NLW_wr_addr2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_wr_addr2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({wr_addr2_n_106,wr_addr2_n_107,wr_addr2_n_108,wr_addr2_n_109,wr_addr2_n_110,wr_addr2_n_111,wr_addr2_n_112,wr_addr2_n_113,wr_addr2_n_114,wr_addr2_n_115,wr_addr2_n_116,wr_addr2_n_117,wr_addr2_n_118,wr_addr2_n_119,wr_addr2_n_120,wr_addr2_n_121,wr_addr2_n_122,wr_addr2_n_123,wr_addr2_n_124,wr_addr2_n_125,wr_addr2_n_126,wr_addr2_n_127,wr_addr2_n_128,wr_addr2_n_129,wr_addr2_n_130,wr_addr2_n_131,wr_addr2_n_132,wr_addr2_n_133,wr_addr2_n_134,wr_addr2_n_135,wr_addr2_n_136,wr_addr2_n_137,wr_addr2_n_138,wr_addr2_n_139,wr_addr2_n_140,wr_addr2_n_141,wr_addr2_n_142,wr_addr2_n_143,wr_addr2_n_144,wr_addr2_n_145,wr_addr2_n_146,wr_addr2_n_147,wr_addr2_n_148,wr_addr2_n_149,wr_addr2_n_150,wr_addr2_n_151,wr_addr2_n_152,wr_addr2_n_153}),
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
        .UNDERFLOW(NLW_wr_addr2_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[3]_i_2 
       (.I0(B[4]),
        .I1(wr_addr0_n_102),
        .O(\wr_addr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[3]_i_3 
       (.I0(B[3]),
        .I1(wr_addr0_n_103),
        .O(\wr_addr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[3]_i_4 
       (.I0(B[2]),
        .I1(wr_addr0_n_104),
        .O(\wr_addr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[3]_i_5 
       (.I0(B[1]),
        .I1(wr_addr0_n_105),
        .O(\wr_addr[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[7]_i_2 
       (.I0(\out_col_reg_n_0_[6] ),
        .I1(wr_addr0_n_99),
        .O(\wr_addr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[7]_i_3 
       (.I0(B[6]),
        .I1(wr_addr0_n_100),
        .O(\wr_addr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[7]_i_4 
       (.I0(B[5]),
        .I1(wr_addr0_n_101),
        .O(\wr_addr[7]_i_4_n_0 ));
  FDCE \wr_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[0]),
        .Q(pool_wr_addr[0]));
  FDCE \wr_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[10]),
        .Q(pool_wr_addr[10]));
  FDCE \wr_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[11]),
        .Q(pool_wr_addr[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_addr_reg[11]_i_1 
       (.CI(\wr_addr_reg[7]_i_1_n_0 ),
        .CO({\wr_addr_reg[11]_i_1_n_0 ,\wr_addr_reg[11]_i_1_n_1 ,\wr_addr_reg[11]_i_1_n_2 ,\wr_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wr_addr0__0[11:8]),
        .S({wr_addr0_n_94,wr_addr0_n_95,wr_addr0_n_96,wr_addr0_n_97}));
  FDCE \wr_addr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[12]),
        .Q(pool_wr_addr[12]));
  FDCE \wr_addr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[13]),
        .Q(pool_wr_addr[13]));
  FDCE \wr_addr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[14]),
        .Q(pool_wr_addr[14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_addr_reg[14]_i_1 
       (.CI(\wr_addr_reg[11]_i_1_n_0 ),
        .CO({\NLW_wr_addr_reg[14]_i_1_CO_UNCONNECTED [3:2],\wr_addr_reg[14]_i_1_n_2 ,\wr_addr_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wr_addr_reg[14]_i_1_O_UNCONNECTED [3],wr_addr0__0[14:12]}),
        .S({1'b0,wr_addr0_n_91,wr_addr0_n_92,wr_addr0_n_93}));
  FDCE \wr_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[1]),
        .Q(pool_wr_addr[1]));
  FDCE \wr_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[2]),
        .Q(pool_wr_addr[2]));
  FDCE \wr_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[3]),
        .Q(pool_wr_addr[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\wr_addr_reg[3]_i_1_n_0 ,\wr_addr_reg[3]_i_1_n_1 ,\wr_addr_reg[3]_i_1_n_2 ,\wr_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(B[4:1]),
        .O(wr_addr0__0[3:0]),
        .S({\wr_addr[3]_i_2_n_0 ,\wr_addr[3]_i_3_n_0 ,\wr_addr[3]_i_4_n_0 ,\wr_addr[3]_i_5_n_0 }));
  FDCE \wr_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[4]),
        .Q(pool_wr_addr[4]));
  FDCE \wr_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[5]),
        .Q(pool_wr_addr[5]));
  FDCE \wr_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[6]),
        .Q(pool_wr_addr[6]));
  FDCE \wr_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[7]),
        .Q(pool_wr_addr[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_addr_reg[7]_i_1 
       (.CI(\wr_addr_reg[3]_i_1_n_0 ),
        .CO({\wr_addr_reg[7]_i_1_n_0 ,\wr_addr_reg[7]_i_1_n_1 ,\wr_addr_reg[7]_i_1_n_2 ,\wr_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\out_col_reg_n_0_[6] ,B[6:5]}),
        .O(wr_addr0__0[7:4]),
        .S({wr_addr0_n_98,\wr_addr[7]_i_2_n_0 ,\wr_addr[7]_i_3_n_0 ,\wr_addr[7]_i_4_n_0 }));
  FDCE \wr_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[8]),
        .Q(pool_wr_addr[8]));
  FDCE \wr_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(wr_addr0__0[9]),
        .Q(pool_wr_addr[9]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \wr_data[0]_i_1 
       (.I0(p00__0[0]),
        .I1(p_1_in),
        .I2(max_011),
        .I3(p01__0[0]),
        .I4(p_0_in),
        .I5(max_23[0]),
        .O(max_all[0]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \wr_data[0]_i_2 
       (.I0(p10__0[0]),
        .I1(p11__0[0]),
        .I2(max_231),
        .O(max_23[0]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \wr_data[1]_i_1 
       (.I0(p00__0[1]),
        .I1(p_1_in),
        .I2(max_011),
        .I3(p01__0[1]),
        .I4(p_0_in),
        .I5(max_23[1]),
        .O(max_all[1]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \wr_data[1]_i_2 
       (.I0(p10__0[1]),
        .I1(p11__0[1]),
        .I2(max_231),
        .O(max_23[1]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \wr_data[2]_i_1 
       (.I0(p00__0[2]),
        .I1(p_1_in),
        .I2(max_011),
        .I3(p01__0[2]),
        .I4(p_0_in),
        .I5(max_23[2]),
        .O(max_all[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \wr_data[2]_i_2 
       (.I0(p10__0[2]),
        .I1(p11__0[2]),
        .I2(max_231),
        .O(max_23[2]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \wr_data[3]_i_1 
       (.I0(p00__0[3]),
        .I1(p_1_in),
        .I2(max_011),
        .I3(p01__0[3]),
        .I4(p_0_in),
        .I5(max_23[3]),
        .O(max_all[3]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \wr_data[3]_i_2 
       (.I0(p10__0[3]),
        .I1(p11__0[3]),
        .I2(max_231),
        .O(max_23[3]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \wr_data[4]_i_1 
       (.I0(p00__0[4]),
        .I1(p_1_in),
        .I2(max_011),
        .I3(p01__0[4]),
        .I4(p_0_in),
        .I5(max_23[4]),
        .O(max_all[4]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \wr_data[4]_i_2 
       (.I0(p10__0[4]),
        .I1(p11__0[4]),
        .I2(max_231),
        .O(max_23[4]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \wr_data[5]_i_1 
       (.I0(p00__0[5]),
        .I1(p_1_in),
        .I2(max_011),
        .I3(p01__0[5]),
        .I4(p_0_in),
        .I5(max_23[5]),
        .O(max_all[5]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \wr_data[5]_i_2 
       (.I0(p10__0[5]),
        .I1(p11__0[5]),
        .I2(max_231),
        .O(max_23[5]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \wr_data[6]_i_1 
       (.I0(p00__0[6]),
        .I1(p_1_in),
        .I2(max_011),
        .I3(p01__0[6]),
        .I4(p_0_in),
        .I5(max_23[6]),
        .O(max_all[6]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \wr_data[6]_i_2 
       (.I0(p10__0[6]),
        .I1(p11__0[6]),
        .I2(max_231),
        .O(max_23[6]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \wr_data[7]_i_1 
       (.I0(p00__0[7]),
        .I1(p_1_in),
        .I2(max_011),
        .I3(p01__0[7]),
        .I4(p_0_in),
        .I5(max_23[7]),
        .O(max_all[7]));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    \wr_data[7]_i_10 
       (.I0(p00__0[6]),
        .I1(p10__0[6]),
        .I2(p11__0[6]),
        .I3(max_231),
        .I4(p00__0[7]),
        .I5(max_23[7]),
        .O(\wr_data[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    \wr_data[7]_i_11 
       (.I0(p00__0[4]),
        .I1(p10__0[4]),
        .I2(p11__0[4]),
        .I3(max_231),
        .I4(p00__0[5]),
        .I5(max_23[5]),
        .O(\wr_data[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    \wr_data[7]_i_12 
       (.I0(p00__0[2]),
        .I1(p10__0[2]),
        .I2(p11__0[2]),
        .I3(max_231),
        .I4(p00__0[3]),
        .I5(max_23[3]),
        .O(\wr_data[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    \wr_data[7]_i_13 
       (.I0(p00__0[0]),
        .I1(p10__0[0]),
        .I2(p11__0[0]),
        .I3(max_231),
        .I4(p00__0[1]),
        .I5(max_23[1]),
        .O(\wr_data[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wr_data[7]_i_14 
       (.I0(p00__0[6]),
        .I1(p01__0[6]),
        .I2(p01__0[7]),
        .I3(p00__0[7]),
        .O(\wr_data[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wr_data[7]_i_15 
       (.I0(p00__0[4]),
        .I1(p01__0[4]),
        .I2(p01__0[5]),
        .I3(p00__0[5]),
        .O(\wr_data[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wr_data[7]_i_16 
       (.I0(p00__0[2]),
        .I1(p01__0[2]),
        .I2(p01__0[3]),
        .I3(p00__0[3]),
        .O(\wr_data[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wr_data[7]_i_17 
       (.I0(p00__0[0]),
        .I1(p01__0[0]),
        .I2(p01__0[1]),
        .I3(p00__0[1]),
        .O(\wr_data[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wr_data[7]_i_18 
       (.I0(p00__0[6]),
        .I1(p01__0[6]),
        .I2(p00__0[7]),
        .I3(p01__0[7]),
        .O(\wr_data[7]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wr_data[7]_i_19 
       (.I0(p00__0[4]),
        .I1(p01__0[4]),
        .I2(p00__0[5]),
        .I3(p01__0[5]),
        .O(\wr_data[7]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wr_data[7]_i_20 
       (.I0(p00__0[2]),
        .I1(p01__0[2]),
        .I2(p00__0[3]),
        .I3(p01__0[3]),
        .O(\wr_data[7]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wr_data[7]_i_21 
       (.I0(p00__0[0]),
        .I1(p01__0[0]),
        .I2(p00__0[1]),
        .I3(p01__0[1]),
        .O(\wr_data[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    \wr_data[7]_i_22 
       (.I0(p01__0[6]),
        .I1(max_231),
        .I2(p11__0[6]),
        .I3(p10__0[6]),
        .I4(max_23[7]),
        .I5(p01__0[7]),
        .O(\wr_data[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    \wr_data[7]_i_23 
       (.I0(p01__0[4]),
        .I1(max_231),
        .I2(p11__0[4]),
        .I3(p10__0[4]),
        .I4(max_23[5]),
        .I5(p01__0[5]),
        .O(\wr_data[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    \wr_data[7]_i_24 
       (.I0(p01__0[2]),
        .I1(max_231),
        .I2(p11__0[2]),
        .I3(p10__0[2]),
        .I4(max_23[3]),
        .I5(p01__0[3]),
        .O(\wr_data[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    \wr_data[7]_i_25 
       (.I0(p01__0[0]),
        .I1(max_231),
        .I2(p11__0[0]),
        .I3(p10__0[0]),
        .I4(max_23[1]),
        .I5(p01__0[1]),
        .O(\wr_data[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    \wr_data[7]_i_26 
       (.I0(p01__0[6]),
        .I1(p10__0[6]),
        .I2(p11__0[6]),
        .I3(max_231),
        .I4(p01__0[7]),
        .I5(max_23[7]),
        .O(\wr_data[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    \wr_data[7]_i_27 
       (.I0(p01__0[4]),
        .I1(p10__0[4]),
        .I2(p11__0[4]),
        .I3(max_231),
        .I4(p01__0[5]),
        .I5(max_23[5]),
        .O(\wr_data[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    \wr_data[7]_i_28 
       (.I0(p01__0[2]),
        .I1(p10__0[2]),
        .I2(p11__0[2]),
        .I3(max_231),
        .I4(p01__0[3]),
        .I5(max_23[3]),
        .O(\wr_data[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    \wr_data[7]_i_29 
       (.I0(p01__0[0]),
        .I1(p10__0[0]),
        .I2(p11__0[0]),
        .I3(max_231),
        .I4(p01__0[1]),
        .I5(max_23[1]),
        .O(\wr_data[7]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wr_data[7]_i_31 
       (.I0(p10__0[6]),
        .I1(p11__0[6]),
        .I2(p11__0[7]),
        .I3(p10__0[7]),
        .O(\wr_data[7]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wr_data[7]_i_32 
       (.I0(p10__0[4]),
        .I1(p11__0[4]),
        .I2(p11__0[5]),
        .I3(p10__0[5]),
        .O(\wr_data[7]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wr_data[7]_i_33 
       (.I0(p10__0[2]),
        .I1(p11__0[2]),
        .I2(p11__0[3]),
        .I3(p10__0[3]),
        .O(\wr_data[7]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \wr_data[7]_i_34 
       (.I0(p10__0[0]),
        .I1(p11__0[0]),
        .I2(p11__0[1]),
        .I3(p10__0[1]),
        .O(\wr_data[7]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wr_data[7]_i_35 
       (.I0(p10__0[6]),
        .I1(p11__0[6]),
        .I2(p10__0[7]),
        .I3(p11__0[7]),
        .O(\wr_data[7]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wr_data[7]_i_36 
       (.I0(p10__0[4]),
        .I1(p11__0[4]),
        .I2(p10__0[5]),
        .I3(p11__0[5]),
        .O(\wr_data[7]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wr_data[7]_i_37 
       (.I0(p10__0[2]),
        .I1(p11__0[2]),
        .I2(p10__0[3]),
        .I3(p11__0[3]),
        .O(\wr_data[7]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wr_data[7]_i_38 
       (.I0(p10__0[0]),
        .I1(p11__0[0]),
        .I2(p10__0[1]),
        .I3(p11__0[1]),
        .O(\wr_data[7]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \wr_data[7]_i_5 
       (.I0(p10__0[7]),
        .I1(p11__0[7]),
        .I2(max_231),
        .O(max_23[7]));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    \wr_data[7]_i_6 
       (.I0(p00__0[6]),
        .I1(max_231),
        .I2(p11__0[6]),
        .I3(p10__0[6]),
        .I4(max_23[7]),
        .I5(p00__0[7]),
        .O(\wr_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    \wr_data[7]_i_7 
       (.I0(p00__0[4]),
        .I1(max_231),
        .I2(p11__0[4]),
        .I3(p10__0[4]),
        .I4(max_23[5]),
        .I5(p00__0[5]),
        .O(\wr_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    \wr_data[7]_i_8 
       (.I0(p00__0[2]),
        .I1(max_231),
        .I2(p11__0[2]),
        .I3(p10__0[2]),
        .I4(max_23[3]),
        .I5(p00__0[3]),
        .O(\wr_data[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    \wr_data[7]_i_9 
       (.I0(p00__0[0]),
        .I1(max_231),
        .I2(p11__0[0]),
        .I3(p10__0[0]),
        .I4(max_23[1]),
        .I5(p00__0[1]),
        .O(\wr_data[7]_i_9_n_0 ));
  FDCE \wr_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(max_all[0]),
        .Q(wr_data[0]));
  FDCE \wr_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(max_all[1]),
        .Q(wr_data[1]));
  FDCE \wr_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(max_all[2]),
        .Q(wr_data[2]));
  FDCE \wr_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(max_all[3]),
        .Q(wr_data[3]));
  FDCE \wr_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(max_all[4]),
        .Q(wr_data[4]));
  FDCE \wr_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(max_all[5]),
        .Q(wr_data[5]));
  FDCE \wr_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(max_all[6]),
        .Q(wr_data[6]));
  FDCE \wr_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[11] ),
        .CLR(done_reg_0),
        .D(max_all[7]),
        .Q(wr_data[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \wr_data_reg[7]_i_2 
       (.CI(1'b0),
        .CO({p_1_in,\wr_data_reg[7]_i_2_n_1 ,\wr_data_reg[7]_i_2_n_2 ,\wr_data_reg[7]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\wr_data[7]_i_6_n_0 ,\wr_data[7]_i_7_n_0 ,\wr_data[7]_i_8_n_0 ,\wr_data[7]_i_9_n_0 }),
        .O(\NLW_wr_data_reg[7]_i_2_O_UNCONNECTED [3:0]),
        .S({\wr_data[7]_i_10_n_0 ,\wr_data[7]_i_11_n_0 ,\wr_data[7]_i_12_n_0 ,\wr_data[7]_i_13_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \wr_data_reg[7]_i_3 
       (.CI(1'b0),
        .CO({max_011,\wr_data_reg[7]_i_3_n_1 ,\wr_data_reg[7]_i_3_n_2 ,\wr_data_reg[7]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({\wr_data[7]_i_14_n_0 ,\wr_data[7]_i_15_n_0 ,\wr_data[7]_i_16_n_0 ,\wr_data[7]_i_17_n_0 }),
        .O(\NLW_wr_data_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({\wr_data[7]_i_18_n_0 ,\wr_data[7]_i_19_n_0 ,\wr_data[7]_i_20_n_0 ,\wr_data[7]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \wr_data_reg[7]_i_30 
       (.CI(1'b0),
        .CO({max_231,\wr_data_reg[7]_i_30_n_1 ,\wr_data_reg[7]_i_30_n_2 ,\wr_data_reg[7]_i_30_n_3 }),
        .CYINIT(1'b1),
        .DI({\wr_data[7]_i_31_n_0 ,\wr_data[7]_i_32_n_0 ,\wr_data[7]_i_33_n_0 ,\wr_data[7]_i_34_n_0 }),
        .O(\NLW_wr_data_reg[7]_i_30_O_UNCONNECTED [3:0]),
        .S({\wr_data[7]_i_35_n_0 ,\wr_data[7]_i_36_n_0 ,\wr_data[7]_i_37_n_0 ,\wr_data[7]_i_38_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \wr_data_reg[7]_i_4 
       (.CI(1'b0),
        .CO({p_0_in,\wr_data_reg[7]_i_4_n_1 ,\wr_data_reg[7]_i_4_n_2 ,\wr_data_reg[7]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({\wr_data[7]_i_22_n_0 ,\wr_data[7]_i_23_n_0 ,\wr_data[7]_i_24_n_0 ,\wr_data[7]_i_25_n_0 }),
        .O(\NLW_wr_data_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\wr_data[7]_i_26_n_0 ,\wr_data[7]_i_27_n_0 ,\wr_data[7]_i_28_n_0 ,\wr_data[7]_i_29_n_0 }));
  FDCE wr_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(\FSM_onehot_state_reg_n_0_[11] ),
        .Q(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_npu_OCR
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s_axis_tready_reg,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_bready,
    s_axis_tdata,
    s_axis_tvalid);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s_axis_tready_reg;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input [2:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_bready;
  input [7:0]s_axis_tdata;
  input s_axis_tvalid;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire conv_need_patch;
  wire [3:0]dbg_layer_idx;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_48;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_49;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_50;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_51;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_52;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_53;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_54;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_55;
  wire myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_56;
  wire need_patch_prev;
  wire npu_all_done;
  wire [7:0]npu_img_pixel;
  wire npu_img_valid;
  wire [7:0]npu_result_cho;
  wire [7:0]npu_result_jong;
  wire [7:0]npu_result_jung;
  wire patch_start0;
  wire reg0_written;
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
  wire [7:0]s_axis_tdata;
  wire s_axis_tready_reg;
  wire s_axis_tvalid;
  wire [0:0]sel0;
  wire u_npu_core_n_0;
  wire u_npu_core_n_11;
  wire u_npu_core_n_12;
  wire u_npu_core_n_13;
  wire u_npu_core_n_14;
  wire u_npu_core_n_16;
  wire u_npu_core_n_7;
  wire u_npu_core_n_8;
  wire u_npu_core_n_9;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_npu_OCR_slave_lite_v1_0_S00_AXI myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst
       (.D(myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_53),
        .E(myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_48),
        .Q(npu_result_jong),
        .\axi_araddr_reg[2]_0 (sel0),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(u_npu_core_n_0),
        .\ext_co_reg[8] (u_npu_core_n_16),
        .\layer_idx_reg[3] (u_npu_core_n_14),
        .\load_addr_reg[14] ({u_npu_core_n_8,u_npu_core_n_9,npu_all_done}),
        .npu_img_valid(npu_img_valid),
        .reg0_written(reg0_written),
        .reg0_written_reg_0(myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_54),
        .reg0_written_reg_1(myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_55),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[7] (npu_result_jung),
        .\s00_axi_rdata[7]_0 (npu_result_cho),
        .\s00_axi_rdata[9] (dbg_layer_idx),
        .s00_axi_rdata_0_sp_1(u_npu_core_n_7),
        .s00_axi_rdata_10_sp_1(s_axis_tready_reg),
        .s00_axi_rdata_2_sp_1(u_npu_core_n_11),
        .s00_axi_rdata_3_sp_1(u_npu_core_n_12),
        .s00_axi_rdata_4_sp_1(u_npu_core_n_13),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[1]_0 (myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_56),
        .\slv_reg0_reg[4]_0 ({myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_49,myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_50,myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_51,myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_52}),
        .\slv_reg2_reg[7]_0 (npu_img_pixel));
  LUT2 #(
    .INIT(4'h2)) 
    patch_start_i_1
       (.I0(conv_need_patch),
        .I1(need_patch_prev),
        .O(patch_start0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_npu_core u_npu_core
       (.D(myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_53),
        .E(u_npu_core_n_16),
        .\FSM_onehot_state_reg[0]_0 (u_npu_core_n_12),
        .\FSM_onehot_state_reg[0]_1 (u_npu_core_n_13),
        .\FSM_onehot_state_reg[0]_2 (u_npu_core_n_14),
        .\FSM_onehot_state_reg[0]_3 (myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_56),
        .\FSM_onehot_state_reg[1]_0 (u_npu_core_n_7),
        .\FSM_onehot_state_reg[1]_1 (u_npu_core_n_11),
        .\FSM_onehot_state_reg[8]_0 ({u_npu_core_n_8,u_npu_core_n_9,npu_all_done}),
        .Q(dbg_layer_idx),
        .\ext_co_reg[8]_0 (myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_54),
        .\layer_idx_reg[3]_0 (myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_55),
        .\load_addr_reg[14]_0 (myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_48),
        .\load_wr_data_reg_reg[7]_0 (npu_img_pixel),
        .need_patch(conv_need_patch),
        .need_patch_prev(need_patch_prev),
        .npu_img_valid(npu_img_valid),
        .patch_start0(patch_start0),
        .reg0_written(reg0_written),
        .\result_cho_reg[7]_0 (npu_result_cho),
        .\result_jong_reg[7]_0 (npu_result_jong),
        .\result_jung_reg[7]_0 (npu_result_jung),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(u_npu_core_n_0),
        .\s00_axi_rdata[4]_INST_0_i_1 (sel0),
        .\s00_axi_rdata[4]_INST_0_i_1_0 ({myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_49,myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_50,myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_51,myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst_n_52}),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready_reg_0(s_axis_tready_reg),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_npu_OCR_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    s00_axi_bvalid,
    reg0_written,
    npu_img_valid,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_rdata,
    \axi_araddr_reg[2]_0 ,
    \slv_reg2_reg[7]_0 ,
    E,
    \slv_reg0_reg[4]_0 ,
    D,
    reg0_written_reg_0,
    reg0_written_reg_1,
    \slv_reg0_reg[1]_0 ,
    axi_rvalid_reg_1,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_aresetn,
    s00_axi_arvalid,
    Q,
    \s00_axi_rdata[7] ,
    s00_axi_rdata_0_sp_1,
    \s00_axi_rdata[7]_0 ,
    s00_axi_rdata_2_sp_1,
    s00_axi_rdata_3_sp_1,
    s00_axi_rdata_4_sp_1,
    \s00_axi_rdata[9] ,
    s00_axi_rdata_10_sp_1,
    \load_addr_reg[14] ,
    s00_axi_bready,
    s00_axi_rready,
    \ext_co_reg[8] ,
    \layer_idx_reg[3] ,
    s00_axi_wdata,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output s00_axi_bvalid;
  output reg0_written;
  output npu_img_valid;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [31:0]s00_axi_rdata;
  output [0:0]\axi_araddr_reg[2]_0 ;
  output [7:0]\slv_reg2_reg[7]_0 ;
  output [0:0]E;
  output [3:0]\slv_reg0_reg[4]_0 ;
  output [0:0]D;
  output [0:0]reg0_written_reg_0;
  output [0:0]reg0_written_reg_1;
  output \slv_reg0_reg[1]_0 ;
  input axi_rvalid_reg_1;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input [2:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input [7:0]Q;
  input [7:0]\s00_axi_rdata[7] ;
  input s00_axi_rdata_0_sp_1;
  input [7:0]\s00_axi_rdata[7]_0 ;
  input s00_axi_rdata_2_sp_1;
  input s00_axi_rdata_3_sp_1;
  input s00_axi_rdata_4_sp_1;
  input [3:0]\s00_axi_rdata[9] ;
  input s00_axi_rdata_10_sp_1;
  input [2:0]\load_addr_reg[14] ;
  input s00_axi_bready;
  input s00_axi_rready;
  input [0:0]\ext_co_reg[8] ;
  input \layer_idx_reg[3] ;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [7:0]Q;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire [0:0]\axi_araddr_reg[2]_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_rvalid_reg_1;
  wire axi_wready_i_1_n_0;
  wire [0:0]\ext_co_reg[8] ;
  wire \layer_idx_reg[3] ;
  wire [2:0]\load_addr_reg[14] ;
  wire npu_img_valid;
  wire p_0_in3_in;
  wire [31:7]p_1_in;
  wire reg0_written;
  wire reg0_written_i_1_n_0;
  wire [0:0]reg0_written_reg_0;
  wire [0:0]reg0_written_reg_1;
  wire reg2_written_i_1_n_0;
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
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire [7:0]\s00_axi_rdata[7] ;
  wire [7:0]\s00_axi_rdata[7]_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire [3:0]\s00_axi_rdata[9] ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_rdata_10_sn_1;
  wire s00_axi_rdata_2_sn_1;
  wire s00_axi_rdata_3_sn_1;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:1]sel0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0_reg[1]_0 ;
  wire [3:0]\slv_reg0_reg[4]_0 ;
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
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:8]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [7:0]\slv_reg2_reg[7]_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  assign s00_axi_rdata_10_sn_1 = s00_axi_rdata_10_sp_1;
  assign s00_axi_rdata_2_sn_1 = s00_axi_rdata_2_sp_1;
  assign s00_axi_rdata_3_sn_1 = s00_axi_rdata_3_sp_1;
  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\load_addr_reg[14] [2]),
        .I1(\slv_reg0_reg[4]_0 [0]),
        .I2(reg0_written),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[8]_i_6 
       (.I0(p_0_in3_in),
        .I1(reg0_written),
        .I2(\load_addr_reg[14] [2]),
        .O(\slv_reg0_reg[1]_0 ));
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
    .INIT(64'hFFFF88880FFF0000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(axi_rvalid_reg_1));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(axi_rvalid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFBFAAFF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .R(axi_rvalid_reg_1));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(axi_rvalid_reg_1));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(state_read[0]),
        .I4(\axi_araddr_reg[2]_0 ),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(state_read[0]),
        .I4(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(state_read[0]),
        .I4(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[4]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .O(\axi_araddr[4]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(\axi_araddr_reg[2]_0 ),
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
    .INIT(64'hAAAA2222FAAAFFFF)) 
    axi_arready_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(axi_rvalid_reg_1));
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
        .R(axi_rvalid_reg_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(axi_rvalid_reg_1));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(axi_rvalid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA2FFAF)) 
    axi_awready_i_1
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_rvalid_reg_1));
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
        .R(axi_rvalid_reg_1));
  LUT6 #(
    .INIT(64'hF0FF0080FFFF0080)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(axi_rvalid_reg_0),
        .I5(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_rvalid_reg_1));
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
        .R(axi_rvalid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \ext_co[8]_i_1 
       (.I0(reg0_written),
        .I1(\slv_reg0_reg[4]_0 [0]),
        .I2(p_0_in3_in),
        .I3(\load_addr_reg[14] [2]),
        .I4(\ext_co_reg[8] ),
        .O(reg0_written_reg_0));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \layer_idx[3]_i_1 
       (.I0(\layer_idx_reg[3] ),
        .I1(reg0_written),
        .I2(\slv_reg0_reg[4]_0 [0]),
        .I3(p_0_in3_in),
        .I4(\load_addr_reg[14] [2]),
        .O(reg0_written_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF808080)) 
    \load_addr[14]_i_1 
       (.I0(reg0_written),
        .I1(\slv_reg0_reg[4]_0 [0]),
        .I2(\load_addr_reg[14] [2]),
        .I3(npu_img_valid),
        .I4(\load_addr_reg[14] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h001D000000000000)) 
    reg0_written_i_1
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_aresetn),
        .I5(s00_axi_wvalid),
        .O(reg0_written_i_1_n_0));
  FDRE reg0_written_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg0_written_i_1_n_0),
        .Q(reg0_written),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E2000000000000)) 
    reg2_written_i_1
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_aresetn),
        .I5(s00_axi_wvalid),
        .O(reg2_written_i_1_n_0));
  FDRE reg2_written_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg2_written_i_1_n_0),
        .Q(npu_img_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(Q[0]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7] [0]),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'h5C5C54040C0C5404)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(s00_axi_rdata_0_sn_1),
        .I2(sel0[1]),
        .I3(\slv_reg2_reg[7]_0 [0]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7]_0 [0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg2[10]),
        .I1(sel0[1]),
        .I2(s00_axi_rdata_10_sn_1),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(\slv_reg0_reg_n_0_[10] ),
        .I5(sel0[2]),
        .O(s00_axi_rdata[10]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg2[11]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[11] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[11]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg2[12]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[12] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[12]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg2[13]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[13] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[13]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg2[14]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[14] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg2[15]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[15] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg2[16]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg2[17]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg2[18]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[18] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[18]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg2[19]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[19] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(Q[1]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7] [1]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\s00_axi_rdata[7]_0 [1]),
        .I1(\slv_reg2_reg[7]_0 [1]),
        .I2(sel0[1]),
        .I3(\load_addr_reg[14] [0]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(p_0_in3_in),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg2[20]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[20] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[20]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg2[21]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[21] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[21]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg2[22]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[22] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[22]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg2[23]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[23]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg2[24]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[24] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[24]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg2[25]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[25] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[25]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg2[26]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[26] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[26]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg2[27]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[27]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg2[28]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[28] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[28]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg2[29]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[29] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(Q[2]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7] [2]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'h5C5C54040C0C5404)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(s00_axi_rdata_2_sn_1),
        .I2(sel0[1]),
        .I3(\slv_reg2_reg[7]_0 [2]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7]_0 [2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg2[30]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[30] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[30]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg2[31]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[31] ),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(sel0[2]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(Q[3]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7] [3]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'h5C5C54040C0C5404)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(s00_axi_rdata_3_sn_1),
        .I2(sel0[1]),
        .I3(\slv_reg2_reg[7]_0 [3]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7]_0 [3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(Q[4]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7] [4]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'h5C5C54040C0C5404)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(s00_axi_rdata_4_sn_1),
        .I2(sel0[1]),
        .I3(\slv_reg2_reg[7]_0 [4]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7]_0 [4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(Q[5]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7] [5]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'h5510441011100010)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(\axi_araddr_reg[2]_0 ),
        .I2(\slv_reg0_reg_n_0_[5] ),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg[7]_0 [5]),
        .I5(\s00_axi_rdata[7]_0 [5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(Q[6]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7] [6]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\s00_axi_rdata[7]_0 [6]),
        .I1(\slv_reg2_reg[7]_0 [6]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[9] [0]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(Q[7]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\s00_axi_rdata[7] [7]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\s00_axi_rdata[7]_0 [7]),
        .I1(\slv_reg2_reg[7]_0 [7]),
        .I2(sel0[1]),
        .I3(\s00_axi_rdata[9] [1]),
        .I4(\axi_araddr_reg[2]_0 ),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg2[8]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[9] [2]),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(\slv_reg0_reg_n_0_[8] ),
        .I5(sel0[2]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg2[9]),
        .I1(sel0[1]),
        .I2(\s00_axi_rdata[9] [3]),
        .I3(\axi_araddr_reg[2]_0 ),
        .I4(\slv_reg0_reg_n_0_[9] ),
        .I5(sel0[2]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h001D000000000000)) 
    \slv_reg0[15]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[1]),
        .I5(s00_axi_wvalid),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h001D000000000000)) 
    \slv_reg0[23]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[2]),
        .I5(s00_axi_wvalid),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h001D000000000000)) 
    \slv_reg0[31]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[3]),
        .I5(s00_axi_wvalid),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hEFEFEFE0)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h001D000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[0]),
        .I5(s00_axi_wvalid),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg[4]_0 [0]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(p_0_in3_in),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg[4]_0 [1]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg[4]_0 [2]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg[4]_0 [3]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_rvalid_reg_1));
  LUT6 #(
    .INIT(64'h00E2000000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[1]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2000000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[2]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2000000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[3]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2000000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[0]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg[7]_0 [0]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg[7]_0 [1]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg[7]_0 [2]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg[7]_0 [3]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg[7]_0 [4]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg[7]_0 [5]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg[7]_0 [6]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg[7]_0 [7]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_rvalid_reg_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_rvalid_reg_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_npu_core
   (s00_axi_aresetn_0,
    need_patch_prev,
    need_patch,
    Q,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[8]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state_reg[0]_2 ,
    s_axis_tready_reg_0,
    E,
    \result_cho_reg[7]_0 ,
    \result_jung_reg[7]_0 ,
    \result_jong_reg[7]_0 ,
    s00_axi_aclk,
    patch_start0,
    s00_axi_aresetn,
    \s00_axi_rdata[4]_INST_0_i_1 ,
    \s00_axi_rdata[4]_INST_0_i_1_0 ,
    reg0_written,
    \FSM_onehot_state_reg[0]_3 ,
    s_axis_tvalid,
    npu_img_valid,
    D,
    \layer_idx_reg[3]_0 ,
    \load_addr_reg[14]_0 ,
    \ext_co_reg[8]_0 ,
    s_axis_tdata,
    \load_wr_data_reg_reg[7]_0 );
  output s00_axi_aresetn_0;
  output need_patch_prev;
  output need_patch;
  output [3:0]Q;
  output \FSM_onehot_state_reg[1]_0 ;
  output [2:0]\FSM_onehot_state_reg[8]_0 ;
  output \FSM_onehot_state_reg[1]_1 ;
  output \FSM_onehot_state_reg[0]_0 ;
  output \FSM_onehot_state_reg[0]_1 ;
  output \FSM_onehot_state_reg[0]_2 ;
  output s_axis_tready_reg_0;
  output [0:0]E;
  output [7:0]\result_cho_reg[7]_0 ;
  output [7:0]\result_jung_reg[7]_0 ;
  output [7:0]\result_jong_reg[7]_0 ;
  input s00_axi_aclk;
  input patch_start0;
  input s00_axi_aresetn;
  input [0:0]\s00_axi_rdata[4]_INST_0_i_1 ;
  input [3:0]\s00_axi_rdata[4]_INST_0_i_1_0 ;
  input reg0_written;
  input \FSM_onehot_state_reg[0]_3 ;
  input s_axis_tvalid;
  input npu_img_valid;
  input [0:0]D;
  input [0:0]\layer_idx_reg[3]_0 ;
  input [0:0]\load_addr_reg[14]_0 ;
  input [0:0]\ext_co_reg[8]_0 ;
  input [7:0]s_axis_tdata;
  input [7:0]\load_wr_data_reg_reg[7]_0 ;

  wire [14:3]A;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1__1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_10_n_0 ;
  wire \FSM_onehot_state[3]_i_11_n_0 ;
  wire \FSM_onehot_state[3]_i_1__0_n_0 ;
  wire \FSM_onehot_state[3]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_4__0_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_6_n_0 ;
  wire \FSM_onehot_state[3]_i_7_n_0 ;
  wire \FSM_onehot_state[3]_i_8_n_0 ;
  wire \FSM_onehot_state[3]_i_9_n_0 ;
  wire \FSM_onehot_state[4]_i_1__0_n_0 ;
  wire \FSM_onehot_state[5]_i_1__0_n_0 ;
  wire \FSM_onehot_state[8]_i_10_n_0 ;
  wire \FSM_onehot_state[8]_i_11_n_0 ;
  wire \FSM_onehot_state[8]_i_12_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_7_n_0 ;
  wire \FSM_onehot_state[8]_i_8_n_0 ;
  wire \FSM_onehot_state[8]_i_9_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[0]_2 ;
  wire \FSM_onehot_state_reg[0]_3 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[3]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[3]_i_3_n_1 ;
  wire \FSM_onehot_state_reg[3]_i_3_n_2 ;
  wire \FSM_onehot_state_reg[3]_i_3_n_3 ;
  wire [2:0]\FSM_onehot_state_reg[8]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [3:0]Q;
  wire [16:15]acc;
  wire [16:4]acc1;
  wire [15:8]acc1_0;
  wire [7:0]argmax_result_idx;
  wire argmax_start;
  wire argmax_start_reg_n_0;
  wire [7:0]conv_out_pixel;
  wire conv_start;
  wire conv_start_reg_n_0;
  wire [1:0]conv_target_col;
  wire [1:0]conv_target_row;
  wire [11:0]conv_weight_offset;
  wire [8:0]cur_c_in;
  wire [9:9]cur_c_in__0;
  wire [8:0]cur_c_out;
  wire cur_fmap_rd_base;
  wire [6:2]cur_in_h;
  wire [10:0]cur_pool_size;
  wire \cur_pool_size[10]_i_1_n_0 ;
  wire \cur_pool_size[10]_i_2_n_0 ;
  wire \cur_pool_size[4]_i_1_n_0 ;
  wire \cur_pool_size[6]_i_1_n_0 ;
  wire \cur_pool_size[8]_i_1_n_0 ;
  wire cur_relu_en;
  wire cur_type;
  wire \cur_type_reg_n_0_[0] ;
  wire \cur_type_reg_n_0_[1] ;
  wire ddr_bias_latched;
  wire \ddr_bias_latched_reg_n_0_[0] ;
  wire \ddr_bias_latched_reg_n_0_[1] ;
  wire \ddr_bias_latched_reg_n_0_[2] ;
  wire \ddr_bias_latched_reg_n_0_[3] ;
  wire \ddr_bias_latched_reg_n_0_[4] ;
  wire \ddr_bias_latched_reg_n_0_[5] ;
  wire \ddr_bias_latched_reg_n_0_[6] ;
  wire \ddr_bias_latched_reg_n_0_[7] ;
  wire [8:0]ext_co;
  wire \ext_co[0]_i_1_n_0 ;
  wire \ext_co[1]_i_1_n_0 ;
  wire \ext_co[2]_i_1_n_0 ;
  wire \ext_co[3]_i_1_n_0 ;
  wire \ext_co[4]_i_1_n_0 ;
  wire \ext_co[5]_i_1_n_0 ;
  wire \ext_co[6]_i_1_n_0 ;
  wire \ext_co[7]_i_1_n_0 ;
  wire \ext_co[7]_i_2_n_0 ;
  wire \ext_co[8]_i_2_n_0 ;
  wire \ext_co[8]_i_3_n_0 ;
  wire [0:0]\ext_co_reg[8]_0 ;
  wire fc_done;
  wire [11:0]fc_fmap_rd_addr;
  wire [7:0]fc_out_pixel;
  wire fc_start;
  wire fc_start_reg_n_0;
  wire [14:0]fmap_a_rd_addr_mux;
  wire [7:0]fmap_a_rd_data;
  wire [14:0]fmap_a_wr_addr;
  wire [7:0]fmap_a_wr_data;
  wire [14:0]fmap_b_rd_addr_mux;
  wire [7:0]fmap_b_rd_data;
  wire [14:0]fmap_b_wr_addr;
  wire [7:0]fmap_b_wr_data;
  wire [7:0]fmap_t_rd_data;
  wire [11:0]fmap_t_wr_addr;
  wire [14:1]in25;
  wire [14:0]in26;
  wire [11:1]in34;
  wire [1:0]ky__0;
  wire [3:0]layer_idx;
  wire [0:0]\layer_idx_reg[3]_0 ;
  wire [14:0]load_addr;
  wire \load_addr[0]_i_1_n_0 ;
  wire \load_addr[10]_i_1_n_0 ;
  wire \load_addr[11]_i_1_n_0 ;
  wire \load_addr[12]_i_1_n_0 ;
  wire \load_addr[13]_i_1_n_0 ;
  wire \load_addr[14]_i_2_n_0 ;
  wire \load_addr[1]_i_1_n_0 ;
  wire \load_addr[2]_i_1_n_0 ;
  wire \load_addr[3]_i_1_n_0 ;
  wire \load_addr[4]_i_1_n_0 ;
  wire \load_addr[5]_i_1_n_0 ;
  wire \load_addr[6]_i_1_n_0 ;
  wire \load_addr[7]_i_1_n_0 ;
  wire \load_addr[8]_i_1_n_0 ;
  wire \load_addr[9]_i_1_n_0 ;
  wire \load_addr_reg[12]_i_2_n_0 ;
  wire \load_addr_reg[12]_i_2_n_1 ;
  wire \load_addr_reg[12]_i_2_n_2 ;
  wire \load_addr_reg[12]_i_2_n_3 ;
  wire [0:0]\load_addr_reg[14]_0 ;
  wire \load_addr_reg[14]_i_3_n_3 ;
  wire \load_addr_reg[4]_i_2_n_0 ;
  wire \load_addr_reg[4]_i_2_n_1 ;
  wire \load_addr_reg[4]_i_2_n_2 ;
  wire \load_addr_reg[4]_i_2_n_3 ;
  wire \load_addr_reg[8]_i_2_n_0 ;
  wire \load_addr_reg[8]_i_2_n_1 ;
  wire \load_addr_reg[8]_i_2_n_2 ;
  wire \load_addr_reg[8]_i_2_n_3 ;
  wire load_we_reg;
  wire load_we_reg_reg_n_0;
  wire \load_wr_addr_reg_reg_n_0_[0] ;
  wire \load_wr_addr_reg_reg_n_0_[10] ;
  wire \load_wr_addr_reg_reg_n_0_[11] ;
  wire \load_wr_addr_reg_reg_n_0_[12] ;
  wire \load_wr_addr_reg_reg_n_0_[13] ;
  wire \load_wr_addr_reg_reg_n_0_[14] ;
  wire \load_wr_addr_reg_reg_n_0_[1] ;
  wire \load_wr_addr_reg_reg_n_0_[2] ;
  wire \load_wr_addr_reg_reg_n_0_[3] ;
  wire \load_wr_addr_reg_reg_n_0_[4] ;
  wire \load_wr_addr_reg_reg_n_0_[5] ;
  wire \load_wr_addr_reg_reg_n_0_[6] ;
  wire \load_wr_addr_reg_reg_n_0_[7] ;
  wire \load_wr_addr_reg_reg_n_0_[8] ;
  wire \load_wr_addr_reg_reg_n_0_[9] ;
  wire [7:0]load_wr_data_reg;
  wire [7:0]\load_wr_data_reg_reg[7]_0 ;
  wire [9:0]lut_c_in;
  wire [8:0]lut_c_out;
  wire [6:2]lut_in_w;
  wire lut_patch_src;
  wire lut_pool_dst;
  wire lut_relu_en;
  wire [1:0]lut_type;
  wire need_patch;
  wire need_patch_prev;
  wire npu_img_valid;
  wire [14:0]p_0_in;
  wire p_0_in2_in;
  wire [7:0]patch_bram_data;
  wire [14:0]patch_ch_offset_wide__0;
  wire patch_ch_offset_wide_i_12_n_0;
  wire patch_ch_offset_wide_i_13_n_0;
  wire patch_ch_offset_wide_i_14_n_0;
  wire patch_ch_offset_wide_i_15_n_0;
  wire patch_ch_offset_wide_i_1_n_1;
  wire patch_ch_offset_wide_i_1_n_2;
  wire patch_ch_offset_wide_i_1_n_3;
  wire patch_ch_offset_wide_i_21_n_0;
  wire patch_ch_offset_wide_i_21_n_1;
  wire patch_ch_offset_wide_i_21_n_2;
  wire patch_ch_offset_wide_i_21_n_3;
  wire patch_ch_offset_wide_i_21_n_4;
  wire patch_ch_offset_wide_i_21_n_5;
  wire patch_ch_offset_wide_i_21_n_6;
  wire patch_ch_offset_wide_i_21_n_7;
  wire patch_ch_offset_wide_i_26_n_1;
  wire patch_ch_offset_wide_i_26_n_3;
  wire patch_ch_offset_wide_i_26_n_6;
  wire patch_ch_offset_wide_i_26_n_7;
  wire patch_ch_offset_wide_i_27_n_0;
  wire patch_ch_offset_wide_i_27_n_1;
  wire patch_ch_offset_wide_i_27_n_2;
  wire patch_ch_offset_wide_i_27_n_3;
  wire patch_ch_offset_wide_i_27_n_4;
  wire patch_ch_offset_wide_i_27_n_5;
  wire patch_ch_offset_wide_i_27_n_6;
  wire patch_ch_offset_wide_i_27_n_7;
  wire patch_ch_offset_wide_i_28_n_0;
  wire patch_ch_offset_wide_i_29_n_0;
  wire patch_ch_offset_wide_i_2_n_0;
  wire patch_ch_offset_wide_i_2_n_1;
  wire patch_ch_offset_wide_i_2_n_2;
  wire patch_ch_offset_wide_i_2_n_3;
  wire patch_ch_offset_wide_i_30_n_0;
  wire patch_ch_offset_wide_i_31_n_0;
  wire patch_ch_offset_wide_i_32_n_0;
  wire patch_ch_offset_wide_i_37_n_0;
  wire patch_ch_offset_wide_i_38_n_0;
  wire patch_ch_offset_wide_i_3_n_0;
  wire patch_ch_offset_wide_i_3_n_1;
  wire patch_ch_offset_wide_i_3_n_2;
  wire patch_ch_offset_wide_i_3_n_3;
  wire patch_ch_offset_wide_i_40_n_0;
  wire patch_ch_offset_wide_i_41_n_0;
  wire patch_ch_offset_wide_i_42_n_0;
  wire patch_ch_offset_wide_i_43_n_0;
  wire patch_ch_offset_wide_i_44_n_0;
  wire patch_ch_offset_wide_i_49_n_0;
  wire patch_ch_offset_wide_i_50_n_0;
  wire patch_ch_offset_wide_i_51_n_0;
  wire patch_ch_offset_wide_i_52_n_0;
  wire patch_ch_offset_wide_i_53_n_0;
  wire patch_ch_offset_wide_i_5_n_0;
  wire patch_ch_offset_wide_i_6_n_0;
  wire patch_ch_offset_wide_i_7_n_0;
  wire patch_ch_offset_wide_n_84;
  wire patch_ch_offset_wide_n_85;
  wire patch_ch_offset_wide_n_86;
  wire patch_ch_offset_wide_n_87;
  wire patch_ch_offset_wide_n_88;
  wire patch_ch_offset_wide_n_89;
  wire patch_ch_offset_wide_n_90;
  wire [7:0]\patch_out[0][0]_0 ;
  wire [7:0]\patch_out[0][1]_1 ;
  wire [7:0]\patch_out[0][2]_2 ;
  wire [7:0]\patch_out[1][0]_3 ;
  wire [7:0]\patch_out[1][1]_4 ;
  wire [7:0]\patch_out[1][2]_5 ;
  wire [7:0]\patch_out[2][0]_6 ;
  wire [7:0]\patch_out[2][1]_7 ;
  wire [7:0]\patch_out[2][2]_8 ;
  wire [8:0]patch_rd_addr;
  wire [7:0]patch_reg__0;
  wire patch_src;
  wire patch_start;
  wire patch_start0;
  wire patch_valid;
  wire pool_dst;
  wire [11:0]pool_rd_addr;
  wire pool_start;
  wire pool_start_reg_n_0;
  wire [7:0]pool_wr_data;
  wire pool_wr_en;
  wire [14:0]pool_wr_offset;
  wire \pool_wr_offset[0]_i_1_n_0 ;
  wire \pool_wr_offset[10]_i_1_n_0 ;
  wire \pool_wr_offset[11]_i_1_n_0 ;
  wire \pool_wr_offset[11]_i_3_n_0 ;
  wire \pool_wr_offset[11]_i_4_n_0 ;
  wire \pool_wr_offset[12]_i_1_n_0 ;
  wire \pool_wr_offset[13]_i_1_n_0 ;
  wire \pool_wr_offset[14]_i_2_n_0 ;
  wire \pool_wr_offset[1]_i_1_n_0 ;
  wire \pool_wr_offset[2]_i_1_n_0 ;
  wire \pool_wr_offset[3]_i_1_n_0 ;
  wire \pool_wr_offset[3]_i_3_n_0 ;
  wire \pool_wr_offset[3]_i_4_n_0 ;
  wire \pool_wr_offset[4]_i_1_n_0 ;
  wire \pool_wr_offset[5]_i_1_n_0 ;
  wire \pool_wr_offset[6]_i_1_n_0 ;
  wire \pool_wr_offset[7]_i_1_n_0 ;
  wire \pool_wr_offset[7]_i_3_n_0 ;
  wire \pool_wr_offset[7]_i_4_n_0 ;
  wire \pool_wr_offset[8]_i_1_n_0 ;
  wire \pool_wr_offset[9]_i_1_n_0 ;
  wire \pool_wr_offset_reg[11]_i_2_n_0 ;
  wire \pool_wr_offset_reg[11]_i_2_n_1 ;
  wire \pool_wr_offset_reg[11]_i_2_n_2 ;
  wire \pool_wr_offset_reg[11]_i_2_n_3 ;
  wire \pool_wr_offset_reg[14]_i_3_n_2 ;
  wire \pool_wr_offset_reg[14]_i_3_n_3 ;
  wire \pool_wr_offset_reg[3]_i_2_n_0 ;
  wire \pool_wr_offset_reg[3]_i_2_n_1 ;
  wire \pool_wr_offset_reg[3]_i_2_n_2 ;
  wire \pool_wr_offset_reg[3]_i_2_n_3 ;
  wire \pool_wr_offset_reg[7]_i_2_n_0 ;
  wire \pool_wr_offset_reg[7]_i_2_n_1 ;
  wire \pool_wr_offset_reg[7]_i_2_n_2 ;
  wire \pool_wr_offset_reg[7]_i_2_n_3 ;
  wire reg0_written;
  wire \result_cho[7]_i_2_n_0 ;
  wire [7:0]\result_cho_reg[7]_0 ;
  wire [7:0]\result_jong_reg[7]_0 ;
  wire [7:0]\result_jung_reg[7]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [0:0]\s00_axi_rdata[4]_INST_0_i_1 ;
  wire [3:0]\s00_axi_rdata[4]_INST_0_i_1_0 ;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tready_i_3_n_0;
  wire s_axis_tready_reg_0;
  wire s_axis_tvalid;
  wire state1;
  wire u_argmax_n_0;
  wire u_argmax_n_19;
  wire u_argmax_n_20;
  wire u_argmax_n_21;
  wire u_argmax_n_22;
  wire u_argmax_n_23;
  wire u_argmax_n_24;
  wire u_argmax_n_25;
  wire u_argmax_n_26;
  wire u_argmax_n_27;
  wire u_argmax_n_28;
  wire u_argmax_n_29;
  wire u_conv_n_10;
  wire u_conv_n_100;
  wire u_conv_n_101;
  wire u_conv_n_11;
  wire u_conv_n_12;
  wire u_conv_n_13;
  wire u_conv_n_14;
  wire u_conv_n_15;
  wire u_conv_n_16;
  wire u_conv_n_17;
  wire u_conv_n_18;
  wire u_conv_n_19;
  wire u_conv_n_20;
  wire u_conv_n_21;
  wire u_conv_n_22;
  wire u_conv_n_23;
  wire u_conv_n_24;
  wire u_conv_n_25;
  wire u_conv_n_26;
  wire u_conv_n_27;
  wire u_conv_n_28;
  wire u_conv_n_29;
  wire u_conv_n_30;
  wire u_conv_n_31;
  wire u_conv_n_32;
  wire u_conv_n_33;
  wire u_conv_n_34;
  wire u_conv_n_35;
  wire u_conv_n_38;
  wire u_conv_n_39;
  wire u_conv_n_5;
  wire u_conv_n_6;
  wire u_conv_n_68;
  wire u_conv_n_69;
  wire u_conv_n_7;
  wire u_conv_n_78;
  wire u_conv_n_79;
  wire u_conv_n_8;
  wire u_conv_n_80;
  wire u_conv_n_81;
  wire u_conv_n_82;
  wire u_conv_n_83;
  wire u_conv_n_84;
  wire u_conv_n_85;
  wire u_conv_n_86;
  wire u_conv_n_87;
  wire u_conv_n_88;
  wire u_conv_n_89;
  wire u_conv_n_9;
  wire u_conv_n_90;
  wire u_conv_n_91;
  wire u_conv_n_92;
  wire u_conv_n_93;
  wire u_conv_n_94;
  wire u_conv_n_95;
  wire u_conv_n_96;
  wire u_conv_n_97;
  wire u_conv_n_98;
  wire u_conv_n_99;
  wire u_fc_n_1;
  wire u_fc_n_2;
  wire u_fc_n_24;
  wire u_fc_n_3;
  wire u_fc_n_33;
  wire u_fc_n_34;
  wire u_fc_n_35;
  wire u_fc_n_36;
  wire u_fc_n_37;
  wire u_fc_n_38;
  wire u_fc_n_39;
  wire u_fc_n_40;
  wire u_fc_n_41;
  wire u_fc_n_42;
  wire u_fc_n_43;
  wire u_fc_n_44;
  wire u_fc_n_45;
  wire u_fc_n_46;
  wire u_fc_n_47;
  wire u_fc_n_48;
  wire u_fc_n_49;
  wire u_fc_n_50;
  wire u_fc_n_51;
  wire u_fc_n_52;
  wire u_fc_n_53;
  wire u_fc_n_54;
  wire u_fc_n_55;
  wire u_fc_n_56;
  wire u_fc_n_57;
  wire u_fc_n_58;
  wire u_fmap_a_n_0;
  wire u_fmap_a_n_1;
  wire u_fmap_a_n_2;
  wire u_fmap_b_n_0;
  wire u_fmap_b_n_1;
  wire u_fmap_b_n_19;
  wire u_fmap_b_n_2;
  wire u_patch_n_23;
  wire u_patch_n_24;
  wire u_patch_n_27;
  wire u_patch_n_28;
  wire u_patch_n_29;
  wire u_patch_n_30;
  wire u_patch_n_31;
  wire u_patch_n_32;
  wire u_patch_n_33;
  wire u_pool_n_32;
  wire u_pool_n_48;
  wire u_pool_n_49;
  wire u_pool_n_50;
  wire u_pool_n_51;
  wire u_pool_n_52;
  wire u_pool_n_53;
  wire u_pool_n_54;
  wire u_pool_n_55;
  wire u_pool_n_56;
  wire u_wbuf_n_10;
  wire u_wbuf_n_19;
  wire u_wbuf_n_20;
  wire u_wbuf_n_34;
  wire u_wbuf_n_35;
  wire u_wbuf_n_36;
  wire u_wbuf_n_37;
  wire u_wbuf_n_38;
  wire u_wbuf_n_39;
  wire u_wbuf_n_40;
  wire u_wbuf_n_41;
  wire u_wbuf_n_42;
  wire u_wbuf_n_43;
  wire u_wbuf_n_44;
  wire u_wbuf_n_45;
  wire u_wbuf_n_46;
  wire u_wbuf_n_47;
  wire u_wbuf_n_48;
  wire u_wbuf_n_49;
  wire u_wbuf_n_50;
  wire u_wbuf_n_51;
  wire u_wbuf_n_52;
  wire u_wbuf_n_53;
  wire u_wbuf_n_54;
  wire u_wbuf_n_55;
  wire u_wbuf_n_56;
  wire u_wbuf_n_8;
  wire u_wbuf_n_9;
  wire [11:0]wbuf_rd_addr_mux;
  wire [7:0]wbuf_rd_data;
  wire wbuf_we;
  wire wbuf_we_reg_n_0;
  wire \wbuf_wr_addr_reg_n_0_[0] ;
  wire \wbuf_wr_addr_reg_n_0_[10] ;
  wire \wbuf_wr_addr_reg_n_0_[11] ;
  wire \wbuf_wr_addr_reg_n_0_[1] ;
  wire \wbuf_wr_addr_reg_n_0_[2] ;
  wire \wbuf_wr_addr_reg_n_0_[3] ;
  wire \wbuf_wr_addr_reg_n_0_[4] ;
  wire \wbuf_wr_addr_reg_n_0_[5] ;
  wire \wbuf_wr_addr_reg_n_0_[6] ;
  wire \wbuf_wr_addr_reg_n_0_[7] ;
  wire \wbuf_wr_addr_reg_n_0_[8] ;
  wire \wbuf_wr_addr_reg_n_0_[9] ;
  wire [11:0]wbuf_wr_cnt;
  wire \wbuf_wr_cnt[0]_i_1_n_0 ;
  wire \wbuf_wr_cnt[10]_i_1_n_0 ;
  wire \wbuf_wr_cnt[11]_i_10_n_0 ;
  wire \wbuf_wr_cnt[11]_i_11_n_0 ;
  wire \wbuf_wr_cnt[11]_i_12_n_0 ;
  wire \wbuf_wr_cnt[11]_i_13_n_0 ;
  wire \wbuf_wr_cnt[11]_i_14_n_0 ;
  wire \wbuf_wr_cnt[11]_i_15_n_0 ;
  wire \wbuf_wr_cnt[11]_i_16_n_0 ;
  wire \wbuf_wr_cnt[11]_i_17_n_0 ;
  wire \wbuf_wr_cnt[11]_i_19_n_0 ;
  wire \wbuf_wr_cnt[11]_i_1_n_0 ;
  wire \wbuf_wr_cnt[11]_i_20_n_0 ;
  wire \wbuf_wr_cnt[11]_i_22_n_0 ;
  wire \wbuf_wr_cnt[11]_i_23_n_0 ;
  wire \wbuf_wr_cnt[11]_i_24_n_0 ;
  wire \wbuf_wr_cnt[11]_i_26_n_0 ;
  wire \wbuf_wr_cnt[11]_i_27_n_0 ;
  wire \wbuf_wr_cnt[11]_i_28_n_0 ;
  wire \wbuf_wr_cnt[11]_i_29_n_0 ;
  wire \wbuf_wr_cnt[11]_i_2_n_0 ;
  wire \wbuf_wr_cnt[11]_i_30_n_0 ;
  wire \wbuf_wr_cnt[11]_i_31_n_0 ;
  wire \wbuf_wr_cnt[11]_i_32_n_0 ;
  wire \wbuf_wr_cnt[11]_i_33_n_0 ;
  wire \wbuf_wr_cnt[11]_i_34_n_0 ;
  wire \wbuf_wr_cnt[11]_i_35_n_0 ;
  wire \wbuf_wr_cnt[11]_i_36_n_0 ;
  wire \wbuf_wr_cnt[11]_i_6_n_0 ;
  wire \wbuf_wr_cnt[11]_i_7_n_0 ;
  wire \wbuf_wr_cnt[11]_i_8_n_0 ;
  wire \wbuf_wr_cnt[11]_i_9_n_0 ;
  wire \wbuf_wr_cnt[1]_i_1_n_0 ;
  wire \wbuf_wr_cnt[2]_i_1_n_0 ;
  wire \wbuf_wr_cnt[3]_i_1_n_0 ;
  wire \wbuf_wr_cnt[4]_i_1_n_0 ;
  wire \wbuf_wr_cnt[5]_i_1_n_0 ;
  wire \wbuf_wr_cnt[6]_i_1_n_0 ;
  wire \wbuf_wr_cnt[7]_i_1_n_0 ;
  wire \wbuf_wr_cnt[8]_i_1_n_0 ;
  wire \wbuf_wr_cnt[9]_i_1_n_0 ;
  wire \wbuf_wr_cnt_reg[11]_i_18_n_3 ;
  wire \wbuf_wr_cnt_reg[11]_i_21_n_0 ;
  wire \wbuf_wr_cnt_reg[11]_i_21_n_1 ;
  wire \wbuf_wr_cnt_reg[11]_i_21_n_2 ;
  wire \wbuf_wr_cnt_reg[11]_i_21_n_3 ;
  wire \wbuf_wr_cnt_reg[11]_i_25_n_0 ;
  wire \wbuf_wr_cnt_reg[11]_i_25_n_1 ;
  wire \wbuf_wr_cnt_reg[11]_i_25_n_2 ;
  wire \wbuf_wr_cnt_reg[11]_i_25_n_3 ;
  wire \wbuf_wr_cnt_reg[11]_i_3_n_3 ;
  wire \wbuf_wr_cnt_reg[11]_i_4_n_2 ;
  wire \wbuf_wr_cnt_reg[11]_i_4_n_3 ;
  wire \wbuf_wr_cnt_reg[11]_i_5_n_0 ;
  wire \wbuf_wr_cnt_reg[11]_i_5_n_1 ;
  wire \wbuf_wr_cnt_reg[11]_i_5_n_2 ;
  wire \wbuf_wr_cnt_reg[11]_i_5_n_3 ;
  wire \wbuf_wr_cnt_reg[4]_i_2_n_0 ;
  wire \wbuf_wr_cnt_reg[4]_i_2_n_1 ;
  wire \wbuf_wr_cnt_reg[4]_i_2_n_2 ;
  wire \wbuf_wr_cnt_reg[4]_i_2_n_3 ;
  wire \wbuf_wr_cnt_reg[8]_i_2_n_0 ;
  wire \wbuf_wr_cnt_reg[8]_i_2_n_1 ;
  wire \wbuf_wr_cnt_reg[8]_i_2_n_2 ;
  wire \wbuf_wr_cnt_reg[8]_i_2_n_3 ;
  wire [7:0]wbuf_wr_data;
  wire [11:2]weight_count0;
  wire [3:0]\NLW_FSM_onehot_state_reg[3]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_load_addr_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_load_addr_reg[14]_i_3_O_UNCONNECTED ;
  wire NLW_patch_ch_offset_wide_CARRYCASCOUT_UNCONNECTED;
  wire NLW_patch_ch_offset_wide_MULTSIGNOUT_UNCONNECTED;
  wire NLW_patch_ch_offset_wide_OVERFLOW_UNCONNECTED;
  wire NLW_patch_ch_offset_wide_PATTERNBDETECT_UNCONNECTED;
  wire NLW_patch_ch_offset_wide_PATTERNDETECT_UNCONNECTED;
  wire NLW_patch_ch_offset_wide_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_patch_ch_offset_wide_ACOUT_UNCONNECTED;
  wire [17:0]NLW_patch_ch_offset_wide_BCOUT_UNCONNECTED;
  wire [3:0]NLW_patch_ch_offset_wide_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_patch_ch_offset_wide_P_UNCONNECTED;
  wire [47:0]NLW_patch_ch_offset_wide_PCOUT_UNCONNECTED;
  wire [3:3]NLW_patch_ch_offset_wide_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_patch_ch_offset_wide_i_26_CO_UNCONNECTED;
  wire [3:2]NLW_patch_ch_offset_wide_i_26_O_UNCONNECTED;
  wire [3:2]\NLW_pool_wr_offset_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_pool_wr_offset_reg[14]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_wbuf_wr_cnt_reg[11]_i_18_CO_UNCONNECTED ;
  wire [3:2]\NLW_wbuf_wr_cnt_reg[11]_i_18_O_UNCONNECTED ;
  wire [3:2]\NLW_wbuf_wr_cnt_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_wbuf_wr_cnt_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_wbuf_wr_cnt_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_wbuf_wr_cnt_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_wbuf_wr_cnt_reg[11]_i_5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(\cur_type_reg_n_0_[0] ),
        .I1(\cur_type_reg_n_0_[1] ),
        .I2(p_0_in2_in),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[3]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\FSM_onehot_state[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAEEE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [0]),
        .I1(\FSM_onehot_state_reg[8]_0 [2]),
        .I2(\s00_axi_rdata[4]_INST_0_i_1_0 [0]),
        .I3(reg0_written),
        .I4(\FSM_onehot_state_reg[0]_2 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888880888888888)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[3]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\FSM_onehot_state_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \FSM_onehot_state[3]_i_10 
       (.I0(ext_co[6]),
        .I1(ext_co[5]),
        .I2(\ext_co[7]_i_2_n_0 ),
        .I3(ext_co[4]),
        .I4(ext_co[7]),
        .I5(ext_co[8]),
        .O(\FSM_onehot_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h69999999)) 
    \FSM_onehot_state[3]_i_11 
       (.I0(cur_c_out[3]),
        .I1(ext_co[3]),
        .I2(ext_co[1]),
        .I3(ext_co[0]),
        .I4(ext_co[2]),
        .O(\FSM_onehot_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .I1(cur_type),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg[3]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg[8]_0 [0]),
        .O(\FSM_onehot_state[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hEFCF)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\FSM_onehot_state[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_onehot_state[3]_i_4__0 
       (.I0(ext_co[6]),
        .I1(ext_co[5]),
        .I2(\ext_co[7]_i_2_n_0 ),
        .I3(ext_co[4]),
        .I4(ext_co[7]),
        .I5(ext_co[8]),
        .O(\FSM_onehot_state[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(\FSM_onehot_state[3]_i_8_n_0 ),
        .I1(cur_c_out[6]),
        .I2(\FSM_onehot_state[3]_i_9_n_0 ),
        .I3(cur_c_out[7]),
        .I4(cur_c_out[8]),
        .I5(\FSM_onehot_state[3]_i_10_n_0 ),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8040048008044008)) 
    \FSM_onehot_state[3]_i_6 
       (.I0(cur_c_out[4]),
        .I1(\FSM_onehot_state[3]_i_11_n_0 ),
        .I2(cur_c_out[5]),
        .I3(ext_co[4]),
        .I4(\ext_co[7]_i_2_n_0 ),
        .I5(ext_co[5]),
        .O(\FSM_onehot_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0180402010080402)) 
    \FSM_onehot_state[3]_i_7 
       (.I0(cur_c_out[0]),
        .I1(cur_c_out[1]),
        .I2(cur_c_out[2]),
        .I3(ext_co[0]),
        .I4(ext_co[1]),
        .I5(ext_co[2]),
        .O(\FSM_onehot_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \FSM_onehot_state[3]_i_8 
       (.I0(ext_co[5]),
        .I1(\ext_co[7]_i_2_n_0 ),
        .I2(ext_co[4]),
        .I3(ext_co[6]),
        .O(\FSM_onehot_state[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h59555555)) 
    \FSM_onehot_state[3]_i_9 
       (.I0(ext_co[7]),
        .I1(ext_co[4]),
        .I2(\ext_co[7]_i_2_n_0 ),
        .I3(ext_co[5]),
        .I4(ext_co[6]),
        .O(\FSM_onehot_state[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[4]_i_1__0 
       (.I0(p_0_in2_in),
        .I1(\cur_type_reg_n_0_[1] ),
        .I2(\cur_type_reg_n_0_[0] ),
        .O(\FSM_onehot_state[4]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[5]_i_1__0 
       (.I0(\FSM_onehot_state_reg[8]_0 [0]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(argmax_start),
        .O(\FSM_onehot_state[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \FSM_onehot_state[8]_i_10 
       (.I0(load_addr[10]),
        .I1(load_addr[11]),
        .I2(load_addr[13]),
        .I3(load_addr[14]),
        .I4(\FSM_onehot_state_reg[8]_0 [1]),
        .I5(npu_img_valid),
        .O(\FSM_onehot_state[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hD5D500D500D500D5)) 
    \FSM_onehot_state[8]_i_11 
       (.I0(load_addr[8]),
        .I1(load_addr[6]),
        .I2(load_addr[7]),
        .I3(load_addr[5]),
        .I4(load_addr[3]),
        .I5(load_addr[4]),
        .O(\FSM_onehot_state[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2323002300230023)) 
    \FSM_onehot_state[8]_i_12 
       (.I0(load_addr[13]),
        .I1(load_addr[14]),
        .I2(load_addr[12]),
        .I3(load_addr[11]),
        .I4(load_addr[9]),
        .I5(load_addr[10]),
        .O(\FSM_onehot_state[8]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(p_0_in2_in),
        .I1(\cur_type_reg_n_0_[1] ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[8]_i_7 
       (.I0(\FSM_onehot_state[8]_i_8_n_0 ),
        .I1(\FSM_onehot_state[8]_i_9_n_0 ),
        .I2(\FSM_onehot_state[8]_i_10_n_0 ),
        .I3(\FSM_onehot_state[8]_i_11_n_0 ),
        .I4(\FSM_onehot_state[8]_i_12_n_0 ),
        .O(\FSM_onehot_state[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[8]_i_8 
       (.I0(load_addr[2]),
        .I1(load_addr[1]),
        .I2(load_addr[0]),
        .O(\FSM_onehot_state[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[8]_i_9 
       (.I0(load_addr[8]),
        .I1(load_addr[7]),
        .I2(load_addr[5]),
        .I3(load_addr[4]),
        .O(\FSM_onehot_state[8]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state[1]_i_1__1_n_0 ),
        .Q(\FSM_onehot_state_reg[8]_0 [0]));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(cur_type));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state[3]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  CARRY4 \FSM_onehot_state_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[3]_i_3_n_0 ,\FSM_onehot_state_reg[3]_i_3_n_1 ,\FSM_onehot_state_reg[3]_i_3_n_2 ,\FSM_onehot_state_reg[3]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[3]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[3]_i_4__0_n_0 ,\FSM_onehot_state[3]_i_5_n_0 ,\FSM_onehot_state[3]_i_6_n_0 ,\FSM_onehot_state[3]_i_7_n_0 }));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state[4]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state[5]_i_1__0_n_0 ),
        .Q(p_0_in2_in));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .CLR(s00_axi_aresetn_0),
        .D(D),
        .Q(\FSM_onehot_state_reg[8]_0 [1]));
  (* FSM_ENCODED_STATES = "S_COMPUTE:000100000,S_DDR_LOAD:000001000,S_LAYER_SETUP:000000100,S_LOAD_IMG:010000000,S_IDLE:100000000,S_DONE:000000010,S_NEXT_CH:000000001,S_DDR_DONE:001000000,S_POOL:000010000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[8] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_0),
        .D(\FSM_onehot_state_reg[8]_0 [1]),
        .PRE(s00_axi_aresetn_0),
        .Q(\FSM_onehot_state_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h002000A0)) 
    argmax_start_i_1
       (.I0(cur_type),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(argmax_start));
  FDCE argmax_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_start),
        .Q(argmax_start_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h02)) 
    conv_start_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\cur_type_reg_n_0_[1] ),
        .I2(\cur_type_reg_n_0_[0] ),
        .O(conv_start));
  FDCE conv_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(conv_start),
        .Q(conv_start_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h0023)) 
    \cur_c_in[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(lut_c_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \cur_c_in[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(lut_c_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \cur_c_in[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(lut_c_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \cur_c_in[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(lut_c_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    \cur_c_in[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(lut_c_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \cur_c_in[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(lut_c_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \cur_c_in[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(lut_c_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h0C10)) 
    \cur_c_in[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(lut_c_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h04A0)) 
    \cur_c_in[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(lut_c_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cur_c_in[9]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(lut_c_in[9]));
  FDCE \cur_c_in_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[0]),
        .Q(cur_c_in[0]));
  FDCE \cur_c_in_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[1]),
        .Q(cur_c_in[1]));
  FDCE \cur_c_in_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[2]),
        .Q(cur_c_in[2]));
  FDCE \cur_c_in_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[3]),
        .Q(cur_c_in[3]));
  FDCE \cur_c_in_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[4]),
        .Q(cur_c_in[4]));
  FDCE \cur_c_in_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[5]),
        .Q(cur_c_in[5]));
  FDCE \cur_c_in_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[6]),
        .Q(cur_c_in[6]));
  FDCE \cur_c_in_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[7]),
        .Q(cur_c_in[7]));
  FDCE \cur_c_in_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[8]),
        .Q(cur_c_in[8]));
  FDCE \cur_c_in_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_c_in[9]),
        .Q(cur_c_in__0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h1780)) 
    \cur_c_out[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(lut_c_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \cur_c_out[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(lut_c_out[1]));
  LUT3 #(
    .INIT(8'h20)) 
    \cur_c_out[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(lut_c_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \cur_c_out[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(lut_c_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h08A0)) 
    \cur_c_out[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(lut_c_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \cur_c_out[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(lut_c_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \cur_c_out[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(lut_c_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h003A)) 
    \cur_c_out[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(lut_c_out[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \cur_c_out[8]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(cur_type),
        .O(cur_fmap_rd_base));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \cur_c_out[8]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(lut_c_out[8]));
  FDRE \cur_c_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[0]),
        .Q(cur_c_out[0]),
        .R(1'b0));
  FDRE \cur_c_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[1]),
        .Q(cur_c_out[1]),
        .R(1'b0));
  FDRE \cur_c_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[2]),
        .Q(cur_c_out[2]),
        .R(1'b0));
  FDRE \cur_c_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[3]),
        .Q(cur_c_out[3]),
        .R(1'b0));
  FDRE \cur_c_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[4]),
        .Q(cur_c_out[4]),
        .R(1'b0));
  FDRE \cur_c_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[5]),
        .Q(cur_c_out[5]),
        .R(1'b0));
  FDRE \cur_c_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[6]),
        .Q(cur_c_out[6]),
        .R(1'b0));
  FDRE \cur_c_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[7]),
        .Q(cur_c_out[7]),
        .R(1'b0));
  FDRE \cur_c_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_c_out[8]),
        .Q(cur_c_out[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \cur_in_w[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(lut_in_w[2]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \cur_in_w[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(lut_in_w[3]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \cur_in_w[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(lut_in_w[4]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \cur_in_w[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(lut_in_w[5]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \cur_in_w[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(lut_in_w[6]));
  FDCE \cur_in_w_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_in_w[2]),
        .Q(cur_in_h[2]));
  FDCE \cur_in_w_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_in_w[3]),
        .Q(cur_in_h[3]));
  FDCE \cur_in_w_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_in_w[4]),
        .Q(cur_in_h[4]));
  FDCE \cur_in_w_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_in_w[5]),
        .Q(cur_in_h[5]));
  FDCE \cur_in_w_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_in_w[6]),
        .Q(cur_in_h[6]));
  LUT4 #(
    .INIT(16'h8880)) 
    \cur_pool_size[10]_i_1 
       (.I0(cur_type),
        .I1(s00_axi_aresetn),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\cur_pool_size[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cur_pool_size[10]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\cur_pool_size[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_pool_size[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\cur_pool_size[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cur_pool_size[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\cur_pool_size[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cur_pool_size[8]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\cur_pool_size[8]_i_1_n_0 ));
  FDRE \cur_pool_size_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_type[0]),
        .Q(cur_pool_size[0]),
        .R(1'b0));
  FDRE \cur_pool_size_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(\cur_pool_size[10]_i_2_n_0 ),
        .Q(cur_pool_size[10]),
        .R(\cur_pool_size[10]_i_1_n_0 ));
  FDRE \cur_pool_size_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(lut_in_w[2]),
        .Q(cur_pool_size[2]),
        .R(1'b0));
  FDRE \cur_pool_size_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(\cur_pool_size[4]_i_1_n_0 ),
        .Q(cur_pool_size[4]),
        .R(\cur_pool_size[10]_i_1_n_0 ));
  FDRE \cur_pool_size_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(\cur_pool_size[6]_i_1_n_0 ),
        .Q(cur_pool_size[6]),
        .R(\cur_pool_size[10]_i_1_n_0 ));
  FDRE \cur_pool_size_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cur_fmap_rd_base),
        .D(\cur_pool_size[8]_i_1_n_0 ),
        .Q(cur_pool_size[8]),
        .R(\cur_pool_size[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF37F)) 
    cur_relu_en_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(lut_relu_en));
  FDPE cur_relu_en_reg
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .D(lut_relu_en),
        .PRE(s00_axi_aresetn_0),
        .Q(cur_relu_en));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h0AE0)) 
    \cur_type[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(lut_type[0]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h040C)) 
    \cur_type[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(lut_type[1]));
  FDCE \cur_type_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_type[0]),
        .Q(\cur_type_reg_n_0_[0] ));
  FDCE \cur_type_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_type[1]),
        .Q(\cur_type_reg_n_0_[1] ));
  LUT4 #(
    .INIT(16'h0080)) 
    \ddr_bias_latched[7]_i_1 
       (.I0(s_axis_tready_reg_0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_axis_tvalid),
        .I3(state1),
        .O(ddr_bias_latched));
  FDCE \ddr_bias_latched_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ddr_bias_latched),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[0]),
        .Q(\ddr_bias_latched_reg_n_0_[0] ));
  FDCE \ddr_bias_latched_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ddr_bias_latched),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[1]),
        .Q(\ddr_bias_latched_reg_n_0_[1] ));
  FDCE \ddr_bias_latched_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ddr_bias_latched),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[2]),
        .Q(\ddr_bias_latched_reg_n_0_[2] ));
  FDCE \ddr_bias_latched_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ddr_bias_latched),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[3]),
        .Q(\ddr_bias_latched_reg_n_0_[3] ));
  FDCE \ddr_bias_latched_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ddr_bias_latched),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[4]),
        .Q(\ddr_bias_latched_reg_n_0_[4] ));
  FDCE \ddr_bias_latched_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ddr_bias_latched),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[5]),
        .Q(\ddr_bias_latched_reg_n_0_[5] ));
  FDCE \ddr_bias_latched_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ddr_bias_latched),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[6]),
        .Q(\ddr_bias_latched_reg_n_0_[6] ));
  FDCE \ddr_bias_latched_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ddr_bias_latched),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[7]),
        .Q(\ddr_bias_latched_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ext_co[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[0]),
        .O(\ext_co[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \ext_co[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[0]),
        .I2(ext_co[1]),
        .O(\ext_co[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \ext_co[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[2]),
        .I2(ext_co[1]),
        .I3(ext_co[0]),
        .O(\ext_co[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \ext_co[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[2]),
        .I2(ext_co[0]),
        .I3(ext_co[1]),
        .I4(ext_co[3]),
        .O(\ext_co[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \ext_co[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[4]),
        .I2(ext_co[3]),
        .I3(ext_co[1]),
        .I4(ext_co[0]),
        .I5(ext_co[2]),
        .O(\ext_co[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h8288)) 
    \ext_co[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[5]),
        .I2(\ext_co[7]_i_2_n_0 ),
        .I3(ext_co[4]),
        .O(\ext_co[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h88288888)) 
    \ext_co[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[6]),
        .I2(ext_co[4]),
        .I3(\ext_co[7]_i_2_n_0 ),
        .I4(ext_co[5]),
        .O(\ext_co[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \ext_co[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[6]),
        .I2(ext_co[5]),
        .I3(\ext_co[7]_i_2_n_0 ),
        .I4(ext_co[4]),
        .I5(ext_co[7]),
        .O(\ext_co[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ext_co[7]_i_2 
       (.I0(ext_co[3]),
        .I1(ext_co[1]),
        .I2(ext_co[0]),
        .I3(ext_co[2]),
        .O(\ext_co[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88288888)) 
    \ext_co[8]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ext_co[8]),
        .I2(ext_co[7]),
        .I3(\ext_co[8]_i_3_n_0 ),
        .I4(ext_co[6]),
        .O(\ext_co[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ext_co[8]_i_3 
       (.I0(ext_co[4]),
        .I1(ext_co[3]),
        .I2(ext_co[1]),
        .I3(ext_co[0]),
        .I4(ext_co[2]),
        .I5(ext_co[5]),
        .O(\ext_co[8]_i_3_n_0 ));
  FDCE \ext_co_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[0]_i_1_n_0 ),
        .Q(ext_co[0]));
  FDCE \ext_co_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[1]_i_1_n_0 ),
        .Q(ext_co[1]));
  FDCE \ext_co_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[2]_i_1_n_0 ),
        .Q(ext_co[2]));
  FDCE \ext_co_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[3]_i_1_n_0 ),
        .Q(ext_co[3]));
  FDCE \ext_co_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[4]_i_1_n_0 ),
        .Q(ext_co[4]));
  FDCE \ext_co_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[5]_i_1_n_0 ),
        .Q(ext_co[5]));
  FDCE \ext_co_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[6]_i_1_n_0 ),
        .Q(ext_co[6]));
  FDCE \ext_co_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[7]_i_1_n_0 ),
        .Q(ext_co[7]));
  FDCE \ext_co_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ext_co_reg[8]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\ext_co[8]_i_2_n_0 ),
        .Q(ext_co[8]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h20)) 
    fc_start_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\cur_type_reg_n_0_[1] ),
        .I2(\cur_type_reg_n_0_[0] ),
        .O(fc_start));
  FDCE fc_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(fc_start),
        .Q(fc_start_reg_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \layer_idx[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(layer_idx[0]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \layer_idx[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(layer_idx[1]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \layer_idx[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[2]),
        .O(layer_idx[2]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h7080F000)) 
    \layer_idx[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(layer_idx[3]));
  FDCE \layer_idx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\layer_idx_reg[3]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(layer_idx[0]),
        .Q(Q[0]));
  FDCE \layer_idx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\layer_idx_reg[3]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(layer_idx[1]),
        .Q(Q[1]));
  FDCE \layer_idx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\layer_idx_reg[3]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(layer_idx[2]),
        .Q(Q[2]));
  FDCE \layer_idx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\layer_idx_reg[3]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(layer_idx[3]),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \load_addr[0]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(load_addr[0]),
        .O(\load_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[10]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[10]),
        .O(\load_addr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[11]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[11]),
        .O(\load_addr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[12]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[12]),
        .O(\load_addr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[13]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[13]),
        .O(\load_addr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[14]_i_2 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[14]),
        .O(\load_addr[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[1]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[1]),
        .O(\load_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[2]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[2]),
        .O(\load_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[3]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[3]),
        .O(\load_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[4]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[4]),
        .O(\load_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[5]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[5]),
        .O(\load_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[6]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[6]),
        .O(\load_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[7]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[7]),
        .O(\load_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[8]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[8]),
        .O(\load_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \load_addr[9]_i_1 
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(in25[9]),
        .O(\load_addr[9]_i_1_n_0 ));
  FDCE \load_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[0]_i_1_n_0 ),
        .Q(load_addr[0]));
  FDCE \load_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[10]_i_1_n_0 ),
        .Q(load_addr[10]));
  FDCE \load_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[11]_i_1_n_0 ),
        .Q(load_addr[11]));
  FDCE \load_addr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[12]_i_1_n_0 ),
        .Q(load_addr[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \load_addr_reg[12]_i_2 
       (.CI(\load_addr_reg[8]_i_2_n_0 ),
        .CO({\load_addr_reg[12]_i_2_n_0 ,\load_addr_reg[12]_i_2_n_1 ,\load_addr_reg[12]_i_2_n_2 ,\load_addr_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in25[12:9]),
        .S(load_addr[12:9]));
  FDCE \load_addr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[13]_i_1_n_0 ),
        .Q(load_addr[13]));
  FDCE \load_addr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[14]_i_2_n_0 ),
        .Q(load_addr[14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \load_addr_reg[14]_i_3 
       (.CI(\load_addr_reg[12]_i_2_n_0 ),
        .CO({\NLW_load_addr_reg[14]_i_3_CO_UNCONNECTED [3:1],\load_addr_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_load_addr_reg[14]_i_3_O_UNCONNECTED [3:2],in25[14:13]}),
        .S({1'b0,1'b0,load_addr[14:13]}));
  FDCE \load_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[1]_i_1_n_0 ),
        .Q(load_addr[1]));
  FDCE \load_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[2]_i_1_n_0 ),
        .Q(load_addr[2]));
  FDCE \load_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[3]_i_1_n_0 ),
        .Q(load_addr[3]));
  FDCE \load_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[4]_i_1_n_0 ),
        .Q(load_addr[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \load_addr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\load_addr_reg[4]_i_2_n_0 ,\load_addr_reg[4]_i_2_n_1 ,\load_addr_reg[4]_i_2_n_2 ,\load_addr_reg[4]_i_2_n_3 }),
        .CYINIT(load_addr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in25[4:1]),
        .S(load_addr[4:1]));
  FDCE \load_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[5]_i_1_n_0 ),
        .Q(load_addr[5]));
  FDCE \load_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[6]_i_1_n_0 ),
        .Q(load_addr[6]));
  FDCE \load_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[7]_i_1_n_0 ),
        .Q(load_addr[7]));
  FDCE \load_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[8]_i_1_n_0 ),
        .Q(load_addr[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \load_addr_reg[8]_i_2 
       (.CI(\load_addr_reg[4]_i_2_n_0 ),
        .CO({\load_addr_reg[8]_i_2_n_0 ,\load_addr_reg[8]_i_2_n_1 ,\load_addr_reg[8]_i_2_n_2 ,\load_addr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in25[8:5]),
        .S(load_addr[8:5]));
  FDCE \load_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\load_addr_reg[14]_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\load_addr[9]_i_1_n_0 ),
        .Q(load_addr[9]));
  LUT2 #(
    .INIT(4'h8)) 
    load_we_reg_i_1
       (.I0(\FSM_onehot_state_reg[8]_0 [1]),
        .I1(npu_img_valid),
        .O(load_we_reg));
  FDCE load_we_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(load_we_reg),
        .Q(load_we_reg_reg_n_0));
  FDCE \load_wr_addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[0]),
        .Q(\load_wr_addr_reg_reg_n_0_[0] ));
  FDCE \load_wr_addr_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[10]),
        .Q(\load_wr_addr_reg_reg_n_0_[10] ));
  FDCE \load_wr_addr_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[11]),
        .Q(\load_wr_addr_reg_reg_n_0_[11] ));
  FDCE \load_wr_addr_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[12]),
        .Q(\load_wr_addr_reg_reg_n_0_[12] ));
  FDCE \load_wr_addr_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[13]),
        .Q(\load_wr_addr_reg_reg_n_0_[13] ));
  FDCE \load_wr_addr_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[14]),
        .Q(\load_wr_addr_reg_reg_n_0_[14] ));
  FDCE \load_wr_addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[1]),
        .Q(\load_wr_addr_reg_reg_n_0_[1] ));
  FDCE \load_wr_addr_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[2]),
        .Q(\load_wr_addr_reg_reg_n_0_[2] ));
  FDCE \load_wr_addr_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[3]),
        .Q(\load_wr_addr_reg_reg_n_0_[3] ));
  FDCE \load_wr_addr_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[4]),
        .Q(\load_wr_addr_reg_reg_n_0_[4] ));
  FDCE \load_wr_addr_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[5]),
        .Q(\load_wr_addr_reg_reg_n_0_[5] ));
  FDCE \load_wr_addr_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[6]),
        .Q(\load_wr_addr_reg_reg_n_0_[6] ));
  FDCE \load_wr_addr_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[7]),
        .Q(\load_wr_addr_reg_reg_n_0_[7] ));
  FDCE \load_wr_addr_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[8]),
        .Q(\load_wr_addr_reg_reg_n_0_[8] ));
  FDCE \load_wr_addr_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(load_addr[9]),
        .Q(\load_wr_addr_reg_reg_n_0_[9] ));
  FDCE \load_wr_data_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(\load_wr_data_reg_reg[7]_0 [0]),
        .Q(load_wr_data_reg[0]));
  FDCE \load_wr_data_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(\load_wr_data_reg_reg[7]_0 [1]),
        .Q(load_wr_data_reg[1]));
  FDCE \load_wr_data_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(\load_wr_data_reg_reg[7]_0 [2]),
        .Q(load_wr_data_reg[2]));
  FDCE \load_wr_data_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(\load_wr_data_reg_reg[7]_0 [3]),
        .Q(load_wr_data_reg[3]));
  FDCE \load_wr_data_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(\load_wr_data_reg_reg[7]_0 [4]),
        .Q(load_wr_data_reg[4]));
  FDCE \load_wr_data_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(\load_wr_data_reg_reg[7]_0 [5]),
        .Q(load_wr_data_reg[5]));
  FDCE \load_wr_data_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(\load_wr_data_reg_reg[7]_0 [6]),
        .Q(load_wr_data_reg[6]));
  FDCE \load_wr_data_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(load_we_reg),
        .CLR(s00_axi_aresetn_0),
        .D(\load_wr_data_reg_reg[7]_0 [7]),
        .Q(load_wr_data_reg[7]));
  FDCE need_patch_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(need_patch),
        .Q(need_patch_prev));
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
    patch_ch_offset_wide
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A,u_conv_n_38,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_patch_ch_offset_wide_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cur_in_h,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_patch_ch_offset_wide_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_patch_ch_offset_wide_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_patch_ch_offset_wide_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_patch_ch_offset_wide_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_patch_ch_offset_wide_OVERFLOW_UNCONNECTED),
        .P({NLW_patch_ch_offset_wide_P_UNCONNECTED[47:22],patch_ch_offset_wide_n_84,patch_ch_offset_wide_n_85,patch_ch_offset_wide_n_86,patch_ch_offset_wide_n_87,patch_ch_offset_wide_n_88,patch_ch_offset_wide_n_89,patch_ch_offset_wide_n_90,patch_ch_offset_wide__0}),
        .PATTERNBDETECT(NLW_patch_ch_offset_wide_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_patch_ch_offset_wide_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_patch_ch_offset_wide_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_patch_ch_offset_wide_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 patch_ch_offset_wide_i_1
       (.CI(patch_ch_offset_wide_i_2_n_0),
        .CO({NLW_patch_ch_offset_wide_i_1_CO_UNCONNECTED[3],patch_ch_offset_wide_i_1_n_1,patch_ch_offset_wide_i_1_n_2,patch_ch_offset_wide_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,patch_ch_offset_wide_i_5_n_0,patch_ch_offset_wide_i_6_n_0,patch_ch_offset_wide_i_7_n_0}),
        .O(A[14:11]),
        .S({u_conv_n_31,u_conv_n_32,u_conv_n_33,u_conv_n_34}));
  LUT5 #(
    .INIT(32'hF8808080)) 
    patch_ch_offset_wide_i_12
       (.I0(cur_in_h[2]),
        .I1(u_conv_n_9),
        .I2(patch_ch_offset_wide_i_27_n_5),
        .I3(cur_in_h[6]),
        .I4(u_conv_n_13),
        .O(patch_ch_offset_wide_i_12_n_0));
  LUT5 #(
    .INIT(32'hF8808080)) 
    patch_ch_offset_wide_i_13
       (.I0(cur_in_h[2]),
        .I1(u_conv_n_10),
        .I2(patch_ch_offset_wide_i_27_n_6),
        .I3(cur_in_h[6]),
        .I4(u_conv_n_14),
        .O(patch_ch_offset_wide_i_13_n_0));
  LUT5 #(
    .INIT(32'hF8808080)) 
    patch_ch_offset_wide_i_14
       (.I0(cur_in_h[2]),
        .I1(u_conv_n_11),
        .I2(patch_ch_offset_wide_i_27_n_7),
        .I3(cur_in_h[6]),
        .I4(u_conv_n_15),
        .O(patch_ch_offset_wide_i_14_n_0));
  LUT5 #(
    .INIT(32'h87787878)) 
    patch_ch_offset_wide_i_15
       (.I0(cur_in_h[2]),
        .I1(u_conv_n_11),
        .I2(patch_ch_offset_wide_i_27_n_7),
        .I3(u_conv_n_15),
        .I4(cur_in_h[6]),
        .O(patch_ch_offset_wide_i_15_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 patch_ch_offset_wide_i_2
       (.CI(patch_ch_offset_wide_i_3_n_0),
        .CO({patch_ch_offset_wide_i_2_n_0,patch_ch_offset_wide_i_2_n_1,patch_ch_offset_wide_i_2_n_2,patch_ch_offset_wide_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({patch_ch_offset_wide_i_12_n_0,patch_ch_offset_wide_i_13_n_0,patch_ch_offset_wide_i_14_n_0,patch_ch_offset_wide_i_15_n_0}),
        .O(A[10:7]),
        .S({u_conv_n_21,u_conv_n_22,u_conv_n_23,u_conv_n_24}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 patch_ch_offset_wide_i_21
       (.CI(1'b0),
        .CO({patch_ch_offset_wide_i_21_n_0,patch_ch_offset_wide_i_21_n_1,patch_ch_offset_wide_i_21_n_2,patch_ch_offset_wide_i_21_n_3}),
        .CYINIT(1'b0),
        .DI({patch_ch_offset_wide_i_30_n_0,patch_ch_offset_wide_i_31_n_0,patch_ch_offset_wide_i_32_n_0,1'b0}),
        .O({patch_ch_offset_wide_i_21_n_4,patch_ch_offset_wide_i_21_n_5,patch_ch_offset_wide_i_21_n_6,patch_ch_offset_wide_i_21_n_7}),
        .S({u_conv_n_5,u_conv_n_6,u_conv_n_7,u_conv_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 patch_ch_offset_wide_i_26
       (.CI(patch_ch_offset_wide_i_27_n_0),
        .CO({NLW_patch_ch_offset_wide_i_26_CO_UNCONNECTED[3],patch_ch_offset_wide_i_26_n_1,NLW_patch_ch_offset_wide_i_26_CO_UNCONNECTED[1],patch_ch_offset_wide_i_26_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,patch_ch_offset_wide_i_37_n_0,patch_ch_offset_wide_i_38_n_0}),
        .O({NLW_patch_ch_offset_wide_i_26_O_UNCONNECTED[3:2],patch_ch_offset_wide_i_26_n_6,patch_ch_offset_wide_i_26_n_7}),
        .S({1'b0,1'b1,u_conv_n_30,patch_ch_offset_wide_i_40_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 patch_ch_offset_wide_i_27
       (.CI(patch_ch_offset_wide_i_21_n_0),
        .CO({patch_ch_offset_wide_i_27_n_0,patch_ch_offset_wide_i_27_n_1,patch_ch_offset_wide_i_27_n_2,patch_ch_offset_wide_i_27_n_3}),
        .CYINIT(1'b0),
        .DI({patch_ch_offset_wide_i_41_n_0,patch_ch_offset_wide_i_42_n_0,patch_ch_offset_wide_i_43_n_0,patch_ch_offset_wide_i_44_n_0}),
        .O({patch_ch_offset_wide_i_27_n_4,patch_ch_offset_wide_i_27_n_5,patch_ch_offset_wide_i_27_n_6,patch_ch_offset_wide_i_27_n_7}),
        .S({u_conv_n_26,u_conv_n_27,u_conv_n_28,u_conv_n_29}));
  LUT2 #(
    .INIT(4'h7)) 
    patch_ch_offset_wide_i_28
       (.I0(u_conv_n_9),
        .I1(cur_in_h[2]),
        .O(patch_ch_offset_wide_i_28_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    patch_ch_offset_wide_i_29
       (.I0(u_conv_n_15),
        .I1(cur_in_h[6]),
        .O(patch_ch_offset_wide_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 patch_ch_offset_wide_i_3
       (.CI(1'b0),
        .CO({patch_ch_offset_wide_i_3_n_0,patch_ch_offset_wide_i_3_n_1,patch_ch_offset_wide_i_3_n_2,patch_ch_offset_wide_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({u_conv_n_25,patch_ch_offset_wide_i_21_n_5,patch_ch_offset_wide_i_21_n_6,patch_ch_offset_wide_i_21_n_7}),
        .O(A[6:3]),
        .S({u_conv_n_17,u_conv_n_18,u_conv_n_19,u_conv_n_20}));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    patch_ch_offset_wide_i_30
       (.I0(cur_in_h[4]),
        .I1(u_conv_n_14),
        .I2(cur_in_h[5]),
        .I3(u_conv_n_15),
        .I4(u_conv_n_13),
        .I5(cur_in_h[3]),
        .O(patch_ch_offset_wide_i_30_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    patch_ch_offset_wide_i_31
       (.I0(cur_in_h[4]),
        .I1(u_conv_n_15),
        .I2(cur_in_h[5]),
        .I3(u_conv_n_16),
        .O(patch_ch_offset_wide_i_31_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    patch_ch_offset_wide_i_32
       (.I0(cur_in_h[3]),
        .I1(u_conv_n_15),
        .O(patch_ch_offset_wide_i_32_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    patch_ch_offset_wide_i_37
       (.I0(cur_in_h[5]),
        .I1(u_conv_n_10),
        .I2(cur_in_h[4]),
        .I3(u_conv_n_9),
        .O(patch_ch_offset_wide_i_37_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    patch_ch_offset_wide_i_38
       (.I0(cur_in_h[5]),
        .I1(u_conv_n_11),
        .I2(cur_in_h[4]),
        .I3(u_conv_n_10),
        .I4(cur_in_h[3]),
        .I5(u_conv_n_9),
        .O(patch_ch_offset_wide_i_38_n_0));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    patch_ch_offset_wide_i_40
       (.I0(cur_in_h[3]),
        .I1(u_conv_n_11),
        .I2(u_conv_n_10),
        .I3(cur_in_h[5]),
        .I4(u_conv_n_9),
        .I5(cur_in_h[4]),
        .O(patch_ch_offset_wide_i_40_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    patch_ch_offset_wide_i_41
       (.I0(cur_in_h[5]),
        .I1(u_conv_n_12),
        .I2(cur_in_h[4]),
        .I3(u_conv_n_11),
        .I4(cur_in_h[3]),
        .I5(u_conv_n_10),
        .O(patch_ch_offset_wide_i_41_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    patch_ch_offset_wide_i_42
       (.I0(cur_in_h[5]),
        .I1(u_conv_n_13),
        .I2(cur_in_h[4]),
        .I3(u_conv_n_12),
        .I4(cur_in_h[3]),
        .I5(u_conv_n_11),
        .O(patch_ch_offset_wide_i_42_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    patch_ch_offset_wide_i_43
       (.I0(cur_in_h[5]),
        .I1(u_conv_n_14),
        .I2(cur_in_h[4]),
        .I3(u_conv_n_13),
        .I4(cur_in_h[3]),
        .I5(u_conv_n_12),
        .O(patch_ch_offset_wide_i_43_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    patch_ch_offset_wide_i_44
       (.I0(cur_in_h[5]),
        .I1(u_conv_n_15),
        .I2(cur_in_h[4]),
        .I3(u_conv_n_14),
        .I4(cur_in_h[3]),
        .I5(u_conv_n_13),
        .O(patch_ch_offset_wide_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h7)) 
    patch_ch_offset_wide_i_49
       (.I0(u_conv_n_13),
        .I1(cur_in_h[3]),
        .O(patch_ch_offset_wide_i_49_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    patch_ch_offset_wide_i_5
       (.I0(patch_ch_offset_wide_i_26_n_6),
        .I1(u_conv_n_10),
        .I2(cur_in_h[6]),
        .O(patch_ch_offset_wide_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    patch_ch_offset_wide_i_50
       (.I0(u_conv_n_11),
        .I1(cur_in_h[5]),
        .O(patch_ch_offset_wide_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h7)) 
    patch_ch_offset_wide_i_51
       (.I0(u_conv_n_12),
        .I1(cur_in_h[5]),
        .O(patch_ch_offset_wide_i_51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h7)) 
    patch_ch_offset_wide_i_52
       (.I0(u_conv_n_13),
        .I1(cur_in_h[5]),
        .O(patch_ch_offset_wide_i_52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h7)) 
    patch_ch_offset_wide_i_53
       (.I0(u_conv_n_14),
        .I1(cur_in_h[5]),
        .O(patch_ch_offset_wide_i_53_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    patch_ch_offset_wide_i_6
       (.I0(patch_ch_offset_wide_i_26_n_7),
        .I1(u_conv_n_11),
        .I2(cur_in_h[6]),
        .O(patch_ch_offset_wide_i_6_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    patch_ch_offset_wide_i_7
       (.I0(patch_ch_offset_wide_i_27_n_4),
        .I1(u_conv_n_12),
        .I2(cur_in_h[6]),
        .O(patch_ch_offset_wide_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h04BC)) 
    patch_src_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(lut_patch_src));
  FDCE patch_src_reg
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_patch_src),
        .Q(patch_src));
  FDCE patch_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(patch_start0),
        .Q(patch_start));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    pool_dst_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(lut_pool_dst));
  FDCE pool_dst_reg
       (.C(s00_axi_aclk),
        .CE(cur_type),
        .CLR(s00_axi_aresetn_0),
        .D(lut_pool_dst),
        .Q(pool_dst));
  FDCE pool_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(pool_start),
        .Q(pool_start_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[0]),
        .O(\pool_wr_offset[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[10]),
        .O(\pool_wr_offset[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[11]),
        .O(\pool_wr_offset[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pool_wr_offset[11]_i_3 
       (.I0(pool_wr_offset[10]),
        .I1(cur_pool_size[10]),
        .O(\pool_wr_offset[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pool_wr_offset[11]_i_4 
       (.I0(pool_wr_offset[8]),
        .I1(cur_pool_size[8]),
        .O(\pool_wr_offset[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[12]),
        .O(\pool_wr_offset[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[13]),
        .O(\pool_wr_offset[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \pool_wr_offset[14]_i_1 
       (.I0(\FSM_onehot_state_reg[3]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(cur_type),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[14]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[14]),
        .O(\pool_wr_offset[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[1]),
        .O(\pool_wr_offset[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[2]),
        .O(\pool_wr_offset[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[3]),
        .O(\pool_wr_offset[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pool_wr_offset[3]_i_3 
       (.I0(pool_wr_offset[2]),
        .I1(cur_pool_size[2]),
        .O(\pool_wr_offset[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pool_wr_offset[3]_i_4 
       (.I0(pool_wr_offset[0]),
        .I1(cur_pool_size[0]),
        .O(\pool_wr_offset[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[4]),
        .O(\pool_wr_offset[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[5]),
        .O(\pool_wr_offset[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[6]),
        .O(\pool_wr_offset[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[7]),
        .O(\pool_wr_offset[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pool_wr_offset[7]_i_3 
       (.I0(pool_wr_offset[6]),
        .I1(cur_pool_size[6]),
        .O(\pool_wr_offset[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pool_wr_offset[7]_i_4 
       (.I0(pool_wr_offset[4]),
        .I1(cur_pool_size[4]),
        .O(\pool_wr_offset[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[8]),
        .O(\pool_wr_offset[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pool_wr_offset[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in26[9]),
        .O(\pool_wr_offset[9]_i_1_n_0 ));
  FDCE \pool_wr_offset_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[0]_i_1_n_0 ),
        .Q(pool_wr_offset[0]));
  FDCE \pool_wr_offset_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[10]_i_1_n_0 ),
        .Q(pool_wr_offset[10]));
  FDCE \pool_wr_offset_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[11]_i_1_n_0 ),
        .Q(pool_wr_offset[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pool_wr_offset_reg[11]_i_2 
       (.CI(\pool_wr_offset_reg[7]_i_2_n_0 ),
        .CO({\pool_wr_offset_reg[11]_i_2_n_0 ,\pool_wr_offset_reg[11]_i_2_n_1 ,\pool_wr_offset_reg[11]_i_2_n_2 ,\pool_wr_offset_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(pool_wr_offset[11:8]),
        .O(in26[11:8]),
        .S({pool_wr_offset[11],\pool_wr_offset[11]_i_3_n_0 ,pool_wr_offset[9],\pool_wr_offset[11]_i_4_n_0 }));
  FDCE \pool_wr_offset_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[12]_i_1_n_0 ),
        .Q(pool_wr_offset[12]));
  FDCE \pool_wr_offset_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[13]_i_1_n_0 ),
        .Q(pool_wr_offset[13]));
  FDCE \pool_wr_offset_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[14]_i_2_n_0 ),
        .Q(pool_wr_offset[14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pool_wr_offset_reg[14]_i_3 
       (.CI(\pool_wr_offset_reg[11]_i_2_n_0 ),
        .CO({\NLW_pool_wr_offset_reg[14]_i_3_CO_UNCONNECTED [3:2],\pool_wr_offset_reg[14]_i_3_n_2 ,\pool_wr_offset_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pool_wr_offset[13:12]}),
        .O({\NLW_pool_wr_offset_reg[14]_i_3_O_UNCONNECTED [3],in26[14:12]}),
        .S({1'b0,pool_wr_offset[14:12]}));
  FDCE \pool_wr_offset_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[1]_i_1_n_0 ),
        .Q(pool_wr_offset[1]));
  FDCE \pool_wr_offset_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[2]_i_1_n_0 ),
        .Q(pool_wr_offset[2]));
  FDCE \pool_wr_offset_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[3]_i_1_n_0 ),
        .Q(pool_wr_offset[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pool_wr_offset_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\pool_wr_offset_reg[3]_i_2_n_0 ,\pool_wr_offset_reg[3]_i_2_n_1 ,\pool_wr_offset_reg[3]_i_2_n_2 ,\pool_wr_offset_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(pool_wr_offset[3:0]),
        .O(in26[3:0]),
        .S({pool_wr_offset[3],\pool_wr_offset[3]_i_3_n_0 ,pool_wr_offset[1],\pool_wr_offset[3]_i_4_n_0 }));
  FDCE \pool_wr_offset_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[4]_i_1_n_0 ),
        .Q(pool_wr_offset[4]));
  FDCE \pool_wr_offset_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[5]_i_1_n_0 ),
        .Q(pool_wr_offset[5]));
  FDCE \pool_wr_offset_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[6]_i_1_n_0 ),
        .Q(pool_wr_offset[6]));
  FDCE \pool_wr_offset_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[7]_i_1_n_0 ),
        .Q(pool_wr_offset[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pool_wr_offset_reg[7]_i_2 
       (.CI(\pool_wr_offset_reg[3]_i_2_n_0 ),
        .CO({\pool_wr_offset_reg[7]_i_2_n_0 ,\pool_wr_offset_reg[7]_i_2_n_1 ,\pool_wr_offset_reg[7]_i_2_n_2 ,\pool_wr_offset_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(pool_wr_offset[7:4]),
        .O(in26[7:4]),
        .S({pool_wr_offset[7],\pool_wr_offset[7]_i_3_n_0 ,pool_wr_offset[5],\pool_wr_offset[7]_i_4_n_0 }));
  FDCE \pool_wr_offset_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[8]_i_1_n_0 ),
        .Q(pool_wr_offset[8]));
  FDCE \pool_wr_offset_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_aresetn_0),
        .D(\pool_wr_offset[9]_i_1_n_0 ),
        .Q(pool_wr_offset[9]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \result_cho[7]_i_2 
       (.I0(\cur_type_reg_n_0_[1] ),
        .I1(p_0_in2_in),
        .I2(\cur_type_reg_n_0_[0] ),
        .O(\result_cho[7]_i_2_n_0 ));
  FDCE \result_cho_reg[0] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_20),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[0]),
        .Q(\result_cho_reg[7]_0 [0]));
  FDCE \result_cho_reg[1] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_20),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[1]),
        .Q(\result_cho_reg[7]_0 [1]));
  FDCE \result_cho_reg[2] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_20),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[2]),
        .Q(\result_cho_reg[7]_0 [2]));
  FDCE \result_cho_reg[3] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_20),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[3]),
        .Q(\result_cho_reg[7]_0 [3]));
  FDCE \result_cho_reg[4] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_20),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[4]),
        .Q(\result_cho_reg[7]_0 [4]));
  FDCE \result_cho_reg[5] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_20),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[5]),
        .Q(\result_cho_reg[7]_0 [5]));
  FDCE \result_cho_reg[6] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_20),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[6]),
        .Q(\result_cho_reg[7]_0 [6]));
  FDCE \result_cho_reg[7] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_20),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[7]),
        .Q(\result_cho_reg[7]_0 [7]));
  FDCE \result_jong_reg[0] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_19),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[0]),
        .Q(\result_jong_reg[7]_0 [0]));
  FDCE \result_jong_reg[1] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_19),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[1]),
        .Q(\result_jong_reg[7]_0 [1]));
  FDCE \result_jong_reg[2] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_19),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[2]),
        .Q(\result_jong_reg[7]_0 [2]));
  FDCE \result_jong_reg[3] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_19),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[3]),
        .Q(\result_jong_reg[7]_0 [3]));
  FDCE \result_jong_reg[4] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_19),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[4]),
        .Q(\result_jong_reg[7]_0 [4]));
  FDCE \result_jong_reg[5] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_19),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[5]),
        .Q(\result_jong_reg[7]_0 [5]));
  FDCE \result_jong_reg[6] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_19),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[6]),
        .Q(\result_jong_reg[7]_0 [6]));
  FDCE \result_jong_reg[7] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_19),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[7]),
        .Q(\result_jong_reg[7]_0 [7]));
  FDCE \result_jung_reg[0] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_21),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[0]),
        .Q(\result_jung_reg[7]_0 [0]));
  FDCE \result_jung_reg[1] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_21),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[1]),
        .Q(\result_jung_reg[7]_0 [1]));
  FDCE \result_jung_reg[2] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_21),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[2]),
        .Q(\result_jung_reg[7]_0 [2]));
  FDCE \result_jung_reg[3] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_21),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[3]),
        .Q(\result_jung_reg[7]_0 [3]));
  FDCE \result_jung_reg[4] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_21),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[4]),
        .Q(\result_jung_reg[7]_0 [4]));
  FDCE \result_jung_reg[5] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_21),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[5]),
        .Q(\result_jung_reg[7]_0 [5]));
  FDCE \result_jung_reg[6] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_21),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[6]),
        .Q(\result_jung_reg[7]_0 [6]));
  FDCE \result_jung_reg[7] 
       (.C(s00_axi_aclk),
        .CE(u_argmax_n_21),
        .CLR(s00_axi_aresetn_0),
        .D(argmax_result_idx[7]),
        .Q(\result_jung_reg[7]_0 [7]));
  LUT4 #(
    .INIT(16'h1F10)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\FSM_onehot_state_reg[8]_0 [0]),
        .I1(\FSM_onehot_state_reg[8]_0 [2]),
        .I2(\s00_axi_rdata[4]_INST_0_i_1 ),
        .I3(\s00_axi_rdata[4]_INST_0_i_1_0 [0]),
        .O(\FSM_onehot_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\FSM_onehot_state_reg[8]_0 [0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg[8]_0 [1]),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\s00_axi_rdata[4]_INST_0_i_1 ),
        .I5(\s00_axi_rdata[4]_INST_0_i_1_0 [1]),
        .O(\FSM_onehot_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[8]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(cur_type),
        .I4(\s00_axi_rdata[4]_INST_0_i_1 ),
        .I5(\s00_axi_rdata[4]_INST_0_i_1_0 [2]),
        .O(\FSM_onehot_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[8]_0 [0]),
        .I2(p_0_in2_in),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\s00_axi_rdata[4]_INST_0_i_1 ),
        .I5(\s00_axi_rdata[4]_INST_0_i_1_0 [3]),
        .O(\FSM_onehot_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEE0)) 
    s_axis_tready_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(cur_type),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(p_0_in2_in),
        .I4(s_axis_tready_i_3_n_0),
        .I5(s_axis_tready_reg_0),
        .O(s_axis_tready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    s_axis_tready_i_3
       (.I0(\FSM_onehot_state_reg[3]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(cur_type),
        .I3(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .O(s_axis_tready_i_3_n_0));
  FDCE s_axis_tready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_argmax u_argmax
       (.ADDRBWRADDR(fmap_b_rd_addr_mux[8:0]),
        .CO(u_fmap_b_n_19),
        .E(u_argmax_n_0),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state[8]_i_2_n_0 ),
        .\FSM_onehot_state_reg[0]_0 (ddr_bias_latched),
        .\FSM_onehot_state_reg[0]_1 (u_conv_n_39),
        .\FSM_onehot_state_reg[0]_2 (u_pool_n_32),
        .\FSM_onehot_state_reg[0]_3 (u_fc_n_3),
        .\FSM_sequential_state[0]_i_4_0 (cur_c_in),
        .\FSM_sequential_state_reg[0]_0 (argmax_start_reg_n_0),
        .Q(fc_fmap_rd_addr[8:0]),
        .done_reg_0(u_argmax_n_19),
        .done_reg_1(s00_axi_aresetn_0),
        .dout(fmap_a_rd_data),
        .\fmap_rd_addr_reg[8]_0 (fmap_a_rd_addr_mux[8:0]),
        .\layer_idx_reg[1] (u_argmax_n_20),
        .\layer_idx_reg[1]_0 (u_argmax_n_21),
        .\max_val_reg[7]_0 ({u_argmax_n_22,u_argmax_n_23,u_argmax_n_24,u_argmax_n_25,u_argmax_n_26,u_argmax_n_27,u_argmax_n_28,u_argmax_n_29}),
        .\max_val_reg[7]_1 (fmap_b_rd_data),
        .mem_reg_0_7(u_fmap_b_n_0),
        .mem_reg_0_7_0(u_fmap_b_n_1),
        .mem_reg_0_7_1(patch_rd_addr),
        .mem_reg_0_7_2(u_fmap_b_n_2),
        .mem_reg_0_7_3(u_fmap_a_n_0),
        .mem_reg_0_7_4(u_fmap_a_n_1),
        .mem_reg_0_7_5(u_fmap_a_n_2),
        .patch_src(patch_src),
        .\result_idx_reg[7]_0 (argmax_result_idx),
        .\result_jong_reg[0] (\result_cho[7]_i_2_n_0 ),
        .\result_jung_reg[0] (Q),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_conv3x3_relu u_conv
       (.A(u_conv_n_38),
        .ADDRARDADDR(fmap_t_wr_addr),
        .CO(patch_ch_offset_wide_i_26_n_1),
        .D(p_0_in),
        .DI(u_conv_n_25),
        .DOBDO(wbuf_rd_data),
        .E(u_patch_n_33),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state_reg[0]_3 ),
        .\FSM_onehot_state_reg[4]_0 (u_conv_n_69),
        .\FSM_onehot_state_reg[9]_0 (cur_c_in[7:0]),
        .O({patch_ch_offset_wide_i_21_n_4,patch_ch_offset_wide_i_21_n_5,patch_ch_offset_wide_i_21_n_6,patch_ch_offset_wide_i_21_n_7}),
        .P(patch_ch_offset_wide__0),
        .Q(cur_in_h),
        .S({u_conv_n_5,u_conv_n_6,u_conv_n_7,u_conv_n_8}),
        .WEA(u_conv_n_35),
        .\acc[15]_i_15 ({u_wbuf_n_39,u_wbuf_n_40,u_wbuf_n_41,u_wbuf_n_42}),
        .\acc[3]_i_6_0 ({u_wbuf_n_36,u_wbuf_n_37}),
        .\acc[3]_i_6_1 (u_wbuf_n_49),
        .\acc[7]_i_15_0 (u_conv_n_98),
        .\acc[7]_i_15_1 ({u_wbuf_n_34,u_wbuf_n_35}),
        .\acc[7]_i_15_2 (u_wbuf_n_50),
        .\acc[7]_i_6_0 (u_wbuf_n_52),
        .\acc[7]_i_8_0 (u_wbuf_n_38),
        .\acc[7]_i_8_1 ({u_wbuf_n_8,u_wbuf_n_9}),
        .\acc_reg[15]_0 (acc1_0),
        .\acc_reg[15]_1 (u_wbuf_n_51),
        .\acc_reg[15]_i_26 ({u_conv_n_86,u_conv_n_87}),
        .\acc_reg[15]_i_3 ({u_wbuf_n_47,u_wbuf_n_48}),
        .\acc_reg[16]_0 (acc),
        .\acc_reg[19]_0 (u_wbuf_n_43),
        .\acc_reg[19]_1 (u_wbuf_n_10),
        .\acc_reg[3]_i_7_0 (u_conv_n_99),
        .\acc_reg[7]_i_7_0 ({u_wbuf_n_44,u_wbuf_n_45,u_wbuf_n_46}),
        .\bias_saved_reg[31]_0 ({\ddr_bias_latched_reg_n_0_[7] ,\ddr_bias_latched_reg_n_0_[6] ,\ddr_bias_latched_reg_n_0_[5] ,\ddr_bias_latched_reg_n_0_[4] ,\ddr_bias_latched_reg_n_0_[3] ,\ddr_bias_latched_reg_n_0_[2] ,\ddr_bias_latched_reg_n_0_[1] ,\ddr_bias_latched_reg_n_0_[0] }),
        .\bram_addr[3]_i_9_0 ({u_patch_n_27,u_patch_n_28}),
        .\bram_addr[3]_i_9_1 (u_patch_n_32),
        .\bram_addr[7]_i_22_0 ({u_patch_n_23,u_patch_n_24}),
        .\bram_addr[7]_i_22_1 (u_patch_n_31),
        .\bram_addr_reg[14]_i_12_0 (u_patch_n_30),
        .\bram_addr_reg[14]_i_12_1 (u_patch_n_29),
        .\co_reg[0]_0 (conv_start_reg_n_0),
        .\cur_ci_reg[3]_0 ({u_conv_n_21,u_conv_n_22,u_conv_n_23,u_conv_n_24}),
        .\cur_ci_reg[4]_0 ({u_conv_n_17,u_conv_n_18,u_conv_n_19,u_conv_n_20}),
        .\cur_ci_reg[7]_0 ({u_conv_n_9,u_conv_n_10,u_conv_n_11,u_conv_n_12,u_conv_n_13,u_conv_n_14,u_conv_n_15,u_conv_n_16}),
        .\cur_in_w_reg[4] ({u_conv_n_26,u_conv_n_27,u_conv_n_28,u_conv_n_29}),
        .\cur_in_w_reg[4]_0 (u_conv_n_30),
        .\cur_in_w_reg[6] ({u_conv_n_31,u_conv_n_32,u_conv_n_33,u_conv_n_34}),
        .done_reg_0(u_conv_n_39),
        .done_reg_1(s00_axi_aresetn_0),
        .ky__0(ky__0),
        .mem_reg(u_conv_n_78),
        .mem_reg_0(u_conv_n_79),
        .mem_reg_1(u_conv_n_80),
        .mem_reg_10({u_conv_n_94,u_conv_n_95,u_conv_n_96}),
        .mem_reg_11(u_conv_n_97),
        .mem_reg_12(u_conv_n_100),
        .mem_reg_13(u_conv_n_101),
        .mem_reg_2(u_conv_n_81),
        .mem_reg_3(u_conv_n_82),
        .mem_reg_4(u_conv_n_83),
        .mem_reg_5(u_conv_n_84),
        .mem_reg_6(u_conv_n_85),
        .mem_reg_7({u_conv_n_88,u_conv_n_89,u_conv_n_90,u_conv_n_91}),
        .mem_reg_8(u_conv_n_92),
        .mem_reg_9(u_conv_n_93),
        .need_patch(need_patch),
        .\out_pixel_reg[7]_0 (conv_out_pixel),
        .patch_ch_offset_wide({patch_ch_offset_wide_i_27_n_4,patch_ch_offset_wide_i_27_n_5,patch_ch_offset_wide_i_27_n_6,patch_ch_offset_wide_i_27_n_7}),
        .patch_ch_offset_wide_0(patch_ch_offset_wide_i_29_n_0),
        .patch_ch_offset_wide_1({patch_ch_offset_wide_i_13_n_0,patch_ch_offset_wide_i_14_n_0}),
        .patch_ch_offset_wide_2(patch_ch_offset_wide_i_28_n_0),
        .patch_ch_offset_wide_3({patch_ch_offset_wide_i_26_n_6,patch_ch_offset_wide_i_26_n_7}),
        .patch_ch_offset_wide_i_21(patch_ch_offset_wide_i_49_n_0),
        .patch_ch_offset_wide_i_27({patch_ch_offset_wide_i_41_n_0,patch_ch_offset_wide_i_42_n_0,patch_ch_offset_wide_i_43_n_0,patch_ch_offset_wide_i_44_n_0}),
        .patch_ch_offset_wide_i_27_0(patch_ch_offset_wide_i_53_n_0),
        .patch_ch_offset_wide_i_27_1(patch_ch_offset_wide_i_52_n_0),
        .patch_ch_offset_wide_i_27_2(patch_ch_offset_wide_i_51_n_0),
        .patch_ch_offset_wide_i_27_3(patch_ch_offset_wide_i_50_n_0),
        .patch_reg__0(patch_reg__0),
        .\patch_reg_reg[0][7]_0 (\patch_out[0][0]_0 ),
        .\patch_reg_reg[1][7]_0 (\patch_out[0][1]_1 ),
        .\patch_reg_reg[2][7]_0 (\patch_out[0][2]_2 ),
        .\patch_reg_reg[3][7]_0 (\patch_out[1][0]_3 ),
        .\patch_reg_reg[4][7]_0 (\patch_out[1][1]_4 ),
        .\patch_reg_reg[5][7]_0 (\patch_out[1][2]_5 ),
        .\patch_reg_reg[6][7]_0 (\patch_out[2][0]_6 ),
        .\patch_reg_reg[7][7]_0 (\patch_out[2][1]_7 ),
        .\patch_reg_reg[8][7]_0 (\patch_out[2][2]_8 ),
        .patch_valid(patch_valid),
        .pool_start(pool_start),
        .pool_start_reg({\cur_type_reg_n_0_[1] ,\cur_type_reg_n_0_[0] }),
        .pool_start_reg_0(p_0_in2_in),
        .s00_axi_aclk(s00_axi_aclk),
        .\target_col_reg[1]_0 (conv_target_col),
        .\target_row_reg[1]_0 (conv_target_row),
        .\target_row_reg[5]_0 (u_conv_n_68),
        .\weight_offset_reg[11]_0 (conv_weight_offset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fc_relu u_fc
       (.ADDRBWRADDR(wbuf_rd_addr_mux),
        .CO(u_fc_n_51),
        .D(patch_bram_data),
        .DI(u_fc_n_41),
        .DOBDO(wbuf_rd_data),
        .\FSM_onehot_state_reg[0] ({\FSM_onehot_state_reg[8]_0 [2],p_0_in2_in}),
        .\FSM_onehot_state_reg[0]_0 (\s00_axi_rdata[4]_INST_0_i_1_0 [0]),
        .\FSM_sequential_state_reg[0]_0 (fc_start_reg_n_0),
        .\FSM_sequential_state_reg[2]_i_3_0 ({cur_c_in__0,cur_c_in}),
        .O(u_fc_n_52),
        .Q({u_fc_n_1,u_fc_n_2}),
        .S({u_fc_n_49,u_fc_n_50}),
        .\acc[3]_i_6__0_0 (u_wbuf_n_56),
        .\acc[3]_i_6__0_1 (u_wbuf_n_53),
        .\acc_reg[19]_0 (acc1),
        .\acc_reg[19]_1 (u_wbuf_n_55),
        .\acc_reg[19]_2 ({u_wbuf_n_19,u_wbuf_n_20}),
        .\acc_reg[31]_0 ({\ddr_bias_latched_reg_n_0_[7] ,\ddr_bias_latched_reg_n_0_[6] ,\ddr_bias_latched_reg_n_0_[5] ,\ddr_bias_latched_reg_n_0_[4] ,\ddr_bias_latched_reg_n_0_[3] ,\ddr_bias_latched_reg_n_0_[2] ,\ddr_bias_latched_reg_n_0_[1] ,\ddr_bias_latched_reg_n_0_[0] }),
        .\acc_reg[3]_i_2__0_0 (u_wbuf_n_54),
        .cur_relu_en(cur_relu_en),
        .\cur_type_reg[0] (u_fc_n_3),
        .din(fmap_a_wr_data),
        .done_reg_0(u_fc_n_24),
        .done_reg_1(s00_axi_aresetn_0),
        .fc_done(fc_done),
        .\fmap_rd_addr_reg[11]_0 (fc_fmap_rd_addr),
        .\fmap_val_reg[0]_0 (u_fc_n_44),
        .\fmap_val_reg[2]_0 ({u_fc_n_53,u_fc_n_54,u_fc_n_55}),
        .\fmap_val_reg[4]_0 (u_fc_n_45),
        .\fmap_val_reg[5]_0 (u_fc_n_46),
        .\fmap_val_reg[5]_1 ({u_fc_n_56,u_fc_n_57,u_fc_n_58}),
        .\fmap_val_reg[6]_0 (u_fc_n_47),
        .\fmap_val_reg[7]_0 ({u_fc_n_33,u_fc_n_34,u_fc_n_35,u_fc_n_36,u_fc_n_37,u_fc_n_38,u_fc_n_39,u_fc_n_40}),
        .\fmap_val_reg[7]_1 (u_fc_n_42),
        .\fmap_val_reg[7]_2 (u_fc_n_43),
        .\fmap_val_reg[7]_3 (u_fc_n_48),
        .mem_reg({\cur_type_reg_n_0_[1] ,\cur_type_reg_n_0_[0] }),
        .mem_reg_0(conv_weight_offset),
        .mem_reg_0_0(u_pool_n_48),
        .mem_reg_0_0_0(load_we_reg_reg_n_0),
        .mem_reg_0_7(pool_wr_data),
        .mem_reg_0_7_0(load_wr_data_reg),
        .\out_pixel_reg[7]_0 (fc_out_pixel),
        .pool_dst(pool_dst),
        .reg0_written(reg0_written),
        .s00_axi_aclk(s00_axi_aclk),
        .wr_en(pool_wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fmap_bram u_fmap_a
       (.ADDRARDADDR(fmap_a_wr_addr),
        .ADDRBWRADDR(fmap_a_rd_addr_mux),
        .\FSM_onehot_state_reg[1] (u_fmap_a_n_0),
        .\FSM_onehot_state_reg[1]_0 (u_fmap_a_n_1),
        .Q({p_0_in2_in,\FSM_onehot_state_reg[8]_0 [0]}),
        .WEA({u_pool_n_53,u_pool_n_54}),
        .din(fmap_a_wr_data),
        .dout(fmap_a_rd_data),
        .mem_reg_0_6_0(u_pool_n_55),
        .mem_reg_0_7_0({\cur_type_reg_n_0_[1] ,\cur_type_reg_n_0_[0] }),
        .patch_src(patch_src),
        .patch_src_reg(u_fmap_a_n_2),
        .s00_axi_aclk(s00_axi_aclk),
        .we(u_pool_n_56));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fmap_bram_0 u_fmap_b
       (.ADDRARDADDR(fmap_b_wr_addr),
        .ADDRBWRADDR(fmap_b_rd_addr_mux),
        .CO(u_fmap_b_n_19),
        .D(patch_bram_data),
        .\FSM_onehot_state_reg[1] (u_fmap_b_n_0),
        .\FSM_onehot_state_reg[1]_0 (u_fmap_b_n_1),
        .Q({p_0_in2_in,\FSM_onehot_state_reg[8]_0 [0]}),
        .WEA({u_pool_n_49,u_pool_n_50}),
        .din(fmap_b_wr_data),
        .dout(fmap_b_rd_data),
        .\fmap_val_reg[7] (fmap_a_rd_data),
        .\max_val_reg[7]_i_3_0 ({u_argmax_n_22,u_argmax_n_23,u_argmax_n_24,u_argmax_n_25,u_argmax_n_26,u_argmax_n_27,u_argmax_n_28,u_argmax_n_29}),
        .mem_reg_0_6_0(u_pool_n_51),
        .mem_reg_0_7_0({\cur_type_reg_n_0_[1] ,\cur_type_reg_n_0_[0] }),
        .patch_src(patch_src),
        .patch_src_reg(u_fmap_b_n_2),
        .s00_axi_aclk(s00_axi_aclk),
        .we(u_pool_n_52));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fmap_bram__parameterized0 u_fmap_temp
       (.ADDRARDADDR(fmap_t_wr_addr),
        .D(fmap_t_rd_data),
        .Q(pool_rd_addr),
        .WEA(u_conv_n_35),
        .mem_reg_0(conv_out_pixel),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_patch_reader u_patch
       (.ADDRBWRADDR(fmap_b_rd_addr_mux[14:9]),
        .D(p_0_in),
        .E(u_patch_n_33),
        .\FSM_onehot_state_reg[1]_0 (fmap_a_rd_addr_mux[14:9]),
        .Q(patch_rd_addr),
        .\bram_addr_reg[14]_i_12 (conv_target_col),
        .\bram_addr_reg[14]_i_25 (conv_target_row),
        .dout(fmap_a_rd_data),
        .is_padding_reg_0(u_conv_n_68),
        .\kx_reg[0]_0 (u_patch_n_29),
        .\kx_reg[0]_1 (u_patch_n_32),
        .\kx_reg[1]_0 ({u_patch_n_27,u_patch_n_28}),
        .\kx_reg[1]_1 (u_patch_n_30),
        .ky__0(ky__0),
        .\ky_reg[0]_0 (u_patch_n_31),
        .\ky_reg[1]_0 ({u_patch_n_23,u_patch_n_24}),
        .mem_reg_0_7(u_fmap_b_n_2),
        .mem_reg_0_7_0(fc_fmap_rd_addr[11:9]),
        .mem_reg_0_7_1(u_fmap_b_n_1),
        .mem_reg_0_7_2({p_0_in2_in,\FSM_onehot_state_reg[8]_0 [0]}),
        .mem_reg_0_7_3({\cur_type_reg_n_0_[1] ,\cur_type_reg_n_0_[0] }),
        .mem_reg_0_7_4(u_fmap_a_n_2),
        .mem_reg_0_7_5(u_fmap_a_n_1),
        .\patch_buf_reg[8][7]_0 (fmap_b_rd_data),
        .\patch_reg[0][0][7]_0 (\patch_out[0][0]_0 ),
        .\patch_reg[0][1][7]_0 (\patch_out[0][1]_1 ),
        .\patch_reg[0][2][7]_0 (\patch_out[0][2]_2 ),
        .\patch_reg[1][0][7]_0 (\patch_out[1][0]_3 ),
        .\patch_reg[1][1][7]_0 (\patch_out[1][1]_4 ),
        .\patch_reg[1][2][7]_0 (\patch_out[1][2]_5 ),
        .\patch_reg[2][0][7]_0 (\patch_out[2][0]_6 ),
        .\patch_reg[2][1][7]_0 (\patch_out[2][1]_7 ),
        .\patch_reg[2][2][7]_0 (\patch_out[2][2]_8 ),
        .\patch_reg_reg[7][0] (u_conv_n_69),
        .patch_src(patch_src),
        .patch_start(patch_start),
        .patch_valid(patch_valid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maxpool2x2 u_pool
       (.ADDRARDADDR(fmap_b_wr_addr),
        .D(fmap_t_rd_data),
        .\FSM_onehot_state_reg[0]_0 ({\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[4] ,cur_type,\FSM_onehot_state_reg_n_0_[0] }),
        .\FSM_onehot_state_reg[0]_1 (\FSM_onehot_state[8]_i_7_n_0 ),
        .\FSM_onehot_state_reg[4]_0 (u_pool_n_32),
        .Q(cur_in_h),
        .WEA({u_pool_n_49,u_pool_n_50}),
        .din(fmap_b_wr_data),
        .done_reg_0(s00_axi_aresetn_0),
        .fc_done(fc_done),
        .mem_reg_0_7(fc_out_pixel),
        .mem_reg_0_7_0(pool_wr_offset),
        .mem_reg_0_7_1(u_fc_n_24),
        .mem_reg_0_7_2(load_we_reg_reg_n_0),
        .mem_reg_0_7_3({\load_wr_addr_reg_reg_n_0_[14] ,\load_wr_addr_reg_reg_n_0_[13] ,\load_wr_addr_reg_reg_n_0_[12] ,\load_wr_addr_reg_reg_n_0_[11] ,\load_wr_addr_reg_reg_n_0_[10] ,\load_wr_addr_reg_reg_n_0_[9] ,\load_wr_addr_reg_reg_n_0_[8] ,\load_wr_addr_reg_reg_n_0_[7] ,\load_wr_addr_reg_reg_n_0_[6] ,\load_wr_addr_reg_reg_n_0_[5] ,\load_wr_addr_reg_reg_n_0_[4] ,\load_wr_addr_reg_reg_n_0_[3] ,\load_wr_addr_reg_reg_n_0_[2] ,\load_wr_addr_reg_reg_n_0_[1] ,\load_wr_addr_reg_reg_n_0_[0] }),
        .\out_col_reg[0]_0 (pool_start_reg_n_0),
        .pool_dst(pool_dst),
        .\pool_wr_offset_reg[14] (fmap_a_wr_addr),
        .rd_addr(pool_rd_addr),
        .s00_axi_aclk(s00_axi_aclk),
        .we(u_pool_n_52),
        .wr_data(pool_wr_data),
        .wr_en(pool_wr_en),
        .wr_en_reg_0(u_pool_n_48),
        .wr_en_reg_1(u_pool_n_51),
        .wr_en_reg_2({u_pool_n_53,u_pool_n_54}),
        .wr_en_reg_3(u_pool_n_55),
        .wr_en_reg_4(u_pool_n_56));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_weight_buf u_wbuf
       (.ADDRBWRADDR(wbuf_rd_addr_mux),
        .CO(u_fc_n_51),
        .DI(u_fc_n_41),
        .DOBDO(wbuf_rd_data),
        .O(u_fc_n_52),
        .Q({\wbuf_wr_addr_reg_n_0_[11] ,\wbuf_wr_addr_reg_n_0_[10] ,\wbuf_wr_addr_reg_n_0_[9] ,\wbuf_wr_addr_reg_n_0_[8] ,\wbuf_wr_addr_reg_n_0_[7] ,\wbuf_wr_addr_reg_n_0_[6] ,\wbuf_wr_addr_reg_n_0_[5] ,\wbuf_wr_addr_reg_n_0_[4] ,\wbuf_wr_addr_reg_n_0_[3] ,\wbuf_wr_addr_reg_n_0_[2] ,\wbuf_wr_addr_reg_n_0_[1] ,\wbuf_wr_addr_reg_n_0_[0] }),
        .S({u_fc_n_49,u_fc_n_50}),
        .WEA(wbuf_we_reg_n_0),
        .\acc[11]_i_11_0 ({u_fc_n_53,u_fc_n_54,u_fc_n_55}),
        .\acc[11]_i_12_0 (u_fc_n_42),
        .\acc[11]_i_12_1 (u_fc_n_43),
        .\acc[11]_i_12_2 ({u_fc_n_56,u_fc_n_57,u_fc_n_58}),
        .\acc[11]_i_6 (u_conv_n_98),
        .\acc[15]_i_11 (u_conv_n_101),
        .\acc[15]_i_14_0 (acc1_0),
        .\acc[15]_i_17_0 (u_conv_n_100),
        .\acc[15]_i_18_0 (u_conv_n_93),
        .\acc[15]_i_7 ({u_conv_n_86,u_conv_n_87}),
        .\acc[3]_i_3__0 (u_fc_n_44),
        .\acc[7]_i_14 (u_conv_n_92),
        .\acc[7]_i_8 (u_wbuf_n_52),
        .\acc_reg[11]_i_16_0 (u_fc_n_45),
        .\acc_reg[11]_i_16_1 (u_fc_n_46),
        .\acc_reg[11]_i_16_2 (u_fc_n_47),
        .\acc_reg[11]_i_16_3 (u_fc_n_48),
        .\acc_reg[15] (u_wbuf_n_51),
        .\acc_reg[15]_i_28_0 (u_conv_n_84),
        .\acc_reg[15]_i_28_1 (u_conv_n_82),
        .\acc_reg[15]_i_28_2 (u_conv_n_80),
        .\acc_reg[15]_i_28_3 (u_conv_n_78),
        .\acc_reg[15]_i_30_0 (u_conv_n_85),
        .\acc_reg[15]_i_30_1 (u_conv_n_83),
        .\acc_reg[15]_i_30_2 (u_conv_n_81),
        .\acc_reg[15]_i_30_3 (u_conv_n_79),
        .\acc_reg[15]_i_3_0 (u_wbuf_n_43),
        .\acc_reg[15]_i_3_1 ({u_conv_n_88,u_conv_n_89,u_conv_n_90,u_conv_n_91}),
        .\acc_reg[15]_i_3_2 (u_conv_n_97),
        .\acc_reg[15]_i_8_0 ({u_conv_n_94,u_conv_n_95,u_conv_n_96}),
        .\acc_reg[16] (u_wbuf_n_10),
        .\acc_reg[17] ({u_wbuf_n_19,u_wbuf_n_20}),
        .\acc_reg[19]_i_10_0 (acc1),
        .\acc_reg[19]_i_2 (acc),
        .\acc_reg[19]_i_20_0 ({u_fc_n_33,u_fc_n_34,u_fc_n_35,u_fc_n_36,u_fc_n_37,u_fc_n_38,u_fc_n_39,u_fc_n_40}),
        .\acc_reg[19]_i_2__0 ({u_fc_n_1,u_fc_n_2}),
        .\acc_reg[19]_i_4_0 (u_wbuf_n_55),
        .\acc_reg[7]_i_7 (u_conv_n_99),
        .mem_reg_0({u_wbuf_n_8,u_wbuf_n_9}),
        .mem_reg_1({u_wbuf_n_34,u_wbuf_n_35}),
        .mem_reg_10(u_wbuf_n_54),
        .mem_reg_11(u_wbuf_n_56),
        .mem_reg_12(wbuf_wr_data),
        .mem_reg_2({u_wbuf_n_36,u_wbuf_n_37}),
        .mem_reg_3(u_wbuf_n_38),
        .mem_reg_4({u_wbuf_n_39,u_wbuf_n_40,u_wbuf_n_41,u_wbuf_n_42}),
        .mem_reg_5({u_wbuf_n_44,u_wbuf_n_45,u_wbuf_n_46}),
        .mem_reg_6({u_wbuf_n_47,u_wbuf_n_48}),
        .mem_reg_7(u_wbuf_n_49),
        .mem_reg_8(u_wbuf_n_50),
        .mem_reg_9(u_wbuf_n_53),
        .patch_reg__0(patch_reg__0),
        .s00_axi_aclk(s00_axi_aclk));
  LUT4 #(
    .INIT(16'h8000)) 
    wbuf_we_i_1
       (.I0(s_axis_tready_reg_0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_axis_tvalid),
        .I3(state1),
        .O(wbuf_we));
  FDCE wbuf_we_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_we),
        .Q(wbuf_we_reg_n_0));
  FDCE \wbuf_wr_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[0]),
        .Q(\wbuf_wr_addr_reg_n_0_[0] ));
  FDCE \wbuf_wr_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[10]),
        .Q(\wbuf_wr_addr_reg_n_0_[10] ));
  FDCE \wbuf_wr_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[11]),
        .Q(\wbuf_wr_addr_reg_n_0_[11] ));
  FDCE \wbuf_wr_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[1]),
        .Q(\wbuf_wr_addr_reg_n_0_[1] ));
  FDCE \wbuf_wr_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[2]),
        .Q(\wbuf_wr_addr_reg_n_0_[2] ));
  FDCE \wbuf_wr_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[3]),
        .Q(\wbuf_wr_addr_reg_n_0_[3] ));
  FDCE \wbuf_wr_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[4]),
        .Q(\wbuf_wr_addr_reg_n_0_[4] ));
  FDCE \wbuf_wr_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[5]),
        .Q(\wbuf_wr_addr_reg_n_0_[5] ));
  FDCE \wbuf_wr_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[6]),
        .Q(\wbuf_wr_addr_reg_n_0_[6] ));
  FDCE \wbuf_wr_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[7]),
        .Q(\wbuf_wr_addr_reg_n_0_[7] ));
  FDCE \wbuf_wr_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[8]),
        .Q(\wbuf_wr_addr_reg_n_0_[8] ));
  FDCE \wbuf_wr_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(wbuf_wr_cnt[9]),
        .Q(\wbuf_wr_addr_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wbuf_wr_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(wbuf_wr_cnt[0]),
        .O(\wbuf_wr_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[10]),
        .O(\wbuf_wr_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \wbuf_wr_cnt[11]_i_1 
       (.I0(state1),
        .I1(s_axis_tvalid),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(s_axis_tready_reg_0),
        .I4(s_axis_tready_i_3_n_0),
        .O(\wbuf_wr_cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \wbuf_wr_cnt[11]_i_10 
       (.I0(\wbuf_wr_cnt[11]_i_23_n_0 ),
        .I1(wbuf_wr_cnt[6]),
        .I2(wbuf_wr_cnt[7]),
        .I3(cur_c_in[7]),
        .I4(\wbuf_wr_cnt[11]_i_20_n_0 ),
        .I5(weight_count0[7]),
        .O(\wbuf_wr_cnt[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \wbuf_wr_cnt[11]_i_11 
       (.I0(\wbuf_wr_cnt[11]_i_24_n_0 ),
        .I1(wbuf_wr_cnt[4]),
        .I2(wbuf_wr_cnt[5]),
        .I3(cur_c_in[5]),
        .I4(\wbuf_wr_cnt[11]_i_20_n_0 ),
        .I5(weight_count0[5]),
        .O(\wbuf_wr_cnt[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \wbuf_wr_cnt[11]_i_12 
       (.I0(\wbuf_wr_cnt[11]_i_26_n_0 ),
        .I1(wbuf_wr_cnt[2]),
        .I2(wbuf_wr_cnt[3]),
        .I3(cur_c_in[3]),
        .I4(\wbuf_wr_cnt[11]_i_20_n_0 ),
        .I5(weight_count0[3]),
        .O(\wbuf_wr_cnt[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \wbuf_wr_cnt[11]_i_13 
       (.I0(cur_c_in[1]),
        .I1(wbuf_wr_cnt[1]),
        .I2(cur_c_in[0]),
        .I3(wbuf_wr_cnt[0]),
        .O(\wbuf_wr_cnt[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800080002AAA2)) 
    \wbuf_wr_cnt[11]_i_14 
       (.I0(\wbuf_wr_cnt[11]_i_27_n_0 ),
        .I1(weight_count0[6]),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(\cur_type_reg_n_0_[0] ),
        .I4(cur_c_in[6]),
        .I5(wbuf_wr_cnt[6]),
        .O(\wbuf_wr_cnt[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800080002AAA2)) 
    \wbuf_wr_cnt[11]_i_15 
       (.I0(\wbuf_wr_cnt[11]_i_28_n_0 ),
        .I1(weight_count0[4]),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(\cur_type_reg_n_0_[0] ),
        .I4(cur_c_in[4]),
        .I5(wbuf_wr_cnt[4]),
        .O(\wbuf_wr_cnt[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800080002AAA2)) 
    \wbuf_wr_cnt[11]_i_16 
       (.I0(\wbuf_wr_cnt[11]_i_29_n_0 ),
        .I1(weight_count0[2]),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(\cur_type_reg_n_0_[0] ),
        .I4(cur_c_in[2]),
        .I5(wbuf_wr_cnt[2]),
        .O(\wbuf_wr_cnt[11]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \wbuf_wr_cnt[11]_i_17 
       (.I0(wbuf_wr_cnt[1]),
        .I1(cur_c_in[1]),
        .I2(cur_c_in[0]),
        .I3(wbuf_wr_cnt[0]),
        .O(\wbuf_wr_cnt[11]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \wbuf_wr_cnt[11]_i_19 
       (.I0(cur_c_in[8]),
        .I1(\cur_type_reg_n_0_[0] ),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(weight_count0[8]),
        .O(\wbuf_wr_cnt[11]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[11]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[11]),
        .O(\wbuf_wr_cnt[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wbuf_wr_cnt[11]_i_20 
       (.I0(\cur_type_reg_n_0_[0] ),
        .I1(\cur_type_reg_n_0_[1] ),
        .O(\wbuf_wr_cnt[11]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFE0201FD)) 
    \wbuf_wr_cnt[11]_i_22 
       (.I0(weight_count0[9]),
        .I1(\cur_type_reg_n_0_[1] ),
        .I2(\cur_type_reg_n_0_[0] ),
        .I3(cur_c_in__0),
        .I4(wbuf_wr_cnt[9]),
        .O(\wbuf_wr_cnt[11]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \wbuf_wr_cnt[11]_i_23 
       (.I0(cur_c_in[6]),
        .I1(\cur_type_reg_n_0_[0] ),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(weight_count0[6]),
        .O(\wbuf_wr_cnt[11]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \wbuf_wr_cnt[11]_i_24 
       (.I0(cur_c_in[4]),
        .I1(\cur_type_reg_n_0_[0] ),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(weight_count0[4]),
        .O(\wbuf_wr_cnt[11]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \wbuf_wr_cnt[11]_i_26 
       (.I0(cur_c_in[2]),
        .I1(\cur_type_reg_n_0_[0] ),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(weight_count0[2]),
        .O(\wbuf_wr_cnt[11]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFE0201FD)) 
    \wbuf_wr_cnt[11]_i_27 
       (.I0(weight_count0[7]),
        .I1(\cur_type_reg_n_0_[1] ),
        .I2(\cur_type_reg_n_0_[0] ),
        .I3(cur_c_in[7]),
        .I4(wbuf_wr_cnt[7]),
        .O(\wbuf_wr_cnt[11]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'hFE0201FD)) 
    \wbuf_wr_cnt[11]_i_28 
       (.I0(weight_count0[5]),
        .I1(\cur_type_reg_n_0_[1] ),
        .I2(\cur_type_reg_n_0_[0] ),
        .I3(cur_c_in[5]),
        .I4(wbuf_wr_cnt[5]),
        .O(\wbuf_wr_cnt[11]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFE0201FD)) 
    \wbuf_wr_cnt[11]_i_29 
       (.I0(weight_count0[3]),
        .I1(\cur_type_reg_n_0_[1] ),
        .I2(\cur_type_reg_n_0_[0] ),
        .I3(cur_c_in[3]),
        .I4(wbuf_wr_cnt[3]),
        .O(\wbuf_wr_cnt[11]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wbuf_wr_cnt[11]_i_30 
       (.I0(cur_c_in__0),
        .I1(cur_c_in[6]),
        .O(\wbuf_wr_cnt[11]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wbuf_wr_cnt[11]_i_31 
       (.I0(cur_c_in[8]),
        .I1(cur_c_in[5]),
        .O(\wbuf_wr_cnt[11]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wbuf_wr_cnt[11]_i_32 
       (.I0(cur_c_in[7]),
        .I1(cur_c_in[4]),
        .O(\wbuf_wr_cnt[11]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wbuf_wr_cnt[11]_i_33 
       (.I0(cur_c_in[6]),
        .I1(cur_c_in[3]),
        .O(\wbuf_wr_cnt[11]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wbuf_wr_cnt[11]_i_34 
       (.I0(cur_c_in[5]),
        .I1(cur_c_in[2]),
        .O(\wbuf_wr_cnt[11]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wbuf_wr_cnt[11]_i_35 
       (.I0(cur_c_in[4]),
        .I1(cur_c_in[1]),
        .O(\wbuf_wr_cnt[11]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wbuf_wr_cnt[11]_i_36 
       (.I0(cur_c_in[3]),
        .I1(cur_c_in[0]),
        .O(\wbuf_wr_cnt[11]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000002F00000002)) 
    \wbuf_wr_cnt[11]_i_6 
       (.I0(weight_count0[10]),
        .I1(wbuf_wr_cnt[10]),
        .I2(wbuf_wr_cnt[11]),
        .I3(\cur_type_reg_n_0_[1] ),
        .I4(\cur_type_reg_n_0_[0] ),
        .I5(weight_count0[11]),
        .O(\wbuf_wr_cnt[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \wbuf_wr_cnt[11]_i_7 
       (.I0(\wbuf_wr_cnt[11]_i_19_n_0 ),
        .I1(wbuf_wr_cnt[8]),
        .I2(wbuf_wr_cnt[9]),
        .I3(cur_c_in__0),
        .I4(\wbuf_wr_cnt[11]_i_20_n_0 ),
        .I5(weight_count0[9]),
        .O(\wbuf_wr_cnt[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0201000000FC02FD)) 
    \wbuf_wr_cnt[11]_i_8 
       (.I0(weight_count0[11]),
        .I1(\cur_type_reg_n_0_[0] ),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(wbuf_wr_cnt[11]),
        .I4(weight_count0[10]),
        .I5(wbuf_wr_cnt[10]),
        .O(\wbuf_wr_cnt[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800080002AAA2)) 
    \wbuf_wr_cnt[11]_i_9 
       (.I0(\wbuf_wr_cnt[11]_i_22_n_0 ),
        .I1(weight_count0[8]),
        .I2(\cur_type_reg_n_0_[1] ),
        .I3(\cur_type_reg_n_0_[0] ),
        .I4(cur_c_in[8]),
        .I5(wbuf_wr_cnt[8]),
        .O(\wbuf_wr_cnt[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[1]),
        .O(\wbuf_wr_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[2]),
        .O(\wbuf_wr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[3]),
        .O(\wbuf_wr_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[4]),
        .O(\wbuf_wr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[5]),
        .O(\wbuf_wr_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[6]),
        .O(\wbuf_wr_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[7]),
        .O(\wbuf_wr_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[8]),
        .O(\wbuf_wr_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wbuf_wr_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in34[9]),
        .O(\wbuf_wr_cnt[9]_i_1_n_0 ));
  FDCE \wbuf_wr_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[0]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[0]));
  FDCE \wbuf_wr_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[10]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[10]));
  FDCE \wbuf_wr_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[11]_i_2_n_0 ),
        .Q(wbuf_wr_cnt[11]));
  CARRY4 \wbuf_wr_cnt_reg[11]_i_18 
       (.CI(\wbuf_wr_cnt_reg[11]_i_21_n_0 ),
        .CO({\NLW_wbuf_wr_cnt_reg[11]_i_18_CO_UNCONNECTED [3:1],\wbuf_wr_cnt_reg[11]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wbuf_wr_cnt_reg[11]_i_18_O_UNCONNECTED [3:2],weight_count0[11:10]}),
        .S({1'b0,1'b0,cur_c_in[8:7]}));
  CARRY4 \wbuf_wr_cnt_reg[11]_i_21 
       (.CI(\wbuf_wr_cnt_reg[11]_i_25_n_0 ),
        .CO({\wbuf_wr_cnt_reg[11]_i_21_n_0 ,\wbuf_wr_cnt_reg[11]_i_21_n_1 ,\wbuf_wr_cnt_reg[11]_i_21_n_2 ,\wbuf_wr_cnt_reg[11]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({cur_c_in__0,cur_c_in[8:6]}),
        .O(weight_count0[9:6]),
        .S({\wbuf_wr_cnt[11]_i_30_n_0 ,\wbuf_wr_cnt[11]_i_31_n_0 ,\wbuf_wr_cnt[11]_i_32_n_0 ,\wbuf_wr_cnt[11]_i_33_n_0 }));
  CARRY4 \wbuf_wr_cnt_reg[11]_i_25 
       (.CI(1'b0),
        .CO({\wbuf_wr_cnt_reg[11]_i_25_n_0 ,\wbuf_wr_cnt_reg[11]_i_25_n_1 ,\wbuf_wr_cnt_reg[11]_i_25_n_2 ,\wbuf_wr_cnt_reg[11]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({cur_c_in[5:3],1'b0}),
        .O(weight_count0[5:2]),
        .S({\wbuf_wr_cnt[11]_i_34_n_0 ,\wbuf_wr_cnt[11]_i_35_n_0 ,\wbuf_wr_cnt[11]_i_36_n_0 ,cur_c_in[2]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \wbuf_wr_cnt_reg[11]_i_3 
       (.CI(\wbuf_wr_cnt_reg[11]_i_5_n_0 ),
        .CO({\NLW_wbuf_wr_cnt_reg[11]_i_3_CO_UNCONNECTED [3:2],state1,\wbuf_wr_cnt_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\wbuf_wr_cnt[11]_i_6_n_0 ,\wbuf_wr_cnt[11]_i_7_n_0 }),
        .O(\NLW_wbuf_wr_cnt_reg[11]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\wbuf_wr_cnt[11]_i_8_n_0 ,\wbuf_wr_cnt[11]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wbuf_wr_cnt_reg[11]_i_4 
       (.CI(\wbuf_wr_cnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_wbuf_wr_cnt_reg[11]_i_4_CO_UNCONNECTED [3:2],\wbuf_wr_cnt_reg[11]_i_4_n_2 ,\wbuf_wr_cnt_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wbuf_wr_cnt_reg[11]_i_4_O_UNCONNECTED [3],in34[11:9]}),
        .S({1'b0,wbuf_wr_cnt[11:9]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \wbuf_wr_cnt_reg[11]_i_5 
       (.CI(1'b0),
        .CO({\wbuf_wr_cnt_reg[11]_i_5_n_0 ,\wbuf_wr_cnt_reg[11]_i_5_n_1 ,\wbuf_wr_cnt_reg[11]_i_5_n_2 ,\wbuf_wr_cnt_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\wbuf_wr_cnt[11]_i_10_n_0 ,\wbuf_wr_cnt[11]_i_11_n_0 ,\wbuf_wr_cnt[11]_i_12_n_0 ,\wbuf_wr_cnt[11]_i_13_n_0 }),
        .O(\NLW_wbuf_wr_cnt_reg[11]_i_5_O_UNCONNECTED [3:0]),
        .S({\wbuf_wr_cnt[11]_i_14_n_0 ,\wbuf_wr_cnt[11]_i_15_n_0 ,\wbuf_wr_cnt[11]_i_16_n_0 ,\wbuf_wr_cnt[11]_i_17_n_0 }));
  FDCE \wbuf_wr_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[1]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[1]));
  FDCE \wbuf_wr_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[2]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[2]));
  FDCE \wbuf_wr_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[3]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[3]));
  FDCE \wbuf_wr_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[4]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wbuf_wr_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\wbuf_wr_cnt_reg[4]_i_2_n_0 ,\wbuf_wr_cnt_reg[4]_i_2_n_1 ,\wbuf_wr_cnt_reg[4]_i_2_n_2 ,\wbuf_wr_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(wbuf_wr_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in34[4:1]),
        .S(wbuf_wr_cnt[4:1]));
  FDCE \wbuf_wr_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[5]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[5]));
  FDCE \wbuf_wr_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[6]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[6]));
  FDCE \wbuf_wr_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[7]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[7]));
  FDCE \wbuf_wr_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[8]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wbuf_wr_cnt_reg[8]_i_2 
       (.CI(\wbuf_wr_cnt_reg[4]_i_2_n_0 ),
        .CO({\wbuf_wr_cnt_reg[8]_i_2_n_0 ,\wbuf_wr_cnt_reg[8]_i_2_n_1 ,\wbuf_wr_cnt_reg[8]_i_2_n_2 ,\wbuf_wr_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in34[8:5]),
        .S(wbuf_wr_cnt[8:5]));
  FDCE \wbuf_wr_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\wbuf_wr_cnt[11]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\wbuf_wr_cnt[9]_i_1_n_0 ),
        .Q(wbuf_wr_cnt[9]));
  FDCE \wbuf_wr_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[0]),
        .Q(wbuf_wr_data[0]));
  FDCE \wbuf_wr_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[1]),
        .Q(wbuf_wr_data[1]));
  FDCE \wbuf_wr_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[2]),
        .Q(wbuf_wr_data[2]));
  FDCE \wbuf_wr_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[3]),
        .Q(wbuf_wr_data[3]));
  FDCE \wbuf_wr_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[4]),
        .Q(wbuf_wr_data[4]));
  FDCE \wbuf_wr_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[5]),
        .Q(wbuf_wr_data[5]));
  FDCE \wbuf_wr_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[6]),
        .Q(wbuf_wr_data[6]));
  FDCE \wbuf_wr_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(wbuf_we),
        .CLR(s00_axi_aresetn_0),
        .D(s_axis_tdata[7]),
        .Q(wbuf_wr_data[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_patch_reader
   (s00_axi_aresetn_0,
    patch_valid,
    ADDRBWRADDR,
    Q,
    \FSM_onehot_state_reg[1]_0 ,
    \ky_reg[1]_0 ,
    ky__0,
    \kx_reg[1]_0 ,
    \kx_reg[0]_0 ,
    \kx_reg[1]_1 ,
    \ky_reg[0]_0 ,
    \kx_reg[0]_1 ,
    E,
    \patch_reg[0][0][7]_0 ,
    \patch_reg[0][1][7]_0 ,
    \patch_reg[0][2][7]_0 ,
    \patch_reg[1][0][7]_0 ,
    \patch_reg[1][1][7]_0 ,
    \patch_reg[1][2][7]_0 ,
    \patch_reg[2][0][7]_0 ,
    \patch_reg[2][1][7]_0 ,
    \patch_reg[2][2][7]_0 ,
    is_padding_reg_0,
    s00_axi_aclk,
    s00_axi_aresetn,
    mem_reg_0_7,
    mem_reg_0_7_0,
    mem_reg_0_7_1,
    mem_reg_0_7_2,
    mem_reg_0_7_3,
    patch_src,
    mem_reg_0_7_4,
    mem_reg_0_7_5,
    \bram_addr_reg[14]_i_25 ,
    \bram_addr_reg[14]_i_12 ,
    patch_start,
    \patch_reg_reg[7][0] ,
    dout,
    \patch_buf_reg[8][7]_0 ,
    D);
  output s00_axi_aresetn_0;
  output patch_valid;
  output [5:0]ADDRBWRADDR;
  output [8:0]Q;
  output [5:0]\FSM_onehot_state_reg[1]_0 ;
  output [1:0]\ky_reg[1]_0 ;
  output [1:0]ky__0;
  output [1:0]\kx_reg[1]_0 ;
  output \kx_reg[0]_0 ;
  output \kx_reg[1]_1 ;
  output [0:0]\ky_reg[0]_0 ;
  output [0:0]\kx_reg[0]_1 ;
  output [0:0]E;
  output [7:0]\patch_reg[0][0][7]_0 ;
  output [7:0]\patch_reg[0][1][7]_0 ;
  output [7:0]\patch_reg[0][2][7]_0 ;
  output [7:0]\patch_reg[1][0][7]_0 ;
  output [7:0]\patch_reg[1][1][7]_0 ;
  output [7:0]\patch_reg[1][2][7]_0 ;
  output [7:0]\patch_reg[2][0][7]_0 ;
  output [7:0]\patch_reg[2][1][7]_0 ;
  output [7:0]\patch_reg[2][2][7]_0 ;
  input is_padding_reg_0;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input mem_reg_0_7;
  input [2:0]mem_reg_0_7_0;
  input mem_reg_0_7_1;
  input [1:0]mem_reg_0_7_2;
  input [1:0]mem_reg_0_7_3;
  input patch_src;
  input mem_reg_0_7_4;
  input mem_reg_0_7_5;
  input [1:0]\bram_addr_reg[14]_i_25 ;
  input [1:0]\bram_addr_reg[14]_i_12 ;
  input patch_start;
  input [0:0]\patch_reg_reg[7][0] ;
  input [7:0]dout;
  input [7:0]\patch_buf_reg[8][7]_0 ;
  input [14:0]D;

  wire [5:0]ADDRBWRADDR;
  wire [14:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire [5:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [8:0]Q;
  wire [1:0]\bram_addr_reg[14]_i_12 ;
  wire [1:0]\bram_addr_reg[14]_i_25 ;
  wire [7:0]dout;
  wire is_padding;
  wire is_padding_reg_0;
  wire \kx[0]_i_1_n_0 ;
  wire \kx[1]_i_1_n_0 ;
  wire \kx_reg[0]_0 ;
  wire [0:0]\kx_reg[0]_1 ;
  wire [1:0]\kx_reg[1]_0 ;
  wire \kx_reg[1]_1 ;
  wire \ky[0]_i_1_n_0 ;
  wire \ky[1]_i_1_n_0 ;
  wire [1:0]ky__0;
  wire [0:0]\ky_reg[0]_0 ;
  wire [1:0]\ky_reg[1]_0 ;
  wire mem_reg_0_7;
  wire [2:0]mem_reg_0_7_0;
  wire mem_reg_0_7_1;
  wire [1:0]mem_reg_0_7_2;
  wire [1:0]mem_reg_0_7_3;
  wire mem_reg_0_7_4;
  wire mem_reg_0_7_5;
  wire patch;
  wire patch_buf;
  wire \patch_buf[0][0]_i_1_n_0 ;
  wire \patch_buf[0][1]_i_1_n_0 ;
  wire \patch_buf[0][2]_i_1_n_0 ;
  wire \patch_buf[0][3]_i_1_n_0 ;
  wire \patch_buf[0][4]_i_1_n_0 ;
  wire \patch_buf[0][5]_i_1_n_0 ;
  wire \patch_buf[0][6]_i_1_n_0 ;
  wire \patch_buf[0][7]_i_2_n_0 ;
  wire \patch_buf[1][7]_i_1_n_0 ;
  wire \patch_buf[2][7]_i_1_n_0 ;
  wire \patch_buf[3][7]_i_1_n_0 ;
  wire \patch_buf[4][7]_i_1_n_0 ;
  wire \patch_buf[5][7]_i_1_n_0 ;
  wire \patch_buf[6][7]_i_1_n_0 ;
  wire \patch_buf[7][7]_i_1_n_0 ;
  wire \patch_buf[8][7]_i_1_n_0 ;
  wire [7:0]\patch_buf_reg[0]__0 ;
  wire [7:0]\patch_buf_reg[1]__0 ;
  wire [7:0]\patch_buf_reg[2]__0 ;
  wire [7:0]\patch_buf_reg[3]__0 ;
  wire [7:0]\patch_buf_reg[4]__0 ;
  wire [7:0]\patch_buf_reg[5]__0 ;
  wire [7:0]\patch_buf_reg[6]__0 ;
  wire [7:0]\patch_buf_reg[7]__0 ;
  wire [7:0]\patch_buf_reg[8][7]_0 ;
  wire [7:0]\patch_buf_reg[8]__0 ;
  wire [14:9]patch_rd_addr;
  wire [7:0]\patch_reg[0][0][7]_0 ;
  wire [7:0]\patch_reg[0][1][7]_0 ;
  wire [7:0]\patch_reg[0][2][7]_0 ;
  wire [7:0]\patch_reg[1][0][7]_0 ;
  wire [7:0]\patch_reg[1][1][7]_0 ;
  wire [7:0]\patch_reg[1][2][7]_0 ;
  wire [7:0]\patch_reg[2][0][7]_0 ;
  wire [7:0]\patch_reg[2][1][7]_0 ;
  wire [7:0]\patch_reg[2][2][7]_0 ;
  wire [0:0]\patch_reg_reg[7][0] ;
  wire patch_src;
  wire patch_start;
  wire patch_valid;
  wire [3:1]rd_cnt;
  wire \rd_cnt[0]_i_1_n_0 ;
  wire \rd_cnt[3]_i_1_n_0 ;
  wire \rd_cnt[3]_i_3_n_0 ;
  wire \rd_cnt_reg_n_0_[0] ;
  wire \rd_cnt_reg_n_0_[1] ;
  wire \rd_cnt_reg_n_0_[2] ;
  wire \rd_cnt_reg_n_0_[3] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;

  LUT6 #(
    .INIT(64'hFFFFFFFBAAAAAAAA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\rd_cnt_reg_n_0_[3] ),
        .I2(\rd_cnt_reg_n_0_[2] ),
        .I3(\rd_cnt_reg_n_0_[0] ),
        .I4(\rd_cnt_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(patch),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(patch_start),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[1] ),
        .I2(\rd_cnt_reg_n_0_[3] ),
        .I3(\rd_cnt_reg_n_0_[2] ),
        .I4(\rd_cnt_reg_n_0_[0] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:00001,S_WAIT:00100,S_COLLECT:01000,S_READ:00010,S_OUTPUT:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(patch),
        .PRE(s00_axi_aresetn_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S_IDLE:00001,S_WAIT:00100,S_COLLECT:01000,S_READ:00010,S_OUTPUT:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S_IDLE:00001,S_WAIT:00100,S_COLLECT:01000,S_READ:00010,S_OUTPUT:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S_IDLE:00001,S_WAIT:00100,S_COLLECT:01000,S_READ:00010,S_OUTPUT:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S_IDLE:00001,S_WAIT:00100,S_COLLECT:01000,S_READ:00010,S_OUTPUT:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_state[4]_i_2_n_0 ),
        .Q(patch));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[14]_i_39 
       (.I0(\kx_reg[1]_1 ),
        .I1(\bram_addr_reg[14]_i_12 [1]),
        .O(\kx_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_41 
       (.I0(\kx_reg[0]_0 ),
        .I1(\bram_addr_reg[14]_i_12 [0]),
        .O(\kx_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'hE11E)) 
    \bram_addr[14]_i_44 
       (.I0(\kx_reg[0]_0 ),
        .I1(\bram_addr_reg[14]_i_12 [0]),
        .I2(\kx_reg[1]_1 ),
        .I3(\bram_addr_reg[14]_i_12 [1]),
        .O(\kx_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[14]_i_46 
       (.I0(ky__0[1]),
        .I1(\bram_addr_reg[14]_i_25 [1]),
        .O(\ky_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_addr[14]_i_48 
       (.I0(ky__0[0]),
        .I1(\bram_addr_reg[14]_i_25 [0]),
        .O(\ky_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'hE11E)) 
    \bram_addr[14]_i_51 
       (.I0(ky__0[0]),
        .I1(\bram_addr_reg[14]_i_25 [0]),
        .I2(ky__0[1]),
        .I3(\bram_addr_reg[14]_i_25 [1]),
        .O(\ky_reg[0]_0 ));
  FDCE \bram_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \bram_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[10]),
        .Q(patch_rd_addr[10]));
  FDCE \bram_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[11]),
        .Q(patch_rd_addr[11]));
  FDCE \bram_addr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[12]),
        .Q(patch_rd_addr[12]));
  FDCE \bram_addr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[13]),
        .Q(patch_rd_addr[13]));
  FDCE \bram_addr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[14]),
        .Q(patch_rd_addr[14]));
  FDCE \bram_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \bram_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \bram_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \bram_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \bram_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \bram_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \bram_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \bram_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \bram_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(D[9]),
        .Q(patch_rd_addr[9]));
  FDCE is_padding_reg
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(s00_axi_aresetn_0),
        .D(is_padding_reg_0),
        .Q(is_padding));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h03334444)) 
    \kx[0]_i_1 
       (.I0(\kx_reg[1]_1 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(patch_start),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\kx_reg[0]_0 ),
        .O(\kx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h03338888)) 
    \kx[1]_i_1 
       (.I0(\kx_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(patch_start),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\kx_reg[1]_1 ),
        .O(\kx[1]_i_1_n_0 ));
  FDCE \kx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\kx[0]_i_1_n_0 ),
        .Q(\kx_reg[0]_0 ));
  FDCE \kx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\kx[1]_i_1_n_0 ),
        .Q(\kx_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h7707777788F80000)) 
    \ky[0]_i_1 
       (.I0(patch_start),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\kx_reg[1]_1 ),
        .I3(\kx_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(ky__0[0]),
        .O(\ky[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7757333388A80000)) 
    \ky[1]_i_1 
       (.I0(ky__0[0]),
        .I1(\rd_cnt[3]_i_3_n_0 ),
        .I2(\kx_reg[1]_1 ),
        .I3(\kx_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(ky__0[1]),
        .O(\ky[1]_i_1_n_0 ));
  FDCE \ky_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\ky[0]_i_1_n_0 ),
        .Q(ky__0[0]));
  FDCE \ky_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\ky[1]_i_1_n_0 ),
        .Q(ky__0[1]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    mem_reg_0_0_i_17
       (.I0(mem_reg_0_7_2[0]),
        .I1(mem_reg_0_7_3[0]),
        .I2(mem_reg_0_7_3[1]),
        .I3(mem_reg_0_7_2[1]),
        .I4(patch_src),
        .I5(patch_rd_addr[14]),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    mem_reg_0_0_i_17__0
       (.I0(mem_reg_0_7_2[0]),
        .I1(mem_reg_0_7_3[0]),
        .I2(mem_reg_0_7_3[1]),
        .I3(mem_reg_0_7_2[1]),
        .I4(patch_src),
        .I5(patch_rd_addr[14]),
        .O(\FSM_onehot_state_reg[1]_0 [5]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    mem_reg_0_0_i_18
       (.I0(mem_reg_0_7_2[0]),
        .I1(mem_reg_0_7_3[0]),
        .I2(mem_reg_0_7_3[1]),
        .I3(mem_reg_0_7_2[1]),
        .I4(patch_src),
        .I5(patch_rd_addr[13]),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    mem_reg_0_0_i_18__0
       (.I0(mem_reg_0_7_2[0]),
        .I1(mem_reg_0_7_3[0]),
        .I2(mem_reg_0_7_3[1]),
        .I3(mem_reg_0_7_2[1]),
        .I4(patch_src),
        .I5(patch_rd_addr[13]),
        .O(\FSM_onehot_state_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    mem_reg_0_0_i_19
       (.I0(mem_reg_0_7_2[0]),
        .I1(mem_reg_0_7_3[0]),
        .I2(mem_reg_0_7_3[1]),
        .I3(mem_reg_0_7_2[1]),
        .I4(patch_src),
        .I5(patch_rd_addr[12]),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    mem_reg_0_0_i_19__0
       (.I0(mem_reg_0_7_2[0]),
        .I1(mem_reg_0_7_3[0]),
        .I2(mem_reg_0_7_3[1]),
        .I3(mem_reg_0_7_2[1]),
        .I4(patch_src),
        .I5(patch_rd_addr[12]),
        .O(\FSM_onehot_state_reg[1]_0 [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_i_20
       (.I0(patch_rd_addr[11]),
        .I1(mem_reg_0_7),
        .I2(mem_reg_0_7_0[2]),
        .I3(mem_reg_0_7_1),
        .O(ADDRBWRADDR[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_i_20__0
       (.I0(patch_rd_addr[11]),
        .I1(mem_reg_0_7_4),
        .I2(mem_reg_0_7_0[2]),
        .I3(mem_reg_0_7_5),
        .O(\FSM_onehot_state_reg[1]_0 [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_i_21
       (.I0(patch_rd_addr[10]),
        .I1(mem_reg_0_7),
        .I2(mem_reg_0_7_0[1]),
        .I3(mem_reg_0_7_1),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_i_21__0
       (.I0(patch_rd_addr[10]),
        .I1(mem_reg_0_7_4),
        .I2(mem_reg_0_7_0[1]),
        .I3(mem_reg_0_7_5),
        .O(\FSM_onehot_state_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_i_22
       (.I0(patch_rd_addr[9]),
        .I1(mem_reg_0_7),
        .I2(mem_reg_0_7_0[0]),
        .I3(mem_reg_0_7_1),
        .O(ADDRBWRADDR[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_i_22__0
       (.I0(patch_rd_addr[9]),
        .I1(mem_reg_0_7_4),
        .I2(mem_reg_0_7_0[0]),
        .I3(mem_reg_0_7_5),
        .O(\FSM_onehot_state_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \patch_buf[0][0]_i_1 
       (.I0(dout[0]),
        .I1(patch_src),
        .I2(\patch_buf_reg[8][7]_0 [0]),
        .I3(is_padding),
        .O(\patch_buf[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \patch_buf[0][1]_i_1 
       (.I0(dout[1]),
        .I1(patch_src),
        .I2(\patch_buf_reg[8][7]_0 [1]),
        .I3(is_padding),
        .O(\patch_buf[0][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \patch_buf[0][2]_i_1 
       (.I0(dout[2]),
        .I1(patch_src),
        .I2(\patch_buf_reg[8][7]_0 [2]),
        .I3(is_padding),
        .O(\patch_buf[0][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \patch_buf[0][3]_i_1 
       (.I0(dout[3]),
        .I1(patch_src),
        .I2(\patch_buf_reg[8][7]_0 [3]),
        .I3(is_padding),
        .O(\patch_buf[0][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \patch_buf[0][4]_i_1 
       (.I0(dout[4]),
        .I1(patch_src),
        .I2(\patch_buf_reg[8][7]_0 [4]),
        .I3(is_padding),
        .O(\patch_buf[0][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \patch_buf[0][5]_i_1 
       (.I0(dout[5]),
        .I1(patch_src),
        .I2(\patch_buf_reg[8][7]_0 [5]),
        .I3(is_padding),
        .O(\patch_buf[0][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \patch_buf[0][6]_i_1 
       (.I0(dout[6]),
        .I1(patch_src),
        .I2(\patch_buf_reg[8][7]_0 [6]),
        .I3(is_padding),
        .O(\patch_buf[0][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \patch_buf[0][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[0] ),
        .I2(\rd_cnt_reg_n_0_[1] ),
        .I3(\rd_cnt_reg_n_0_[3] ),
        .I4(\rd_cnt_reg_n_0_[2] ),
        .O(patch_buf));
  LUT4 #(
    .INIT(16'h00E2)) 
    \patch_buf[0][7]_i_2 
       (.I0(dout[7]),
        .I1(patch_src),
        .I2(\patch_buf_reg[8][7]_0 [7]),
        .I3(is_padding),
        .O(\patch_buf[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \patch_buf[1][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[1] ),
        .I2(\rd_cnt_reg_n_0_[0] ),
        .I3(\rd_cnt_reg_n_0_[3] ),
        .I4(\rd_cnt_reg_n_0_[2] ),
        .O(\patch_buf[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \patch_buf[2][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[0] ),
        .I2(\rd_cnt_reg_n_0_[1] ),
        .I3(\rd_cnt_reg_n_0_[3] ),
        .I4(\rd_cnt_reg_n_0_[2] ),
        .O(\patch_buf[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \patch_buf[3][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[1] ),
        .I2(\rd_cnt_reg_n_0_[0] ),
        .I3(\rd_cnt_reg_n_0_[3] ),
        .I4(\rd_cnt_reg_n_0_[2] ),
        .O(\patch_buf[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \patch_buf[4][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[0] ),
        .I2(\rd_cnt_reg_n_0_[2] ),
        .I3(\rd_cnt_reg_n_0_[1] ),
        .I4(\rd_cnt_reg_n_0_[3] ),
        .O(\patch_buf[4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \patch_buf[5][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[0] ),
        .I2(\rd_cnt_reg_n_0_[2] ),
        .I3(\rd_cnt_reg_n_0_[1] ),
        .I4(\rd_cnt_reg_n_0_[3] ),
        .O(\patch_buf[5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \patch_buf[6][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[1] ),
        .I2(\rd_cnt_reg_n_0_[2] ),
        .I3(\rd_cnt_reg_n_0_[0] ),
        .I4(\rd_cnt_reg_n_0_[3] ),
        .O(\patch_buf[6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \patch_buf[7][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[1] ),
        .I2(\rd_cnt_reg_n_0_[0] ),
        .I3(\rd_cnt_reg_n_0_[2] ),
        .I4(\rd_cnt_reg_n_0_[3] ),
        .O(\patch_buf[7][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \patch_buf[8][7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[0] ),
        .I2(\rd_cnt_reg_n_0_[3] ),
        .I3(\rd_cnt_reg_n_0_[1] ),
        .I4(\rd_cnt_reg_n_0_[2] ),
        .O(\patch_buf[8][7]_i_1_n_0 ));
  FDCE \patch_buf_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(patch_buf),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[0]__0 [0]));
  FDCE \patch_buf_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(patch_buf),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[0]__0 [1]));
  FDCE \patch_buf_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(patch_buf),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[0]__0 [2]));
  FDCE \patch_buf_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(patch_buf),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[0]__0 [3]));
  FDCE \patch_buf_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(patch_buf),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[0]__0 [4]));
  FDCE \patch_buf_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(patch_buf),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[0]__0 [5]));
  FDCE \patch_buf_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(patch_buf),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[0]__0 [6]));
  FDCE \patch_buf_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(patch_buf),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[0]__0 [7]));
  FDCE \patch_buf_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[1][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[1]__0 [0]));
  FDCE \patch_buf_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[1][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[1]__0 [1]));
  FDCE \patch_buf_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[1][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[1]__0 [2]));
  FDCE \patch_buf_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[1][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[1]__0 [3]));
  FDCE \patch_buf_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[1][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[1]__0 [4]));
  FDCE \patch_buf_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[1][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[1]__0 [5]));
  FDCE \patch_buf_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[1][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[1]__0 [6]));
  FDCE \patch_buf_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[1][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[1]__0 [7]));
  FDCE \patch_buf_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[2][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[2]__0 [0]));
  FDCE \patch_buf_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[2][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[2]__0 [1]));
  FDCE \patch_buf_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[2][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[2]__0 [2]));
  FDCE \patch_buf_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[2][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[2]__0 [3]));
  FDCE \patch_buf_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[2][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[2]__0 [4]));
  FDCE \patch_buf_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[2][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[2]__0 [5]));
  FDCE \patch_buf_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[2][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[2]__0 [6]));
  FDCE \patch_buf_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[2][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[2]__0 [7]));
  FDCE \patch_buf_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[3][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[3]__0 [0]));
  FDCE \patch_buf_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[3][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[3]__0 [1]));
  FDCE \patch_buf_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[3][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[3]__0 [2]));
  FDCE \patch_buf_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[3][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[3]__0 [3]));
  FDCE \patch_buf_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[3][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[3]__0 [4]));
  FDCE \patch_buf_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[3][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[3]__0 [5]));
  FDCE \patch_buf_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[3][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[3]__0 [6]));
  FDCE \patch_buf_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[3][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[3]__0 [7]));
  FDCE \patch_buf_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[4][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[4]__0 [0]));
  FDCE \patch_buf_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[4][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[4]__0 [1]));
  FDCE \patch_buf_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[4][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[4]__0 [2]));
  FDCE \patch_buf_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[4][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[4]__0 [3]));
  FDCE \patch_buf_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[4][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[4]__0 [4]));
  FDCE \patch_buf_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[4][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[4]__0 [5]));
  FDCE \patch_buf_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[4][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[4]__0 [6]));
  FDCE \patch_buf_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[4][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[4]__0 [7]));
  FDCE \patch_buf_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[5][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[5]__0 [0]));
  FDCE \patch_buf_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[5][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[5]__0 [1]));
  FDCE \patch_buf_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[5][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[5]__0 [2]));
  FDCE \patch_buf_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[5][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[5]__0 [3]));
  FDCE \patch_buf_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[5][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[5]__0 [4]));
  FDCE \patch_buf_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[5][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[5]__0 [5]));
  FDCE \patch_buf_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[5][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[5]__0 [6]));
  FDCE \patch_buf_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[5][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[5]__0 [7]));
  FDCE \patch_buf_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[6][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[6]__0 [0]));
  FDCE \patch_buf_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[6][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[6]__0 [1]));
  FDCE \patch_buf_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[6][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[6]__0 [2]));
  FDCE \patch_buf_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[6][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[6]__0 [3]));
  FDCE \patch_buf_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[6][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[6]__0 [4]));
  FDCE \patch_buf_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[6][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[6]__0 [5]));
  FDCE \patch_buf_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[6][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[6]__0 [6]));
  FDCE \patch_buf_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[6][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[6]__0 [7]));
  FDCE \patch_buf_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[7][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[7]__0 [0]));
  FDCE \patch_buf_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[7][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[7]__0 [1]));
  FDCE \patch_buf_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[7][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[7]__0 [2]));
  FDCE \patch_buf_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[7][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[7]__0 [3]));
  FDCE \patch_buf_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[7][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[7]__0 [4]));
  FDCE \patch_buf_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[7][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[7]__0 [5]));
  FDCE \patch_buf_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[7][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[7]__0 [6]));
  FDCE \patch_buf_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[7][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[7]__0 [7]));
  FDCE \patch_buf_reg[8][0] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[8][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][0]_i_1_n_0 ),
        .Q(\patch_buf_reg[8]__0 [0]));
  FDCE \patch_buf_reg[8][1] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[8][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][1]_i_1_n_0 ),
        .Q(\patch_buf_reg[8]__0 [1]));
  FDCE \patch_buf_reg[8][2] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[8][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][2]_i_1_n_0 ),
        .Q(\patch_buf_reg[8]__0 [2]));
  FDCE \patch_buf_reg[8][3] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[8][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][3]_i_1_n_0 ),
        .Q(\patch_buf_reg[8]__0 [3]));
  FDCE \patch_buf_reg[8][4] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[8][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][4]_i_1_n_0 ),
        .Q(\patch_buf_reg[8]__0 [4]));
  FDCE \patch_buf_reg[8][5] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[8][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][5]_i_1_n_0 ),
        .Q(\patch_buf_reg[8]__0 [5]));
  FDCE \patch_buf_reg[8][6] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[8][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][6]_i_1_n_0 ),
        .Q(\patch_buf_reg[8]__0 [6]));
  FDCE \patch_buf_reg[8][7] 
       (.C(s00_axi_aclk),
        .CE(\patch_buf[8][7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf[0][7]_i_2_n_0 ),
        .Q(\patch_buf_reg[8]__0 [7]));
  FDCE \patch_reg[0][0][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[0]__0 [0]),
        .Q(\patch_reg[0][0][7]_0 [0]));
  FDCE \patch_reg[0][0][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[0]__0 [1]),
        .Q(\patch_reg[0][0][7]_0 [1]));
  FDCE \patch_reg[0][0][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[0]__0 [2]),
        .Q(\patch_reg[0][0][7]_0 [2]));
  FDCE \patch_reg[0][0][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[0]__0 [3]),
        .Q(\patch_reg[0][0][7]_0 [3]));
  FDCE \patch_reg[0][0][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[0]__0 [4]),
        .Q(\patch_reg[0][0][7]_0 [4]));
  FDCE \patch_reg[0][0][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[0]__0 [5]),
        .Q(\patch_reg[0][0][7]_0 [5]));
  FDCE \patch_reg[0][0][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[0]__0 [6]),
        .Q(\patch_reg[0][0][7]_0 [6]));
  FDCE \patch_reg[0][0][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[0]__0 [7]),
        .Q(\patch_reg[0][0][7]_0 [7]));
  FDCE \patch_reg[0][1][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[1]__0 [0]),
        .Q(\patch_reg[0][1][7]_0 [0]));
  FDCE \patch_reg[0][1][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[1]__0 [1]),
        .Q(\patch_reg[0][1][7]_0 [1]));
  FDCE \patch_reg[0][1][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[1]__0 [2]),
        .Q(\patch_reg[0][1][7]_0 [2]));
  FDCE \patch_reg[0][1][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[1]__0 [3]),
        .Q(\patch_reg[0][1][7]_0 [3]));
  FDCE \patch_reg[0][1][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[1]__0 [4]),
        .Q(\patch_reg[0][1][7]_0 [4]));
  FDCE \patch_reg[0][1][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[1]__0 [5]),
        .Q(\patch_reg[0][1][7]_0 [5]));
  FDCE \patch_reg[0][1][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[1]__0 [6]),
        .Q(\patch_reg[0][1][7]_0 [6]));
  FDCE \patch_reg[0][1][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[1]__0 [7]),
        .Q(\patch_reg[0][1][7]_0 [7]));
  FDCE \patch_reg[0][2][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[2]__0 [0]),
        .Q(\patch_reg[0][2][7]_0 [0]));
  FDCE \patch_reg[0][2][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[2]__0 [1]),
        .Q(\patch_reg[0][2][7]_0 [1]));
  FDCE \patch_reg[0][2][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[2]__0 [2]),
        .Q(\patch_reg[0][2][7]_0 [2]));
  FDCE \patch_reg[0][2][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[2]__0 [3]),
        .Q(\patch_reg[0][2][7]_0 [3]));
  FDCE \patch_reg[0][2][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[2]__0 [4]),
        .Q(\patch_reg[0][2][7]_0 [4]));
  FDCE \patch_reg[0][2][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[2]__0 [5]),
        .Q(\patch_reg[0][2][7]_0 [5]));
  FDCE \patch_reg[0][2][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[2]__0 [6]),
        .Q(\patch_reg[0][2][7]_0 [6]));
  FDCE \patch_reg[0][2][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[2]__0 [7]),
        .Q(\patch_reg[0][2][7]_0 [7]));
  LUT3 #(
    .INIT(8'h80)) 
    \patch_reg[0][7]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(patch_valid),
        .I2(\patch_reg_reg[7][0] ),
        .O(E));
  FDCE \patch_reg[1][0][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[3]__0 [0]),
        .Q(\patch_reg[1][0][7]_0 [0]));
  FDCE \patch_reg[1][0][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[3]__0 [1]),
        .Q(\patch_reg[1][0][7]_0 [1]));
  FDCE \patch_reg[1][0][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[3]__0 [2]),
        .Q(\patch_reg[1][0][7]_0 [2]));
  FDCE \patch_reg[1][0][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[3]__0 [3]),
        .Q(\patch_reg[1][0][7]_0 [3]));
  FDCE \patch_reg[1][0][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[3]__0 [4]),
        .Q(\patch_reg[1][0][7]_0 [4]));
  FDCE \patch_reg[1][0][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[3]__0 [5]),
        .Q(\patch_reg[1][0][7]_0 [5]));
  FDCE \patch_reg[1][0][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[3]__0 [6]),
        .Q(\patch_reg[1][0][7]_0 [6]));
  FDCE \patch_reg[1][0][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[3]__0 [7]),
        .Q(\patch_reg[1][0][7]_0 [7]));
  FDCE \patch_reg[1][1][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[4]__0 [0]),
        .Q(\patch_reg[1][1][7]_0 [0]));
  FDCE \patch_reg[1][1][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[4]__0 [1]),
        .Q(\patch_reg[1][1][7]_0 [1]));
  FDCE \patch_reg[1][1][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[4]__0 [2]),
        .Q(\patch_reg[1][1][7]_0 [2]));
  FDCE \patch_reg[1][1][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[4]__0 [3]),
        .Q(\patch_reg[1][1][7]_0 [3]));
  FDCE \patch_reg[1][1][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[4]__0 [4]),
        .Q(\patch_reg[1][1][7]_0 [4]));
  FDCE \patch_reg[1][1][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[4]__0 [5]),
        .Q(\patch_reg[1][1][7]_0 [5]));
  FDCE \patch_reg[1][1][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[4]__0 [6]),
        .Q(\patch_reg[1][1][7]_0 [6]));
  FDCE \patch_reg[1][1][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[4]__0 [7]),
        .Q(\patch_reg[1][1][7]_0 [7]));
  FDCE \patch_reg[1][2][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[5]__0 [0]),
        .Q(\patch_reg[1][2][7]_0 [0]));
  FDCE \patch_reg[1][2][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[5]__0 [1]),
        .Q(\patch_reg[1][2][7]_0 [1]));
  FDCE \patch_reg[1][2][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[5]__0 [2]),
        .Q(\patch_reg[1][2][7]_0 [2]));
  FDCE \patch_reg[1][2][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[5]__0 [3]),
        .Q(\patch_reg[1][2][7]_0 [3]));
  FDCE \patch_reg[1][2][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[5]__0 [4]),
        .Q(\patch_reg[1][2][7]_0 [4]));
  FDCE \patch_reg[1][2][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[5]__0 [5]),
        .Q(\patch_reg[1][2][7]_0 [5]));
  FDCE \patch_reg[1][2][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[5]__0 [6]),
        .Q(\patch_reg[1][2][7]_0 [6]));
  FDCE \patch_reg[1][2][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[5]__0 [7]),
        .Q(\patch_reg[1][2][7]_0 [7]));
  FDCE \patch_reg[2][0][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[6]__0 [0]),
        .Q(\patch_reg[2][0][7]_0 [0]));
  FDCE \patch_reg[2][0][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[6]__0 [1]),
        .Q(\patch_reg[2][0][7]_0 [1]));
  FDCE \patch_reg[2][0][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[6]__0 [2]),
        .Q(\patch_reg[2][0][7]_0 [2]));
  FDCE \patch_reg[2][0][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[6]__0 [3]),
        .Q(\patch_reg[2][0][7]_0 [3]));
  FDCE \patch_reg[2][0][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[6]__0 [4]),
        .Q(\patch_reg[2][0][7]_0 [4]));
  FDCE \patch_reg[2][0][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[6]__0 [5]),
        .Q(\patch_reg[2][0][7]_0 [5]));
  FDCE \patch_reg[2][0][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[6]__0 [6]),
        .Q(\patch_reg[2][0][7]_0 [6]));
  FDCE \patch_reg[2][0][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[6]__0 [7]),
        .Q(\patch_reg[2][0][7]_0 [7]));
  FDCE \patch_reg[2][1][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[7]__0 [0]),
        .Q(\patch_reg[2][1][7]_0 [0]));
  FDCE \patch_reg[2][1][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[7]__0 [1]),
        .Q(\patch_reg[2][1][7]_0 [1]));
  FDCE \patch_reg[2][1][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[7]__0 [2]),
        .Q(\patch_reg[2][1][7]_0 [2]));
  FDCE \patch_reg[2][1][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[7]__0 [3]),
        .Q(\patch_reg[2][1][7]_0 [3]));
  FDCE \patch_reg[2][1][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[7]__0 [4]),
        .Q(\patch_reg[2][1][7]_0 [4]));
  FDCE \patch_reg[2][1][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[7]__0 [5]),
        .Q(\patch_reg[2][1][7]_0 [5]));
  FDCE \patch_reg[2][1][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[7]__0 [6]),
        .Q(\patch_reg[2][1][7]_0 [6]));
  FDCE \patch_reg[2][1][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[7]__0 [7]),
        .Q(\patch_reg[2][1][7]_0 [7]));
  FDCE \patch_reg[2][2][0] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[8]__0 [0]),
        .Q(\patch_reg[2][2][7]_0 [0]));
  FDCE \patch_reg[2][2][1] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[8]__0 [1]),
        .Q(\patch_reg[2][2][7]_0 [1]));
  FDCE \patch_reg[2][2][2] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[8]__0 [2]),
        .Q(\patch_reg[2][2][7]_0 [2]));
  FDCE \patch_reg[2][2][3] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[8]__0 [3]),
        .Q(\patch_reg[2][2][7]_0 [3]));
  FDCE \patch_reg[2][2][4] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[8]__0 [4]),
        .Q(\patch_reg[2][2][7]_0 [4]));
  FDCE \patch_reg[2][2][5] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[8]__0 [5]),
        .Q(\patch_reg[2][2][7]_0 [5]));
  FDCE \patch_reg[2][2][6] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[8]__0 [6]),
        .Q(\patch_reg[2][2][7]_0 [6]));
  FDCE \patch_reg[2][2][7] 
       (.C(s00_axi_aclk),
        .CE(patch),
        .CLR(s00_axi_aresetn_0),
        .D(\patch_buf_reg[8]__0 [7]),
        .Q(\patch_reg[2][2][7]_0 [7]));
  FDCE patch_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(patch),
        .Q(patch_valid));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rd_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[0] ),
        .O(\rd_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rd_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[1] ),
        .I2(\rd_cnt_reg_n_0_[0] ),
        .O(rd_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \rd_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[2] ),
        .I2(\rd_cnt_reg_n_0_[1] ),
        .I3(\rd_cnt_reg_n_0_[0] ),
        .O(rd_cnt[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFBAAAAAAAA)) 
    \rd_cnt[3]_i_1 
       (.I0(\rd_cnt[3]_i_3_n_0 ),
        .I1(\rd_cnt_reg_n_0_[3] ),
        .I2(\rd_cnt_reg_n_0_[2] ),
        .I3(\rd_cnt_reg_n_0_[0] ),
        .I4(\rd_cnt_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\rd_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \rd_cnt[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\rd_cnt_reg_n_0_[3] ),
        .I2(\rd_cnt_reg_n_0_[2] ),
        .I3(\rd_cnt_reg_n_0_[0] ),
        .I4(\rd_cnt_reg_n_0_[1] ),
        .O(rd_cnt[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_cnt[3]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(patch_start),
        .O(\rd_cnt[3]_i_3_n_0 ));
  FDCE \rd_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rd_cnt[3]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\rd_cnt[0]_i_1_n_0 ),
        .Q(\rd_cnt_reg_n_0_[0] ));
  FDCE \rd_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rd_cnt[3]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(rd_cnt[1]),
        .Q(\rd_cnt_reg_n_0_[1] ));
  FDCE \rd_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rd_cnt[3]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(rd_cnt[2]),
        .Q(\rd_cnt_reg_n_0_[2] ));
  FDCE \rd_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rd_cnt[3]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(rd_cnt[3]),
        .Q(\rd_cnt_reg_n_0_[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_i_2
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
endmodule

(* CHECK_LICENSE_TYPE = "soc_npu_myip_npu_OCR_0_1,myip_npu_OCR,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_npu_OCR,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axis_aclk,
    s_axis_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tkeep,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_RESET s_axis_aresetn, ASSOCIATED_BUSIF s_axis, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_npu_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axis_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN soc_npu_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [0:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_npu_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 6, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN soc_npu_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
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
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_npu_OCR inst
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready_reg(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_weight_buf
   (DOBDO,
    mem_reg_0,
    \acc_reg[16] ,
    \acc[15]_i_14_0 ,
    \acc_reg[17] ,
    \acc_reg[19]_i_10_0 ,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    \acc_reg[15]_i_3_0 ,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    \acc_reg[15] ,
    \acc[7]_i_8 ,
    mem_reg_9,
    mem_reg_10,
    \acc_reg[19]_i_4_0 ,
    mem_reg_11,
    s00_axi_aclk,
    WEA,
    Q,
    ADDRBWRADDR,
    mem_reg_12,
    patch_reg__0,
    \acc_reg[19]_i_20_0 ,
    \acc_reg[19]_i_2 ,
    \acc_reg[19]_i_2__0 ,
    \acc_reg[15]_i_3_1 ,
    \acc[7]_i_14 ,
    \acc[15]_i_17_0 ,
    \acc[15]_i_18_0 ,
    \acc[15]_i_11 ,
    \acc_reg[15]_i_3_2 ,
    \acc[11]_i_6 ,
    \acc[15]_i_7 ,
    \acc_reg[15]_i_30_0 ,
    \acc_reg[15]_i_30_1 ,
    \acc_reg[15]_i_30_2 ,
    \acc_reg[15]_i_30_3 ,
    \acc_reg[15]_i_28_0 ,
    \acc_reg[15]_i_28_1 ,
    \acc_reg[15]_i_28_2 ,
    \acc_reg[15]_i_28_3 ,
    \acc_reg[15]_i_8_0 ,
    \acc_reg[7]_i_7 ,
    O,
    CO,
    DI,
    \acc[3]_i_3__0 ,
    S,
    \acc[11]_i_12_0 ,
    \acc[11]_i_11_0 ,
    \acc[11]_i_12_1 ,
    \acc[11]_i_12_2 ,
    \acc_reg[11]_i_16_0 ,
    \acc_reg[11]_i_16_1 ,
    \acc_reg[11]_i_16_2 ,
    \acc_reg[11]_i_16_3 );
  output [7:0]DOBDO;
  output [1:0]mem_reg_0;
  output [0:0]\acc_reg[16] ;
  output [7:0]\acc[15]_i_14_0 ;
  output [1:0]\acc_reg[17] ;
  output [12:0]\acc_reg[19]_i_10_0 ;
  output [1:0]mem_reg_1;
  output [1:0]mem_reg_2;
  output [0:0]mem_reg_3;
  output [3:0]mem_reg_4;
  output [0:0]\acc_reg[15]_i_3_0 ;
  output [2:0]mem_reg_5;
  output [1:0]mem_reg_6;
  output [0:0]mem_reg_7;
  output [0:0]mem_reg_8;
  output [0:0]\acc_reg[15] ;
  output [0:0]\acc[7]_i_8 ;
  output [0:0]mem_reg_9;
  output [0:0]mem_reg_10;
  output [0:0]\acc_reg[19]_i_4_0 ;
  output [0:0]mem_reg_11;
  input s00_axi_aclk;
  input [0:0]WEA;
  input [11:0]Q;
  input [11:0]ADDRBWRADDR;
  input [7:0]mem_reg_12;
  input [7:0]patch_reg__0;
  input [7:0]\acc_reg[19]_i_20_0 ;
  input [1:0]\acc_reg[19]_i_2 ;
  input [1:0]\acc_reg[19]_i_2__0 ;
  input [3:0]\acc_reg[15]_i_3_1 ;
  input [0:0]\acc[7]_i_14 ;
  input [0:0]\acc[15]_i_17_0 ;
  input [0:0]\acc[15]_i_18_0 ;
  input [0:0]\acc[15]_i_11 ;
  input [0:0]\acc_reg[15]_i_3_2 ;
  input [0:0]\acc[11]_i_6 ;
  input [1:0]\acc[15]_i_7 ;
  input \acc_reg[15]_i_30_0 ;
  input \acc_reg[15]_i_30_1 ;
  input \acc_reg[15]_i_30_2 ;
  input \acc_reg[15]_i_30_3 ;
  input \acc_reg[15]_i_28_0 ;
  input \acc_reg[15]_i_28_1 ;
  input \acc_reg[15]_i_28_2 ;
  input \acc_reg[15]_i_28_3 ;
  input [2:0]\acc_reg[15]_i_8_0 ;
  input [0:0]\acc_reg[7]_i_7 ;
  input [0:0]O;
  input [0:0]CO;
  input [0:0]DI;
  input [0:0]\acc[3]_i_3__0 ;
  input [1:0]S;
  input [0:0]\acc[11]_i_12_0 ;
  input [2:0]\acc[11]_i_11_0 ;
  input [0:0]\acc[11]_i_12_1 ;
  input [2:0]\acc[11]_i_12_2 ;
  input \acc_reg[11]_i_16_0 ;
  input \acc_reg[11]_i_16_1 ;
  input \acc_reg[11]_i_16_2 ;
  input \acc_reg[11]_i_16_3 ;

  wire [11:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [7:0]DOBDO;
  wire [0:0]O;
  wire [11:0]Q;
  wire [1:0]S;
  wire [0:0]WEA;
  wire \acc[11]_i_10_n_0 ;
  wire [2:0]\acc[11]_i_11_0 ;
  wire \acc[11]_i_11_n_0 ;
  wire [0:0]\acc[11]_i_12_0 ;
  wire [0:0]\acc[11]_i_12_1 ;
  wire [2:0]\acc[11]_i_12_2 ;
  wire \acc[11]_i_12_n_0 ;
  wire \acc[11]_i_13_n_0 ;
  wire \acc[11]_i_14_n_0 ;
  wire \acc[11]_i_15_n_0 ;
  wire \acc[11]_i_18_n_0 ;
  wire \acc[11]_i_19_n_0 ;
  wire \acc[11]_i_20_n_0 ;
  wire \acc[11]_i_21_n_0 ;
  wire \acc[11]_i_22_n_0 ;
  wire \acc[11]_i_23_n_0 ;
  wire \acc[11]_i_24_n_0 ;
  wire \acc[11]_i_25_n_0 ;
  wire \acc[11]_i_26_n_0 ;
  wire \acc[11]_i_27_n_0 ;
  wire \acc[11]_i_28_n_0 ;
  wire \acc[11]_i_29_n_0 ;
  wire \acc[11]_i_30_n_0 ;
  wire \acc[11]_i_31_n_0 ;
  wire \acc[11]_i_32_n_0 ;
  wire \acc[11]_i_33_n_0 ;
  wire \acc[11]_i_38_n_0 ;
  wire \acc[11]_i_39_n_0 ;
  wire \acc[11]_i_40_n_0 ;
  wire \acc[11]_i_41_n_0 ;
  wire [0:0]\acc[11]_i_6 ;
  wire \acc[11]_i_8_n_0 ;
  wire \acc[11]_i_9_n_0 ;
  wire [0:0]\acc[15]_i_11 ;
  wire \acc[15]_i_12_n_0 ;
  wire \acc[15]_i_13_n_0 ;
  wire [7:0]\acc[15]_i_14_0 ;
  wire \acc[15]_i_14_n_0 ;
  wire \acc[15]_i_15_n_0 ;
  wire \acc[15]_i_16_n_0 ;
  wire [0:0]\acc[15]_i_17_0 ;
  wire \acc[15]_i_17_n_0 ;
  wire [0:0]\acc[15]_i_18_0 ;
  wire \acc[15]_i_18_n_0 ;
  wire \acc[15]_i_19_n_0 ;
  wire \acc[15]_i_20_n_0 ;
  wire \acc[15]_i_21_n_0 ;
  wire \acc[15]_i_22_n_0 ;
  wire \acc[15]_i_24_n_0 ;
  wire \acc[15]_i_25_n_0 ;
  wire \acc[15]_i_41_n_0 ;
  wire \acc[15]_i_42_n_0 ;
  wire \acc[15]_i_44_n_0 ;
  wire \acc[15]_i_45_n_0 ;
  wire \acc[15]_i_46_n_0 ;
  wire \acc[15]_i_48_n_0 ;
  wire \acc[15]_i_49_n_0 ;
  wire \acc[15]_i_50_n_0 ;
  wire \acc[15]_i_51_n_0 ;
  wire \acc[15]_i_52_n_0 ;
  wire \acc[15]_i_53_n_0 ;
  wire \acc[15]_i_54_n_0 ;
  wire \acc[15]_i_55_n_0 ;
  wire \acc[15]_i_56_n_0 ;
  wire \acc[15]_i_64_n_0 ;
  wire \acc[15]_i_65_n_0 ;
  wire \acc[15]_i_66_n_0 ;
  wire \acc[15]_i_67_n_0 ;
  wire \acc[15]_i_68_n_0 ;
  wire \acc[15]_i_69_n_0 ;
  wire [1:0]\acc[15]_i_7 ;
  wire \acc[15]_i_70_n_0 ;
  wire \acc[15]_i_71_n_0 ;
  wire \acc[19]_i_11_n_0 ;
  wire \acc[19]_i_12_n_0 ;
  wire \acc[19]_i_13_n_0 ;
  wire \acc[19]_i_14_n_0 ;
  wire \acc[19]_i_15_n_0 ;
  wire \acc[19]_i_16_n_0 ;
  wire \acc[19]_i_17_n_0 ;
  wire \acc[19]_i_19_n_0 ;
  wire \acc[19]_i_24_n_0 ;
  wire \acc[19]_i_25_n_0 ;
  wire \acc[19]_i_26_n_0 ;
  wire \acc[19]_i_27_n_0 ;
  wire \acc[19]_i_32_n_0 ;
  wire \acc[19]_i_33_n_0 ;
  wire \acc[19]_i_34_n_0 ;
  wire \acc[19]_i_35_n_0 ;
  wire \acc[19]_i_36_n_0 ;
  wire \acc[19]_i_38_n_0 ;
  wire \acc[19]_i_39_n_0 ;
  wire \acc[19]_i_40_n_0 ;
  wire \acc[19]_i_41_n_0 ;
  wire \acc[19]_i_42_n_0 ;
  wire \acc[19]_i_43_n_0 ;
  wire \acc[19]_i_44_n_0 ;
  wire \acc[19]_i_45_n_0 ;
  wire \acc[19]_i_49_n_0 ;
  wire \acc[3]_i_16__0_n_0 ;
  wire \acc[3]_i_17__0_n_0 ;
  wire \acc[3]_i_19__0_n_0 ;
  wire \acc[3]_i_21__0_n_0 ;
  wire [0:0]\acc[3]_i_3__0 ;
  wire \acc[7]_i_10__0_n_0 ;
  wire \acc[7]_i_11__0_n_0 ;
  wire \acc[7]_i_12__0_n_0 ;
  wire \acc[7]_i_13__0_n_0 ;
  wire [0:0]\acc[7]_i_14 ;
  wire \acc[7]_i_14__0_n_0 ;
  wire \acc[7]_i_15__0_n_0 ;
  wire [0:0]\acc[7]_i_8 ;
  wire \acc[7]_i_8__0_n_0 ;
  wire \acc[7]_i_9__0_n_0 ;
  wire \acc_reg[11]_i_16_0 ;
  wire \acc_reg[11]_i_16_1 ;
  wire \acc_reg[11]_i_16_2 ;
  wire \acc_reg[11]_i_16_3 ;
  wire \acc_reg[11]_i_16_n_0 ;
  wire \acc_reg[11]_i_16_n_1 ;
  wire \acc_reg[11]_i_16_n_2 ;
  wire \acc_reg[11]_i_16_n_3 ;
  wire \acc_reg[11]_i_16_n_4 ;
  wire \acc_reg[11]_i_16_n_5 ;
  wire \acc_reg[11]_i_16_n_6 ;
  wire \acc_reg[11]_i_16_n_7 ;
  wire \acc_reg[11]_i_17_n_0 ;
  wire \acc_reg[11]_i_17_n_1 ;
  wire \acc_reg[11]_i_17_n_2 ;
  wire \acc_reg[11]_i_17_n_3 ;
  wire \acc_reg[11]_i_17_n_4 ;
  wire \acc_reg[11]_i_17_n_5 ;
  wire \acc_reg[11]_i_17_n_6 ;
  wire \acc_reg[11]_i_17_n_7 ;
  wire \acc_reg[11]_i_7_n_0 ;
  wire \acc_reg[11]_i_7_n_1 ;
  wire \acc_reg[11]_i_7_n_2 ;
  wire \acc_reg[11]_i_7_n_3 ;
  wire [0:0]\acc_reg[15] ;
  wire \acc_reg[15]_i_26_n_1 ;
  wire \acc_reg[15]_i_26_n_3 ;
  wire \acc_reg[15]_i_27_n_1 ;
  wire \acc_reg[15]_i_27_n_3 ;
  wire \acc_reg[15]_i_27_n_6 ;
  wire \acc_reg[15]_i_27_n_7 ;
  wire \acc_reg[15]_i_28_0 ;
  wire \acc_reg[15]_i_28_1 ;
  wire \acc_reg[15]_i_28_2 ;
  wire \acc_reg[15]_i_28_3 ;
  wire \acc_reg[15]_i_28_n_0 ;
  wire \acc_reg[15]_i_28_n_1 ;
  wire \acc_reg[15]_i_28_n_2 ;
  wire \acc_reg[15]_i_28_n_3 ;
  wire \acc_reg[15]_i_28_n_4 ;
  wire \acc_reg[15]_i_28_n_5 ;
  wire \acc_reg[15]_i_28_n_6 ;
  wire \acc_reg[15]_i_28_n_7 ;
  wire \acc_reg[15]_i_30_0 ;
  wire \acc_reg[15]_i_30_1 ;
  wire \acc_reg[15]_i_30_2 ;
  wire \acc_reg[15]_i_30_3 ;
  wire \acc_reg[15]_i_30_n_0 ;
  wire \acc_reg[15]_i_30_n_1 ;
  wire \acc_reg[15]_i_30_n_2 ;
  wire \acc_reg[15]_i_30_n_3 ;
  wire \acc_reg[15]_i_30_n_4 ;
  wire [0:0]\acc_reg[15]_i_3_0 ;
  wire [3:0]\acc_reg[15]_i_3_1 ;
  wire [0:0]\acc_reg[15]_i_3_2 ;
  wire \acc_reg[15]_i_3_n_1 ;
  wire \acc_reg[15]_i_3_n_2 ;
  wire \acc_reg[15]_i_3_n_3 ;
  wire [2:0]\acc_reg[15]_i_8_0 ;
  wire \acc_reg[15]_i_8_n_0 ;
  wire \acc_reg[15]_i_8_n_1 ;
  wire \acc_reg[15]_i_8_n_2 ;
  wire \acc_reg[15]_i_8_n_3 ;
  wire \acc_reg[15]_i_9_n_3 ;
  wire \acc_reg[15]_i_9_n_6 ;
  wire \acc_reg[15]_i_9_n_7 ;
  wire [0:0]\acc_reg[16] ;
  wire [1:0]\acc_reg[17] ;
  wire [12:0]\acc_reg[19]_i_10_0 ;
  wire \acc_reg[19]_i_10_n_3 ;
  wire \acc_reg[19]_i_10_n_6 ;
  wire \acc_reg[19]_i_10_n_7 ;
  wire \acc_reg[19]_i_18_n_0 ;
  wire \acc_reg[19]_i_18_n_1 ;
  wire \acc_reg[19]_i_18_n_2 ;
  wire \acc_reg[19]_i_18_n_3 ;
  wire \acc_reg[19]_i_18_n_4 ;
  wire \acc_reg[19]_i_18_n_5 ;
  wire \acc_reg[19]_i_18_n_6 ;
  wire \acc_reg[19]_i_18_n_7 ;
  wire [1:0]\acc_reg[19]_i_2 ;
  wire [7:0]\acc_reg[19]_i_20_0 ;
  wire \acc_reg[19]_i_20_n_0 ;
  wire \acc_reg[19]_i_20_n_2 ;
  wire \acc_reg[19]_i_20_n_3 ;
  wire \acc_reg[19]_i_20_n_5 ;
  wire \acc_reg[19]_i_20_n_6 ;
  wire \acc_reg[19]_i_20_n_7 ;
  wire \acc_reg[19]_i_21_n_0 ;
  wire \acc_reg[19]_i_21_n_2 ;
  wire \acc_reg[19]_i_21_n_3 ;
  wire \acc_reg[19]_i_21_n_5 ;
  wire \acc_reg[19]_i_21_n_6 ;
  wire \acc_reg[19]_i_21_n_7 ;
  wire \acc_reg[19]_i_22_n_0 ;
  wire \acc_reg[19]_i_22_n_1 ;
  wire \acc_reg[19]_i_22_n_2 ;
  wire \acc_reg[19]_i_22_n_3 ;
  wire \acc_reg[19]_i_22_n_4 ;
  wire \acc_reg[19]_i_22_n_5 ;
  wire \acc_reg[19]_i_22_n_6 ;
  wire \acc_reg[19]_i_22_n_7 ;
  wire [1:0]\acc_reg[19]_i_2__0 ;
  wire [0:0]\acc_reg[19]_i_4_0 ;
  wire \acc_reg[19]_i_9_n_0 ;
  wire \acc_reg[19]_i_9_n_1 ;
  wire \acc_reg[19]_i_9_n_2 ;
  wire \acc_reg[19]_i_9_n_3 ;
  wire \acc_reg[3]_i_8__0_n_0 ;
  wire \acc_reg[3]_i_8__0_n_1 ;
  wire \acc_reg[3]_i_8__0_n_2 ;
  wire \acc_reg[3]_i_8__0_n_3 ;
  wire \acc_reg[3]_i_8__0_n_4 ;
  wire \acc_reg[3]_i_8__0_n_5 ;
  wire \acc_reg[3]_i_8__0_n_6 ;
  wire [0:0]\acc_reg[7]_i_7 ;
  wire \acc_reg[7]_i_7__0_n_0 ;
  wire \acc_reg[7]_i_7__0_n_1 ;
  wire \acc_reg[7]_i_7__0_n_2 ;
  wire \acc_reg[7]_i_7__0_n_3 ;
  wire [1:0]mem_reg_0;
  wire [1:0]mem_reg_1;
  wire [0:0]mem_reg_10;
  wire [0:0]mem_reg_11;
  wire [7:0]mem_reg_12;
  wire [1:0]mem_reg_2;
  wire [0:0]mem_reg_3;
  wire [3:0]mem_reg_4;
  wire [2:0]mem_reg_5;
  wire [1:0]mem_reg_6;
  wire [0:0]mem_reg_7;
  wire [0:0]mem_reg_8;
  wire [0:0]mem_reg_9;
  wire [7:0]patch_reg__0;
  wire s00_axi_aclk;
  wire [3:1]\NLW_acc_reg[15]_i_26_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[15]_i_26_O_UNCONNECTED ;
  wire [3:1]\NLW_acc_reg[15]_i_27_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[15]_i_27_O_UNCONNECTED ;
  wire [3:3]\NLW_acc_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_acc_reg[15]_i_9_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[15]_i_9_O_UNCONNECTED ;
  wire [3:1]\NLW_acc_reg[19]_i_10_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[19]_i_10_O_UNCONNECTED ;
  wire [2:2]\NLW_acc_reg[19]_i_20_CO_UNCONNECTED ;
  wire [3:3]\NLW_acc_reg[19]_i_20_O_UNCONNECTED ;
  wire [2:2]\NLW_acc_reg[19]_i_21_CO_UNCONNECTED ;
  wire [3:3]\NLW_acc_reg[19]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_acc_reg[19]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_acc_reg[19]_i_4_O_UNCONNECTED ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_10 
       (.I0(\acc_reg[19]_i_22_n_6 ),
        .I1(\acc_reg[19]_i_21_n_7 ),
        .I2(\acc_reg[11]_i_16_n_6 ),
        .O(\acc[11]_i_10_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_11 
       (.I0(\acc_reg[19]_i_22_n_7 ),
        .I1(\acc_reg[11]_i_17_n_4 ),
        .I2(\acc_reg[11]_i_16_n_7 ),
        .O(\acc[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_12 
       (.I0(\acc[11]_i_8_n_0 ),
        .I1(\acc_reg[19]_i_18_n_7 ),
        .I2(\acc_reg[19]_i_21_n_0 ),
        .I3(\acc_reg[19]_i_20_n_7 ),
        .O(\acc[11]_i_12_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_13 
       (.I0(\acc_reg[19]_i_22_n_4 ),
        .I1(\acc_reg[19]_i_21_n_5 ),
        .I2(\acc_reg[11]_i_16_n_4 ),
        .I3(\acc[11]_i_9_n_0 ),
        .O(\acc[11]_i_13_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_14 
       (.I0(\acc_reg[19]_i_22_n_5 ),
        .I1(\acc_reg[19]_i_21_n_6 ),
        .I2(\acc_reg[11]_i_16_n_5 ),
        .I3(\acc[11]_i_10_n_0 ),
        .O(\acc[11]_i_14_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_15 
       (.I0(\acc_reg[19]_i_22_n_6 ),
        .I1(\acc_reg[19]_i_21_n_7 ),
        .I2(\acc_reg[11]_i_16_n_6 ),
        .I3(\acc[11]_i_11_n_0 ),
        .O(\acc[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[11]_i_18 
       (.I0(DOBDO[5]),
        .I1(\acc_reg[19]_i_20_0 [4]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [5]),
        .I4(\acc_reg[19]_i_20_0 [6]),
        .I5(DOBDO[3]),
        .O(\acc[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[11]_i_19 
       (.I0(DOBDO[5]),
        .I1(\acc_reg[19]_i_20_0 [3]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [4]),
        .I4(\acc_reg[19]_i_20_0 [5]),
        .I5(DOBDO[3]),
        .O(\acc[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[11]_i_20 
       (.I0(DOBDO[5]),
        .I1(\acc_reg[19]_i_20_0 [2]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [3]),
        .I4(\acc_reg[19]_i_20_0 [4]),
        .I5(DOBDO[3]),
        .O(\acc[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[11]_i_21 
       (.I0(DOBDO[5]),
        .I1(\acc_reg[19]_i_20_0 [1]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [2]),
        .I4(\acc_reg[19]_i_20_0 [3]),
        .I5(DOBDO[3]),
        .O(\acc[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \acc[11]_i_22 
       (.I0(\acc[11]_i_18_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [6]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [5]),
        .I4(DOBDO[5]),
        .I5(\acc_reg[11]_i_16_3 ),
        .O(\acc[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \acc[11]_i_23 
       (.I0(\acc[11]_i_19_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [5]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [4]),
        .I4(DOBDO[5]),
        .I5(\acc_reg[11]_i_16_2 ),
        .O(\acc[11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \acc[11]_i_24 
       (.I0(\acc[11]_i_20_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [4]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [3]),
        .I4(DOBDO[5]),
        .I5(\acc_reg[11]_i_16_1 ),
        .O(\acc[11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \acc[11]_i_25 
       (.I0(\acc[11]_i_21_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [3]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [2]),
        .I4(DOBDO[5]),
        .I5(\acc_reg[11]_i_16_0 ),
        .O(\acc[11]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[11]_i_26 
       (.I0(DOBDO[2]),
        .I1(\acc_reg[19]_i_20_0 [4]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [5]),
        .I4(DOBDO[0]),
        .I5(\acc_reg[19]_i_20_0 [6]),
        .O(\acc[11]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[11]_i_27 
       (.I0(DOBDO[2]),
        .I1(\acc_reg[19]_i_20_0 [3]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [4]),
        .I4(DOBDO[0]),
        .I5(\acc_reg[19]_i_20_0 [5]),
        .O(\acc[11]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[11]_i_28 
       (.I0(DOBDO[2]),
        .I1(\acc_reg[19]_i_20_0 [2]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [3]),
        .I4(DOBDO[0]),
        .I5(\acc_reg[19]_i_20_0 [4]),
        .O(\acc[11]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[11]_i_29 
       (.I0(DOBDO[2]),
        .I1(\acc_reg[19]_i_20_0 [1]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [2]),
        .I4(DOBDO[0]),
        .I5(\acc_reg[19]_i_20_0 [3]),
        .O(\acc[11]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \acc[11]_i_30 
       (.I0(\acc[11]_i_26_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [6]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [5]),
        .I4(DOBDO[2]),
        .I5(\acc[11]_i_38_n_0 ),
        .O(\acc[11]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \acc[11]_i_31 
       (.I0(\acc[11]_i_27_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [5]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [4]),
        .I4(DOBDO[2]),
        .I5(\acc[11]_i_39_n_0 ),
        .O(\acc[11]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \acc[11]_i_32 
       (.I0(\acc[11]_i_28_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [4]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [3]),
        .I4(DOBDO[2]),
        .I5(\acc[11]_i_40_n_0 ),
        .O(\acc[11]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \acc[11]_i_33 
       (.I0(\acc[11]_i_29_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [3]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [2]),
        .I4(DOBDO[2]),
        .I5(\acc[11]_i_41_n_0 ),
        .O(\acc[11]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[11]_i_38 
       (.I0(DOBDO[0]),
        .I1(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[11]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[11]_i_39 
       (.I0(DOBDO[0]),
        .I1(\acc_reg[19]_i_20_0 [6]),
        .O(\acc[11]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[11]_i_40 
       (.I0(DOBDO[0]),
        .I1(\acc_reg[19]_i_20_0 [5]),
        .O(\acc[11]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[11]_i_41 
       (.I0(DOBDO[0]),
        .I1(\acc_reg[19]_i_20_0 [4]),
        .O(\acc[11]_i_41_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_8 
       (.I0(\acc_reg[19]_i_22_n_4 ),
        .I1(\acc_reg[19]_i_21_n_5 ),
        .I2(\acc_reg[11]_i_16_n_4 ),
        .O(\acc[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_9 
       (.I0(\acc_reg[19]_i_22_n_5 ),
        .I1(\acc_reg[19]_i_21_n_6 ),
        .I2(\acc_reg[11]_i_16_n_5 ),
        .O(\acc[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \acc[15]_i_12 
       (.I0(\acc_reg[15]_i_26_n_1 ),
        .I1(\acc_reg[15]_i_3_1 [3]),
        .I2(\acc_reg[15]_i_9_n_7 ),
        .O(\acc[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \acc[15]_i_13 
       (.I0(mem_reg_6[1]),
        .I1(\acc_reg[15]_i_3_1 [2]),
        .I2(\acc_reg[15]_i_3_1 [3]),
        .I3(\acc_reg[15]_i_26_n_1 ),
        .O(\acc[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \acc[15]_i_14 
       (.I0(mem_reg_6[0]),
        .I1(\acc_reg[15]_i_3_1 [1]),
        .I2(\acc_reg[15]_i_3_1 [2]),
        .I3(mem_reg_6[1]),
        .O(\acc[15]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_15 
       (.I0(\acc_reg[15]_i_27_n_1 ),
        .I1(\acc_reg[15]_i_3_1 [0]),
        .I2(\acc_reg[15]_i_28_n_4 ),
        .O(\acc[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_16 
       (.I0(\acc_reg[15]_i_27_n_6 ),
        .I1(\acc_reg[15]_i_8_0 [2]),
        .I2(\acc_reg[15]_i_28_n_5 ),
        .O(\acc[15]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_17 
       (.I0(\acc_reg[15]_i_27_n_7 ),
        .I1(\acc_reg[15]_i_8_0 [1]),
        .I2(\acc_reg[15]_i_28_n_6 ),
        .O(\acc[15]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_18 
       (.I0(\acc_reg[15]_i_30_n_4 ),
        .I1(\acc_reg[15]_i_8_0 [0]),
        .I2(\acc_reg[15]_i_28_n_7 ),
        .O(\acc[15]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \acc[15]_i_19 
       (.I0(\acc_reg[15]_i_28_n_4 ),
        .I1(\acc_reg[15]_i_3_1 [0]),
        .I2(\acc_reg[15]_i_27_n_1 ),
        .I3(\acc_reg[15]_i_3_1 [1]),
        .I4(mem_reg_6[0]),
        .O(\acc[15]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_20 
       (.I0(\acc[15]_i_16_n_0 ),
        .I1(\acc_reg[15]_i_28_n_4 ),
        .I2(\acc_reg[15]_i_3_1 [0]),
        .I3(\acc_reg[15]_i_27_n_1 ),
        .O(\acc[15]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_21 
       (.I0(\acc_reg[15]_i_27_n_6 ),
        .I1(\acc_reg[15]_i_8_0 [2]),
        .I2(\acc_reg[15]_i_28_n_5 ),
        .I3(\acc[15]_i_17_n_0 ),
        .O(\acc[15]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_22 
       (.I0(\acc_reg[15]_i_27_n_7 ),
        .I1(\acc_reg[15]_i_8_0 [1]),
        .I2(\acc_reg[15]_i_28_n_6 ),
        .I3(\acc[15]_i_18_n_0 ),
        .O(\acc[15]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \acc[15]_i_24 
       (.I0(DOBDO[7]),
        .I1(patch_reg__0[6]),
        .I2(DOBDO[6]),
        .I3(patch_reg__0[7]),
        .O(\acc[15]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    \acc[15]_i_25 
       (.I0(DOBDO[6]),
        .I1(patch_reg__0[6]),
        .I2(DOBDO[7]),
        .I3(patch_reg__0[7]),
        .O(\acc[15]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[15]_i_31 
       (.I0(DOBDO[7]),
        .I1(patch_reg__0[5]),
        .I2(DOBDO[6]),
        .I3(patch_reg__0[6]),
        .O(mem_reg_4[3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[15]_i_32 
       (.I0(DOBDO[7]),
        .I1(patch_reg__0[4]),
        .I2(DOBDO[6]),
        .I3(patch_reg__0[5]),
        .O(mem_reg_4[2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[15]_i_33 
       (.I0(DOBDO[7]),
        .I1(patch_reg__0[3]),
        .I2(DOBDO[6]),
        .I3(patch_reg__0[4]),
        .O(mem_reg_4[1]));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[15]_i_34 
       (.I0(DOBDO[7]),
        .I1(patch_reg__0[2]),
        .I2(DOBDO[6]),
        .I3(patch_reg__0[3]),
        .O(mem_reg_4[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[15]_i_4 
       (.I0(\acc[15]_i_14_0 [7]),
        .I1(\acc_reg[19]_i_2 [0]),
        .O(\acc_reg[15] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[15]_i_41 
       (.I0(DOBDO[4]),
        .I1(patch_reg__0[7]),
        .I2(DOBDO[5]),
        .I3(patch_reg__0[6]),
        .O(\acc[15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    \acc[15]_i_42 
       (.I0(DOBDO[5]),
        .I1(patch_reg__0[5]),
        .I2(patch_reg__0[6]),
        .I3(DOBDO[4]),
        .I4(patch_reg__0[7]),
        .I5(DOBDO[3]),
        .O(\acc[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2450F30F4BFFC3FF)) 
    \acc[15]_i_44 
       (.I0(DOBDO[3]),
        .I1(patch_reg__0[5]),
        .I2(patch_reg__0[6]),
        .I3(DOBDO[5]),
        .I4(patch_reg__0[7]),
        .I5(DOBDO[4]),
        .O(\acc[15]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[15]_i_45 
       (.I0(DOBDO[1]),
        .I1(patch_reg__0[7]),
        .I2(DOBDO[2]),
        .I3(patch_reg__0[6]),
        .O(\acc[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    \acc[15]_i_46 
       (.I0(DOBDO[2]),
        .I1(patch_reg__0[5]),
        .I2(patch_reg__0[6]),
        .I3(DOBDO[1]),
        .I4(patch_reg__0[7]),
        .I5(DOBDO[0]),
        .O(\acc[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h2450F30F4BFFC3FF)) 
    \acc[15]_i_48 
       (.I0(DOBDO[0]),
        .I1(patch_reg__0[5]),
        .I2(patch_reg__0[6]),
        .I3(DOBDO[2]),
        .I4(patch_reg__0[7]),
        .I5(DOBDO[1]),
        .O(\acc[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[15]_i_49 
       (.I0(DOBDO[3]),
        .I1(patch_reg__0[6]),
        .I2(patch_reg__0[4]),
        .I3(DOBDO[5]),
        .I4(patch_reg__0[5]),
        .I5(DOBDO[4]),
        .O(\acc[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[15]_i_50 
       (.I0(DOBDO[3]),
        .I1(patch_reg__0[5]),
        .I2(patch_reg__0[3]),
        .I3(DOBDO[5]),
        .I4(patch_reg__0[4]),
        .I5(DOBDO[4]),
        .O(\acc[15]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[15]_i_51 
       (.I0(DOBDO[3]),
        .I1(patch_reg__0[4]),
        .I2(patch_reg__0[2]),
        .I3(DOBDO[5]),
        .I4(patch_reg__0[3]),
        .I5(DOBDO[4]),
        .O(\acc[15]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[15]_i_52 
       (.I0(DOBDO[3]),
        .I1(patch_reg__0[3]),
        .I2(patch_reg__0[1]),
        .I3(DOBDO[5]),
        .I4(patch_reg__0[2]),
        .I5(DOBDO[4]),
        .O(\acc[15]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \acc[15]_i_53 
       (.I0(\acc[15]_i_49_n_0 ),
        .I1(DOBDO[4]),
        .I2(patch_reg__0[6]),
        .I3(\acc_reg[15]_i_28_3 ),
        .I4(patch_reg__0[7]),
        .I5(DOBDO[3]),
        .O(\acc[15]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[15]_i_54 
       (.I0(\acc[15]_i_50_n_0 ),
        .I1(DOBDO[4]),
        .I2(patch_reg__0[5]),
        .I3(\acc_reg[15]_i_28_2 ),
        .I4(patch_reg__0[6]),
        .I5(DOBDO[3]),
        .O(\acc[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[15]_i_55 
       (.I0(\acc[15]_i_51_n_0 ),
        .I1(DOBDO[4]),
        .I2(patch_reg__0[4]),
        .I3(\acc_reg[15]_i_28_1 ),
        .I4(patch_reg__0[5]),
        .I5(DOBDO[3]),
        .O(\acc[15]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[15]_i_56 
       (.I0(\acc[15]_i_52_n_0 ),
        .I1(DOBDO[4]),
        .I2(patch_reg__0[3]),
        .I3(\acc_reg[15]_i_28_0 ),
        .I4(patch_reg__0[4]),
        .I5(DOBDO[3]),
        .O(\acc[15]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[15]_i_58 
       (.I0(DOBDO[7]),
        .I1(patch_reg__0[1]),
        .O(mem_reg_3));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[15]_i_61 
       (.I0(DOBDO[7]),
        .I1(patch_reg__0[1]),
        .I2(DOBDO[6]),
        .I3(patch_reg__0[2]),
        .O(mem_reg_0[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    \acc[15]_i_62 
       (.I0(DOBDO[7]),
        .I1(patch_reg__0[0]),
        .I2(DOBDO[6]),
        .I3(patch_reg__0[1]),
        .O(mem_reg_0[0]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[15]_i_64 
       (.I0(DOBDO[0]),
        .I1(patch_reg__0[6]),
        .I2(patch_reg__0[4]),
        .I3(DOBDO[2]),
        .I4(patch_reg__0[5]),
        .I5(DOBDO[1]),
        .O(\acc[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[15]_i_65 
       (.I0(DOBDO[0]),
        .I1(patch_reg__0[5]),
        .I2(patch_reg__0[3]),
        .I3(DOBDO[2]),
        .I4(patch_reg__0[4]),
        .I5(DOBDO[1]),
        .O(\acc[15]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[15]_i_66 
       (.I0(DOBDO[0]),
        .I1(patch_reg__0[4]),
        .I2(patch_reg__0[2]),
        .I3(DOBDO[2]),
        .I4(patch_reg__0[3]),
        .I5(DOBDO[1]),
        .O(\acc[15]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[15]_i_67 
       (.I0(DOBDO[0]),
        .I1(patch_reg__0[3]),
        .I2(patch_reg__0[1]),
        .I3(DOBDO[2]),
        .I4(patch_reg__0[2]),
        .I5(DOBDO[1]),
        .O(\acc[15]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \acc[15]_i_68 
       (.I0(\acc[15]_i_64_n_0 ),
        .I1(DOBDO[1]),
        .I2(patch_reg__0[6]),
        .I3(\acc_reg[15]_i_30_3 ),
        .I4(patch_reg__0[7]),
        .I5(DOBDO[0]),
        .O(\acc[15]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[15]_i_69 
       (.I0(\acc[15]_i_65_n_0 ),
        .I1(DOBDO[1]),
        .I2(patch_reg__0[5]),
        .I3(\acc_reg[15]_i_30_2 ),
        .I4(patch_reg__0[6]),
        .I5(DOBDO[0]),
        .O(\acc[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[15]_i_70 
       (.I0(\acc[15]_i_66_n_0 ),
        .I1(DOBDO[1]),
        .I2(patch_reg__0[4]),
        .I3(\acc_reg[15]_i_30_1 ),
        .I4(patch_reg__0[5]),
        .I5(DOBDO[0]),
        .O(\acc[15]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[15]_i_71 
       (.I0(\acc[15]_i_67_n_0 ),
        .I1(DOBDO[1]),
        .I2(patch_reg__0[3]),
        .I3(\acc_reg[15]_i_30_0 ),
        .I4(patch_reg__0[4]),
        .I5(DOBDO[0]),
        .O(\acc[15]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[19]_i_11 
       (.I0(\acc_reg[19]_i_18_n_5 ),
        .I1(\acc_reg[19]_i_20_n_5 ),
        .O(\acc[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[19]_i_12 
       (.I0(\acc_reg[19]_i_18_n_6 ),
        .I1(\acc_reg[19]_i_20_n_6 ),
        .O(\acc[19]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[19]_i_13 
       (.I0(\acc_reg[19]_i_18_n_7 ),
        .I1(\acc_reg[19]_i_21_n_0 ),
        .I2(\acc_reg[19]_i_20_n_7 ),
        .O(\acc[19]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \acc[19]_i_14 
       (.I0(\acc_reg[19]_i_20_n_0 ),
        .I1(\acc_reg[19]_i_18_n_4 ),
        .I2(\acc_reg[19]_i_10_n_7 ),
        .O(\acc[19]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \acc[19]_i_15 
       (.I0(\acc_reg[19]_i_20_n_5 ),
        .I1(\acc_reg[19]_i_18_n_5 ),
        .I2(\acc_reg[19]_i_20_n_0 ),
        .I3(\acc_reg[19]_i_18_n_4 ),
        .O(\acc[19]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \acc[19]_i_16 
       (.I0(\acc_reg[19]_i_20_n_6 ),
        .I1(\acc_reg[19]_i_18_n_6 ),
        .I2(\acc_reg[19]_i_20_n_5 ),
        .I3(\acc_reg[19]_i_18_n_5 ),
        .O(\acc[19]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \acc[19]_i_17 
       (.I0(\acc_reg[19]_i_20_n_7 ),
        .I1(\acc_reg[19]_i_21_n_0 ),
        .I2(\acc_reg[19]_i_18_n_7 ),
        .I3(\acc_reg[19]_i_20_n_6 ),
        .I4(\acc_reg[19]_i_18_n_6 ),
        .O(\acc[19]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[19]_i_19 
       (.I0(DOBDO[7]),
        .I1(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[19]_i_24 
       (.I0(DOBDO[7]),
        .I1(\acc_reg[19]_i_20_0 [5]),
        .I2(DOBDO[6]),
        .I3(\acc_reg[19]_i_20_0 [6]),
        .O(\acc[19]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[19]_i_25 
       (.I0(DOBDO[7]),
        .I1(\acc_reg[19]_i_20_0 [4]),
        .I2(DOBDO[6]),
        .I3(\acc_reg[19]_i_20_0 [5]),
        .O(\acc[19]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[19]_i_26 
       (.I0(DOBDO[7]),
        .I1(\acc_reg[19]_i_20_0 [3]),
        .I2(DOBDO[6]),
        .I3(\acc_reg[19]_i_20_0 [4]),
        .O(\acc[19]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hDA00)) 
    \acc[19]_i_27 
       (.I0(DOBDO[6]),
        .I1(\acc_reg[19]_i_20_0 [6]),
        .I2(DOBDO[7]),
        .I3(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[19]_i_3 
       (.I0(\acc[15]_i_14_0 [7]),
        .O(\acc_reg[15]_i_3_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acc[19]_i_32 
       (.I0(DOBDO[5]),
        .I1(\acc_reg[19]_i_20_0 [6]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[19]_i_33 
       (.I0(DOBDO[5]),
        .I1(\acc_reg[19]_i_20_0 [5]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [6]),
        .I4(\acc_reg[19]_i_20_0 [7]),
        .I5(DOBDO[3]),
        .O(\acc[19]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[19]_i_34 
       (.I0(DOBDO[5]),
        .I1(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    \acc[19]_i_35 
       (.I0(DOBDO[4]),
        .I1(\acc_reg[19]_i_20_0 [6]),
        .I2(DOBDO[5]),
        .I3(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h1A808F7FCFFF0FFF)) 
    \acc[19]_i_36 
       (.I0(DOBDO[3]),
        .I1(\acc_reg[19]_i_20_0 [5]),
        .I2(DOBDO[5]),
        .I3(\acc_reg[19]_i_20_0 [6]),
        .I4(DOBDO[4]),
        .I5(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \acc[19]_i_38 
       (.I0(DOBDO[2]),
        .I1(\acc_reg[19]_i_20_0 [6]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[19]_i_39 
       (.I0(DOBDO[2]),
        .I1(\acc_reg[19]_i_20_0 [5]),
        .I2(DOBDO[1]),
        .I3(\acc_reg[19]_i_20_0 [6]),
        .I4(DOBDO[0]),
        .I5(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[19]_i_3__0 
       (.I0(\acc_reg[19]_i_10_0 [12]),
        .O(\acc_reg[19]_i_4_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[19]_i_40 
       (.I0(DOBDO[2]),
        .I1(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    \acc[19]_i_41 
       (.I0(DOBDO[1]),
        .I1(\acc_reg[19]_i_20_0 [6]),
        .I2(DOBDO[2]),
        .I3(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h1A808F7FCFFF0FFF)) 
    \acc[19]_i_42 
       (.I0(DOBDO[0]),
        .I1(\acc_reg[19]_i_20_0 [5]),
        .I2(DOBDO[2]),
        .I3(\acc_reg[19]_i_20_0 [6]),
        .I4(DOBDO[1]),
        .I5(\acc_reg[19]_i_20_0 [7]),
        .O(\acc[19]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[19]_i_43 
       (.I0(DOBDO[7]),
        .I1(\acc_reg[19]_i_20_0 [2]),
        .I2(DOBDO[6]),
        .I3(\acc_reg[19]_i_20_0 [3]),
        .O(\acc[19]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h8FFF)) 
    \acc[19]_i_44 
       (.I0(DOBDO[6]),
        .I1(\acc_reg[19]_i_20_0 [2]),
        .I2(DOBDO[7]),
        .I3(\acc_reg[19]_i_20_0 [1]),
        .O(\acc[19]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h8FFF)) 
    \acc[19]_i_45 
       (.I0(DOBDO[6]),
        .I1(\acc_reg[19]_i_20_0 [1]),
        .I2(DOBDO[7]),
        .I3(\acc_reg[19]_i_20_0 [0]),
        .O(\acc[19]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[19]_i_49 
       (.I0(DOBDO[6]),
        .I1(\acc_reg[19]_i_20_0 [1]),
        .I2(DOBDO[7]),
        .I3(\acc_reg[19]_i_20_0 [0]),
        .O(\acc[19]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[19]_i_7 
       (.I0(\acc[15]_i_14_0 [7]),
        .I1(\acc_reg[19]_i_2 [1]),
        .O(\acc_reg[16] ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[19]_i_7__0 
       (.I0(\acc_reg[19]_i_10_0 [12]),
        .I1(\acc_reg[19]_i_2__0 [1]),
        .O(\acc_reg[17] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[19]_i_8 
       (.I0(\acc_reg[19]_i_10_0 [12]),
        .I1(\acc_reg[19]_i_2__0 [0]),
        .O(\acc_reg[17] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[3]_i_10 
       (.I0(DOBDO[4]),
        .I1(patch_reg__0[1]),
        .I2(DOBDO[5]),
        .I3(patch_reg__0[0]),
        .O(mem_reg_1[0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[3]_i_10__0 
       (.I0(DOBDO[1]),
        .I1(\acc_reg[19]_i_20_0 [1]),
        .I2(DOBDO[2]),
        .I3(\acc_reg[19]_i_20_0 [0]),
        .O(mem_reg_11));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[3]_i_14 
       (.I0(DOBDO[3]),
        .I1(patch_reg__0[1]),
        .I2(DOBDO[4]),
        .I3(patch_reg__0[0]),
        .O(mem_reg_8));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[3]_i_15__0 
       (.I0(DOBDO[0]),
        .I1(\acc_reg[19]_i_20_0 [0]),
        .O(mem_reg_9));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[3]_i_16 
       (.I0(DOBDO[0]),
        .I1(patch_reg__0[3]),
        .I2(patch_reg__0[1]),
        .I3(DOBDO[2]),
        .I4(patch_reg__0[2]),
        .I5(DOBDO[1]),
        .O(mem_reg_2[1]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[3]_i_16__0 
       (.I0(DOBDO[3]),
        .I1(\acc_reg[19]_i_20_0 [3]),
        .I2(DOBDO[5]),
        .I3(\acc_reg[19]_i_20_0 [1]),
        .I4(DOBDO[4]),
        .I5(\acc_reg[19]_i_20_0 [2]),
        .O(\acc[3]_i_16__0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[3]_i_17 
       (.I0(DOBDO[1]),
        .I1(patch_reg__0[1]),
        .I2(DOBDO[2]),
        .I3(patch_reg__0[0]),
        .O(mem_reg_2[0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[3]_i_17__0 
       (.I0(DOBDO[4]),
        .I1(\acc_reg[19]_i_20_0 [1]),
        .I2(DOBDO[5]),
        .I3(\acc_reg[19]_i_20_0 [0]),
        .O(\acc[3]_i_17__0_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \acc[3]_i_19__0 
       (.I0(\acc[3]_i_16__0_n_0 ),
        .I1(\acc_reg[19]_i_20_0 [1]),
        .I2(DOBDO[5]),
        .I3(\acc_reg[19]_i_20_0 [0]),
        .I4(DOBDO[4]),
        .O(\acc[3]_i_19__0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[3]_i_21 
       (.I0(DOBDO[0]),
        .I1(patch_reg__0[1]),
        .I2(DOBDO[1]),
        .I3(patch_reg__0[0]),
        .O(mem_reg_7));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[3]_i_21__0 
       (.I0(DOBDO[3]),
        .I1(\acc_reg[19]_i_20_0 [1]),
        .I2(DOBDO[4]),
        .I3(\acc_reg[19]_i_20_0 [0]),
        .O(\acc[3]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[3]_i_9 
       (.I0(DOBDO[3]),
        .I1(patch_reg__0[3]),
        .I2(patch_reg__0[1]),
        .I3(DOBDO[5]),
        .I4(patch_reg__0[2]),
        .I5(DOBDO[4]),
        .O(mem_reg_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[7]_i_10__0 
       (.I0(\acc_reg[3]_i_8__0_n_6 ),
        .I1(\acc_reg[11]_i_17_n_7 ),
        .O(\acc[7]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[7]_i_11__0 
       (.I0(mem_reg_10),
        .I1(O),
        .O(\acc[7]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_12 
       (.I0(\acc_reg[15]_i_30_n_4 ),
        .I1(\acc_reg[15]_i_8_0 [0]),
        .I2(\acc_reg[15]_i_28_n_7 ),
        .I3(\acc_reg[7]_i_7 ),
        .O(\acc[7]_i_8 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_12__0 
       (.I0(\acc_reg[19]_i_22_n_7 ),
        .I1(\acc_reg[11]_i_17_n_4 ),
        .I2(\acc_reg[11]_i_16_n_7 ),
        .I3(\acc[7]_i_8__0_n_0 ),
        .O(\acc[7]_i_12__0_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \acc[7]_i_13__0 
       (.I0(\acc_reg[19]_i_20_0 [0]),
        .I1(DOBDO[6]),
        .I2(\acc_reg[3]_i_8__0_n_4 ),
        .I3(\acc_reg[11]_i_17_n_5 ),
        .I4(\acc[7]_i_9__0_n_0 ),
        .O(\acc[7]_i_13__0_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \acc[7]_i_14__0 
       (.I0(\acc_reg[3]_i_8__0_n_5 ),
        .I1(\acc_reg[11]_i_17_n_6 ),
        .I2(\acc_reg[11]_i_17_n_7 ),
        .I3(\acc_reg[3]_i_8__0_n_6 ),
        .O(\acc[7]_i_14__0_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \acc[7]_i_15__0 
       (.I0(O),
        .I1(mem_reg_10),
        .I2(\acc_reg[11]_i_17_n_7 ),
        .I3(\acc_reg[3]_i_8__0_n_6 ),
        .O(\acc[7]_i_15__0_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \acc[7]_i_8__0 
       (.I0(\acc_reg[19]_i_20_0 [0]),
        .I1(DOBDO[6]),
        .I2(\acc_reg[3]_i_8__0_n_4 ),
        .I3(\acc_reg[11]_i_17_n_5 ),
        .O(\acc[7]_i_8__0_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc[7]_i_9__0 
       (.I0(\acc_reg[3]_i_8__0_n_5 ),
        .I1(\acc_reg[11]_i_17_n_6 ),
        .O(\acc[7]_i_9__0_n_0 ));
  CARRY4 \acc_reg[11]_i_16 
       (.CI(\acc_reg[3]_i_8__0_n_0 ),
        .CO({\acc_reg[11]_i_16_n_0 ,\acc_reg[11]_i_16_n_1 ,\acc_reg[11]_i_16_n_2 ,\acc_reg[11]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[11]_i_18_n_0 ,\acc[11]_i_19_n_0 ,\acc[11]_i_20_n_0 ,\acc[11]_i_21_n_0 }),
        .O({\acc_reg[11]_i_16_n_4 ,\acc_reg[11]_i_16_n_5 ,\acc_reg[11]_i_16_n_6 ,\acc_reg[11]_i_16_n_7 }),
        .S({\acc[11]_i_22_n_0 ,\acc[11]_i_23_n_0 ,\acc[11]_i_24_n_0 ,\acc[11]_i_25_n_0 }));
  CARRY4 \acc_reg[11]_i_17 
       (.CI(CO),
        .CO({\acc_reg[11]_i_17_n_0 ,\acc_reg[11]_i_17_n_1 ,\acc_reg[11]_i_17_n_2 ,\acc_reg[11]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[11]_i_26_n_0 ,\acc[11]_i_27_n_0 ,\acc[11]_i_28_n_0 ,\acc[11]_i_29_n_0 }),
        .O({\acc_reg[11]_i_17_n_4 ,\acc_reg[11]_i_17_n_5 ,\acc_reg[11]_i_17_n_6 ,\acc_reg[11]_i_17_n_7 }),
        .S({\acc[11]_i_30_n_0 ,\acc[11]_i_31_n_0 ,\acc[11]_i_32_n_0 ,\acc[11]_i_33_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[11]_i_7 
       (.CI(\acc_reg[7]_i_7__0_n_0 ),
        .CO({\acc_reg[11]_i_7_n_0 ,\acc_reg[11]_i_7_n_1 ,\acc_reg[11]_i_7_n_2 ,\acc_reg[11]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[11]_i_8_n_0 ,\acc[11]_i_9_n_0 ,\acc[11]_i_10_n_0 ,\acc[11]_i_11_n_0 }),
        .O(\acc_reg[19]_i_10_0 [7:4]),
        .S({\acc[11]_i_12_n_0 ,\acc[11]_i_13_n_0 ,\acc[11]_i_14_n_0 ,\acc[11]_i_15_n_0 }));
  CARRY4 \acc_reg[15]_i_26 
       (.CI(\acc_reg[15]_i_28_n_0 ),
        .CO({\NLW_acc_reg[15]_i_26_CO_UNCONNECTED [3],\acc_reg[15]_i_26_n_1 ,\NLW_acc_reg[15]_i_26_CO_UNCONNECTED [1],\acc_reg[15]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\acc[15]_i_41_n_0 ,\acc[15]_i_42_n_0 }),
        .O({\NLW_acc_reg[15]_i_26_O_UNCONNECTED [3:2],mem_reg_6}),
        .S({1'b0,1'b1,\acc[15]_i_11 ,\acc[15]_i_44_n_0 }));
  CARRY4 \acc_reg[15]_i_27 
       (.CI(\acc_reg[15]_i_30_n_0 ),
        .CO({\NLW_acc_reg[15]_i_27_CO_UNCONNECTED [3],\acc_reg[15]_i_27_n_1 ,\NLW_acc_reg[15]_i_27_CO_UNCONNECTED [1],\acc_reg[15]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\acc[15]_i_45_n_0 ,\acc[15]_i_46_n_0 }),
        .O({\NLW_acc_reg[15]_i_27_O_UNCONNECTED [3:2],\acc_reg[15]_i_27_n_6 ,\acc_reg[15]_i_27_n_7 }),
        .S({1'b0,1'b1,\acc[15]_i_17_0 ,\acc[15]_i_48_n_0 }));
  CARRY4 \acc_reg[15]_i_28 
       (.CI(\acc[15]_i_18_0 ),
        .CO({\acc_reg[15]_i_28_n_0 ,\acc_reg[15]_i_28_n_1 ,\acc_reg[15]_i_28_n_2 ,\acc_reg[15]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[15]_i_49_n_0 ,\acc[15]_i_50_n_0 ,\acc[15]_i_51_n_0 ,\acc[15]_i_52_n_0 }),
        .O({\acc_reg[15]_i_28_n_4 ,\acc_reg[15]_i_28_n_5 ,\acc_reg[15]_i_28_n_6 ,\acc_reg[15]_i_28_n_7 }),
        .S({\acc[15]_i_53_n_0 ,\acc[15]_i_54_n_0 ,\acc[15]_i_55_n_0 ,\acc[15]_i_56_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[15]_i_3 
       (.CI(\acc_reg[15]_i_8_n_0 ),
        .CO({\NLW_acc_reg[15]_i_3_CO_UNCONNECTED [3],\acc_reg[15]_i_3_n_1 ,\acc_reg[15]_i_3_n_2 ,\acc_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\acc_reg[15]_i_9_n_7 ,\acc[15]_i_7 }),
        .O(\acc[15]_i_14_0 [7:4]),
        .S({\acc_reg[15]_i_9_n_6 ,\acc[15]_i_12_n_0 ,\acc[15]_i_13_n_0 ,\acc[15]_i_14_n_0 }));
  CARRY4 \acc_reg[15]_i_30 
       (.CI(\acc[7]_i_14 ),
        .CO({\acc_reg[15]_i_30_n_0 ,\acc_reg[15]_i_30_n_1 ,\acc_reg[15]_i_30_n_2 ,\acc_reg[15]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[15]_i_64_n_0 ,\acc[15]_i_65_n_0 ,\acc[15]_i_66_n_0 ,\acc[15]_i_67_n_0 }),
        .O({\acc_reg[15]_i_30_n_4 ,mem_reg_5}),
        .S({\acc[15]_i_68_n_0 ,\acc[15]_i_69_n_0 ,\acc[15]_i_70_n_0 ,\acc[15]_i_71_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[15]_i_8 
       (.CI(\acc[11]_i_6 ),
        .CO({\acc_reg[15]_i_8_n_0 ,\acc_reg[15]_i_8_n_1 ,\acc_reg[15]_i_8_n_2 ,\acc_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[15]_i_15_n_0 ,\acc[15]_i_16_n_0 ,\acc[15]_i_17_n_0 ,\acc[15]_i_18_n_0 }),
        .O(\acc[15]_i_14_0 [3:0]),
        .S({\acc[15]_i_19_n_0 ,\acc[15]_i_20_n_0 ,\acc[15]_i_21_n_0 ,\acc[15]_i_22_n_0 }));
  CARRY4 \acc_reg[15]_i_9 
       (.CI(\acc_reg[15]_i_3_2 ),
        .CO({\NLW_acc_reg[15]_i_9_CO_UNCONNECTED [3:1],\acc_reg[15]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc[15]_i_24_n_0 }),
        .O({\NLW_acc_reg[15]_i_9_O_UNCONNECTED [3:2],\acc_reg[15]_i_9_n_6 ,\acc_reg[15]_i_9_n_7 }),
        .S({1'b0,1'b0,1'b1,\acc[15]_i_25_n_0 }));
  CARRY4 \acc_reg[19]_i_10 
       (.CI(\acc_reg[19]_i_18_n_0 ),
        .CO({\NLW_acc_reg[19]_i_10_CO_UNCONNECTED [3:1],\acc_reg[19]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[19]_i_10_O_UNCONNECTED [3:2],\acc_reg[19]_i_10_n_6 ,\acc_reg[19]_i_10_n_7 }),
        .S({1'b0,1'b0,1'b1,\acc[19]_i_19_n_0 }));
  CARRY4 \acc_reg[19]_i_18 
       (.CI(\acc_reg[19]_i_22_n_0 ),
        .CO({\acc_reg[19]_i_18_n_0 ,\acc_reg[19]_i_18_n_1 ,\acc_reg[19]_i_18_n_2 ,\acc_reg[19]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[11]_i_12_1 ,\acc[19]_i_24_n_0 ,\acc[19]_i_25_n_0 ,\acc[19]_i_26_n_0 }),
        .O({\acc_reg[19]_i_18_n_4 ,\acc_reg[19]_i_18_n_5 ,\acc_reg[19]_i_18_n_6 ,\acc_reg[19]_i_18_n_7 }),
        .S({\acc[19]_i_27_n_0 ,\acc[11]_i_12_2 }));
  CARRY4 \acc_reg[19]_i_20 
       (.CI(\acc_reg[11]_i_16_n_0 ),
        .CO({\acc_reg[19]_i_20_n_0 ,\NLW_acc_reg[19]_i_20_CO_UNCONNECTED [2],\acc_reg[19]_i_20_n_2 ,\acc_reg[19]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\acc[11]_i_12_0 ,\acc[19]_i_32_n_0 ,\acc[19]_i_33_n_0 }),
        .O({\NLW_acc_reg[19]_i_20_O_UNCONNECTED [3],\acc_reg[19]_i_20_n_5 ,\acc_reg[19]_i_20_n_6 ,\acc_reg[19]_i_20_n_7 }),
        .S({1'b1,\acc[19]_i_34_n_0 ,\acc[19]_i_35_n_0 ,\acc[19]_i_36_n_0 }));
  CARRY4 \acc_reg[19]_i_21 
       (.CI(\acc_reg[11]_i_17_n_0 ),
        .CO({\acc_reg[19]_i_21_n_0 ,\NLW_acc_reg[19]_i_21_CO_UNCONNECTED [2],\acc_reg[19]_i_21_n_2 ,\acc_reg[19]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,DI,\acc[19]_i_38_n_0 ,\acc[19]_i_39_n_0 }),
        .O({\NLW_acc_reg[19]_i_21_O_UNCONNECTED [3],\acc_reg[19]_i_21_n_5 ,\acc_reg[19]_i_21_n_6 ,\acc_reg[19]_i_21_n_7 }),
        .S({1'b1,\acc[19]_i_40_n_0 ,\acc[19]_i_41_n_0 ,\acc[19]_i_42_n_0 }));
  CARRY4 \acc_reg[19]_i_22 
       (.CI(1'b0),
        .CO({\acc_reg[19]_i_22_n_0 ,\acc_reg[19]_i_22_n_1 ,\acc_reg[19]_i_22_n_2 ,\acc_reg[19]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[19]_i_43_n_0 ,\acc[19]_i_44_n_0 ,\acc[19]_i_45_n_0 ,1'b0}),
        .O({\acc_reg[19]_i_22_n_4 ,\acc_reg[19]_i_22_n_5 ,\acc_reg[19]_i_22_n_6 ,\acc_reg[19]_i_22_n_7 }),
        .S({\acc[11]_i_11_0 ,\acc[19]_i_49_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[19]_i_4 
       (.CI(\acc_reg[19]_i_9_n_0 ),
        .CO(\NLW_acc_reg[19]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[19]_i_4_O_UNCONNECTED [3:1],\acc_reg[19]_i_10_0 [12]}),
        .S({1'b0,1'b0,1'b0,\acc_reg[19]_i_10_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[19]_i_9 
       (.CI(\acc_reg[11]_i_7_n_0 ),
        .CO({\acc_reg[19]_i_9_n_0 ,\acc_reg[19]_i_9_n_1 ,\acc_reg[19]_i_9_n_2 ,\acc_reg[19]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg[19]_i_10_n_7 ,\acc[19]_i_11_n_0 ,\acc[19]_i_12_n_0 ,\acc[19]_i_13_n_0 }),
        .O(\acc_reg[19]_i_10_0 [11:8]),
        .S({\acc[19]_i_14_n_0 ,\acc[19]_i_15_n_0 ,\acc[19]_i_16_n_0 ,\acc[19]_i_17_n_0 }));
  CARRY4 \acc_reg[3]_i_8__0 
       (.CI(1'b0),
        .CO({\acc_reg[3]_i_8__0_n_0 ,\acc_reg[3]_i_8__0_n_1 ,\acc_reg[3]_i_8__0_n_2 ,\acc_reg[3]_i_8__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[3]_i_16__0_n_0 ,\acc[3]_i_17__0_n_0 ,\acc[3]_i_3__0 ,1'b0}),
        .O({\acc_reg[3]_i_8__0_n_4 ,\acc_reg[3]_i_8__0_n_5 ,\acc_reg[3]_i_8__0_n_6 ,mem_reg_10}),
        .S({\acc[3]_i_19__0_n_0 ,S[1],\acc[3]_i_21__0_n_0 ,S[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[7]_i_7__0 
       (.CI(1'b0),
        .CO({\acc_reg[7]_i_7__0_n_0 ,\acc_reg[7]_i_7__0_n_1 ,\acc_reg[7]_i_7__0_n_2 ,\acc_reg[7]_i_7__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc[7]_i_8__0_n_0 ,\acc[7]_i_9__0_n_0 ,\acc[7]_i_10__0_n_0 ,\acc[7]_i_11__0_n_0 }),
        .O(\acc_reg[19]_i_10_0 [3:0]),
        .S({\acc[7]_i_12__0_n_0 ,\acc[7]_i_13__0_n_0 ,\acc[7]_i_14__0_n_0 ,\acc[7]_i_15__0_n_0 }));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst/u_npu_core/u_wbuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_12}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],DOBDO}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
