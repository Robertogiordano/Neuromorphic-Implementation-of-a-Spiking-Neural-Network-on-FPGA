library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;

package MyPackage is
    type MyArray is array (natural range <>) of integer;
    
    procedure ReadFile (FileName : in string; ArraySignal : out MyArray);
    
end package MyPackage;

package body MyPackage is

    procedure ReadFile (FileName : in string; ArraySignal : out MyArray) is
        file DataFile : text open read_mode is FileName;
        variable Value : integer;
        variable CharValue : character;
    begin
        -- Implementazione della procedura ReadFile
    end procedure;

end package body MyPackage;
