----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.06.2023 17:19:15
-- Design Name: 
-- Module Name: Neuron_TB - Behavioral
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

entity Neuron_TB is
--  Port ( );
end Neuron_TB;

architecture Behavioral of Neuron_TB is


        constant DATA_WIDTH   : integer := 24;   -- Width of each data word
        constant PREV_LAYER   : integer := 783;   -- Height of the block

        signal din   :   signed(DATA_WIDTH-1 downto 0);   -- Data input
        signal write :   std_logic;           -- Write enable signal
        signal read  :  std_logic;              -- Read enable signal 
    
        signal clk             :   std_logic;           -- Clock signal
        signal rst             :   std_logic;           -- Reset signal
        signal inhibit         :   std_logic :='0';           -- Inhibit signal
        signal hyppol          :   std_logic :='0';           -- Hyperpolarization signal
        signal spike_in        :   std_logic :='0';           -- Spike input
        signal spike_out       :  std_logic;            -- Spike output

component Neuron is
        
    generic (
        DATA_WIDTH   : integer := 24;   -- Width of each data word
        PREV_LAYER   : integer := 783   -- Height of the block
    );
    port (
        din   : in  signed(DATA_WIDTH-1 downto 0);   -- Data input
        write : in  std_logic;           -- Write enable signal
        read  : in std_logic;              -- Read enable signal 
    
        clk             : in  std_logic;           -- Clock signal
        rst           : in  std_logic;           -- Reset signal
        inhibit         : in  std_logic;           -- Inhibit signal
        hyppol   : in  std_logic;           -- Hyperpolarization signal
        spike_in        : in  std_logic;           -- Spike input
        spike_out       : out std_logic            -- Spike output
    );
end component Neuron;

begin

UUT: Neuron
    generic map (
        DATA_WIDTH => DATA_WIDTH,
        PREV_LAYER => PREV_LAYER
    )
    port map (
        din => din,
        write => write,
        read => read,
        clk   => clk,
        rst   =>rst,
        inhibit   => inhibit,
        hyppol => hyppol,
        spike_in => spike_in,
        spike_out  => spike_out
    );
    
    -- Clock process
    process
    begin
        while now <= 200 ns loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;
    
    -- Stimulus process
    process
    begin
        rst<='1';
        wait for 10 ns;
        
        rst<='0';
        write <= '1';
        
        -- Write data
        
        din <= to_signed(4591*65536/10000,din'length);
        wait for 10 ns;
        
        din <= to_signed(9901*65536/10000,din'length);
        wait for 10 ns;
        
        din <= to_signed(9752*65536/10000,din'length);
        wait for 10 ns;
        
        din <= to_signed(3755*65536/10000,din'length);
        wait for 10 ns;
        
        din <= to_signed(9832*65536/10000,din'length);
        wait for 10 ns;
        
        
        din <= to_signed(9944*65536/10000,din'length);
        wait for 10 ns;
        
        -- Wait a clock cycle 
        write<='0';
        
        -- Read data 
        read<='1';
        wait for 10 ns;

        --wait for 5 ns;

        spike_in<='1';
        wait for 10 ns;
        
        spike_in<='1';
        wait for 10 ns;
        
        spike_in<='0';
        wait for 10 ns;
        
        spike_in<='1';
        wait for 10 ns;
        
        spike_in<='0';
        wait for 10 ns;
        
        spike_in<='1';
        wait for 10 ns;
        
        read<='0';
        
        -- End simulation
        wait;
    end process;

end Behavioral;
