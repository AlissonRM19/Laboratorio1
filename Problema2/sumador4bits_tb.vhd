library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador4bits_tb is
-- No hay puertos de entrada/salida en el testbench.
end sumador4bits_tb;

architecture Behavioral of sumador4bits_tb is
  -- Declaraciones de señales y constantes
  signal Ent1, Ent2 : std_logic_vector(3 downto 0);
  signal Resultado : std_logic_vector(3 downto 0);
  signal Carry : std_logic;

begin
  -- Instancia del sumador binario completo de 4 bits
  UUT: entity work.sumador4bits
    port map (
      Ent1 => Ent1,
      Ent2 => Ent2,
      --cin => cin,
      Resultado => Resultado,
      Carry => Carry
    );

  -- Proceso de estímulo (stimulus process)
  stim_process: process
  begin
    -- Configuración de los valores iniciales
    Ent1 <= "0000";
    Ent2 <= "0000";
    --cin <= '0';

    -- Ejemplo 1
    Ent1 <= "1101";
    Ent2 <= "0011";
    --cin <= '0';
    wait for 10 ns;

    -- Estímulo 2
    Ent1 <= "1000";
    Ent2 <= "1000";
    --cin <= '1';
    wait for 10 ns;
	 
	 -- Ejemplo 3
    Ent1 <= "1101";
    Ent2 <= "1111";
    --cin <= '0';
    wait for 10 ns;

    -- Ejemplo 4
    Ent1 <= "1001";
    Ent2 <= "0001";
    --cin <= '1';
    wait for 10 ns;

    -- Puedes agregar más casos de prueba según sea necesario.
	 

    -- Detener la simulación
    wait;
  end process stim_process;

end Behavioral;