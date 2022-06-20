--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ALU_8BITS_translate.vhd
-- /___/   /\     Timestamp: Sun Jun 19 19:38:38 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm ALU_8BITS -w -dir netgen/translate -ofmt vhdl -sim ALU_8BITS.ngd ALU_8BITS_translate.vhd 
-- Device	: 7a100tcsg324-3
-- Input file	: ALU_8BITS.ngd
-- Output file	: C:\Users\enria\Documents\ALU\netgen\translate\ALU_8BITS_translate.vhd
-- # of Entities	: 1
-- Design Name	: ALU_8BITS
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity ALU_8BITS is
  port (
    a_i : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    b_i : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    opcode : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    d_o : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end ALU_8BITS;

architecture Structure of ALU_8BITS is
  signal a_i_7_IBUF_0 : STD_LOGIC; 
  signal a_i_6_IBUF_1 : STD_LOGIC; 
  signal a_i_5_IBUF_2 : STD_LOGIC; 
  signal a_i_4_IBUF_3 : STD_LOGIC; 
  signal a_i_3_IBUF_4 : STD_LOGIC; 
  signal a_i_2_IBUF_5 : STD_LOGIC; 
  signal a_i_1_IBUF_6 : STD_LOGIC; 
  signal a_i_0_IBUF_7 : STD_LOGIC; 
  signal b_i_7_IBUF_8 : STD_LOGIC; 
  signal b_i_6_IBUF_9 : STD_LOGIC; 
  signal b_i_5_IBUF_10 : STD_LOGIC; 
  signal b_i_4_IBUF_11 : STD_LOGIC; 
  signal b_i_3_IBUF_12 : STD_LOGIC; 
  signal b_i_2_IBUF_13 : STD_LOGIC; 
  signal b_i_1_IBUF_14 : STD_LOGIC; 
  signal b_i_0_IBUF_15 : STD_LOGIC; 
  signal opcode_1_IBUF_16 : STD_LOGIC; 
  signal opcode_0_IBUF_17 : STD_LOGIC; 
  signal d_o_7_OBUF_26 : STD_LOGIC; 
  signal d_o_6_OBUF_27 : STD_LOGIC; 
  signal d_o_5_OBUF_28 : STD_LOGIC; 
  signal d_o_4_OBUF_29 : STD_LOGIC; 
  signal d_o_3_OBUF_30 : STD_LOGIC; 
  signal d_o_2_OBUF_31 : STD_LOGIC; 
  signal d_o_1_OBUF_32 : STD_LOGIC; 
  signal d_o_0_OBUF_33 : STD_LOGIC; 
  signal Mmux_d_o1_split : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mmux_d_o1_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mmux_d_o1_rs_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  Mmux_d_o1_rs_lut_0_Q : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a_i_0_IBUF_7,
      ADR1 => b_i_0_IBUF_15,
      ADR2 => opcode_0_IBUF_17,
      O => Mmux_d_o1_rs_lut(0)
    );
  Mmux_d_o1_rs_cy_0_Q : X_MUX2
    port map (
      IB => opcode_0_IBUF_17,
      IA => a_i_0_IBUF_7,
      SEL => Mmux_d_o1_rs_lut(0),
      O => Mmux_d_o1_rs_cy(0)
    );
  Mmux_d_o1_rs_xor_0_Q : X_XOR2
    port map (
      I0 => opcode_0_IBUF_17,
      I1 => Mmux_d_o1_rs_lut(0),
      O => Mmux_d_o1_split(0)
    );
  Mmux_d_o1_rs_lut_1_Q : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a_i_1_IBUF_6,
      ADR1 => b_i_1_IBUF_14,
      ADR2 => opcode_0_IBUF_17,
      O => Mmux_d_o1_rs_lut(1)
    );
  Mmux_d_o1_rs_cy_1_Q : X_MUX2
    port map (
      IB => Mmux_d_o1_rs_cy(0),
      IA => a_i_1_IBUF_6,
      SEL => Mmux_d_o1_rs_lut(1),
      O => Mmux_d_o1_rs_cy(1)
    );
  Mmux_d_o1_rs_xor_1_Q : X_XOR2
    port map (
      I0 => Mmux_d_o1_rs_cy(0),
      I1 => Mmux_d_o1_rs_lut(1),
      O => Mmux_d_o1_split(1)
    );
  Mmux_d_o1_rs_lut_2_Q : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a_i_2_IBUF_5,
      ADR1 => b_i_2_IBUF_13,
      ADR2 => opcode_0_IBUF_17,
      O => Mmux_d_o1_rs_lut(2)
    );
  Mmux_d_o1_rs_cy_2_Q : X_MUX2
    port map (
      IB => Mmux_d_o1_rs_cy(1),
      IA => a_i_2_IBUF_5,
      SEL => Mmux_d_o1_rs_lut(2),
      O => Mmux_d_o1_rs_cy(2)
    );
  Mmux_d_o1_rs_xor_2_Q : X_XOR2
    port map (
      I0 => Mmux_d_o1_rs_cy(1),
      I1 => Mmux_d_o1_rs_lut(2),
      O => Mmux_d_o1_split(2)
    );
  Mmux_d_o1_rs_lut_3_Q : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a_i_3_IBUF_4,
      ADR1 => b_i_3_IBUF_12,
      ADR2 => opcode_0_IBUF_17,
      O => Mmux_d_o1_rs_lut(3)
    );
  Mmux_d_o1_rs_cy_3_Q : X_MUX2
    port map (
      IB => Mmux_d_o1_rs_cy(2),
      IA => a_i_3_IBUF_4,
      SEL => Mmux_d_o1_rs_lut(3),
      O => Mmux_d_o1_rs_cy(3)
    );
  Mmux_d_o1_rs_xor_3_Q : X_XOR2
    port map (
      I0 => Mmux_d_o1_rs_cy(2),
      I1 => Mmux_d_o1_rs_lut(3),
      O => Mmux_d_o1_split(3)
    );
  Mmux_d_o1_rs_lut_4_Q : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a_i_4_IBUF_3,
      ADR1 => b_i_4_IBUF_11,
      ADR2 => opcode_0_IBUF_17,
      O => Mmux_d_o1_rs_lut(4)
    );
  Mmux_d_o1_rs_cy_4_Q : X_MUX2
    port map (
      IB => Mmux_d_o1_rs_cy(3),
      IA => a_i_4_IBUF_3,
      SEL => Mmux_d_o1_rs_lut(4),
      O => Mmux_d_o1_rs_cy(4)
    );
  Mmux_d_o1_rs_xor_4_Q : X_XOR2
    port map (
      I0 => Mmux_d_o1_rs_cy(3),
      I1 => Mmux_d_o1_rs_lut(4),
      O => Mmux_d_o1_split(4)
    );
  Mmux_d_o1_rs_lut_5_Q : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a_i_5_IBUF_2,
      ADR1 => b_i_5_IBUF_10,
      ADR2 => opcode_0_IBUF_17,
      O => Mmux_d_o1_rs_lut(5)
    );
  Mmux_d_o1_rs_cy_5_Q : X_MUX2
    port map (
      IB => Mmux_d_o1_rs_cy(4),
      IA => a_i_5_IBUF_2,
      SEL => Mmux_d_o1_rs_lut(5),
      O => Mmux_d_o1_rs_cy(5)
    );
  Mmux_d_o1_rs_xor_5_Q : X_XOR2
    port map (
      I0 => Mmux_d_o1_rs_cy(4),
      I1 => Mmux_d_o1_rs_lut(5),
      O => Mmux_d_o1_split(5)
    );
  Mmux_d_o1_rs_lut_6_Q : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a_i_6_IBUF_1,
      ADR1 => b_i_6_IBUF_9,
      ADR2 => opcode_0_IBUF_17,
      O => Mmux_d_o1_rs_lut(6)
    );
  Mmux_d_o1_rs_cy_6_Q : X_MUX2
    port map (
      IB => Mmux_d_o1_rs_cy(5),
      IA => a_i_6_IBUF_1,
      SEL => Mmux_d_o1_rs_lut(6),
      O => Mmux_d_o1_rs_cy(6)
    );
  Mmux_d_o1_rs_xor_6_Q : X_XOR2
    port map (
      I0 => Mmux_d_o1_rs_cy(5),
      I1 => Mmux_d_o1_rs_lut(6),
      O => Mmux_d_o1_split(6)
    );
  Mmux_d_o1_rs_lut_7_Q : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => a_i_7_IBUF_0,
      ADR1 => b_i_7_IBUF_8,
      ADR2 => opcode_0_IBUF_17,
      O => Mmux_d_o1_rs_lut(7)
    );
  Mmux_d_o1_rs_xor_7_Q : X_XOR2
    port map (
      I0 => Mmux_d_o1_rs_cy(6),
      I1 => Mmux_d_o1_rs_lut(7),
      O => Mmux_d_o1_split(7)
    );
  Mmux_d_o381 : X_LUT5
    generic map(
      INIT => X"FDD5A880"
    )
    port map (
      ADR0 => opcode_1_IBUF_16,
      ADR1 => b_i_7_IBUF_8,
      ADR2 => opcode_0_IBUF_17,
      ADR3 => a_i_7_IBUF_0,
      ADR4 => Mmux_d_o1_split(7),
      O => d_o_7_OBUF_26
    );
  Mmux_d_o371 : X_LUT5
    generic map(
      INIT => X"FDD5A880"
    )
    port map (
      ADR0 => opcode_1_IBUF_16,
      ADR1 => b_i_6_IBUF_9,
      ADR2 => opcode_0_IBUF_17,
      ADR3 => a_i_6_IBUF_1,
      ADR4 => Mmux_d_o1_split(6),
      O => d_o_6_OBUF_27
    );
  Mmux_d_o361 : X_LUT5
    generic map(
      INIT => X"FDD5A880"
    )
    port map (
      ADR0 => opcode_1_IBUF_16,
      ADR1 => b_i_5_IBUF_10,
      ADR2 => opcode_0_IBUF_17,
      ADR3 => a_i_5_IBUF_2,
      ADR4 => Mmux_d_o1_split(5),
      O => d_o_5_OBUF_28
    );
  Mmux_d_o351 : X_LUT5
    generic map(
      INIT => X"FDD5A880"
    )
    port map (
      ADR0 => opcode_1_IBUF_16,
      ADR1 => b_i_4_IBUF_11,
      ADR2 => opcode_0_IBUF_17,
      ADR3 => a_i_4_IBUF_3,
      ADR4 => Mmux_d_o1_split(4),
      O => d_o_4_OBUF_29
    );
  Mmux_d_o341 : X_LUT5
    generic map(
      INIT => X"FDD5A880"
    )
    port map (
      ADR0 => opcode_1_IBUF_16,
      ADR1 => b_i_3_IBUF_12,
      ADR2 => opcode_0_IBUF_17,
      ADR3 => a_i_3_IBUF_4,
      ADR4 => Mmux_d_o1_split(3),
      O => d_o_3_OBUF_30
    );
  Mmux_d_o331 : X_LUT5
    generic map(
      INIT => X"FDD5A880"
    )
    port map (
      ADR0 => opcode_1_IBUF_16,
      ADR1 => b_i_2_IBUF_13,
      ADR2 => opcode_0_IBUF_17,
      ADR3 => a_i_2_IBUF_5,
      ADR4 => Mmux_d_o1_split(2),
      O => d_o_2_OBUF_31
    );
  Mmux_d_o321 : X_LUT5
    generic map(
      INIT => X"FDD5A880"
    )
    port map (
      ADR0 => opcode_1_IBUF_16,
      ADR1 => b_i_1_IBUF_14,
      ADR2 => opcode_0_IBUF_17,
      ADR3 => a_i_1_IBUF_6,
      ADR4 => Mmux_d_o1_split(1),
      O => d_o_1_OBUF_32
    );
  Mmux_d_o311 : X_LUT5
    generic map(
      INIT => X"FDD5A880"
    )
    port map (
      ADR0 => opcode_1_IBUF_16,
      ADR1 => b_i_0_IBUF_15,
      ADR2 => opcode_0_IBUF_17,
      ADR3 => a_i_0_IBUF_7,
      ADR4 => Mmux_d_o1_split(0),
      O => d_o_0_OBUF_33
    );
  a_i_7_IBUF : X_BUF
    port map (
      I => a_i(7),
      O => a_i_7_IBUF_0
    );
  a_i_6_IBUF : X_BUF
    port map (
      I => a_i(6),
      O => a_i_6_IBUF_1
    );
  a_i_5_IBUF : X_BUF
    port map (
      I => a_i(5),
      O => a_i_5_IBUF_2
    );
  a_i_4_IBUF : X_BUF
    port map (
      I => a_i(4),
      O => a_i_4_IBUF_3
    );
  a_i_3_IBUF : X_BUF
    port map (
      I => a_i(3),
      O => a_i_3_IBUF_4
    );
  a_i_2_IBUF : X_BUF
    port map (
      I => a_i(2),
      O => a_i_2_IBUF_5
    );
  a_i_1_IBUF : X_BUF
    port map (
      I => a_i(1),
      O => a_i_1_IBUF_6
    );
  a_i_0_IBUF : X_BUF
    port map (
      I => a_i(0),
      O => a_i_0_IBUF_7
    );
  b_i_7_IBUF : X_BUF
    port map (
      I => b_i(7),
      O => b_i_7_IBUF_8
    );
  b_i_6_IBUF : X_BUF
    port map (
      I => b_i(6),
      O => b_i_6_IBUF_9
    );
  b_i_5_IBUF : X_BUF
    port map (
      I => b_i(5),
      O => b_i_5_IBUF_10
    );
  b_i_4_IBUF : X_BUF
    port map (
      I => b_i(4),
      O => b_i_4_IBUF_11
    );
  b_i_3_IBUF : X_BUF
    port map (
      I => b_i(3),
      O => b_i_3_IBUF_12
    );
  b_i_2_IBUF : X_BUF
    port map (
      I => b_i(2),
      O => b_i_2_IBUF_13
    );
  b_i_1_IBUF : X_BUF
    port map (
      I => b_i(1),
      O => b_i_1_IBUF_14
    );
  b_i_0_IBUF : X_BUF
    port map (
      I => b_i(0),
      O => b_i_0_IBUF_15
    );
  opcode_1_IBUF : X_BUF
    port map (
      I => opcode(1),
      O => opcode_1_IBUF_16
    );
  opcode_0_IBUF : X_BUF
    port map (
      I => opcode(0),
      O => opcode_0_IBUF_17
    );
  d_o_7_OBUF : X_OBUF
    port map (
      I => d_o_7_OBUF_26,
      O => d_o(7)
    );
  d_o_6_OBUF : X_OBUF
    port map (
      I => d_o_6_OBUF_27,
      O => d_o(6)
    );
  d_o_5_OBUF : X_OBUF
    port map (
      I => d_o_5_OBUF_28,
      O => d_o(5)
    );
  d_o_4_OBUF : X_OBUF
    port map (
      I => d_o_4_OBUF_29,
      O => d_o(4)
    );
  d_o_3_OBUF : X_OBUF
    port map (
      I => d_o_3_OBUF_30,
      O => d_o(3)
    );
  d_o_2_OBUF : X_OBUF
    port map (
      I => d_o_2_OBUF_31,
      O => d_o(2)
    );
  d_o_1_OBUF : X_OBUF
    port map (
      I => d_o_1_OBUF_32,
      O => d_o(1)
    );
  d_o_0_OBUF : X_OBUF
    port map (
      I => d_o_0_OBUF_33,
      O => d_o(0)
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

