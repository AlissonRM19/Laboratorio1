library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador4bits_tb is
-- No hay puertos de entrada/salida en el testbench.
end sumador4bits_tb;

architecture testbench of sumador4bits_tb is
  -- Declaraciones de señales y constantes
  signal Ent1_tb, Ent2_tb : std_logic_vector(3 downto 0);
  signal Resultado_tb : std_logic_vector(3 downto 0);
  signal Cout_tb : std_logic;
  signal salida7seg0_tb : std_logic_vector(6 downto 0);
  signal salida7seg1_tb : std_logic_vector(6 downto 0);
  

begin
  -- Instancia del sumador binario completo de 4 bits
  UUT: entity work.sumador4bits
    port map (
      Ent1 => Ent1_tb,
      Ent2 => Ent2_tb,
      --cin => cin,
      Resultado => Resultado_tb,
      Cout => Cout_tb,
		salida7seg0 => salida7seg0_tb,
		salida7seg1 => salida7seg1_tb
    );

  -- Proceso de estímulo (stimulus process)
  process
  begin

    -- Ejemplo 1
    Ent1_tb <= "1101";
    Ent2_tb <= "0011";
    --cin <= '0';
    wait for 10 ns;

    -- Estímulo 2
    Ent1_tb <= "1000";
    Ent2_tb <= "1000";
    --cin <= '1';
    wait for 10 ns;
	 
	 -- Ejemplo 3
    Ent1_tb <= "1101";
    Ent2_tb <= "1111";
    --cin <= '0';
    wait for 10 ns;

    -- Ejemplo 4
    Ent1_tb <= "1001";
    Ent2_tb <= "0001";
    --cin <= '1';
    wait for 10 ns;

	 

    -- Detener la simulación
    wait;
  end process;

end testbench;