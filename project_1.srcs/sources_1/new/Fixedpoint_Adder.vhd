----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.06.2023 15:59:49
-- Design Name: 
-- Module Name: Fixedpoint_Adder - Behavioral
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

entity Fixedpoint_Adder is
    generic (
        REAL_WIDTH   : integer := 7;   -- Width of each data word
        FRACT_WIDTH   : integer := 16    -- Width of the address bus
    ); 
    Port ( n1 : in STD_LOGIC_VECTOR (23 downto 0);
           n2 : in STD_LOGIC_VECTOR (23 downto 0);
           nout : out STD_LOGIC_VECTOR (23 downto 0));
end Fixedpoint_Adder;

architecture Behavioral of Fixedpoint_Adder is

begin

    process(n1,n2)
    begin
        if(n1(23)= n2(23)) then
            
        end if;
    
    end process;


end Behavioral;
