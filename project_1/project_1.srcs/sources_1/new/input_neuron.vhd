----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2023 21:11:39
-- Design Name: 
-- Module Name: input_neuron - Behavioral
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

entity input_neuron is
    Port ( time_period : in STD_LOGIC_VECTOR (8 downto 0);
           time_step : in STD_LOGIC;
           rst : in STD_LOGIC;
           spike : out STD_LOGIC);
end input_neuron;

architecture Behavioral of input_neuron is
signal count: unsigned(8 downto 0):=(others=>'0');
--signal count2: unsigned(8 downto 0):=(others=>'0');

begin

process(time_step,rst)
begin
    if(rst='1') then
        count<=to_unsigned(0,count'length);
        --count2<=to_unsigned(0,count2'length);
        spike<='0';
    elsif rising_edge(time_step) then
            if (time_period /= std_logic_vector(to_signed(-1,time_period'length))) then
                if(count=unsigned(time_period)-1) then
                    count<=(others=>'0');
                    spike<='1';
                else
                    count<=count+1;
                    spike<='0';
                end if; 
                --count2<=count2+1;
            end if;
    end if;
end process;

end Behavioral;
