--  BCDcheck
--  Indikerar egenskaper hos siffror i BCD-kod

library IEEE;
use IEEE.std_logic_1164.all;

entity part2a IS
  port(a, b, c, d : in STD_LOGIC;
       f : out STD_LOGIC);
end entity part2a;
	
architecture beteende of part2a is
begin
  f <= (b and not c and not d) or (not a and not d) or (a and not c) or (not a and c);
end architecture beteende;
