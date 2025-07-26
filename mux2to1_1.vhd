----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:58 07/21/2025 
-- Design Name: 
-- Module Name:    mux2to1_1 - Behavioral 
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

entity mux2to1_1 is
port
	(
		d0,d1 : in std_logic_vector(6 downto 0);
		s : in std_logic;
		y : out std_logic_vector(6 downto 0)
	);
end mux2to1_1;

architecture Behavioral of mux2to1_1 is

begin
	process(d0, d1,s)
	begin
		if (s = '1') then
			y(6 downto 0) <= d1(6 downto 0);
		else 
			y(6 downto 0) <= d0(6 downto 0);	
		end if;
	end process;

end Behavioral;

