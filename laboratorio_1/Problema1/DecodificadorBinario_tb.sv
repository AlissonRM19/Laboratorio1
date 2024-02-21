module DecodificadorBinario_tb;

		// Definición de las señales de entrada y salida
		logic [3:0] bin;
		logic [6:0] seg;
		integer i;

		// Instanciación del módulo 
		DecodificadorBinario testbench (.bin(bin), .seg(seg));

		// Aplicación de los estímulos
		initial begin
			$display("Binario | Segmentos");
			// Demostración para 8 casos
			for (i = 0; i < 8; i = i + 1) begin
					bin = i;
					#40; 
				
					$display("--------|----------");
					$write("%b    | ", bin);
					$display("%b", seg);
			end
		  
		end
	 
endmodule
