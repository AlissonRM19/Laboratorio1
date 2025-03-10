library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador_medio is
	Port (A: in STD_LOGIC;
			B : in STD_LOGIC;
			Cout : out STD_LOGIC;
			Suma : out STD_LOGIC);
end sumador_medio;

architecture Behavioral of sumador_medio is

begin

Cout <= A and B;
Suma <= A xor B;

end Behavioral;