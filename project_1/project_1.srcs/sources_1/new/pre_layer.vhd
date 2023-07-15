library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity pre_layer is
    Port ( 
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        rd: in std_logic
    );
end pre_layer;

architecture Behavioral of pre_layer is

 file file_VECTORS : text;
 
 type arr is array(0 to 783) of std_logic_vector(8 downto 0);
 signal periods: arr:=(others=>(others=>'0'));
 
begin

process(clk,rst)

    variable v_ILINE     : line;
    --variable v_OLINE     : line;
    variable v_ADD_TERM1 : integer;
    --variable v_ADD_TERM2 : real;
    variable v_SPACE     : character;
    
    variable count:integer;
begin
    if rst='1' then
        periods<=(others=>(others=>'0'));
        count:=0;
    elsif rising_edge(clk) then
        if(rd='1') then
            file_open(file_VECTORS, "C:\Users\rober\OneDrive\universita\anno2\tirocinio\fpga_implementation\project_1\periods\time_periods_0.txt",  read_mode);

            while not endfile(file_VECTORS) loop
              readline(file_VECTORS, v_ILINE);

              read(v_ILINE, v_ADD_TERM1);
              periods(count)<=std_logic_vector(to_signed(v_ADD_TERM1,9));
              count:=count+1;
        
            end loop;
             
            file_close(file_VECTORS);
        end if;
    end if;
end process;


end Behavioral;
