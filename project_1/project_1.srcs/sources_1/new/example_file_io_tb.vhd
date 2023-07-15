-------------------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
 
entity example_file_io_tb is
 
end example_file_io_tb;
 
 
architecture behave of example_file_io_tb is
 
 
  -----------------------------------------------------------------------------
  -- Testbench Internal Signals
  -----------------------------------------------------------------------------
  file file_VECTORS : text;
  file file_RESULTS : text;
 
  constant c_WIDTH : natural := 4;
 
  signal r_ADD_TERM1 : std_logic_vector(c_WIDTH-1 downto 0) := (others => '0');
  signal r_ADD_TERM2 : std_logic_vector(c_WIDTH-1 downto 0) := (others => '0');
  signal w_SUM       : std_logic_vector(c_WIDTH downto 0);
  
  type arr is array(0 to 783) of signed (23 downto 0);
  signal tab: arr;
   
begin
 

 
  ---------------------------------------------------------------------------
  -- This procedure reads the file input_vectors.txt which is located in the
  -- simulation project area.
  -- It will read the data in and send it to the ripple-adder component
  -- to perform the operations.  The result is written to the
  -- output_results.txt file, located in the same directory.
  ---------------------------------------------------------------------------
  process
    variable v_ILINE     : line;
    variable v_OLINE     : line;
    variable v_ADD_TERM1 : real;
    variable v_ADD_TERM2 : real;
    variable v_SPACE     : character;
    
    variable conv : signed (23 downto 0);
   
     
  begin
 
    file_open(file_VECTORS, "C:\Users\rober\OneDrive\universita\anno2\tirocinio\fpga_implementation\project_1\weights\weights.txt",  read_mode);
    file_open(file_RESULTS, "C:\Users\rober\OneDrive\universita\anno2\tirocinio\fpga_implementation\project_1\output_results.txt", write_mode);
 
    while not endfile(file_VECTORS) loop
      readline(file_VECTORS, v_ILINE);
      for i in 0 to 783 loop
          read(v_ILINE, v_ADD_TERM1);
          read(v_ILINE, v_SPACE);           -- read in the space character
 
          conv:=to_signed(integer(v_ADD_TERM1*65536.0),24);
          tab(i)<=conv;
            
          write(v_OLINE, std_logic_vector(conv), right, 20);
          write(v_OLINE, ' ', right, 1);
          write(v_OLINE, v_ADD_TERM1, right, c_WIDTH);
          writeline(file_RESULTS, v_OLINE);
      end loop;
 
      
    end loop;
 
    file_close(file_VECTORS);
    file_close(file_RESULTS);
     
     
    wait;
  end process;
 
end behave;