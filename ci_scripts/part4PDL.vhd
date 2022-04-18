--  BCDcheck
--  Indikerar egenskaper hos siffror i BCD-kod

library IEEE;
use IEEE.std_logic_1164.all;

entity PLDcell4 is
    port(
        x5, x4, x3, x2, x1, x0, inv : in STD_LOGIC;
        y : out std_logic);
end PLDcell4;

	
architecture beteende of PLDcell4 is
  Signal y1, y2, y3, y4 : std_logic;
begin
  y1 <= x5 and x4;
  y2 <= x3 and x2;
  y3 <= x1 and x0;
  y4 <= y1 or y2 or y3;
  y <= y4 xor inv;
end architecture beteende;
