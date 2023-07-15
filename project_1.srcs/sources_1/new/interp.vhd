----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2023 17:26:57
-- Design Name: 
-- Module Name: interp - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity interp is
    Port ( 
            clk: in std_logic;
            x : in signed (23 downto 0);
           xp0 : in signed (23 downto 0);
           xp1 : in signed (23 downto 0);
           x_interp: out signed(23 downto 0)
           );
end interp;

architecture Behavioral of interp is

begin

process(clk)
    variable fp0: signed(23 downto 0);
    variable fp1: signed(23 downto 0);
    variable yi: signed(23 downto 0);
begin
    if rising_edge(clk) then
        fp0:= to_signed(1*65536,fp0'length);
        fp1:= to_signed(50*65536,fp1'length);
            
        yi:=fp0+((x-xp0)/(xp1-xp0))*(fp1-fp0);
        --yi := to_signed(3,yi'length);
        if(yi<fp0) then
            x_interp <= fp0;
        elsif(yi>fp1) then
            x_interp <= fp1;
        else
            x_interp<=yi;
        end if;
    end if;
end process;

end Behavioral;
