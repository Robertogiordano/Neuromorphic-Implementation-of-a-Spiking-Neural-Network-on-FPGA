library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM_Block_TB is
end entity RAM_Block_TB;

architecture Behavioral of RAM_Block_TB is
    constant DATA_WIDTH   : integer := 24;
    constant PREV_LAYER   : integer := 783;
    constant CURR_LAYER   : integer := 100;
    
    signal clk   : std_logic := '0';
    signal rst   : std_logic := '1';
    signal din   : signed(DATA_WIDTH-1 downto 0);
    signal wr : std_logic := '0';
    signal rd : std_logic := '0';
    signal dout  : signed(DATA_WIDTH-1 downto 0);
    signal ref_num: unsigned(0 to 7-1);

    
    component RAM_Block is
        generic (
            DATA_WIDTH   : integer := 24;
            PREV_LAYER   : integer := 783;
            CURR_LAYER   : integer := 100
        );
        port (
            clk   : in  std_logic;
            rst   : in  std_logic;
            din   : in  signed(DATA_WIDTH-1 downto 0);
            wr : in  std_logic;
            rd : in  std_logic;
            dout  : out signed(DATA_WIDTH-1 downto 0);
            ref_num: in unsigned(0 to 7-1)

        );
    end component RAM_Block;
    
begin
    UUT: RAM_Block
    generic map (
        DATA_WIDTH => DATA_WIDTH,
        PREV_LAYER => PREV_LAYER,
        CURR_LAYER => CURR_LAYER
    )
    port map (
        clk   => clk,
        rst   =>rst,
        din   => din,
        wr => wr,
        rd => rd,
        dout  => dout,
        ref_num => ref_num
    );
    
    -- Clock process
    process
    begin
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
    end process;
    
    -- Stimulus process
    process
    begin
       ref_num<=to_unsigned(16,ref_num'length);
       wr<='0';
       rst<='1';
       wait for 10ns;
       
       wr<='1';
       rst<='0';
       wait for 10ns;
       
       wr<='0';
       rst<='1';
       wait for 10ns;
       
       wr<='1';
       rst<='0';
       wait for 10ns;
       
        
        wr<='0';
        wait for 10ns; 
        
        -- Read data 
        rd<='1';
        wait for 783*10 ns;
        
        -- End simulation
        wait;

    end process;
    
end architecture Behavioral;
