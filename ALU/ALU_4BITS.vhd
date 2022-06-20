----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:49 06/19/2022 
-- Design Name: 
-- Module Name:    ALU_4BITS - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
    
-- opcode operación
--    000 Transferencia de A
--    001 Transferencia de B
--    010 A and B
--    011 A or B
--    100 A + B
--    101 A + 1
--    110 A - 1
--    111 A - B
entity ALU_4BITS is
  port(
      --Pines de Entrada
     A,B: in std_logic_vector(3 downto 0);
      opcode: in std_logic_vector(2 downto 0);
      --Pines de Salida
      Cout: out std_logic;
		Yout: out std_logic_vector(3 downto 0)
		);
end ALU_4BITS;

architecture Behavioral of ALU_4BITS is
signal Y_tmp: std_logic_vector(4 downto 0) := (others => '0');
begin
-- Para que aparezca el acarreo se debe concatenar un cero a la izquierda
-- Operaciones Lógicas
with opcode(2 downto 0)select
   Y_tmp <= ('0' & A) when "000",
            ('0' & B) when "001",
            ('0' & A) and ('0' & B) when "010",
            ('0' & A) or ('0' & B) when "011",
--Operaciones Aritméticas
             ('0' & A) + B when "100",
             ('0' & A) + '1' when "101",
             ('0' & A) - '1' when "110",
				 ('0' & A) - B when others;
				 
Cout <= Y_tmp(4);
Yout <= Y_tmp(3 downto 0);
end Behavioral;

