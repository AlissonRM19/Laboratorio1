library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador4bits is
	Port (Ent1 : in STD_LOGIC_VECTOR (3 downto 0);
			Ent2 : in STD_LOGIC_VECTOR (3 downto 0);
			Cout : out STD_LOGIC;
			Resultado : out STD_LOGIC_VECTOR (3 downto 0);
			salida7seg0 : out std_logic_vector (6 downto 0);
			salida7seg1 : out std_logic_vector (6 downto 0));
			
end sumador4bits;

architecture Behavioral of sumador4bits is

	COMPONENT sumador_medio
	PORT (
		A : IN std_logic;
		B : IN  std_logic;
		Cout : OUT std_logic;
		Suma : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT sumador_completo
	PORT (
		cin : IN std_logic;
		A : IN std_logic;
		B : IN  std_logic;
		Cout : OUT std_logic;
		Suma : OUT std_logic
		);
	END COMPONENT;
	
	signal C1,C2,C3: std_logic;
	signal Carry : std_logic;
	signal Resultadobin : std_logic_vector (3 downto 0);
	

begin
	
	Inst_sumador_medio: sumador_medio PORT MAP (
	
		A=> Ent1(0),
		B => Ent2(0),
		Cout => C1,
		Suma => Resultadobin(0)
	);
	
	Inst_sumador_completo1: sumador_completo PORT MAP (
	
		Cin => C1,
		A=> Ent1(1),
		B => Ent2(1),
		Cout => C2,
		Suma => Resultadobin(1)
	);
	Inst_sumador_completo2: sumador_completo PORT MAP (
	
		Cin => C2,
		A=> Ent1(2),
		B => Ent2(2),
		Cout => C3,
		Suma => Resultadobin(2)
	);
	Inst_sumador_completo3: sumador_completo PORT MAP (
	
		Cin => C3,
		A=> Ent1(3),
		B => Ent2(3),
		Cout => Carry,
		Suma => Resultadobin(3)
	);
	process (Resultadobin,Carry)
	begin
	if Carry = '0' then
            salida7seg1 <= "1000000";
	else
		salida7seg1 <= "1111001";
		end if;
		
		case Resultadobin is
				when "0000" => salida7seg0 <= "1000000"; -- Hex 0
				when "0001" => salida7seg0 <= "1111001"; -- Hex 1
				when "0010" => salida7seg0 <= "0100100"; -- Hex 2
				when "0011" => salida7seg0 <= "0110000"; -- Hex 3
				when "0100" => salida7seg0 <= "0011001"; -- Hex 4
				when "0101" => salida7seg0 <= "0010010"; -- Hex 5
				when "0110" => salida7seg0 <= "0000010"; -- Hex 6
				when "0111" => salida7seg0 <= "1111000"; -- Hex 7
				when "1000" => salida7seg0 <= "0000000"; -- Hex 8
				when "1001" => salida7seg0 <= "0010000"; -- Hex 9
				when "1010" => salida7seg0 <= "0001000"; -- Hex A
				when "1011" => salida7seg0 <= "0000011"; -- Hex B
				when "1100" => salida7seg0 <= "1000110"; -- Hex C
				when "1101" => salida7seg0 <= "0100001"; -- Hex D
				when "1110" => salida7seg0 <= "0000110"; -- Hex E
				when "1111" => salida7seg0 <= "0001110"; -- Hex F
	
		end case;
		
	  Cout <= Carry;
	  Resultado <= Resultadobin;
		
	end process;

	end Behavioral;