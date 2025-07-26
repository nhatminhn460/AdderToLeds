--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:37:04 07/21/2025
-- Design Name:   
-- Module Name:   D:/Importants/FPGA_study/AdderToLeds/Display_tb.vhd
-- Project Name:  AdderToLeds
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Display
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Display_tb is
end Display_tb;

architecture behavior of Display_tb is

    component Display is
        port (
            a, b : in std_logic_vector(3 downto 0);
            hex0, hex1 : out std_logic_vector(6 downto 0)
        );
    end component;

    signal a_tb, b_tb : std_logic_vector(3 downto 0);
    signal hex0_tb, hex1_tb : std_logic_vector(6 downto 0);

begin

    uut: Display port map (
        a => a_tb,
        b => b_tb,
        hex0 => hex0_tb,
        hex1 => hex1_tb
    );
	 
    stim_proc: process
    begin
        -- Test case 1: 3 + 4 = 7
        a_tb <= "0011";  -- 3
        b_tb <= "0100";  -- 4
        wait for 20 ns;

        -- Test case 5: 7 + 2 = 9
        a_tb <= "0111";
        b_tb <= "0010";
        wait for 20 ns;
		  
		  a_tb <= "0011";
        b_tb <= "1001";
        wait for 20 ns;

        wait;  
    end process;

end behavior;
