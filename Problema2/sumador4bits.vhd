library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador4bits is
	Port (Ent1 : in STD_LOGIC_VECTOR (3 downto 0);
			Ent2 : in STD_LOGIC_VECTOR (3 downto 0);
			Carry : out STD_LOGIC;
			Resultado : out STD_LOGIC_VECTOR (3 downto 0));
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
	
	signal C1,C2,C3 : std_logic;
	

begin
	
	Inst_sumador_medio: sumador_medio PORT MAP (
	
		A=> Ent1(0),
		B => Ent2(0),
		Cout => C1,
		Suma => Resultado(0)
	);
	
	Inst_sumador_completo1: sumador_completo PORT MAP (
	
		Cin => C1,
		A=> Ent1(1),
		B => Ent2(1),
		Cout => C2,
		Suma => Resultado(1)
	);
	Inst_sumador_completo2: sumador_completo PORT MAP (
	
		Cin => C2,
		A=> Ent1(2),
		B => Ent2(2),
		Cout => C3,
		Suma => Resultado(2)
	);
	Inst_sumador_completo3: sumador_completo PORT MAP (
	
		Cin => C3,
		A=> Ent1(3),
		B => Ent2(3),
		Cout => Carry,
		Suma => Resultado(3)
	);
	
end Behavioral;