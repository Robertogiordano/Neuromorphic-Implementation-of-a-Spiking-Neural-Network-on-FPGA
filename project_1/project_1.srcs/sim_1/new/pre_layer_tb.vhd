----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2023 22:59:41
-- Design Name: 
-- Module Name: pre_layer_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pre_layer_tb is
--  Port ( );
end pre_layer_tb;

architecture Behavioral of pre_layer_tb is
   
    signal clk :  STD_LOGIC;
    signal rst :  STD_LOGIC;
    signal rd :  STD_LOGIC;
           
    component pre_layer is
        Port (
               clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               rd : in STD_LOGIC);
    end component;

begin

UUT: pre_layer
    port map(
    clk=>clk,
    rst=>rst,
    rd=>rd);
    
process
begin
    --while now <= (200+1)*10 ns loop
    clk<='0';
    wait for 5ns;
    
    clk<='1';
    wait for 5ns;
    --end loop;
    --wait;
end process;

process
begin
    rst<='1';
    wait for 10 ns;
    
    rst<='0';
    rd<='1';
    wait for 10ns;
    
    rd<='0';
    wait;
end process;

end Behavioral;
