--  BCDcheck
--  Indikerar egenskaper hos siffror i BCD-kod

library IEEE;
use IEEE.std_logic_1164.all;

entity part4 is
  port(
     x3, x2, x1, x0 : in STD_LOGIC;
     y : out std_logic_vector(3 downto 0)
     );
end part4;

	
architecture beteende of part4 is

component PLDcell4 is
  port(x5, x4, x3, x2, x1, x0, inv : in STD_LOGIC;
    y : out STD_LOGIC);
end component;

begin
  
cell1 : PLDcell4 PORT MAP(x0, '1', '0', '0', '0', '0', '1', y(0));
cell2 : PLDcell4 PORT MAP(x1, '1', '0', '0', '0', '0', '0', y(1));
cell3 : PLDcell4 PORT MAP(x1, '1' , '0', '0', '0', '0', x2, y(2));
cell4 : PLDcell4 PORT MAP(x3, '1', x2, '1', x1, '1', '1', y(3));
  
end architecture beteende;