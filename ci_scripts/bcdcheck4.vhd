--  BCDcheck4
--  Indikerar egenskaper hos siffror i BCD-kod
--  2001-07-04
--  Lars-H Hemert

library IEEE;
use IEEE.std_logic_1164.all;

entity BCDcheck4 is
  port(x : in std_logic_vector(3 downto 0);
       max, min, even, lo3, noBCD, hieq3 : out std_logic);
end entity BCDcheck4;


architecture beteende of BCDcheck4 is
  Signal lo3_int : std_logic; 
  Signal noBCD_int: std_logic; 
begin
  max   <= '1' when x = X"9" else '0';
  min   <= '1' when x = X"0" else '0';
  even  <= not x(0);
  lo3   <= lo3_int;
  noBCD <= noBCD_int;
  lo3_int <= '1' when (x >= X"0") and (x < X"3") else '0';
  noBCD_int <= '1' when (x > X"9") and (x <= X"F") else '0';
  hieq3 <= not lo3_int and not noBCD_int;
end architecture beteende;

