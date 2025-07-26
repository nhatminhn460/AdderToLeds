----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:04 07/21/2025 
-- Design Name: 
-- Module Name:    adder4bit - Behavioral 
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
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder4bit is
	port
	(
		a,b : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		s : out std_logic_vector(3 downto 0);
		cout : out std_logic
	);
end adder4bit;

architecture Structural of adder4bit is

component adder1bit is
	port
	(
		a,b, cin : in std_logic;
		s, cout : out std_logic
	);
end component;
signal c1, c2, c3 : std_logic;	--Day tin hieu Carry

begin
	u1 : adder1bit port map (a(0), b(0), cin, s(0), c1);
	u2 : adder1bit port map (a(1), b(1), c1, s(1), c2);
	u3 : adder1bit port map (a(2), b(2), c2, s(2), c3);
	u4 : adder1bit port map (a(3), b(3), c3, s(3), cout);
end Structural;

