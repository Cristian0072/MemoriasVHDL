-- Create Date:   19:12:42 06/19/2022
-- Design Name:   
-- Module Name:   C:/Users/enria/Documents/ALU/TB_ALU_8BITS.vhd
-- Project Name:  ALU
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_ALU_8BITS IS
END TB_ALU_8BITS;
 
ARCHITECTURE behavior OF TB_ALU_8BITS IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ALU_8BITS
    PORT(
         a_i : IN  std_logic_vector(7 downto 0);
         b_i : IN  std_logic_vector(7 downto 0);
         opcode : IN  std_logic_vector(1 downto 0);
         d_o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;

signal a_s: std_logic_vector(7 downto 0);
signal b_s: std_logic_vector(7 downto 0);
signal opcode_s: std_logic_vector(1 downto 0);
signal d_s: std_logic_vector(7 downto 0);
                                  
begin
  UUT:ALU_8BITS port map(a_s,b_s,opcode_s,d_s);
  a_s <= "00010001","01100101" after 5 ns;
  b_s <= "00100011","00000010" after 5 ns, "00111001" after 20 ns;
  opcode_s <= "00", "01" after 5 ns;
end architecture;