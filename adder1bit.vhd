----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:23 07/21/2025 
-- Design Name: 
-- Module Name:    adder1bit - Behavioral 
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

entity adder1bit is
	port
	(
		a,b,cin : in std_logic;
		s, cout : out std_logic
	);
end adder1bit;

architecture Dataflow of adder1bit is

begin
	s <= (a xor b xor cin);
	cout <= ((a and b) or (a and cin) or (b and cin));
end Dataflow;

