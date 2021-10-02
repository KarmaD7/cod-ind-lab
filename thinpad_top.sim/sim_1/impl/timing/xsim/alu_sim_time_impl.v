// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat Oct  2 22:35:20 2021
// Host        : dsf-VirtualBox running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/dsf/Desktop/cod21-dsf19/thinpad_top.sim/sim_1/impl/timing/xsim/alu_sim_time_impl.v
// Design      : thinpad_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module alu
   (leds_OBUF,
    CLK,
    AR,
    dip_sw_IBUF);
  output [15:0]leds_OBUF;
  input CLK;
  input [0:0]AR;
  input [15:0]dip_sw_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire a;
  wire \a[0]_i_1_n_0 ;
  wire \a[0]_i_2_n_0 ;
  wire \a[0]_i_3_n_0 ;
  wire \a[10]_i_1_n_0 ;
  wire \a[11]_i_1_n_0 ;
  wire \a[12]_i_1_n_0 ;
  wire \a[13]_i_1_n_0 ;
  wire \a[14]_i_1_n_0 ;
  wire \a[15]_i_2_n_0 ;
  wire \a[1]_i_1_n_0 ;
  wire \a[2]_i_1_n_0 ;
  wire \a[3]_i_1_n_0 ;
  wire \a[4]_i_1_n_0 ;
  wire \a[5]_i_1_n_0 ;
  wire \a[6]_i_1_n_0 ;
  wire \a[7]_i_1_n_0 ;
  wire \a[8]_i_1_n_0 ;
  wire \a[9]_i_1_n_0 ;
  wire \a_reg_n_0_[0] ;
  wire \a_reg_n_0_[10] ;
  wire \a_reg_n_0_[11] ;
  wire \a_reg_n_0_[12] ;
  wire \a_reg_n_0_[13] ;
  wire \a_reg_n_0_[14] ;
  wire \a_reg_n_0_[1] ;
  wire \a_reg_n_0_[2] ;
  wire \a_reg_n_0_[3] ;
  wire \a_reg_n_0_[4] ;
  wire \a_reg_n_0_[5] ;
  wire \a_reg_n_0_[6] ;
  wire \a_reg_n_0_[7] ;
  wire \a_reg_n_0_[8] ;
  wire \a_reg_n_0_[9] ;
  wire b;
  wire \b[0]_i_1_n_0 ;
  wire \b[10]_i_1_n_0 ;
  wire \b[11]_i_1_n_0 ;
  wire \b[12]_i_1_n_0 ;
  wire \b[13]_i_1_n_0 ;
  wire \b[14]_i_1_n_0 ;
  wire \b[15]_i_2_n_0 ;
  wire \b[1]_i_1_n_0 ;
  wire \b[2]_i_1_n_0 ;
  wire \b[3]_i_1_n_0 ;
  wire \b[4]_i_1_n_0 ;
  wire \b[5]_i_1_n_0 ;
  wire \b[6]_i_1_n_0 ;
  wire \b[7]_i_1_n_0 ;
  wire \b[8]_i_1_n_0 ;
  wire \b[9]_i_1_n_0 ;
  wire \b_reg_n_0_[0] ;
  wire \b_reg_n_0_[10] ;
  wire \b_reg_n_0_[11] ;
  wire \b_reg_n_0_[12] ;
  wire \b_reg_n_0_[13] ;
  wire \b_reg_n_0_[14] ;
  wire \b_reg_n_0_[1] ;
  wire \b_reg_n_0_[2] ;
  wire \b_reg_n_0_[3] ;
  wire \b_reg_n_0_[4] ;
  wire \b_reg_n_0_[5] ;
  wire \b_reg_n_0_[6] ;
  wire \b_reg_n_0_[7] ;
  wire \b_reg_n_0_[8] ;
  wire \b_reg_n_0_[9] ;
  wire [14:0]data0;
  wire [14:0]data1;
  wire [15:0]dip_sw_IBUF;
  wire flag3__45_carry__0_i_1_n_0;
  wire flag3__45_carry__0_i_2_n_0;
  wire flag3__45_carry__0_i_3_n_0;
  wire flag3__45_carry__0_i_4_n_0;
  wire flag3__45_carry__0_n_0;
  wire flag3__45_carry__1_i_1_n_0;
  wire flag3__45_carry__1_i_2_n_0;
  wire flag3__45_carry__1_i_3_n_0;
  wire flag3__45_carry__1_i_4_n_0;
  wire flag3__45_carry__1_n_0;
  wire flag3__45_carry__2_i_1_n_0;
  wire flag3__45_carry__2_i_2_n_0;
  wire flag3__45_carry__2_i_3_n_0;
  wire flag3__45_carry__2_i_4_n_0;
  wire flag3__45_carry_i_1_n_0;
  wire flag3__45_carry_i_2_n_0;
  wire flag3__45_carry_i_3_n_0;
  wire flag3__45_carry_i_4_n_0;
  wire flag3__45_carry_n_0;
  wire flag3_carry__0_i_1_n_0;
  wire flag3_carry__0_i_2_n_0;
  wire flag3_carry__0_i_3_n_0;
  wire flag3_carry__0_i_4_n_0;
  wire flag3_carry__0_n_0;
  wire flag3_carry__1_i_1_n_0;
  wire flag3_carry__1_i_2_n_0;
  wire flag3_carry__1_i_3_n_0;
  wire flag3_carry__1_i_4_n_0;
  wire flag3_carry__1_n_0;
  wire flag3_carry__2_i_1_n_0;
  wire flag3_carry__2_i_2_n_0;
  wire flag3_carry__2_i_3_n_0;
  wire flag3_carry__2_i_4_n_0;
  wire flag3_carry_i_1_n_0;
  wire flag3_carry_i_2_n_0;
  wire flag3_carry_i_3_n_0;
  wire flag3_carry_i_4_n_0;
  wire flag3_carry_n_0;
  wire [15:0]leds_OBUF;
  wire \leds_OBUF[0]_inst_i_10_n_0 ;
  wire \leds_OBUF[0]_inst_i_11_n_0 ;
  wire \leds_OBUF[0]_inst_i_2_n_0 ;
  wire \leds_OBUF[0]_inst_i_3_n_0 ;
  wire \leds_OBUF[0]_inst_i_4_n_0 ;
  wire \leds_OBUF[0]_inst_i_5_n_0 ;
  wire \leds_OBUF[0]_inst_i_6_n_0 ;
  wire \leds_OBUF[0]_inst_i_7_n_0 ;
  wire \leds_OBUF[0]_inst_i_8_n_0 ;
  wire \leds_OBUF[0]_inst_i_9_n_0 ;
  wire \leds_OBUF[10]_inst_i_10_n_0 ;
  wire \leds_OBUF[10]_inst_i_11_n_0 ;
  wire \leds_OBUF[10]_inst_i_2_n_0 ;
  wire \leds_OBUF[10]_inst_i_3_n_0 ;
  wire \leds_OBUF[10]_inst_i_4_n_0 ;
  wire \leds_OBUF[10]_inst_i_5_n_0 ;
  wire \leds_OBUF[10]_inst_i_6_n_0 ;
  wire \leds_OBUF[10]_inst_i_7_n_0 ;
  wire \leds_OBUF[10]_inst_i_8_n_0 ;
  wire \leds_OBUF[10]_inst_i_9_n_0 ;
  wire \leds_OBUF[11]_inst_i_10_n_0 ;
  wire \leds_OBUF[11]_inst_i_2_n_0 ;
  wire \leds_OBUF[11]_inst_i_3_n_0 ;
  wire \leds_OBUF[11]_inst_i_4_n_0 ;
  wire \leds_OBUF[11]_inst_i_5_n_0 ;
  wire \leds_OBUF[11]_inst_i_6_n_0 ;
  wire \leds_OBUF[11]_inst_i_7_n_0 ;
  wire \leds_OBUF[11]_inst_i_8_n_0 ;
  wire \leds_OBUF[11]_inst_i_9_n_0 ;
  wire \leds_OBUF[12]_inst_i_10_n_0 ;
  wire \leds_OBUF[12]_inst_i_11_n_0 ;
  wire \leds_OBUF[12]_inst_i_12_n_0 ;
  wire \leds_OBUF[12]_inst_i_2_n_0 ;
  wire \leds_OBUF[12]_inst_i_3_n_0 ;
  wire \leds_OBUF[12]_inst_i_4_n_0 ;
  wire \leds_OBUF[12]_inst_i_5_n_0 ;
  wire \leds_OBUF[12]_inst_i_6_n_0 ;
  wire \leds_OBUF[12]_inst_i_7_n_0 ;
  wire \leds_OBUF[12]_inst_i_8_n_0 ;
  wire \leds_OBUF[12]_inst_i_9_n_0 ;
  wire \leds_OBUF[13]_inst_i_10_n_0 ;
  wire \leds_OBUF[13]_inst_i_2_n_0 ;
  wire \leds_OBUF[13]_inst_i_3_n_0 ;
  wire \leds_OBUF[13]_inst_i_4_n_0 ;
  wire \leds_OBUF[13]_inst_i_5_n_0 ;
  wire \leds_OBUF[13]_inst_i_6_n_0 ;
  wire \leds_OBUF[13]_inst_i_7_n_0 ;
  wire \leds_OBUF[13]_inst_i_8_n_0 ;
  wire \leds_OBUF[13]_inst_i_9_n_0 ;
  wire \leds_OBUF[14]_inst_i_10_n_0 ;
  wire \leds_OBUF[14]_inst_i_11_n_0 ;
  wire \leds_OBUF[14]_inst_i_12_n_0 ;
  wire \leds_OBUF[14]_inst_i_2_n_0 ;
  wire \leds_OBUF[14]_inst_i_3_n_0 ;
  wire \leds_OBUF[14]_inst_i_4_n_0 ;
  wire \leds_OBUF[14]_inst_i_5_n_0 ;
  wire \leds_OBUF[14]_inst_i_6_n_0 ;
  wire \leds_OBUF[14]_inst_i_7_n_0 ;
  wire \leds_OBUF[14]_inst_i_8_n_0 ;
  wire \leds_OBUF[14]_inst_i_9_n_0 ;
  wire \leds_OBUF[15]_inst_i_10_n_0 ;
  wire \leds_OBUF[15]_inst_i_11_n_0 ;
  wire \leds_OBUF[15]_inst_i_12_n_0 ;
  wire \leds_OBUF[15]_inst_i_13_n_0 ;
  wire \leds_OBUF[15]_inst_i_2_n_0 ;
  wire \leds_OBUF[15]_inst_i_3_n_0 ;
  wire \leds_OBUF[15]_inst_i_4_n_0 ;
  wire \leds_OBUF[15]_inst_i_5_n_0 ;
  wire \leds_OBUF[15]_inst_i_6_n_0 ;
  wire \leds_OBUF[15]_inst_i_7_n_0 ;
  wire \leds_OBUF[15]_inst_i_8_n_0 ;
  wire \leds_OBUF[15]_inst_i_9_n_0 ;
  wire \leds_OBUF[1]_inst_i_10_n_0 ;
  wire \leds_OBUF[1]_inst_i_2_n_0 ;
  wire \leds_OBUF[1]_inst_i_3_n_0 ;
  wire \leds_OBUF[1]_inst_i_4_n_0 ;
  wire \leds_OBUF[1]_inst_i_5_n_0 ;
  wire \leds_OBUF[1]_inst_i_6_n_0 ;
  wire \leds_OBUF[1]_inst_i_7_n_0 ;
  wire \leds_OBUF[1]_inst_i_8_n_0 ;
  wire \leds_OBUF[1]_inst_i_9_n_0 ;
  wire \leds_OBUF[2]_inst_i_10_n_0 ;
  wire \leds_OBUF[2]_inst_i_2_n_0 ;
  wire \leds_OBUF[2]_inst_i_3_n_0 ;
  wire \leds_OBUF[2]_inst_i_4_n_0 ;
  wire \leds_OBUF[2]_inst_i_5_n_0 ;
  wire \leds_OBUF[2]_inst_i_6_n_0 ;
  wire \leds_OBUF[2]_inst_i_7_n_0 ;
  wire \leds_OBUF[2]_inst_i_8_n_0 ;
  wire \leds_OBUF[2]_inst_i_9_n_0 ;
  wire \leds_OBUF[3]_inst_i_10_n_0 ;
  wire \leds_OBUF[3]_inst_i_11_n_0 ;
  wire \leds_OBUF[3]_inst_i_12_n_0 ;
  wire \leds_OBUF[3]_inst_i_13_n_0 ;
  wire \leds_OBUF[3]_inst_i_2_n_0 ;
  wire \leds_OBUF[3]_inst_i_3_n_0 ;
  wire \leds_OBUF[3]_inst_i_4_n_0 ;
  wire \leds_OBUF[3]_inst_i_5_n_0 ;
  wire \leds_OBUF[3]_inst_i_6_n_0 ;
  wire \leds_OBUF[3]_inst_i_7_n_0 ;
  wire \leds_OBUF[3]_inst_i_8_n_0 ;
  wire \leds_OBUF[3]_inst_i_9_n_0 ;
  wire \leds_OBUF[4]_inst_i_10_n_0 ;
  wire \leds_OBUF[4]_inst_i_11_n_0 ;
  wire \leds_OBUF[4]_inst_i_12_n_0 ;
  wire \leds_OBUF[4]_inst_i_13_n_0 ;
  wire \leds_OBUF[4]_inst_i_2_n_0 ;
  wire \leds_OBUF[4]_inst_i_3_n_0 ;
  wire \leds_OBUF[4]_inst_i_4_n_0 ;
  wire \leds_OBUF[4]_inst_i_5_n_0 ;
  wire \leds_OBUF[4]_inst_i_6_n_0 ;
  wire \leds_OBUF[4]_inst_i_7_n_0 ;
  wire \leds_OBUF[4]_inst_i_8_n_0 ;
  wire \leds_OBUF[4]_inst_i_9_n_0 ;
  wire \leds_OBUF[5]_inst_i_10_n_0 ;
  wire \leds_OBUF[5]_inst_i_11_n_0 ;
  wire \leds_OBUF[5]_inst_i_12_n_0 ;
  wire \leds_OBUF[5]_inst_i_13_n_0 ;
  wire \leds_OBUF[5]_inst_i_14_n_0 ;
  wire \leds_OBUF[5]_inst_i_2_n_0 ;
  wire \leds_OBUF[5]_inst_i_3_n_0 ;
  wire \leds_OBUF[5]_inst_i_4_n_0 ;
  wire \leds_OBUF[5]_inst_i_5_n_0 ;
  wire \leds_OBUF[5]_inst_i_6_n_0 ;
  wire \leds_OBUF[5]_inst_i_7_n_0 ;
  wire \leds_OBUF[5]_inst_i_8_n_0 ;
  wire \leds_OBUF[5]_inst_i_9_n_0 ;
  wire \leds_OBUF[6]_inst_i_10_n_0 ;
  wire \leds_OBUF[6]_inst_i_11_n_0 ;
  wire \leds_OBUF[6]_inst_i_12_n_0 ;
  wire \leds_OBUF[6]_inst_i_13_n_0 ;
  wire \leds_OBUF[6]_inst_i_2_n_0 ;
  wire \leds_OBUF[6]_inst_i_3_n_0 ;
  wire \leds_OBUF[6]_inst_i_4_n_0 ;
  wire \leds_OBUF[6]_inst_i_5_n_0 ;
  wire \leds_OBUF[6]_inst_i_6_n_0 ;
  wire \leds_OBUF[6]_inst_i_7_n_0 ;
  wire \leds_OBUF[6]_inst_i_8_n_0 ;
  wire \leds_OBUF[6]_inst_i_9_n_0 ;
  wire \leds_OBUF[7]_inst_i_10_n_0 ;
  wire \leds_OBUF[7]_inst_i_11_n_0 ;
  wire \leds_OBUF[7]_inst_i_12_n_0 ;
  wire \leds_OBUF[7]_inst_i_13_n_0 ;
  wire \leds_OBUF[7]_inst_i_2_n_0 ;
  wire \leds_OBUF[7]_inst_i_3_n_0 ;
  wire \leds_OBUF[7]_inst_i_4_n_0 ;
  wire \leds_OBUF[7]_inst_i_5_n_0 ;
  wire \leds_OBUF[7]_inst_i_6_n_0 ;
  wire \leds_OBUF[7]_inst_i_7_n_0 ;
  wire \leds_OBUF[7]_inst_i_8_n_0 ;
  wire \leds_OBUF[7]_inst_i_9_n_0 ;
  wire \leds_OBUF[8]_inst_i_10_n_0 ;
  wire \leds_OBUF[8]_inst_i_11_n_0 ;
  wire \leds_OBUF[8]_inst_i_12_n_0 ;
  wire \leds_OBUF[8]_inst_i_13_n_0 ;
  wire \leds_OBUF[8]_inst_i_2_n_0 ;
  wire \leds_OBUF[8]_inst_i_3_n_0 ;
  wire \leds_OBUF[8]_inst_i_4_n_0 ;
  wire \leds_OBUF[8]_inst_i_5_n_0 ;
  wire \leds_OBUF[8]_inst_i_6_n_0 ;
  wire \leds_OBUF[8]_inst_i_7_n_0 ;
  wire \leds_OBUF[8]_inst_i_8_n_0 ;
  wire \leds_OBUF[8]_inst_i_9_n_0 ;
  wire \leds_OBUF[9]_inst_i_10_n_0 ;
  wire \leds_OBUF[9]_inst_i_11_n_0 ;
  wire \leds_OBUF[9]_inst_i_12_n_0 ;
  wire \leds_OBUF[9]_inst_i_13_n_0 ;
  wire \leds_OBUF[9]_inst_i_2_n_0 ;
  wire \leds_OBUF[9]_inst_i_3_n_0 ;
  wire \leds_OBUF[9]_inst_i_4_n_0 ;
  wire \leds_OBUF[9]_inst_i_5_n_0 ;
  wire \leds_OBUF[9]_inst_i_6_n_0 ;
  wire \leds_OBUF[9]_inst_i_7_n_0 ;
  wire \leds_OBUF[9]_inst_i_8_n_0 ;
  wire \leds_OBUF[9]_inst_i_9_n_0 ;
  wire op;
  wire \op[0]_i_1_n_0 ;
  wire \op[1]_i_1_n_0 ;
  wire \op[2]_i_1_n_0 ;
  wire \op[3]_i_2_n_0 ;
  wire \op_reg_n_0_[0] ;
  wire \op_reg_n_0_[1] ;
  wire \op_reg_n_0_[2] ;
  wire \op_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire p_2_in;
  wire [2:0]NLW_flag3__45_carry_CO_UNCONNECTED;
  wire [2:0]NLW_flag3__45_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_flag3__45_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_flag3__45_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_flag3_carry_CO_UNCONNECTED;
  wire [2:0]NLW_flag3_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_flag3_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_flag3_carry__2_CO_UNCONNECTED;

  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .PRE(AR),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \a[0]_i_1 
       (.I0(dip_sw_IBUF[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\a[0]_i_2_n_0 ),
        .I5(\a[0]_i_3_n_0 ),
        .O(\a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000181811880000)) 
    \a[0]_i_2 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(p_2_in),
        .I3(p_0_in2_in),
        .I4(\op_reg_n_0_[0] ),
        .I5(\op_reg_n_0_[1] ),
        .O(\a[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00020200)) 
    \a[0]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[3] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[1] ),
        .O(\a[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[10]),
        .O(\a[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[11]),
        .O(\a[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[12]),
        .O(\a[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[13]),
        .O(\a[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[14]),
        .O(\a[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(a));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[15]),
        .O(\a[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[1]),
        .O(\a[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[2]),
        .O(\a[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[3]),
        .O(\a[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[4]),
        .O(\a[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[5]),
        .O(\a[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[6]),
        .O(\a[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[7]),
        .O(\a[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[8]),
        .O(\a[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dip_sw_IBUF[9]),
        .O(\a[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[0] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[0]_i_1_n_0 ),
        .Q(\a_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[10] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[10]_i_1_n_0 ),
        .Q(\a_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[11] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[11]_i_1_n_0 ),
        .Q(\a_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[12] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[12]_i_1_n_0 ),
        .Q(\a_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[13] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[13]_i_1_n_0 ),
        .Q(\a_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[14] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[14]_i_1_n_0 ),
        .Q(\a_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[15] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[15]_i_2_n_0 ),
        .Q(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[1] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[1]_i_1_n_0 ),
        .Q(\a_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[2]_i_1_n_0 ),
        .Q(\a_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[3]_i_1_n_0 ),
        .Q(\a_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[4] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[4]_i_1_n_0 ),
        .Q(\a_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[5] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[5]_i_1_n_0 ),
        .Q(\a_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[6] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[6]_i_1_n_0 ),
        .Q(\a_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[7] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[7]_i_1_n_0 ),
        .Q(\a_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[8] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[8]_i_1_n_0 ),
        .Q(\a_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg[9] 
       (.C(CLK),
        .CE(a),
        .CLR(AR),
        .D(\a[9]_i_1_n_0 ),
        .Q(\a_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[0]),
        .O(\b[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[10]),
        .O(\b[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[11]),
        .O(\b[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[12]),
        .O(\b[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[13]),
        .O(\b[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[14]),
        .O(\b[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \b[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(b));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[15]),
        .O(\b[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[1]),
        .O(\b[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[2]),
        .O(\b[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[3]),
        .O(\b[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[4]),
        .O(\b[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[5]),
        .O(\b[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[6]),
        .O(\b[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[7]),
        .O(\b[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[8]),
        .O(\b[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dip_sw_IBUF[9]),
        .O(\b[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[0]_i_1_n_0 ),
        .Q(\b_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[10] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[10]_i_1_n_0 ),
        .Q(\b_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[11] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[11]_i_1_n_0 ),
        .Q(\b_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[12] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[12]_i_1_n_0 ),
        .Q(\b_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[13] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[13]_i_1_n_0 ),
        .Q(\b_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[14] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[14]_i_1_n_0 ),
        .Q(\b_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[15] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[15]_i_2_n_0 ),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[1]_i_1_n_0 ),
        .Q(\b_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[2]_i_1_n_0 ),
        .Q(\b_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[3]_i_1_n_0 ),
        .Q(\b_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[4]_i_1_n_0 ),
        .Q(\b_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[5]_i_1_n_0 ),
        .Q(\b_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[6]_i_1_n_0 ),
        .Q(\b_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[7]_i_1_n_0 ),
        .Q(\b_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[8] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[8]_i_1_n_0 ),
        .Q(\b_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg[9] 
       (.C(CLK),
        .CE(b),
        .CLR(AR),
        .D(\b[9]_i_1_n_0 ),
        .Q(\b_reg_n_0_[9] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 flag3__45_carry
       (.CI(1'b0),
        .CO({flag3__45_carry_n_0,NLW_flag3__45_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg_n_0_[3] ,\a_reg_n_0_[2] ,\a_reg_n_0_[1] ,\a_reg_n_0_[0] }),
        .O(data0[3:0]),
        .S({flag3__45_carry_i_1_n_0,flag3__45_carry_i_2_n_0,flag3__45_carry_i_3_n_0,flag3__45_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 flag3__45_carry__0
       (.CI(flag3__45_carry_n_0),
        .CO({flag3__45_carry__0_n_0,NLW_flag3__45_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg_n_0_[7] ,\a_reg_n_0_[6] ,\a_reg_n_0_[5] ,\a_reg_n_0_[4] }),
        .O(data0[7:4]),
        .S({flag3__45_carry__0_i_1_n_0,flag3__45_carry__0_i_2_n_0,flag3__45_carry__0_i_3_n_0,flag3__45_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__0_i_1
       (.I0(\a_reg_n_0_[7] ),
        .I1(\b_reg_n_0_[7] ),
        .O(flag3__45_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__0_i_2
       (.I0(\a_reg_n_0_[6] ),
        .I1(\b_reg_n_0_[6] ),
        .O(flag3__45_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__0_i_3
       (.I0(\a_reg_n_0_[5] ),
        .I1(\b_reg_n_0_[5] ),
        .O(flag3__45_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__0_i_4
       (.I0(\a_reg_n_0_[4] ),
        .I1(\b_reg_n_0_[4] ),
        .O(flag3__45_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 flag3__45_carry__1
       (.CI(flag3__45_carry__0_n_0),
        .CO({flag3__45_carry__1_n_0,NLW_flag3__45_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg_n_0_[11] ,\a_reg_n_0_[10] ,\a_reg_n_0_[9] ,\a_reg_n_0_[8] }),
        .O(data0[11:8]),
        .S({flag3__45_carry__1_i_1_n_0,flag3__45_carry__1_i_2_n_0,flag3__45_carry__1_i_3_n_0,flag3__45_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__1_i_1
       (.I0(\a_reg_n_0_[11] ),
        .I1(\b_reg_n_0_[11] ),
        .O(flag3__45_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__1_i_2
       (.I0(\a_reg_n_0_[10] ),
        .I1(\b_reg_n_0_[10] ),
        .O(flag3__45_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__1_i_3
       (.I0(\a_reg_n_0_[9] ),
        .I1(\b_reg_n_0_[9] ),
        .O(flag3__45_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__1_i_4
       (.I0(\a_reg_n_0_[8] ),
        .I1(\b_reg_n_0_[8] ),
        .O(flag3__45_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 flag3__45_carry__2
       (.CI(flag3__45_carry__1_n_0),
        .CO(NLW_flag3__45_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\a_reg_n_0_[14] ,\a_reg_n_0_[13] ,\a_reg_n_0_[12] }),
        .O({p_0_in2_in,data0[14:12]}),
        .S({flag3__45_carry__2_i_1_n_0,flag3__45_carry__2_i_2_n_0,flag3__45_carry__2_i_3_n_0,flag3__45_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__2_i_1
       (.I0(p_1_in),
        .I1(p_0_in),
        .O(flag3__45_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__2_i_2
       (.I0(\a_reg_n_0_[14] ),
        .I1(\b_reg_n_0_[14] ),
        .O(flag3__45_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__2_i_3
       (.I0(\a_reg_n_0_[13] ),
        .I1(\b_reg_n_0_[13] ),
        .O(flag3__45_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry__2_i_4
       (.I0(\a_reg_n_0_[12] ),
        .I1(\b_reg_n_0_[12] ),
        .O(flag3__45_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry_i_1
       (.I0(\a_reg_n_0_[3] ),
        .I1(\b_reg_n_0_[3] ),
        .O(flag3__45_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry_i_2
       (.I0(\a_reg_n_0_[2] ),
        .I1(\b_reg_n_0_[2] ),
        .O(flag3__45_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry_i_3
       (.I0(\a_reg_n_0_[1] ),
        .I1(\b_reg_n_0_[1] ),
        .O(flag3__45_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    flag3__45_carry_i_4
       (.I0(\b_reg_n_0_[0] ),
        .I1(\a_reg_n_0_[0] ),
        .O(flag3__45_carry_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 flag3_carry
       (.CI(1'b0),
        .CO({flag3_carry_n_0,NLW_flag3_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({\a_reg_n_0_[3] ,\a_reg_n_0_[2] ,\a_reg_n_0_[1] ,\a_reg_n_0_[0] }),
        .O(data1[3:0]),
        .S({flag3_carry_i_1_n_0,flag3_carry_i_2_n_0,flag3_carry_i_3_n_0,flag3_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 flag3_carry__0
       (.CI(flag3_carry_n_0),
        .CO({flag3_carry__0_n_0,NLW_flag3_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg_n_0_[7] ,\a_reg_n_0_[6] ,\a_reg_n_0_[5] ,\a_reg_n_0_[4] }),
        .O(data1[7:4]),
        .S({flag3_carry__0_i_1_n_0,flag3_carry__0_i_2_n_0,flag3_carry__0_i_3_n_0,flag3_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__0_i_1
       (.I0(\a_reg_n_0_[7] ),
        .I1(\b_reg_n_0_[7] ),
        .O(flag3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__0_i_2
       (.I0(\a_reg_n_0_[6] ),
        .I1(\b_reg_n_0_[6] ),
        .O(flag3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__0_i_3
       (.I0(\a_reg_n_0_[5] ),
        .I1(\b_reg_n_0_[5] ),
        .O(flag3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__0_i_4
       (.I0(\a_reg_n_0_[4] ),
        .I1(\b_reg_n_0_[4] ),
        .O(flag3_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 flag3_carry__1
       (.CI(flag3_carry__0_n_0),
        .CO({flag3_carry__1_n_0,NLW_flag3_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg_n_0_[11] ,\a_reg_n_0_[10] ,\a_reg_n_0_[9] ,\a_reg_n_0_[8] }),
        .O(data1[11:8]),
        .S({flag3_carry__1_i_1_n_0,flag3_carry__1_i_2_n_0,flag3_carry__1_i_3_n_0,flag3_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__1_i_1
       (.I0(\a_reg_n_0_[11] ),
        .I1(\b_reg_n_0_[11] ),
        .O(flag3_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__1_i_2
       (.I0(\a_reg_n_0_[10] ),
        .I1(\b_reg_n_0_[10] ),
        .O(flag3_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__1_i_3
       (.I0(\a_reg_n_0_[9] ),
        .I1(\b_reg_n_0_[9] ),
        .O(flag3_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__1_i_4
       (.I0(\a_reg_n_0_[8] ),
        .I1(\b_reg_n_0_[8] ),
        .O(flag3_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 flag3_carry__2
       (.CI(flag3_carry__1_n_0),
        .CO(NLW_flag3_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\a_reg_n_0_[14] ,\a_reg_n_0_[13] ,\a_reg_n_0_[12] }),
        .O({p_2_in,data1[14:12]}),
        .S({flag3_carry__2_i_1_n_0,flag3_carry__2_i_2_n_0,flag3_carry__2_i_3_n_0,flag3_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__2_i_1
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(flag3_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__2_i_2
       (.I0(\a_reg_n_0_[14] ),
        .I1(\b_reg_n_0_[14] ),
        .O(flag3_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__2_i_3
       (.I0(\a_reg_n_0_[13] ),
        .I1(\b_reg_n_0_[13] ),
        .O(flag3_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry__2_i_4
       (.I0(\a_reg_n_0_[12] ),
        .I1(\b_reg_n_0_[12] ),
        .O(flag3_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry_i_1
       (.I0(\a_reg_n_0_[3] ),
        .I1(\b_reg_n_0_[3] ),
        .O(flag3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry_i_2
       (.I0(\a_reg_n_0_[2] ),
        .I1(\b_reg_n_0_[2] ),
        .O(flag3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry_i_3
       (.I0(\a_reg_n_0_[1] ),
        .I1(\b_reg_n_0_[1] ),
        .O(flag3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    flag3_carry_i_4
       (.I0(\a_reg_n_0_[0] ),
        .I1(\b_reg_n_0_[0] ),
        .O(flag3_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \leds_OBUF[0]_inst_i_1 
       (.I0(\leds_OBUF[0]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I2(\leds_OBUF[0]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[0]_inst_i_5_n_0 ),
        .O(leds_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \leds_OBUF[0]_inst_i_10 
       (.I0(\b_reg_n_0_[2] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(\a_reg_n_0_[0] ),
        .O(\leds_OBUF[0]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \leds_OBUF[0]_inst_i_11 
       (.I0(\b_reg_n_0_[0] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[0] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[0]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \leds_OBUF[0]_inst_i_2 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[1]_inst_i_6_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[0]_inst_i_6_n_0 ),
        .I4(\leds_OBUF[0]_inst_i_7_n_0 ),
        .I5(\b_reg_n_0_[1] ),
        .O(\leds_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFAFC0AFC0A0)) 
    \leds_OBUF[0]_inst_i_3 
       (.I0(\leds_OBUF[0]_inst_i_8_n_0 ),
        .I1(\leds_OBUF[0]_inst_i_9_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\b_reg_n_0_[1] ),
        .I4(\leds_OBUF[0]_inst_i_10_n_0 ),
        .I5(\leds_OBUF[1]_inst_i_7_n_0 ),
        .O(\leds_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[0]_inst_i_4 
       (.I0(data1[0]),
        .I1(data0[0]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[0] ),
        .I5(\a_reg_n_0_[0] ),
        .O(\leds_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[0]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[0]_inst_i_11_n_0 ),
        .I4(\a_reg_n_0_[0] ),
        .I5(\b_reg_n_0_[0] ),
        .O(\leds_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \leds_OBUF[0]_inst_i_6 
       (.I0(\a_reg_n_0_[2] ),
        .I1(\a_reg_n_0_[10] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[14] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[6] ),
        .O(\leds_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \leds_OBUF[0]_inst_i_7 
       (.I0(\a_reg_n_0_[0] ),
        .I1(\a_reg_n_0_[8] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[12] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[4] ),
        .O(\leds_OBUF[0]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \leds_OBUF[0]_inst_i_8 
       (.I0(\a_reg_n_0_[14] ),
        .I1(\a_reg_n_0_[6] ),
        .I2(\a_reg_n_0_[10] ),
        .I3(\a_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \leds_OBUF[0]_inst_i_9 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\a_reg_n_0_[4] ),
        .I2(\a_reg_n_0_[8] ),
        .I3(\a_reg_n_0_[0] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[0]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[10]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[10]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[10]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[10]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[10]_inst_i_5_n_0 ),
        .O(leds_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \leds_OBUF[10]_inst_i_10 
       (.I0(\a_reg_n_0_[14] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[10] ),
        .I3(p_1_in),
        .I4(\b_reg_n_0_[3] ),
        .O(\leds_OBUF[10]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \leds_OBUF[10]_inst_i_11 
       (.I0(\a_reg_n_0_[3] ),
        .I1(\a_reg_n_0_[7] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[10]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \leds_OBUF[10]_inst_i_2 
       (.I0(\leds_OBUF[10]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[11]_inst_i_6_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[10]_inst_i_7_n_0 ),
        .I5(\leds_OBUF[11]_inst_i_7_n_0 ),
        .O(\leds_OBUF[10]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[10]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[10]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[11]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[10]_inst_i_9_n_0 ),
        .O(\leds_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[10]_inst_i_4 
       (.I0(data1[10]),
        .I1(data0[10]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[10] ),
        .I5(\a_reg_n_0_[10] ),
        .O(\leds_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[10]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[10]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[10] ),
        .I5(\b_reg_n_0_[10] ),
        .O(\leds_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \leds_OBUF[10]_inst_i_6 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[10]_inst_i_10_n_0 ),
        .O(\leds_OBUF[10]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000030300000BB88)) 
    \leds_OBUF[10]_inst_i_7 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[14] ),
        .I3(\a_reg_n_0_[10] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[10]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFC00000A0C00000)) 
    \leds_OBUF[10]_inst_i_8 
       (.I0(\a_reg_n_0_[10] ),
        .I1(\a_reg_n_0_[14] ),
        .I2(\b_reg_n_0_[1] ),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[12] ),
        .O(\leds_OBUF[10]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[10]_inst_i_9 
       (.I0(\leds_OBUF[10]_inst_i_11_n_0 ),
        .I1(\leds_OBUF[12]_inst_i_12_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[11]_inst_i_10_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[13]_inst_i_10_n_0 ),
        .O(\leds_OBUF[10]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[11]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[11]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[11]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[11]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[11]_inst_i_5_n_0 ),
        .O(leds_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[11]_inst_i_10 
       (.I0(\a_reg_n_0_[4] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[0] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[8] ),
        .O(\leds_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \leds_OBUF[11]_inst_i_2 
       (.I0(\leds_OBUF[11]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[12]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[11]_inst_i_7_n_0 ),
        .I5(\leds_OBUF[12]_inst_i_8_n_0 ),
        .O(\leds_OBUF[11]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[11]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[11]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[12]_inst_i_10_n_0 ),
        .I4(\leds_OBUF[11]_inst_i_9_n_0 ),
        .O(\leds_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[11]_inst_i_4 
       (.I0(data1[11]),
        .I1(data0[11]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[11] ),
        .I5(\a_reg_n_0_[11] ),
        .O(\leds_OBUF[11]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[11]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[11]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[11] ),
        .I5(\b_reg_n_0_[11] ),
        .O(\leds_OBUF[11]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \leds_OBUF[11]_inst_i_6 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[11] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(p_1_in),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000030300000BB88)) 
    \leds_OBUF[11]_inst_i_7 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(p_1_in),
        .I3(\a_reg_n_0_[11] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[11]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFC00000A0C00000)) 
    \leds_OBUF[11]_inst_i_8 
       (.I0(\a_reg_n_0_[11] ),
        .I1(p_1_in),
        .I2(\b_reg_n_0_[1] ),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[13] ),
        .O(\leds_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[11]_inst_i_9 
       (.I0(\leds_OBUF[11]_inst_i_10_n_0 ),
        .I1(\leds_OBUF[13]_inst_i_10_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[12]_inst_i_12_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[14]_inst_i_12_n_0 ),
        .O(\leds_OBUF[11]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[12]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[12]_inst_i_3_n_0 ),
        .I2(\leds_OBUF[12]_inst_i_4_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[12]_inst_i_5_n_0 ),
        .I5(\leds_OBUF[12]_inst_i_6_n_0 ),
        .O(leds_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB0008000)) 
    \leds_OBUF[12]_inst_i_10 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[14] ),
        .O(\leds_OBUF[12]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[12]_inst_i_11 
       (.I0(\leds_OBUF[12]_inst_i_12_n_0 ),
        .I1(\leds_OBUF[14]_inst_i_12_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[13]_inst_i_10_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[15]_inst_i_12_n_0 ),
        .O(\leds_OBUF[12]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[12]_inst_i_12 
       (.I0(\a_reg_n_0_[5] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[1] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[9] ),
        .O(\leds_OBUF[12]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \leds_OBUF[12]_inst_i_2 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[3] ),
        .I2(\op_reg_n_0_[1] ),
        .O(\leds_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \leds_OBUF[12]_inst_i_3 
       (.I0(\leds_OBUF[12]_inst_i_7_n_0 ),
        .I1(\leds_OBUF[13]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[12]_inst_i_8_n_0 ),
        .I5(\leds_OBUF[12]_inst_i_9_n_0 ),
        .O(\leds_OBUF[12]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[12]_inst_i_4 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[12]_inst_i_10_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[13]_inst_i_9_n_0 ),
        .I4(\leds_OBUF[12]_inst_i_11_n_0 ),
        .O(\leds_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[12]_inst_i_5 
       (.I0(data1[12]),
        .I1(data0[12]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[12] ),
        .I5(\a_reg_n_0_[12] ),
        .O(\leds_OBUF[12]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[12]_inst_i_6 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[12]_inst_i_11_n_0 ),
        .I4(\a_reg_n_0_[12] ),
        .I5(\b_reg_n_0_[12] ),
        .O(\leds_OBUF[12]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \leds_OBUF[12]_inst_i_7 
       (.I0(\a_reg_n_0_[14] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[12] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(p_1_in),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[12]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h000B0008)) 
    \leds_OBUF[12]_inst_i_8 
       (.I0(\a_reg_n_0_[14] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[12] ),
        .O(\leds_OBUF[12]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000B0008)) 
    \leds_OBUF[12]_inst_i_9 
       (.I0(p_1_in),
        .I1(\b_reg_n_0_[1] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[13] ),
        .O(\leds_OBUF[12]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \leds_OBUF[13]_inst_i_1 
       (.I0(\leds_OBUF[13]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I2(\leds_OBUF[13]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[13]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[13]_inst_i_5_n_0 ),
        .O(leds_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[13]_inst_i_10 
       (.I0(\a_reg_n_0_[6] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[2] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[10] ),
        .O(\leds_OBUF[13]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \leds_OBUF[13]_inst_i_2 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[13]_inst_i_6_n_0 ),
        .I2(\leds_OBUF[14]_inst_i_9_n_0 ),
        .I3(\leds_OBUF[13]_inst_i_7_n_0 ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\b_reg_n_0_[0] ),
        .O(\leds_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAAAAAEAAA)) 
    \leds_OBUF[13]_inst_i_3 
       (.I0(\leds_OBUF[13]_inst_i_8_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[14] ),
        .I3(\leds_OBUF[15]_inst_i_7_n_0 ),
        .I4(\b_reg_n_0_[0] ),
        .I5(\leds_OBUF[13]_inst_i_9_n_0 ),
        .O(\leds_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[13]_inst_i_4 
       (.I0(data1[13]),
        .I1(data0[13]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[13] ),
        .I5(\a_reg_n_0_[13] ),
        .O(\leds_OBUF[13]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[13]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[13]_inst_i_8_n_0 ),
        .I4(\a_reg_n_0_[13] ),
        .I5(\b_reg_n_0_[13] ),
        .O(\leds_OBUF[13]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000008080000FF00)) 
    \leds_OBUF[13]_inst_i_6 
       (.I0(\leds_OBUF[15]_inst_i_9_n_0 ),
        .I1(\a_reg_n_0_[14] ),
        .I2(\b_reg_n_0_[1] ),
        .I3(\leds_OBUF[12]_inst_i_9_n_0 ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\b_reg_n_0_[0] ),
        .O(\leds_OBUF[13]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFF00FE04)) 
    \leds_OBUF[13]_inst_i_7 
       (.I0(\b_reg_n_0_[1] ),
        .I1(\a_reg_n_0_[13] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(p_1_in),
        .I4(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[13]_inst_i_8 
       (.I0(\leds_OBUF[13]_inst_i_10_n_0 ),
        .I1(\leds_OBUF[15]_inst_i_12_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[14]_inst_i_12_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[15]_inst_i_11_n_0 ),
        .O(\leds_OBUF[13]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB0008000)) 
    \leds_OBUF[13]_inst_i_9 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(p_1_in),
        .O(\leds_OBUF[13]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \leds_OBUF[14]_inst_i_1 
       (.I0(\leds_OBUF[14]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I2(\leds_OBUF[14]_inst_i_4_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[14]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[14]_inst_i_7_n_0 ),
        .O(leds_OBUF[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[14]_inst_i_10 
       (.I0(\leds_OBUF[14]_inst_i_12_n_0 ),
        .I1(\leds_OBUF[15]_inst_i_11_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[15]_inst_i_12_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[15]_inst_i_13_n_0 ),
        .O(\leds_OBUF[14]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \leds_OBUF[14]_inst_i_11 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[3] ),
        .O(\leds_OBUF[14]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[14]_inst_i_12 
       (.I0(\a_reg_n_0_[7] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[11] ),
        .O(\leds_OBUF[14]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \leds_OBUF[14]_inst_i_2 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[14]_inst_i_8_n_0 ),
        .I2(p_1_in),
        .I3(\leds_OBUF[14]_inst_i_9_n_0 ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\b_reg_n_0_[0] ),
        .O(\leds_OBUF[14]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \leds_OBUF[14]_inst_i_3 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[3] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .O(\leds_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAEAAAAAAAAA)) 
    \leds_OBUF[14]_inst_i_4 
       (.I0(\leds_OBUF[14]_inst_i_10_n_0 ),
        .I1(p_1_in),
        .I2(\leds_OBUF[15]_inst_i_7_n_0 ),
        .I3(\a_reg_n_0_[14] ),
        .I4(\b_reg_n_0_[0] ),
        .I5(\b_reg_n_0_[1] ),
        .O(\leds_OBUF[14]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds_OBUF[14]_inst_i_5 
       (.I0(\op_reg_n_0_[3] ),
        .I1(\op_reg_n_0_[2] ),
        .O(\leds_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[14]_inst_i_6 
       (.I0(data1[14]),
        .I1(data0[14]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[14] ),
        .I5(\a_reg_n_0_[14] ),
        .O(\leds_OBUF[14]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[14]_inst_i_7 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[14]_inst_i_10_n_0 ),
        .I4(\a_reg_n_0_[14] ),
        .I5(\b_reg_n_0_[14] ),
        .O(\leds_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000088C0)) 
    \leds_OBUF[14]_inst_i_8 
       (.I0(p_1_in),
        .I1(\leds_OBUF[15]_inst_i_9_n_0 ),
        .I2(\a_reg_n_0_[14] ),
        .I3(\b_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\b_reg_n_0_[1] ),
        .O(\leds_OBUF[14]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF00FE04)) 
    \leds_OBUF[14]_inst_i_9 
       (.I0(\b_reg_n_0_[1] ),
        .I1(\a_reg_n_0_[14] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(p_1_in),
        .I4(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[14]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCCFFF0AAAA)) 
    \leds_OBUF[15]_inst_i_1 
       (.I0(\leds_OBUF[15]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[15]_inst_i_3_n_0 ),
        .I2(\leds_OBUF[15]_inst_i_4_n_0 ),
        .I3(\leds_OBUF[15]_inst_i_5_n_0 ),
        .I4(\op_reg_n_0_[3] ),
        .I5(\op_reg_n_0_[2] ),
        .O(leds_OBUF[15]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \leds_OBUF[15]_inst_i_10 
       (.I0(p_1_in),
        .I1(\a_reg_n_0_[7] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[3] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[11] ),
        .O(\leds_OBUF[15]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \leds_OBUF[15]_inst_i_11 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\a_reg_n_0_[5] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[9] ),
        .O(\leds_OBUF[15]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \leds_OBUF[15]_inst_i_12 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\a_reg_n_0_[4] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[0] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[8] ),
        .O(\leds_OBUF[15]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \leds_OBUF[15]_inst_i_13 
       (.I0(\a_reg_n_0_[14] ),
        .I1(\a_reg_n_0_[6] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[10] ),
        .O(\leds_OBUF[15]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8FF080F08F008000)) 
    \leds_OBUF[15]_inst_i_2 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(p_0_in2_in),
        .I5(p_2_in),
        .O(\leds_OBUF[15]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF03366EE)) 
    \leds_OBUF[15]_inst_i_3 
       (.I0(p_0_in),
        .I1(p_1_in),
        .I2(\leds_OBUF[15]_inst_i_6_n_0 ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[1] ),
        .O(\leds_OBUF[15]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \leds_OBUF[15]_inst_i_4 
       (.I0(\leds_OBUF[15]_inst_i_7_n_0 ),
        .I1(p_1_in),
        .I2(\b_reg_n_0_[0] ),
        .I3(\b_reg_n_0_[1] ),
        .I4(\leds_OBUF[15]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[15]_inst_i_8_n_0 ),
        .O(\leds_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0C00000008)) 
    \leds_OBUF[15]_inst_i_5 
       (.I0(\leds_OBUF[15]_inst_i_9_n_0 ),
        .I1(p_1_in),
        .I2(\op_reg_n_0_[1] ),
        .I3(\b_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[0] ),
        .I5(\op_reg_n_0_[0] ),
        .O(\leds_OBUF[15]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \leds_OBUF[15]_inst_i_6 
       (.I0(\leds_OBUF[15]_inst_i_10_n_0 ),
        .I1(\leds_OBUF[15]_inst_i_11_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[15]_inst_i_12_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[15]_inst_i_13_n_0 ),
        .O(\leds_OBUF[15]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \leds_OBUF[15]_inst_i_7 
       (.I0(\b_reg_n_0_[3] ),
        .I1(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[15]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \leds_OBUF[15]_inst_i_8 
       (.I0(\op_reg_n_0_[1] ),
        .I1(\op_reg_n_0_[0] ),
        .O(\leds_OBUF[15]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \leds_OBUF[15]_inst_i_9 
       (.I0(\b_reg_n_0_[3] ),
        .I1(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[15]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEEFEEEEFEEEE)) 
    \leds_OBUF[1]_inst_i_1 
       (.I0(\leds_OBUF[1]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[1]_inst_i_3_n_0 ),
        .I2(\op_reg_n_0_[2] ),
        .I3(\op_reg_n_0_[3] ),
        .I4(\leds_OBUF[1]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[1]_inst_i_5_n_0 ),
        .O(leds_OBUF[1]));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \leds_OBUF[1]_inst_i_10 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\a_reg_n_0_[5] ),
        .I2(\a_reg_n_0_[9] ),
        .I3(\a_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[1]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA8A0A80A08000)) 
    \leds_OBUF[1]_inst_i_2 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[2]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[2]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[1]_inst_i_6_n_0 ),
        .O(\leds_OBUF[1]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[1]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[1]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[2]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[1]_inst_i_8_n_0 ),
        .O(\leds_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[1]_inst_i_4 
       (.I0(data1[1]),
        .I1(data0[1]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\a_reg_n_0_[1] ),
        .O(\leds_OBUF[1]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF03366EE)) 
    \leds_OBUF[1]_inst_i_5 
       (.I0(\b_reg_n_0_[1] ),
        .I1(\a_reg_n_0_[1] ),
        .I2(\leds_OBUF[1]_inst_i_8_n_0 ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[1] ),
        .O(\leds_OBUF[1]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[1]_inst_i_6 
       (.I0(\leds_OBUF[3]_inst_i_11_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[1]_inst_i_9_n_0 ),
        .O(\leds_OBUF[1]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[1]_inst_i_7 
       (.I0(\leds_OBUF[1]_inst_i_10_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[3]_inst_i_12_n_0 ),
        .O(\leds_OBUF[1]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000020200000300)) 
    \leds_OBUF[1]_inst_i_8 
       (.I0(\a_reg_n_0_[0] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\a_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\b_reg_n_0_[0] ),
        .O(\leds_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \leds_OBUF[1]_inst_i_9 
       (.I0(\a_reg_n_0_[1] ),
        .I1(\a_reg_n_0_[9] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[13] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[5] ),
        .O(\leds_OBUF[1]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[2]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[2]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[2]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[2]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[2]_inst_i_5_n_0 ),
        .O(leds_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[2]_inst_i_10 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(\a_reg_n_0_[4] ),
        .O(\leds_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \leds_OBUF[2]_inst_i_2 
       (.I0(\leds_OBUF[3]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[3]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[2]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[2]_inst_i_7_n_0 ),
        .O(\leds_OBUF[2]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[2]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[2]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[3]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[2]_inst_i_9_n_0 ),
        .O(\leds_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[2]_inst_i_4 
       (.I0(data1[2]),
        .I1(data0[2]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[2] ),
        .I5(\a_reg_n_0_[2] ),
        .O(\leds_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[2]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[2]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[2] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \leds_OBUF[2]_inst_i_6 
       (.I0(\a_reg_n_0_[8] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\leds_OBUF[2]_inst_i_10_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[0]_inst_i_6_n_0 ),
        .O(\leds_OBUF[2]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[2]_inst_i_7 
       (.I0(\leds_OBUF[4]_inst_i_12_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[0]_inst_i_6_n_0 ),
        .O(\leds_OBUF[2]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[2]_inst_i_8 
       (.I0(\leds_OBUF[0]_inst_i_8_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[4]_inst_i_13_n_0 ),
        .O(\leds_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \leds_OBUF[2]_inst_i_9 
       (.I0(\a_reg_n_0_[1] ),
        .I1(\b_reg_n_0_[0] ),
        .I2(\a_reg_n_0_[0] ),
        .I3(\b_reg_n_0_[1] ),
        .I4(\leds_OBUF[15]_inst_i_9_n_0 ),
        .I5(\a_reg_n_0_[2] ),
        .O(\leds_OBUF[2]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[3]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[3]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[3]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[3]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[3]_inst_i_5_n_0 ),
        .O(leds_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[3]_inst_i_10 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(\a_reg_n_0_[5] ),
        .O(\leds_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    \leds_OBUF[3]_inst_i_11 
       (.I0(\a_reg_n_0_[3] ),
        .I1(\a_reg_n_0_[11] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[7] ),
        .I4(p_1_in),
        .I5(\b_reg_n_0_[3] ),
        .O(\leds_OBUF[3]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \leds_OBUF[3]_inst_i_12 
       (.I0(p_1_in),
        .I1(\a_reg_n_0_[7] ),
        .I2(\a_reg_n_0_[11] ),
        .I3(\a_reg_n_0_[3] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[3]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \leds_OBUF[3]_inst_i_13 
       (.I0(\a_reg_n_0_[1] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[3] ),
        .O(\leds_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \leds_OBUF[3]_inst_i_2 
       (.I0(\leds_OBUF[4]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[4]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[3]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[3]_inst_i_7_n_0 ),
        .O(\leds_OBUF[3]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[3]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[3]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[4]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[3]_inst_i_9_n_0 ),
        .O(\leds_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[3]_inst_i_4 
       (.I0(data1[3]),
        .I1(data0[3]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[3] ),
        .O(\leds_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[3]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[3]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[3] ),
        .O(\leds_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \leds_OBUF[3]_inst_i_6 
       (.I0(\a_reg_n_0_[9] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\leds_OBUF[3]_inst_i_10_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[3]_inst_i_11_n_0 ),
        .O(\leds_OBUF[3]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[3]_inst_i_7 
       (.I0(\leds_OBUF[5]_inst_i_12_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[3]_inst_i_11_n_0 ),
        .O(\leds_OBUF[3]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[3]_inst_i_8 
       (.I0(\leds_OBUF[3]_inst_i_12_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[5]_inst_i_13_n_0 ),
        .O(\leds_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \leds_OBUF[3]_inst_i_9 
       (.I0(\a_reg_n_0_[0] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[15]_inst_i_9_n_0 ),
        .I3(\a_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[0] ),
        .I5(\leds_OBUF[3]_inst_i_13_n_0 ),
        .O(\leds_OBUF[3]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[4]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[4]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[4]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[4]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[4]_inst_i_5_n_0 ),
        .O(leds_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[4]_inst_i_10 
       (.I0(\a_reg_n_0_[14] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(\a_reg_n_0_[6] ),
        .O(\leds_OBUF[4]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[4]_inst_i_11 
       (.I0(\a_reg_n_0_[8] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[12] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[4] ),
        .O(\leds_OBUF[4]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \leds_OBUF[4]_inst_i_12 
       (.I0(\a_reg_n_0_[8] ),
        .I1(p_1_in),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[12] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[4] ),
        .O(\leds_OBUF[4]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAACCF000)) 
    \leds_OBUF[4]_inst_i_13 
       (.I0(\a_reg_n_0_[4] ),
        .I1(\a_reg_n_0_[12] ),
        .I2(\a_reg_n_0_[8] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[4]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \leds_OBUF[4]_inst_i_2 
       (.I0(\leds_OBUF[5]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[5]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[4]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[4]_inst_i_7_n_0 ),
        .O(\leds_OBUF[4]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[4]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[4]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[5]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[4]_inst_i_9_n_0 ),
        .O(\leds_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[4]_inst_i_4 
       (.I0(data1[4]),
        .I1(data0[4]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[4] ),
        .I5(\a_reg_n_0_[4] ),
        .O(\leds_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[4]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[4]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[4] ),
        .I5(\b_reg_n_0_[4] ),
        .O(\leds_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \leds_OBUF[4]_inst_i_6 
       (.I0(\a_reg_n_0_[10] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\leds_OBUF[4]_inst_i_10_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[4]_inst_i_11_n_0 ),
        .O(\leds_OBUF[4]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[4]_inst_i_7 
       (.I0(\leds_OBUF[6]_inst_i_11_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[4]_inst_i_12_n_0 ),
        .O(\leds_OBUF[4]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[4]_inst_i_8 
       (.I0(\leds_OBUF[4]_inst_i_13_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[6]_inst_i_12_n_0 ),
        .O(\leds_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \leds_OBUF[4]_inst_i_9 
       (.I0(\a_reg_n_0_[1] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[15]_inst_i_9_n_0 ),
        .I3(\a_reg_n_0_[3] ),
        .I4(\b_reg_n_0_[0] ),
        .I5(\leds_OBUF[5]_inst_i_14_n_0 ),
        .O(\leds_OBUF[4]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[5]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[5]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[5]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[5]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[5]_inst_i_5_n_0 ),
        .O(leds_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \leds_OBUF[5]_inst_i_10 
       (.I0(\a_reg_n_0_[7] ),
        .I1(p_1_in),
        .I2(\b_reg_n_0_[3] ),
        .O(\leds_OBUF[5]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[5]_inst_i_11 
       (.I0(\a_reg_n_0_[9] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[13] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[5] ),
        .O(\leds_OBUF[5]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \leds_OBUF[5]_inst_i_12 
       (.I0(\a_reg_n_0_[9] ),
        .I1(p_1_in),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[13] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[5] ),
        .O(\leds_OBUF[5]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAACCF000)) 
    \leds_OBUF[5]_inst_i_13 
       (.I0(\a_reg_n_0_[5] ),
        .I1(\a_reg_n_0_[13] ),
        .I2(\a_reg_n_0_[9] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[5]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000030300000BB88)) 
    \leds_OBUF[5]_inst_i_14 
       (.I0(\a_reg_n_0_[2] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[0] ),
        .I3(\a_reg_n_0_[4] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[5]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \leds_OBUF[5]_inst_i_2 
       (.I0(\leds_OBUF[6]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[6]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[5]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[5]_inst_i_7_n_0 ),
        .O(\leds_OBUF[5]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[5]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[5]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[6]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[5]_inst_i_9_n_0 ),
        .O(\leds_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[5]_inst_i_4 
       (.I0(data1[5]),
        .I1(data0[5]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[5] ),
        .I5(\a_reg_n_0_[5] ),
        .O(\leds_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[5]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[5]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[5] ),
        .I5(\b_reg_n_0_[5] ),
        .O(\leds_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \leds_OBUF[5]_inst_i_6 
       (.I0(\a_reg_n_0_[11] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(\b_reg_n_0_[2] ),
        .I3(\leds_OBUF[5]_inst_i_10_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[5]_inst_i_11_n_0 ),
        .O(\leds_OBUF[5]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[5]_inst_i_7 
       (.I0(\leds_OBUF[7]_inst_i_11_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[5]_inst_i_12_n_0 ),
        .O(\leds_OBUF[5]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[5]_inst_i_8 
       (.I0(\leds_OBUF[5]_inst_i_13_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[7]_inst_i_12_n_0 ),
        .O(\leds_OBUF[5]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[5]_inst_i_9 
       (.I0(\leds_OBUF[5]_inst_i_14_n_0 ),
        .I1(\b_reg_n_0_[0] ),
        .I2(\leds_OBUF[6]_inst_i_13_n_0 ),
        .O(\leds_OBUF[5]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[6]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[6]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[6]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[6]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[6]_inst_i_5_n_0 ),
        .O(leds_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \leds_OBUF[6]_inst_i_10 
       (.I0(\a_reg_n_0_[10] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[14] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\a_reg_n_0_[6] ),
        .O(\leds_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \leds_OBUF[6]_inst_i_11 
       (.I0(\a_reg_n_0_[10] ),
        .I1(p_1_in),
        .I2(\b_reg_n_0_[2] ),
        .I3(\a_reg_n_0_[14] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\a_reg_n_0_[6] ),
        .O(\leds_OBUF[6]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAACCF000)) 
    \leds_OBUF[6]_inst_i_12 
       (.I0(\a_reg_n_0_[6] ),
        .I1(\a_reg_n_0_[14] ),
        .I2(\a_reg_n_0_[10] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000030300000BB88)) 
    \leds_OBUF[6]_inst_i_13 
       (.I0(\a_reg_n_0_[3] ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[1] ),
        .I3(\a_reg_n_0_[5] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \leds_OBUF[6]_inst_i_2 
       (.I0(\leds_OBUF[7]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[7]_inst_i_7_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[6]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[6]_inst_i_7_n_0 ),
        .O(\leds_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[6]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[6]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[7]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[6]_inst_i_9_n_0 ),
        .O(\leds_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[6]_inst_i_4 
       (.I0(data1[6]),
        .I1(data0[6]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[6] ),
        .I5(\a_reg_n_0_[6] ),
        .O(\leds_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[6]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[6]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[6] ),
        .I5(\b_reg_n_0_[6] ),
        .O(\leds_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
    \leds_OBUF[6]_inst_i_6 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\a_reg_n_0_[8] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[6]_inst_i_10_n_0 ),
        .O(\leds_OBUF[6]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[6]_inst_i_7 
       (.I0(\leds_OBUF[8]_inst_i_10_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[6]_inst_i_11_n_0 ),
        .O(\leds_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B88888BB888888)) 
    \leds_OBUF[6]_inst_i_8 
       (.I0(\leds_OBUF[6]_inst_i_12_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[8] ),
        .I3(\a_reg_n_0_[12] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[6]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \leds_OBUF[6]_inst_i_9 
       (.I0(\leds_OBUF[6]_inst_i_13_n_0 ),
        .I1(\b_reg_n_0_[0] ),
        .I2(\leds_OBUF[7]_inst_i_13_n_0 ),
        .I3(\b_reg_n_0_[1] ),
        .I4(\leds_OBUF[9]_inst_i_13_n_0 ),
        .O(\leds_OBUF[6]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[7]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[7]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[7]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[7]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[7]_inst_i_5_n_0 ),
        .O(leds_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \leds_OBUF[7]_inst_i_10 
       (.I0(\a_reg_n_0_[11] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[7] ),
        .I3(p_1_in),
        .I4(\b_reg_n_0_[3] ),
        .O(\leds_OBUF[7]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \leds_OBUF[7]_inst_i_11 
       (.I0(\a_reg_n_0_[11] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[7] ),
        .I3(p_1_in),
        .I4(\b_reg_n_0_[3] ),
        .O(\leds_OBUF[7]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAACCF000)) 
    \leds_OBUF[7]_inst_i_12 
       (.I0(\a_reg_n_0_[7] ),
        .I1(p_1_in),
        .I2(\a_reg_n_0_[11] ),
        .I3(\b_reg_n_0_[3] ),
        .I4(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[7]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \leds_OBUF[7]_inst_i_13 
       (.I0(\a_reg_n_0_[0] ),
        .I1(\a_reg_n_0_[4] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[7]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \leds_OBUF[7]_inst_i_2 
       (.I0(\leds_OBUF[8]_inst_i_7_n_0 ),
        .I1(\leds_OBUF[8]_inst_i_6_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[7]_inst_i_6_n_0 ),
        .I5(\leds_OBUF[7]_inst_i_7_n_0 ),
        .O(\leds_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[7]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[7]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[8]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[7]_inst_i_9_n_0 ),
        .O(\leds_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[7]_inst_i_4 
       (.I0(data1[7]),
        .I1(data0[7]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[7] ),
        .I5(\a_reg_n_0_[7] ),
        .O(\leds_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[7]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[7]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[7] ),
        .I5(\b_reg_n_0_[7] ),
        .O(\leds_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
    \leds_OBUF[7]_inst_i_6 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\a_reg_n_0_[9] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[7]_inst_i_10_n_0 ),
        .O(\leds_OBUF[7]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[7]_inst_i_7 
       (.I0(\leds_OBUF[9]_inst_i_10_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[7]_inst_i_11_n_0 ),
        .O(\leds_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B88888BB888888)) 
    \leds_OBUF[7]_inst_i_8 
       (.I0(\leds_OBUF[7]_inst_i_12_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\a_reg_n_0_[9] ),
        .I3(\a_reg_n_0_[13] ),
        .I4(\b_reg_n_0_[3] ),
        .I5(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[7]_inst_i_9 
       (.I0(\leds_OBUF[7]_inst_i_13_n_0 ),
        .I1(\leds_OBUF[9]_inst_i_13_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[8]_inst_i_13_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[10]_inst_i_11_n_0 ),
        .O(\leds_OBUF[7]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[8]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[8]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[8]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[8]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[8]_inst_i_5_n_0 ),
        .O(leds_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \leds_OBUF[8]_inst_i_10 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[8] ),
        .I3(p_1_in),
        .I4(\b_reg_n_0_[3] ),
        .O(\leds_OBUF[8]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \leds_OBUF[8]_inst_i_11 
       (.I0(\a_reg_n_0_[12] ),
        .I1(\a_reg_n_0_[8] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[8]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leds_OBUF[8]_inst_i_12 
       (.I0(\a_reg_n_0_[10] ),
        .I1(\a_reg_n_0_[14] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[8]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \leds_OBUF[8]_inst_i_13 
       (.I0(\a_reg_n_0_[1] ),
        .I1(\a_reg_n_0_[5] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[8]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \leds_OBUF[8]_inst_i_2 
       (.I0(\leds_OBUF[8]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[9]_inst_i_6_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[8]_inst_i_7_n_0 ),
        .I5(\leds_OBUF[9]_inst_i_7_n_0 ),
        .O(\leds_OBUF[8]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[8]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[8]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[9]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[8]_inst_i_9_n_0 ),
        .O(\leds_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[8]_inst_i_4 
       (.I0(data1[8]),
        .I1(data0[8]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[8] ),
        .I5(\a_reg_n_0_[8] ),
        .O(\leds_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[8]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[8]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[8] ),
        .I5(\b_reg_n_0_[8] ),
        .O(\leds_OBUF[8]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds_OBUF[8]_inst_i_6 
       (.I0(\leds_OBUF[10]_inst_i_10_n_0 ),
        .I1(\b_reg_n_0_[1] ),
        .I2(\leds_OBUF[8]_inst_i_10_n_0 ),
        .O(\leds_OBUF[8]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
    \leds_OBUF[8]_inst_i_7 
       (.I0(\a_reg_n_0_[14] ),
        .I1(\a_reg_n_0_[10] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[8]_inst_i_11_n_0 ),
        .O(\leds_OBUF[8]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0FFFFA0C00000)) 
    \leds_OBUF[8]_inst_i_8 
       (.I0(\a_reg_n_0_[8] ),
        .I1(\a_reg_n_0_[12] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[8]_inst_i_12_n_0 ),
        .O(\leds_OBUF[8]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[8]_inst_i_9 
       (.I0(\leds_OBUF[8]_inst_i_13_n_0 ),
        .I1(\leds_OBUF[10]_inst_i_11_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[9]_inst_i_13_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[11]_inst_i_10_n_0 ),
        .O(\leds_OBUF[8]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \leds_OBUF[9]_inst_i_1 
       (.I0(\leds_OBUF[12]_inst_i_2_n_0 ),
        .I1(\leds_OBUF[9]_inst_i_2_n_0 ),
        .I2(\leds_OBUF[9]_inst_i_3_n_0 ),
        .I3(\leds_OBUF[14]_inst_i_5_n_0 ),
        .I4(\leds_OBUF[9]_inst_i_4_n_0 ),
        .I5(\leds_OBUF[9]_inst_i_5_n_0 ),
        .O(leds_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \leds_OBUF[9]_inst_i_10 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\b_reg_n_0_[2] ),
        .I2(\a_reg_n_0_[9] ),
        .I3(p_1_in),
        .I4(\b_reg_n_0_[3] ),
        .O(\leds_OBUF[9]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \leds_OBUF[9]_inst_i_11 
       (.I0(\a_reg_n_0_[13] ),
        .I1(\a_reg_n_0_[9] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[9]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leds_OBUF[9]_inst_i_12 
       (.I0(\a_reg_n_0_[11] ),
        .I1(p_1_in),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[9]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \leds_OBUF[9]_inst_i_13 
       (.I0(\a_reg_n_0_[2] ),
        .I1(\a_reg_n_0_[6] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .O(\leds_OBUF[9]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \leds_OBUF[9]_inst_i_2 
       (.I0(\leds_OBUF[9]_inst_i_6_n_0 ),
        .I1(\leds_OBUF[10]_inst_i_6_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\leds_OBUF[9]_inst_i_7_n_0 ),
        .I5(\leds_OBUF[10]_inst_i_7_n_0 ),
        .O(\leds_OBUF[9]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \leds_OBUF[9]_inst_i_3 
       (.I0(\leds_OBUF[14]_inst_i_3_n_0 ),
        .I1(\leds_OBUF[9]_inst_i_8_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[10]_inst_i_8_n_0 ),
        .I4(\leds_OBUF[9]_inst_i_9_n_0 ),
        .O(\leds_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAC00AC00AC00AC0)) 
    \leds_OBUF[9]_inst_i_4 
       (.I0(data1[9]),
        .I1(data0[9]),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\b_reg_n_0_[9] ),
        .I5(\a_reg_n_0_[9] ),
        .O(\leds_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8202AA2AA2228808)) 
    \leds_OBUF[9]_inst_i_5 
       (.I0(\leds_OBUF[14]_inst_i_11_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\leds_OBUF[9]_inst_i_9_n_0 ),
        .I4(\a_reg_n_0_[9] ),
        .I5(\b_reg_n_0_[9] ),
        .O(\leds_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \leds_OBUF[9]_inst_i_6 
       (.I0(\a_reg_n_0_[11] ),
        .I1(\b_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[9]_inst_i_10_n_0 ),
        .O(\leds_OBUF[9]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
    \leds_OBUF[9]_inst_i_7 
       (.I0(p_1_in),
        .I1(\a_reg_n_0_[11] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[9]_inst_i_11_n_0 ),
        .O(\leds_OBUF[9]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0FFFFA0C00000)) 
    \leds_OBUF[9]_inst_i_8 
       (.I0(\a_reg_n_0_[9] ),
        .I1(\a_reg_n_0_[13] ),
        .I2(\b_reg_n_0_[3] ),
        .I3(\b_reg_n_0_[2] ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[9]_inst_i_12_n_0 ),
        .O(\leds_OBUF[9]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \leds_OBUF[9]_inst_i_9 
       (.I0(\leds_OBUF[9]_inst_i_13_n_0 ),
        .I1(\leds_OBUF[11]_inst_i_10_n_0 ),
        .I2(\b_reg_n_0_[0] ),
        .I3(\leds_OBUF[10]_inst_i_11_n_0 ),
        .I4(\b_reg_n_0_[1] ),
        .I5(\leds_OBUF[12]_inst_i_12_n_0 ),
        .O(\leds_OBUF[9]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \op[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(dip_sw_IBUF[0]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\op[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dip_sw_IBUF[1]),
        .O(\op[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \op[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dip_sw_IBUF[2]),
        .O(\op[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \op[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(op));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dip_sw_IBUF[3]),
        .O(\op[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(CLK),
        .CE(op),
        .CLR(AR),
        .D(\op[0]_i_1_n_0 ),
        .Q(\op_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(CLK),
        .CE(op),
        .CLR(AR),
        .D(\op[1]_i_1_n_0 ),
        .Q(\op_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[2] 
       (.C(CLK),
        .CE(op),
        .CLR(AR),
        .D(\op[2]_i_1_n_0 ),
        .Q(\op_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[3] 
       (.C(CLK),
        .CE(op),
        .CLR(AR),
        .D(\op[3]_i_2_n_0 ),
        .Q(\op_reg_n_0_[3] ));
endmodule

(* ECO_CHECKSUM = "c5c8ce66" *) 
(* NotValidForBitStream *)
module thinpad_top
   (clk_50M,
    clk_11M0592,
    clock_btn,
    reset_btn,
    touch_btn,
    dip_sw,
    leds,
    dpy0,
    dpy1,
    uart_rdn,
    uart_wrn,
    uart_dataready,
    uart_tbre,
    uart_tsre,
    base_ram_data,
    base_ram_addr,
    base_ram_be_n,
    base_ram_ce_n,
    base_ram_oe_n,
    base_ram_we_n,
    ext_ram_data,
    ext_ram_addr,
    ext_ram_be_n,
    ext_ram_ce_n,
    ext_ram_oe_n,
    ext_ram_we_n,
    txd,
    rxd,
    flash_a,
    flash_d,
    flash_rp_n,
    flash_vpen,
    flash_ce_n,
    flash_oe_n,
    flash_we_n,
    flash_byte_n,
    sl811_a0,
    sl811_wr_n,
    sl811_rd_n,
    sl811_cs_n,
    sl811_rst_n,
    sl811_dack_n,
    sl811_intrq,
    sl811_drq_n,
    dm9k_cmd,
    dm9k_sd,
    dm9k_iow_n,
    dm9k_ior_n,
    dm9k_cs_n,
    dm9k_pwrst_n,
    dm9k_int,
    video_red,
    video_green,
    video_blue,
    video_hsync,
    video_vsync,
    video_clk,
    video_de);
  input clk_50M;
  input clk_11M0592;
  input clock_btn;
  input reset_btn;
  input [3:0]touch_btn;
  input [31:0]dip_sw;
  output [15:0]leds;
  output [7:0]dpy0;
  output [7:0]dpy1;
  output uart_rdn;
  output uart_wrn;
  input uart_dataready;
  input uart_tbre;
  input uart_tsre;
  inout [31:0]base_ram_data;
  output [19:0]base_ram_addr;
  output [3:0]base_ram_be_n;
  output base_ram_ce_n;
  output base_ram_oe_n;
  output base_ram_we_n;
  inout [31:0]ext_ram_data;
  output [19:0]ext_ram_addr;
  output [3:0]ext_ram_be_n;
  output ext_ram_ce_n;
  output ext_ram_oe_n;
  output ext_ram_we_n;
  output txd;
  input rxd;
  output [22:0]flash_a;
  inout [15:0]flash_d;
  output flash_rp_n;
  output flash_vpen;
  output flash_ce_n;
  output flash_oe_n;
  output flash_we_n;
  output flash_byte_n;
  output sl811_a0;
  output sl811_wr_n;
  output sl811_rd_n;
  output sl811_cs_n;
  output sl811_rst_n;
  output sl811_dack_n;
  input sl811_intrq;
  input sl811_drq_n;
  output dm9k_cmd;
  inout [15:0]dm9k_sd;
  output dm9k_iow_n;
  output dm9k_ior_n;
  output dm9k_cs_n;
  output dm9k_pwrst_n;
  input dm9k_int;
  output [2:0]video_red;
  output [2:0]video_green;
  output [1:0]video_blue;
  output video_hsync;
  output video_vsync;
  output video_clk;
  output video_de;

  wire [19:0]base_ram_addr;
  wire [3:0]base_ram_be_n;
  wire base_ram_ce_n;
  wire base_ram_oe_n;
  wire base_ram_we_n;
  wire clock_btn;
  wire clock_btn_IBUF;
  wire clock_btn_IBUF_BUFG;
  wire [31:0]dip_sw;
  wire [15:0]dip_sw_IBUF;
  wire dm9k_cmd;
  wire dm9k_cs_n;
  wire dm9k_ior_n;
  wire dm9k_iow_n;
  wire dm9k_pwrst_n;
  wire [7:0]dpy0;
  wire [7:0]dpy1;
  wire [19:0]ext_ram_addr;
  wire [3:0]ext_ram_be_n;
  wire ext_ram_ce_n;
  wire ext_ram_oe_n;
  wire ext_ram_we_n;
  wire [22:0]flash_a;
  wire flash_byte_n;
  wire flash_ce_n;
  wire flash_oe_n;
  wire flash_rp_n;
  wire flash_vpen;
  wire flash_we_n;
  wire [15:0]leds;
  wire [15:0]leds_OBUF;
  wire reset_btn;
  wire reset_btn_IBUF;
  wire sl811_a0;
  wire sl811_cs_n;
  wire sl811_dack_n;
  wire sl811_rd_n;
  wire sl811_rst_n;
  wire sl811_wr_n;
  wire txd;
  wire uart_rdn;
  wire uart_wrn;
  wire [1:0]video_blue;
  wire video_clk;
  wire video_de;
  wire [2:0]video_green;
  wire video_hsync;
  wire [2:0]video_red;
  wire video_vsync;

initial begin
 $sdf_annotate("alu_sim_time_impl.sdf",,,,"tool_control");
end
  OBUFT \base_ram_addr_OBUF[0]_inst 
       (.I(1'b0),
        .O(base_ram_addr[0]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[10]_inst 
       (.I(1'b0),
        .O(base_ram_addr[10]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[11]_inst 
       (.I(1'b0),
        .O(base_ram_addr[11]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[12]_inst 
       (.I(1'b0),
        .O(base_ram_addr[12]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[13]_inst 
       (.I(1'b0),
        .O(base_ram_addr[13]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[14]_inst 
       (.I(1'b0),
        .O(base_ram_addr[14]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[15]_inst 
       (.I(1'b0),
        .O(base_ram_addr[15]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[16]_inst 
       (.I(1'b0),
        .O(base_ram_addr[16]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[17]_inst 
       (.I(1'b0),
        .O(base_ram_addr[17]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[18]_inst 
       (.I(1'b0),
        .O(base_ram_addr[18]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[19]_inst 
       (.I(1'b0),
        .O(base_ram_addr[19]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[1]_inst 
       (.I(1'b0),
        .O(base_ram_addr[1]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[2]_inst 
       (.I(1'b0),
        .O(base_ram_addr[2]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[3]_inst 
       (.I(1'b0),
        .O(base_ram_addr[3]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[4]_inst 
       (.I(1'b0),
        .O(base_ram_addr[4]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[5]_inst 
       (.I(1'b0),
        .O(base_ram_addr[5]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[6]_inst 
       (.I(1'b0),
        .O(base_ram_addr[6]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[7]_inst 
       (.I(1'b0),
        .O(base_ram_addr[7]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[8]_inst 
       (.I(1'b0),
        .O(base_ram_addr[8]),
        .T(1'b1));
  OBUFT \base_ram_addr_OBUF[9]_inst 
       (.I(1'b0),
        .O(base_ram_addr[9]),
        .T(1'b1));
  OBUFT \base_ram_be_n_OBUF[0]_inst 
       (.I(1'b0),
        .O(base_ram_be_n[0]),
        .T(1'b1));
  OBUFT \base_ram_be_n_OBUF[1]_inst 
       (.I(1'b0),
        .O(base_ram_be_n[1]),
        .T(1'b1));
  OBUFT \base_ram_be_n_OBUF[2]_inst 
       (.I(1'b0),
        .O(base_ram_be_n[2]),
        .T(1'b1));
  OBUFT \base_ram_be_n_OBUF[3]_inst 
       (.I(1'b0),
        .O(base_ram_be_n[3]),
        .T(1'b1));
  OBUF base_ram_ce_n_OBUF_inst
       (.I(1'b1),
        .O(base_ram_ce_n));
  OBUF base_ram_oe_n_OBUF_inst
       (.I(1'b1),
        .O(base_ram_oe_n));
  OBUF base_ram_we_n_OBUF_inst
       (.I(1'b1),
        .O(base_ram_we_n));
  BUFG clock_btn_IBUF_BUFG_inst
       (.I(clock_btn_IBUF),
        .O(clock_btn_IBUF_BUFG));
  IBUF clock_btn_IBUF_inst
       (.I(clock_btn),
        .O(clock_btn_IBUF));
  alu computer
       (.AR(reset_btn_IBUF),
        .CLK(clock_btn_IBUF_BUFG),
        .dip_sw_IBUF(dip_sw_IBUF),
        .leds_OBUF(leds_OBUF));
  IBUF \dip_sw_IBUF[0]_inst 
       (.I(dip_sw[0]),
        .O(dip_sw_IBUF[0]));
  IBUF \dip_sw_IBUF[10]_inst 
       (.I(dip_sw[10]),
        .O(dip_sw_IBUF[10]));
  IBUF \dip_sw_IBUF[11]_inst 
       (.I(dip_sw[11]),
        .O(dip_sw_IBUF[11]));
  IBUF \dip_sw_IBUF[12]_inst 
       (.I(dip_sw[12]),
        .O(dip_sw_IBUF[12]));
  IBUF \dip_sw_IBUF[13]_inst 
       (.I(dip_sw[13]),
        .O(dip_sw_IBUF[13]));
  IBUF \dip_sw_IBUF[14]_inst 
       (.I(dip_sw[14]),
        .O(dip_sw_IBUF[14]));
  IBUF \dip_sw_IBUF[15]_inst 
       (.I(dip_sw[15]),
        .O(dip_sw_IBUF[15]));
  IBUF \dip_sw_IBUF[1]_inst 
       (.I(dip_sw[1]),
        .O(dip_sw_IBUF[1]));
  IBUF \dip_sw_IBUF[2]_inst 
       (.I(dip_sw[2]),
        .O(dip_sw_IBUF[2]));
  IBUF \dip_sw_IBUF[3]_inst 
       (.I(dip_sw[3]),
        .O(dip_sw_IBUF[3]));
  IBUF \dip_sw_IBUF[4]_inst 
       (.I(dip_sw[4]),
        .O(dip_sw_IBUF[4]));
  IBUF \dip_sw_IBUF[5]_inst 
       (.I(dip_sw[5]),
        .O(dip_sw_IBUF[5]));
  IBUF \dip_sw_IBUF[6]_inst 
       (.I(dip_sw[6]),
        .O(dip_sw_IBUF[6]));
  IBUF \dip_sw_IBUF[7]_inst 
       (.I(dip_sw[7]),
        .O(dip_sw_IBUF[7]));
  IBUF \dip_sw_IBUF[8]_inst 
       (.I(dip_sw[8]),
        .O(dip_sw_IBUF[8]));
  IBUF \dip_sw_IBUF[9]_inst 
       (.I(dip_sw[9]),
        .O(dip_sw_IBUF[9]));
  OBUFT dm9k_cmd_OBUF_inst
       (.I(1'b0),
        .O(dm9k_cmd),
        .T(1'b1));
  OBUFT dm9k_cs_n_OBUF_inst
       (.I(1'b0),
        .O(dm9k_cs_n),
        .T(1'b1));
  OBUFT dm9k_ior_n_OBUF_inst
       (.I(1'b0),
        .O(dm9k_ior_n),
        .T(1'b1));
  OBUFT dm9k_iow_n_OBUF_inst
       (.I(1'b0),
        .O(dm9k_iow_n),
        .T(1'b1));
  OBUFT dm9k_pwrst_n_OBUF_inst
       (.I(1'b0),
        .O(dm9k_pwrst_n),
        .T(1'b1));
  OBUFT \dpy0_OBUF[0]_inst 
       (.I(1'b0),
        .O(dpy0[0]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[1]_inst 
       (.I(1'b0),
        .O(dpy0[1]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[2]_inst 
       (.I(1'b0),
        .O(dpy0[2]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[3]_inst 
       (.I(1'b0),
        .O(dpy0[3]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[4]_inst 
       (.I(1'b0),
        .O(dpy0[4]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[5]_inst 
       (.I(1'b0),
        .O(dpy0[5]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[6]_inst 
       (.I(1'b0),
        .O(dpy0[6]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[7]_inst 
       (.I(1'b0),
        .O(dpy0[7]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[0]_inst 
       (.I(1'b0),
        .O(dpy1[0]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[1]_inst 
       (.I(1'b0),
        .O(dpy1[1]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[2]_inst 
       (.I(1'b0),
        .O(dpy1[2]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[3]_inst 
       (.I(1'b0),
        .O(dpy1[3]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[4]_inst 
       (.I(1'b0),
        .O(dpy1[4]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[5]_inst 
       (.I(1'b0),
        .O(dpy1[5]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[6]_inst 
       (.I(1'b0),
        .O(dpy1[6]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[7]_inst 
       (.I(1'b0),
        .O(dpy1[7]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[0]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[0]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[10]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[10]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[11]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[11]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[12]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[12]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[13]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[13]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[14]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[14]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[15]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[15]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[16]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[16]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[17]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[17]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[18]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[18]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[19]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[19]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[1]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[1]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[2]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[2]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[3]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[3]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[4]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[4]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[5]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[5]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[6]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[6]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[7]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[7]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[8]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[8]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[9]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[9]),
        .T(1'b1));
  OBUFT \ext_ram_be_n_OBUF[0]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[0]),
        .T(1'b1));
  OBUFT \ext_ram_be_n_OBUF[1]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[1]),
        .T(1'b1));
  OBUFT \ext_ram_be_n_OBUF[2]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[2]),
        .T(1'b1));
  OBUFT \ext_ram_be_n_OBUF[3]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[3]),
        .T(1'b1));
  OBUF ext_ram_ce_n_OBUF_inst
       (.I(1'b1),
        .O(ext_ram_ce_n));
  OBUF ext_ram_oe_n_OBUF_inst
       (.I(1'b1),
        .O(ext_ram_oe_n));
  OBUF ext_ram_we_n_OBUF_inst
       (.I(1'b1),
        .O(ext_ram_we_n));
  OBUFT \flash_a_OBUF[0]_inst 
       (.I(1'b0),
        .O(flash_a[0]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[10]_inst 
       (.I(1'b0),
        .O(flash_a[10]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[11]_inst 
       (.I(1'b0),
        .O(flash_a[11]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[12]_inst 
       (.I(1'b0),
        .O(flash_a[12]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[13]_inst 
       (.I(1'b0),
        .O(flash_a[13]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[14]_inst 
       (.I(1'b0),
        .O(flash_a[14]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[15]_inst 
       (.I(1'b0),
        .O(flash_a[15]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[16]_inst 
       (.I(1'b0),
        .O(flash_a[16]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[17]_inst 
       (.I(1'b0),
        .O(flash_a[17]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[18]_inst 
       (.I(1'b0),
        .O(flash_a[18]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[19]_inst 
       (.I(1'b0),
        .O(flash_a[19]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[1]_inst 
       (.I(1'b0),
        .O(flash_a[1]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[20]_inst 
       (.I(1'b0),
        .O(flash_a[20]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[21]_inst 
       (.I(1'b0),
        .O(flash_a[21]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[22]_inst 
       (.I(1'b0),
        .O(flash_a[22]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[2]_inst 
       (.I(1'b0),
        .O(flash_a[2]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[3]_inst 
       (.I(1'b0),
        .O(flash_a[3]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[4]_inst 
       (.I(1'b0),
        .O(flash_a[4]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[5]_inst 
       (.I(1'b0),
        .O(flash_a[5]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[6]_inst 
       (.I(1'b0),
        .O(flash_a[6]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[7]_inst 
       (.I(1'b0),
        .O(flash_a[7]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[8]_inst 
       (.I(1'b0),
        .O(flash_a[8]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[9]_inst 
       (.I(1'b0),
        .O(flash_a[9]),
        .T(1'b1));
  OBUFT flash_byte_n_OBUF_inst
       (.I(1'b0),
        .O(flash_byte_n),
        .T(1'b1));
  OBUFT flash_ce_n_OBUF_inst
       (.I(1'b0),
        .O(flash_ce_n),
        .T(1'b1));
  OBUFT flash_oe_n_OBUF_inst
       (.I(1'b0),
        .O(flash_oe_n),
        .T(1'b1));
  OBUFT flash_rp_n_OBUF_inst
       (.I(1'b0),
        .O(flash_rp_n),
        .T(1'b1));
  OBUFT flash_vpen_OBUF_inst
       (.I(1'b0),
        .O(flash_vpen),
        .T(1'b1));
  OBUFT flash_we_n_OBUF_inst
       (.I(1'b0),
        .O(flash_we_n),
        .T(1'b1));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[10]_inst 
       (.I(leds_OBUF[10]),
        .O(leds[10]));
  OBUF \leds_OBUF[11]_inst 
       (.I(leds_OBUF[11]),
        .O(leds[11]));
  OBUF \leds_OBUF[12]_inst 
       (.I(leds_OBUF[12]),
        .O(leds[12]));
  OBUF \leds_OBUF[13]_inst 
       (.I(leds_OBUF[13]),
        .O(leds[13]));
  OBUF \leds_OBUF[14]_inst 
       (.I(leds_OBUF[14]),
        .O(leds[14]));
  OBUF \leds_OBUF[15]_inst 
       (.I(leds_OBUF[15]),
        .O(leds[15]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  OBUF \leds_OBUF[4]_inst 
       (.I(leds_OBUF[4]),
        .O(leds[4]));
  OBUF \leds_OBUF[5]_inst 
       (.I(leds_OBUF[5]),
        .O(leds[5]));
  OBUF \leds_OBUF[6]_inst 
       (.I(leds_OBUF[6]),
        .O(leds[6]));
  OBUF \leds_OBUF[7]_inst 
       (.I(leds_OBUF[7]),
        .O(leds[7]));
  OBUF \leds_OBUF[8]_inst 
       (.I(leds_OBUF[8]),
        .O(leds[8]));
  OBUF \leds_OBUF[9]_inst 
       (.I(leds_OBUF[9]),
        .O(leds[9]));
  IBUF reset_btn_IBUF_inst
       (.I(reset_btn),
        .O(reset_btn_IBUF));
  OBUFT sl811_a0_OBUF_inst
       (.I(1'b0),
        .O(sl811_a0),
        .T(1'b1));
  OBUFT sl811_cs_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_cs_n),
        .T(1'b1));
  OBUFT sl811_dack_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_dack_n),
        .T(1'b1));
  OBUFT sl811_rd_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_rd_n),
        .T(1'b1));
  OBUFT sl811_rst_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_rst_n),
        .T(1'b1));
  OBUFT sl811_wr_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_wr_n),
        .T(1'b1));
  OBUFT txd_OBUF_inst
       (.I(1'b0),
        .O(txd),
        .T(1'b1));
  OBUF uart_rdn_OBUF_inst
       (.I(1'b1),
        .O(uart_rdn));
  OBUF uart_wrn_OBUF_inst
       (.I(1'b1),
        .O(uart_wrn));
  OBUFT \video_blue_OBUF[0]_inst 
       (.I(1'b0),
        .O(video_blue[0]),
        .T(1'b1));
  OBUFT \video_blue_OBUF[1]_inst 
       (.I(1'b0),
        .O(video_blue[1]),
        .T(1'b1));
  OBUFT video_clk_OBUF_inst
       (.I(1'b0),
        .O(video_clk),
        .T(1'b1));
  OBUFT video_de_OBUF_inst
       (.I(1'b0),
        .O(video_de),
        .T(1'b1));
  OBUFT \video_green_OBUF[0]_inst 
       (.I(1'b0),
        .O(video_green[0]),
        .T(1'b1));
  OBUFT \video_green_OBUF[1]_inst 
       (.I(1'b0),
        .O(video_green[1]),
        .T(1'b1));
  OBUFT \video_green_OBUF[2]_inst 
       (.I(1'b0),
        .O(video_green[2]),
        .T(1'b1));
  OBUFT video_hsync_OBUF_inst
       (.I(1'b0),
        .O(video_hsync),
        .T(1'b1));
  OBUFT \video_red_OBUF[0]_inst 
       (.I(1'b0),
        .O(video_red[0]),
        .T(1'b1));
  OBUFT \video_red_OBUF[1]_inst 
       (.I(1'b0),
        .O(video_red[1]),
        .T(1'b1));
  OBUFT \video_red_OBUF[2]_inst 
       (.I(1'b0),
        .O(video_red[2]),
        .T(1'b1));
  OBUFT video_vsync_OBUF_inst
       (.I(1'b0),
        .O(video_vsync),
        .T(1'b1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
