module ALU #(parameter n = 4) (input logic [n - 1:0] in1,
										 input logic [n - 1:0] in2,
										 input logic [3:0] mode,
										output logic neg,
										output logic cero,
										output logic carry,
										output logic des,
										output logic [7:0] num,
										output logic [1:0] [6:0] out);

			
	initial begin
		out[0] = 7'b1000000;
		out[1] = 7'b1000000;
		num = 0;
	end
	
	always @ (*)
	begin
		case (mode)
			4'b0000: begin // Suma
						end
			4'b0001: begin // Resta
						end
			4'b0010: begin // Multiplicacion
						end
			4'b0011: begin // Division
						end
			4'b0100: begin // Modulo
						end
			4'b0101: begin // AND
							num = in1 & in2;
						end
			4'b0110: begin	// OR
							num = in1 | in2;
						end
			4'b0111: begin // XOR
							num = in1 ^ in2;
						end
			4'b1000: begin // Shift Left
						end
			4'b1001: begin // Shift Right 
						end
			default: begin // Error
							out[0] = 7'b0000110;
							out[1] = 7'b0101111;
						end
		endcase
	end
	
			
endmodule