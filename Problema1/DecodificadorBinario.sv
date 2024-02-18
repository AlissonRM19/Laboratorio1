module DecodificadorBinario(input logic [3:0] bin, output logic [6:0] seg);

		always @ (bin) begin
	 
        case(bin)
		  
            4'b0000: seg = 8'b11000000;    // bin = 0
            4'b0001: seg = 8'b11111001;    // bin = 1
            4'b0010: seg = 8'b10100100;    // bin = 2
            4'b0011: seg = 8'b10110000;    // bin = 3
            4'b0100: seg = 8'b10011001;    // bin = 4
            4'b0101: seg = 8'b10010010;    // bin = 5
            4'b0110: seg = 8'b10000010;    // bin = 6
            4'b0111: seg = 8'b11111000;    // bin = 7
            4'b1000: seg = 8'b10000000;    // bin = 8
            4'b1001: seg = 8'b10010000;    // bin = 9
            default: seg = 8'b11111111;    // otro valor
				
        endcase
		  
    end

endmodule