module DecodificadorBinario_tb;

    // Definición de las señales de entrada y salida
    logic [3:0] bin;
    logic [6:0] seg;
    integer i;

    // Instanciación del módulo 
    DecodificadorBinario testbench (
        .bin(bin), 
        .seg(seg)
    );

    // Aplicación de los estímulos
    initial begin
       
        for (i = 0; i < 8; i = i + 1) begin
            bin = i;
            #40; 
        end
        
        //$finish;
		  
    end
	 
endmodule
