library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Second_Layer is
    generic(
        NEURONS: integer := 100
    );
    Port ( 
    clk : in STD_LOGIC;
    rst : in std_logic;
    clr: in std_logic;
    read_en: in std_logic;
    write_en: in std_logic;
    spike_in: in std_logic;
    spikes_out: out std_logic_vector(0 to NEURONS-1)
    );
end Second_Layer;

architecture Behavioral of Second_Layer is

component Neuron is
    generic (
        DATA_WIDTH   : integer := 24;   -- Width of each data word
        PREV_LAYER   : integer := 784   -- Height of the block
    );
    port (
        wr : in  std_logic;           -- Write enable signal
        rd  : in std_logic;              -- Read enable signal 
    
        clk             : in  std_logic;           -- Clock signal
        rst           : in  std_logic;           -- Reset signal
        clr         : in std_logic;
        inhibit         : in  std_logic;           -- Inhibit signal
        --hyppol   : in  std_logic;           -- Hyperpolarization signal
        spike_in        : in  std_logic;           -- Spike input
        spike_out       : out std_logic;            -- Spike output
        --fire_en         : out std_logic;
        
        id: in unsigned(0 to 8-1);                   -- id neuron
        
        spike_out_en: in std_logic_vector(0 to NEURONS-1):=(others=>'0'); -- allow the generation of spike
        spike_out_req: out std_logic -- rise a line to occupy the spike generation in a precise moment
    );
end component Neuron;

    constant DATA_WIDTH: integer := 24;
    constant PREV_LAYER: integer := 784;
    
    
    --signal spike_out       :  std_logic ;           -- Spike output
    
    signal  id: unsigned(0 to 8-1):= to_unsigned(16,8);                   -- id neuron

    signal wr: std_logic;
    
signal allow_spike: std_logic_vector(0 to NEURONS-1):=(others=>'0');
        
        
      --signal fire_id: std_logic_vector(0 to NEURONS-1):=(others=>'0');
      signal inhibit_array: std_logic_vector(0 to NEURONS-1):=(others=>'0');           -- Inhibit signal
      signal hyppol_array:   std_logic_vector(0 to NEURONS-1):=(others=>'0');           -- Hyperpolarization signal
      signal spikes_out_tmp: std_logic_vector(0 to NEURONS-1):=(others=>'0');
      
begin

NEURON_GEN :
    for n in 0 to NEURONS-1 generate
-- Neuron instantiation
    Neuron_Instance : Neuron
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            PREV_LAYER => PREV_LAYER
        )
        port map (
            clk   => clk,
            rst  => rst,
            clr => clr,
            wr => wr,
            rd => read_en,
            inhibit  => inhibit_array(n),
            --hyppol => hyppol_array(n),
            spike_in => spike_in,
            spike_out => spikes_out_tmp(n),
            id => to_unsigned(n,id'length),
            --fire_en=>fire_id(n),
            spike_out_en=>allow_spike,
            spike_out_req=>allow_spike(n)
        );
        end generate;
        
    

    
    write_enable: process(clk)
    begin
        if rst ='1' then
            
        elsif rising_edge(clk) then

            if(write_en='1') then
                wr<='1';
            else
                wr<='0';
            end if;
        end if;
        
    end process;
    
    --inihibit_and_hyperpol: process(clk,fire_id)
    --variable inihibit_tmp: std_logic_vector(0 to NEURONS-1):=(others=>'0');
    --variable hyppol_tmp: std_logic_vector(0 to NEURONS-1):=(others=>'0');
    --begin
    --    if rising_edge(clk) then
    --        inihibit_tmp :=(others=>'0');
    --        hyppol_tmp :=(others=>'0');
            
    --        for i in 0 to NEURONS-1 loop
    --            if(fire_id(i)='1')then
    --                hyppol_tmp(i):='1';
                    
                    --for j in 0 to NEURONS-1 loop
                        --if(j /= i) then
    --                inihibit_tmp:=(others=>'1');
    --                inihibit_tmp(i):='0';
                        --end if;
                    --end loop;
                    
     --           end if;
     --       end loop;
            
     --       hyppol_array<=hyppol_tmp;
    --        inhibit_array<=inihibit_tmp;
     --   end if;
   -- end process;
   
   --hyppol_array<=spikes_out_tmp;
   inhibit_array<= not spikes_out_tmp when unsigned(spikes_out_tmp)/=0 else(others=>'0') when unsigned(spikes_out_tmp)=0 ;
   spikes_out<=spikes_out_tmp;
   
    

end Behavioral;
