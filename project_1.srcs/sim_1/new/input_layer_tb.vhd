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

entity input_layer_tb is
--  Port ( );
end input_layer_tb;

architecture Behavioral of input_layer_tb is
   constant NEURONS: integer:=784;
    signal clk :  STD_LOGIC;
    signal rst :  STD_LOGIC;
    signal rd :  STD_LOGIC:='0';
    signal spike :  STD_LOGIC;
    signal start: std_logic:='0';
           
    component input_layer is
        Generic(NEURONS: integer:= 784);
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               rd: in STD_logic;
               spike: out std_logic;
               start: in std_logic
               );
    end component;

begin

UUT: input_layer
   generic map(NEURONS => NEURONS)
    port map(
    clk=>clk,
    rst=>rst,
    rd=>rd,
    spike=>spike,
    start => start
    );
    
process
begin
    while now <= (200+1)*10*783 ns loop
    clk<='0';
    wait for 5ns;
    
    clk<='1';
    wait for 5ns;
    end loop;
    wait;
end process;

process
begin
    rst<='1';
    wait for 10 ns;
    
    rst<='0';
    rd<='1';
    wait for 10ns;
    
    rd<='0';
    start<='1';
    wait;
end process;

end Behavioral;
