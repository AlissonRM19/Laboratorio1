module DecodificadorBinario(input logic [3:0] bin, output logic [6:0] seg);


		// Se ejecuta cada vez qye hay un cambio en "bin"
		always @ (bin) begin
	 
		  // Se realiza la comparación entre el valor de "bin" con los patrones binarios
        case(bin)
		  
            4'b0000: seg = 8'b11000000;  //	Representa 0
            4'b0001: seg = 8'b11111001;  //	Representa 1
            4'b0010: seg = 8'b10100100;  //	Representa 2
            4'b0011: seg = 8'b10110000;  //	Representa 3
            4'b0100: seg = 8'b10011001;  //	Representa 4
            4'b0101: seg = 8'b10010010;  //	Representa 5
            4'b0110: seg = 8'b10000010;  //	Representa 6
            4'b0111: seg = 8'b11111000;  //	Representa 7
            4'b1000: seg = 8'b10000000;  //	Representa 8
            4'b1001: seg = 8'b10010000;  //	Representa 9
				4'b1010: seg = 8'b00010001;  //	Representa A - 10
				4'b1011: seg = 8'b11000001;  //	Representa B - 11
				4'b1100: seg = 8'b01100011;  //	Representa C - 12
				4'b1101: seg = 8'b10000101;  //	Representa D - 13
				4'b1110: seg = 8'b01100001;  //	Representa E - 14
				4'b1111: seg = 8'b01110001;  //	Representa F - 15
            default: seg = 8'b11111111;  //  Representa otro valor
				
        endcase
		  
    end

endmodule