library ieee;
use ieee.std_logic_1164.all;

entity module_ripple_carry_adder is
    generic (
        g_WIDTH : integer
    );
    port (
        i_add_term1 : in  std_logic_vector(g_WIDTH-1 downto 0);
        i_add_term2 : in  std_logic_vector(g_WIDTH-1 downto 0);
        o_result    : out std_logic_vector(g_WIDTH downto 0)
    );
end entity module_ripple_carry_adder;

architecture rtl of module_ripple_carry_adder is

    signal s_carry : std_logic;

begin

    process(i_add_term1, i_add_term2)
        variable v_sum : std_logic_vector(g_WIDTH downto 0);
    begin
        v_sum(0) := i_add_term1(0) xor i_add_term2(0) xor s_carry;
        o_result(0) <= v_sum(0);

        for i in 1 to g_WIDTH-1 loop
            v_sum(i) := i_add_term1(i) xor i_add_term2(i) xor s_carry;
            s_carry  <= (i_add_term1(i) and i_add_term2(i)) or
                        (s_carry and (i_add_term1(i) xor i_add_term2(i)));
            o_result(i) <= v_sum(i);
        end loop;

        v_sum(g_WIDTH) := s_carry;
        o_result(g_WIDTH) <= v_sum(g_WIDTH);

    end process;

end architecture rtl;
