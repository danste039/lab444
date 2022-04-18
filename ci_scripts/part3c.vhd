--  BCDcheck
--  Indikerar egenskaper hos siffror i BCD-kod

library IEEE;
use IEEE.std_logic_1164.all;

entity part3c is
    port(
        a, b, c, d, e : in STD_LOGIC;
        g : out std_logic);
end part3c;

	
architecture beteende of part3c is

component PLDcell is
  port(x5, x4, x3, x2, x1, x0, inv : in STD_LOGIC;
    y : out STD_LOGIC);
end component;

signal aCheck, bCheck, cCheck, z, Check  : STD_LOGIC;

begin
  aCheck <= not a;
  bCheck <= not b;
  cCheck <= not c;
  Check <= a and b and c and d and e;
  
  cell : PLDcell PORT MAP('0','0','0',aCheck,bCheck,cCheck,'0',z);
  cell2 : PLDcell PORT MAP(Check,'1','1','1','1',z,'0',g);
end architecture beteende;