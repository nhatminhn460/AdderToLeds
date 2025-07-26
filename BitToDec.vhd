----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:44:26 07/21/2025 
-- Design Name: 
-- Module Name:    BitToDec - Behavioral 
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

entity BitToDec is
	port
	(
		S : in std_logic_vector(3 downto 0);
		M : out std_logic_vector(4 downto 0)
	);
end BitToDec;

architecture Data of BitToDec is

begin
	process(S(0), S(1), S(2), S(3))
	begin
		M(4) <= ((S(3) and S(2)) or (S(3) and S(1)));
		M(3) <= (S(3) and (not S(2)) and (not S(1)));
		M(2) <= (((not S(3)) and S(2)) or (S(2) and S(1)));
		M(1) <= ((S(3) and S(2) and (not S(1))) or ((not S(3)) and S(1)));
		M(0) <= S(0);
	end process;
end Data;

