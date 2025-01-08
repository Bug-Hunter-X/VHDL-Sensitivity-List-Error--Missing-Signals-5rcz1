```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity correct_sensitivity is
  port (
    clk : in std_logic;
    a : in std_logic;
    b : in std_logic;
    y : out std_logic
  );
end entity;

architecture behavioral of correct_sensitivity is
begin
  process (clk) -- Correct sensitivity list: only needs clk for synchronous process
  begin
    if rising_edge(clk) then
      y <= a and b; 
    end if;
  end process;
end architecture;
```