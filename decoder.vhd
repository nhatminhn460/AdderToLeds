----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:34 07/21/2025 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
	port
	(
		H : in std_logic_vector(3 downto 0);
		Y1 : out std_logic_vector(6 downto 0)
	);
end decoder;

architecture Behavioral of decoder is

begin
	process(H)
	begin
		case H is
			when "0000" => Y1 <= "0111111";
			when "0001" => Y1 <= "0000110";
			when "0010" => Y1 <= "1011011";
			when "0011" => Y1 <= "1001111";
			when "0100" => Y1 <= "1100110";
			when "0101" => Y1 <= "1101101";
			when "0110" => Y1 <= "1111101";
			when "0111" => Y1 <= "0000111";
			when "1000" => Y1 <= "1111111";
			when "1001" => Y1 <= "1101111";
			when others => Y1 <= "0000000"; -- Tat led
		end case;	
	end process;
end Behavioral;

