--  BCDcheck
--  Indikerar egenskaper hos siffror i BCD-kod

library IEEE;
use IEEE.std_logic_1164.all;

entity part3b is
    port(
        a, b, c, d : in STD_LOGIC;
        f : out std_logic);
end part3b;

	
architecture beteende of part3b is

component PLDcell is
  port(x5, x4, x3, x2, x1, x0, inv : in STD_LOGIC;
    y : out STD_LOGIC);
end component;

signal aprim, cprim : STD_LOGIC;
 
begin
  
  aprim <= not a;
  cprim <= not c;
  cell : PLDcell PORT MAP('1',a, c, aprim, cprim, d, '1', f);

end architecture beteende;
