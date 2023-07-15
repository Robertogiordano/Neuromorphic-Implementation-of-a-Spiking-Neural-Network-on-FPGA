library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Neuron is
    generic (
        DATA_WIDTH   : integer := 24;   -- Width of each data word
        PREV_LAYER   : integer := 784   -- Height of the block
    );
    port (
        wr : in  std_logic;           -- Write enable signal
        rd  : in std_logic;              -- Read enable signal 
        clr : in std_logic;
        clk             : in  std_logic;           -- Clock signal
        rst           : in  std_logic;           -- Reset signal
        inhibit         : in  std_logic;           -- Inhibit signal
        --hyppol   : in  std_logic;           -- Hyperpolarization signal
        spike_in        : in  std_logic;           -- Spike input
        spike_out       : out std_logic;            -- Spike output
        --fire_en: out std_logic;
        
        id: in unsigned(0 to 8-1)   ;                -- id neuron
        
        spike_out_en: in std_logic_vector(0 to 100-1):=(others=>'0'); -- allow the generation of spike
        spike_out_req: out std_logic -- rise a line to occupy the spike generation in a precise moment
    );
end entity Neuron;

architecture Behavioral of Neuron is
    component RAM_Block is
        generic (
            DATA_WIDTH   : integer := 24;   -- Width of each data word 1+7+16 in ca2
            PREV_LAYER   : integer := 784   -- Height of the block
        );
        port (
            clk   : in  std_logic;           -- Clock signal
            rst   : in  std_logic;           -- Reset signal
            clr   : in std_logic;
            wr : in  std_logic;           -- Write enable signal
            rd  : in std_logic;              -- Read enable signal 
            dout  : out signed(DATA_WIDTH-1 downto 0);   -- Data output
            ref_num: in unsigned(0 to 8-1)      -- num neuron
        );
    end component;
    
    signal p: signed(DATA_WIDTH-1 downto 0);
    signal p_th: signed(DATA_WIDTH-1 downto 0);
   -- signal t_rest: signed(7 downto 0);
    --signal t_ref: unsigned(7 downto 0);
    
    signal act_wght: signed(DATA_WIDTH-1 downto 0) := (others=>'0');
      --signal acc: signed(DATA_WIDTH-1 downto 0) := to_signed(-70*65536,p'length);
      
    signal hide: std_logic := '0';

begin
    -- RAM instantiation
    RAM_Instance : RAM_Block
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            PREV_LAYER => PREV_LAYER
        )
        port map (
            clk   => clk,
            clr => clr,
            rst  => rst,
            wr => wr,
            rd => rd,
            dout  => act_wght,
            ref_num => id
        );
        
        process(clk,rst)
        variable acc: signed(DATA_WIDTH-1 downto 0) := to_signed(-70*65536,p'length);
        begin
        if(rst='1') then
            p <= to_signed(-70*65536,p'length); -- -70.0*2^16
            p_th <= to_signed(-55*65536,p_th'length); -- -55.0*2^16
            acc:= to_signed(-70*65536,p'length);
            --t_rest <= to_signed(-1, t_rest'length);
            --t_ref <= to_unsigned(15, t_rest'length);
            spike_out<='0';
        elsif rising_edge(clk) then
            
            if(inhibit='1') then
                acc := to_signed(-100*65536,p'length);
                p <= to_signed(-100*65536,p'length); -- -100.0*2^16
                -- t_rest <= to complete
            --elsif(hyppol='1') then
                --acc := to_signed(-90*65536,p'length);
                --p <= to_signed(-90*65536,p'length); -- -90.0*2^16
                --p_th<=p_th+to_signed(-1*65536,p_th'length);
                -- t_rest <= to complete
            elsif(rd='1' ) then
                if(p>to_signed(-70*65536,p'length)) then
                     hide<='1';
                     if(spike_in='0') then                                                                             
                        p<=acc+to_signed(-8*65536/10,p'length); --avoid hidden neurons. -0.8 each step (leak)
                     else
                        acc:=p+act_wght;
                        p<=acc;
                     end if;
                else
                    hide<='0';
                    acc:=acc+to_signed(4*65536/10,p'length);    
                     p<=acc+to_signed(4*65536/10,p'length);                                    
                end if;
                
               
            end if;
            
            if(p>p_th and to_integer(unsigned(spike_out_en))=0) then
                --fire_en<='1';
                spike_out<='1';
                spike_out_req<='1';
                acc := to_signed(-90*65536,p'length);
                p <= to_signed(-90*65536,p'length); -- -90.0*2^16
                p_th<=p_th+to_signed(-1*65536,p_th'length);
                --p <= to_signed(-90*65536,p'length);
                --p_th<=p_th+to_signed(-1*65536,p_th'length);
            else
                --fire_en<='0';
                spike_out<='0';
                spike_out_req<='0';
            end if;    
                  
        end if; 
        end process;
       
    
       --acc<=p+act_wght when spike_in='1' and inhibit='0';
           

end architecture Behavioral;
