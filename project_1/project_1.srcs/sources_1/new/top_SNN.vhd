library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity top_SNN is
    Generic(
        NEURONS_INPUT_LAYER: integer := 784;
        NEURONS_SECOND_LAYER: integer:= 100;
        PATH: string := ""
    );
    Port ( clk : in STD_LOGIC;
           --i: in integer;
           change: in std_logic;
           rst : in STD_LOGIC;
           rd: in STD_logic;
           start: in std_logic;
           --spikes_out: out std_logic_vector(0 to NEURONS_SECOND_LAYER-1)
           winner: out unsigned(3 downto 0)
           );
end top_SNN;

architecture Behavioral of top_SNN is

signal i: integer:=0;

component input_layer is
    Generic(
    NEURONS: integer;
    PATH: string
    );
    Port ( clk : in STD_LOGIC;
            i : in integer;
           rst : in STD_LOGIC;
           rd: in STD_logic;
           start: in std_logic;
           spike: out std_logic;
           clr: out std_logic
           );
end component input_layer;

component Second_Layer is
    generic(
        NEURONS: integer
    );
    Port ( 
    clk : in STD_LOGIC;
    rst : in std_logic;
    clr: in std_logic;
    read_en: in std_logic;
    write_en: in std_logic;
    spike_in: in std_logic;
    spikes_out: out std_logic_vector(0 to NEURONS_SECOND_LAYER-1)
    );
end component Second_Layer;

    signal spike : std_logic;
    signal clr: std_logic;
    
    signal spikes_out: std_logic_vector(0 to NEURONS_SECOND_LAYER-1);

    file file_VECTORS : text;
 
     type arr is array(0 to NEURONS_SECOND_LAYER-1) of unsigned(3 downto 0);
     signal labels: arr:=(others=>(others=>'0'));
     
     signal enable_winner: std_logic :='1';
     
begin

INL: input_layer
generic map(
    NEURONS=>NEURONS_INPUT_LAYER,
    PATH=>PATH
)
port map(
    clk=>clk,
    i=>i,
    rst=>rst,
    rd=>rd,
    start=>start,
    spike=>spike,
    clr=>clr
);

SCL: second_layer
generic map(
    NEURONS=>NEURONS_SECOND_LAYER
)
port map(
    clk=>clk,
    rst=>rst,
    clr=>clr,
    read_en=>start,
    write_en=>rd,
    spike_in=>spike,
    spikes_out=>spikes_out
    );
    
   read_labels: process(clk,rst)

        variable v_ILINE     : line;
        --variable v_OLINE     : line;
        variable v_ADD_TERM1 : integer;
        --variable v_ADD_TERM2 : real;
        variable v_SPACE     : character;
        
  
    begin
        if (rst='1') then
            labels<=(others=>(others=>'0'));
       
        --elsif rising_edge(clk) then
            --if start = '1' then
            
                --file_open(file_VECTORS, "C:\Users\rober\OneDrive\universita\anno2\tirocinio\fpga_implementation\project_1\labels.txt",  read_mode);

                --while not endfile(file_VECTORS) loop
                  --readline(file_VECTORS, v_ILINE);
                
                      --for i in 0 to NEURONS_SECOND_LAYER-1 loop
                      
                          ----comment these 3 lines for the schematic
                          --read(v_ILINE, v_ADD_TERM1);
                          --read(v_ILINE, v_SPACE);           -- read in the space character
                          --labels(i)<=to_unsigned(v_ADD_TERM1,labels(i)'length);

                      --end loop;
                --end loop;
                 
                --file_close(file_VECTORS);
               
            --end if;
        end if;
    end process;     
    
    winner_process: process(rst,spikes_out)
    begin
        if(rst='1') then
            winner<=(others=>'1');
            enable_winner<='1';
        else
            for i in 0 to NEURONS_SECOND_LAYER-1 loop
                if(spikes_out(i)='1' and enable_winner='1') then
                    winner<=labels(i);
                    enable_winner<='0';
                end if;
            end loop;
        end if;    
    end process;
    
    change_process: process(clk,change)
    begin
        if rising_edge(clk) and change='1' then
            i<=i+1;
        end if;
    end process;
end Behavioral;
