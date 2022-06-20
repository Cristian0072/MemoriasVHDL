-- Create Date:   20:08:23 06/19/2022
-- Design Name:   
-- Module Name:   C:/Users/enria/Documents/ALU/TB_ALU_4BITS.vhd
-- Project Name:  ALU
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.all;
 
ENTITY TB_ALU_4BITS IS
END TB_ALU_4BITS;
 
ARCHITECTURE behavior OF TB_ALU_4BITS IS 

    COMPONENT ALU_4BITS
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         opcode : IN  std_logic_vector(2 downto 0);
         Cout : OUT  std_logic;
         Yout : OUT  std_logic_vector(3 downto 0));
    END COMPONENT;
    
--Declaracion de señales
signal A: std_logic_vector(3 downto 0) := "1011";
signal B: std_logic_vector(3 downto 0) := "1001";
signal opcode: std_logic_vector(2 downto 0) := (others => '0');
signal Cout: std_logic := '0';
signal Resul: std_logic_vector(3 downto 0) := (others => '0');

begin
	UUT: ALU_4BITS port map(A,B,opcode,Cout,Resul);
--Generacion de estimulos
	A <= "1100" after 80 ns;
	B <= "1010" after 80 ns;
	opcode <= '1' + opcode after 10 ns;
END ARCHITECTURE;