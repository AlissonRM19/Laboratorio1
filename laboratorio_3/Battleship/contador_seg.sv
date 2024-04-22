module contador_seg (input logic clk,
							input logic en_cont_seg,
							output logic [3:0] total_seg,
							output logic [6:0] time_s);
	
	logic [3:0] temp_seg = 0;
							
	always_ff @ (posedge clk) begin
		if (!en_cont_seg) begin
			temp_seg = 0;
			time_s = 7'b1000000;
		end else begin
			temp_seg = temp_seg + 1;
			case(temp_seg)
            4'b0000: time_s = 7'b1000000;  //	Representa 0
            4'b0001: time_s = 7'b1111001;  //	Representa 1
            4'b0010: time_s = 7'b0100100;  //	Representa 2
            4'b0011: time_s = 7'b0110000;  //	Representa 3
            4'b0100: time_s = 7'b0011001;  //	Representa 4
            4'b0101: time_s = 7'b0010010;  //	Representa 5
            4'b0110: time_s = 7'b0000010;  //	Representa 6
            4'b0111: time_s = 7'b1111000;  //	Representa 7
            4'b1000: time_s = 7'b0000000;  //	Representa 8
            4'b1001: time_s = 7'b0010000;  //	Representa 9
				4'b1010: time_s = 7'b0001000;  //	Representa A - 10
				4'b1011: time_s = 7'b0000011;  //	Representa B - 11
				4'b1100: time_s = 7'b1000110;  //	Representa C - 12
				4'b1101: time_s = 7'b0100001;  //	Representa D - 13
				4'b1110: time_s = 7'b0000110;  //	Representa E - 14
				4'b1111: time_s = 7'b0001110;  //	Representa F - 15
            default: time_s = 7'b1000000;  //  Representa otro valor
			endcase
		end
	end
	
	assign total_seg = temp_seg;
							
endmodule