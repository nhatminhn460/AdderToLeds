----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:06 07/21/2025 
-- Design Name: 
-- Module Name:    Display - Behavioral 
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

entity Display is
	port
	(
		a,b : in std_logic_vector(3 downto 0);
		hex0,hex1 : out std_logic_vector(6 downto 0)
	);
end Display;

architecture structure of Display is
signal g,cout, x1, x3 : std_logic;
signal l : std_logic_vector(4 downto 0);
signal s,x,x2 : std_logic_vector(3 downto 0);
signal y1,y2 : std_logic_vector(6 downto 0);

component adder4bit is
	port
	(
		a,b : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		s : out std_logic_vector(3 downto 0);
		cout : out std_logic
	);
end component;

component BitToDec is
	port 
	(
		s : in std_logic_vector(3 downto 0);
		m : out std_logic_vector(4 downto 0)
	);
end component;

component mux2to1_1 is
	port
	(
		d0,d1 : in std_logic_vector(6 downto 0);
		s : in std_logic;
		y : out std_logic_vector(6 downto 0)
	);
end component;

component decoder is
	port
	(
		H : in std_logic_vector(3 downto 0);
		Y1 : out std_logic_vector(6 downto 0)
	);
end component;

begin
	u1 : adder4bit port map (a(3 downto 0), b(3 downto 0), '0', s(3 downto 0), cout);
	x(3 downto 0) <= s(3 downto 0);
	x1 <= cout;
	
	u2 : BitToDec port map (x(3 downto 0), l(4 downto 0));
	x2 <= l(3 downto 0);
	x3 <= l(4);
	
	u3 : decoder port map (x2, y1(6 downto 0));
	hex0 <= y1;
	
	g <= x1 or x3;
	u4 : mux2to1_1 port map ("0111111", "0000110", g, y2(6 downto 0));
	hex1 <= y2;

end structure;

