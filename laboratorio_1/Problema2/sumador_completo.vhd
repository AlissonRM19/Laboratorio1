library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador_completo is
	Port (Cin : in STD_LOGIC;
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			Cout : out STD_LOGIC;
			Suma : out STD_LOGIC);
end sumador_completo;

architecture Behavioral of sumador_completo is
begin 

Cout <= (A and B) or ((A xor B) and Cin);
Suma <= (A xor B) xor Cin;

end Behavioral;
