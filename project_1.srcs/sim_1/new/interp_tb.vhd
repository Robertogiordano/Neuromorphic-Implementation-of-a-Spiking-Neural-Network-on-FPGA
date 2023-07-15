----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2023 17:47:31
-- Design Name: 
-- Module Name: interp_tb - Behavioral
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

entity interp_tb is
--  Port ( );
end interp_tb;

architecture Behavioral of interp_tb is
        
        signal clk: std_logic;
       signal x : signed (23 downto 0);
       signal xp0 : signed (23 downto 0);
       signal xp1 : signed (23 downto 0);
       signal x_interp:  signed(23 downto 0);

    component interp is
        Port ( clk: in std_logic;
                x : in signed (23 downto 0);
               xp0 : in signed (23 downto 0);
               xp1 : in signed (23 downto 0);
               x_interp: out signed(23 downto 0)
               );
    end component;

begin
    UUT: interp
    port map(
        clk=>clk,
        x=>x,
        xp0=>xp0,
        xp1=>xp1,
        x_interp=>x_interp
    );
    
    process
    begin
        clk<='0';
        wait for 5ns;
        
        clk<='1';
        wait for 5ns;
   end process; 
    
    process
    begin
        --wait for 10ns;
        
        x<=to_signed(0,x'length);
        xp0<=to_signed(-1*65536,xp0'length);
        xp1<=to_signed(3*65536,xp1'length);
        wait for 10ns;
        
        wait;
        
    end process;
    

end Behavioral;
