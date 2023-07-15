----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.06.2023 23:28:21
-- Design Name: 
-- Module Name: Second_Layer_TB - Behavioral
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

entity Second_Layer_TB is
--  Port ( );
end Second_Layer_TB;

architecture Behavioral of Second_Layer_TB is

component Second_Layer is
    generic(
        NEURONS: integer := 100
    );
    Port ( 
    clk : in STD_LOGIC;
    rst : in std_logic;
    clr: in std_logic;
    read_en: in std_logic;
    write_en: in std_logic;
    spike_in: in std_logic
    );
end component Second_Layer; 

signal clk: std_logic;
signal rst: std_logic;
signal clr:  std_logic;
signal read_en:  std_logic;
signal write_en:  std_logic;
signal spike_in:  std_logic;

begin

UUT: Second_Layer
    port map(
        clk=>clk,
        rst=>rst,
        clr=>clr,
        read_en=>read_en,
        write_en=>write_en,
        spike_in => spike_in
        );
        
    -- Clock process
    process
    begin  
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    process
    begin
        rst<='1';
        wait for 10ns;
        
        rst<='0';
        write_en<='1';
        wait for 10ns;
        
        write_en<='0';
        wait for 10 ns;
        
        read_en<='1';
        wait for 20ns;
        
        spike_in<='1';
        wait for 10ns;
        
        spike_in<='0';
        wait for 30ns;
        
        spike_in<='1';
        wait for 10ns;
        
        spike_in<='0';
        wait for 40ns;
        
        spike_in<='1';
        wait for 10ns;
        
        spike_in<='0';
        wait for 10ns;
        wait;
    end process;
        


end Behavioral;
