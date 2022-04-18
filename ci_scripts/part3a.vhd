--  BCDcheck
--  Indikerar egenskaper hos siffror i BCD-kod

library IEEE;
use IEEE.std_logic_1164.all;

entity PLDcell is
    port(
        x5, x4, x3, x2, x1, x0, inv : in STD_LOGIC;
        y : out std_logic);
end PLDcell;

	
architecture beteende of PLDcell is
  Signal y1, y2, y3 : std_logic;
begin
  y1 <= x5 and x4 and x3 ;
  y2 <= x2 and x1 and x0 ;
  y3 <= y1 or y2;
  y <= y3 xor inv;
end architecture beteende;
