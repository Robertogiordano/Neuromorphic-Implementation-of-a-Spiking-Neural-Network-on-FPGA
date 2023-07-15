library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
 

entity RAM_Block is
    generic (
        DATA_WIDTH   : integer := 24;   -- Width of each data word
        PREV_LAYER   : integer := 784   -- Height of the block
    );
    port (
        clk   : in  std_logic;           -- Clock signal
        rst   : in std_logic;
        clr   : in std_logic;  
        wr : in  std_logic;           -- Write enable signal
        rd  : in std_logic;              -- Read enable signal 
        dout  : out signed(DATA_WIDTH-1 downto 0) ;  -- Data output
        ref_num: in unsigned(0 to 8-1) -- 7= log2 100 -- id neuron. Used for read the correct line from the document.
    );
end entity RAM_Block;

architecture Behavioral of RAM_Block is
    --signal addr_write: unsigned(10-1 downto 0):= (others=>'0');
    signal addr_read: unsigned(10-1 downto 0):= (others=>'0');

    type ram_type is array (0 to PREV_LAYER-1) of signed(DATA_WIDTH-1 downto 0);
    signal ram : ram_type;
    
  -----------------------------------------------------------------------------
  -- Testbench Internal Signals
  -----------------------------------------------------------------------------
  file file_VECTORS : text;
  --file file_RESULTS : text;
 
  --constant c_WIDTH : natural := 4;

begin
    process (clk,rst,clr)
    
     variable v_ILINE     : line;
    --variable v_OLINE     : line;
    variable v_ADD_TERM1 : real;
    --variable v_ADD_TERM2 : real;
    variable v_SPACE     : character;
    
    variable conv : signed (23 downto 0);
    
    variable count: integer;
   
    begin
        if (rst='1') then
            ram<=(others=>(others=>'0'));
            addr_read<=(others=>'0');
        elsif (clr='1') then
            addr_read<=(others=>'0');     
        elsif rising_edge(clk) then
            --if wr = '1' then
            
                --file_open(file_VECTORS, "C:\Users\rober\OneDrive\universita\anno2\tirocinio\fpga_implementation\project_1\weights.txt",  read_mode);
                
                --count:=0;
                --while not endfile(file_VECTORS) loop
                  --readline(file_VECTORS, v_ILINE);
                  --if(count=to_integer(ref_num)) then
                      
                      --for i in 0 to 783 loop
                      
                          ----comment these 4 lines for the schematic
                          --read(v_ILINE, v_ADD_TERM1);
                          --read(v_ILINE, v_SPACE);           -- read in the space character
                          --conv:=to_signed(integer(v_ADD_TERM1*65536.0),24);
                          --ram(i)<=conv;
                            
                      --end loop;
                      
                      --exit;
                  --else
                    --count := count+1;
                  --end if;
                  
                --end loop;
                 
                --file_close(file_VECTORS);
            
               
            --end if;
            
            if rd = '1' then  
                dout <= ram(to_integer(addr_read));
                addr_read<=addr_read+1;
            end if;
        end if;
    end process;

    


end architecture Behavioral;
