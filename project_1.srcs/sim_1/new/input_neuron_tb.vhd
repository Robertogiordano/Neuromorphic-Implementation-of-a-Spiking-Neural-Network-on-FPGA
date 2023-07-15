----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2023 21:16:03
-- Design Name: 
-- Module Name: input_neuron_tb - Behavioral
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

entity input_neuron_tb is
--  Port ( );
end input_neuron_tb;

architecture Behavioral of input_neuron_tb is

            signal clk :  STD_LOGIC;
   
           signal time_period :  STD_LOGIC_VECTOR (8 downto 0);
           signal clr :  STD_LOGIC;
           signal time_step: std_logic;
           signal rst :  STD_LOGIC;
           signal spike :  STD_LOGIC;
           
           signal time_period2 :  STD_LOGIC_VECTOR (8 downto 0);
           signal spike2 :  STD_LOGIC;
           
component input_neuron is
    Port ( time_period : in STD_LOGIC_VECTOR (8 downto 0);
           clr: in std_logic;
           time_step : in STD_LOGIC;
           rst : in STD_LOGIC;
           spike : out STD_LOGIC);
end component;

begin

UUT: input_neuron
    port map(
    time_period=>time_period,
    clr=>clr,
    time_step => time_step,
    rst=>rst,
    spike=>spike);
    
UUT2: input_neuron
    port map(
    time_period=>time_period2,
    clr=>clr,
    time_step => time_step,
    rst=>rst,
    spike=>spike2);
    
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
    time_step<='0';
    wait for 10*783ns;
    
    time_step<='1';
    wait for 10ns;
    
end process;

process
begin
    rst<='1';
    wait for 10 ns;
    
    rst<='0';
    time_period<=std_logic_vector(to_unsigned(13,time_period'length));
    time_period2<=std_logic_vector(to_unsigned(8,time_period2'length));
    wait;
end process;



end Behavioral;
