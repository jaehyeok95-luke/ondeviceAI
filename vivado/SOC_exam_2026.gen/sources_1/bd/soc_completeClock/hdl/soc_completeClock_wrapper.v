//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Jan 30 11:57:56 2026
//Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target soc_completeClock_wrapper.bd
//Design      : soc_completeClock_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_completeClock_wrapper
   (com_0,
    push_buttons_4bits_tri_i,
    reset,
    scl_0,
    sda_0,
    seg_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]com_0;
  input [3:0]push_buttons_4bits_tri_i;
  input reset;
  output scl_0;
  output sda_0;
  output [7:0]seg_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]com_0;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset;
  wire scl_0;
  wire sda_0;
  wire [7:0]seg_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  soc_completeClock soc_completeClock_i
       (.com_0(com_0),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset(reset),
        .scl_0(scl_0),
        .sda_0(sda_0),
        .seg_0(seg_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
