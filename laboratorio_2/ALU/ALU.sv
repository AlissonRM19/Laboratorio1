module ALU #(parameter n = 4) (input logic [n - 1:0] in1,
										 input logic [n - 1:0] in2,
										 input logic click,
										output logic neg,
										output logic cero,
										output logic carry,
										output logic des,
										output logic [7:0] num,
										output logic [1:0] [6:0] out);

	logic [2:0] mode;
	
	initial begin
		out[0] = 7'b1000000;
		out[1] = 7'b1000000;
		num = 0;
		mode = 0;
	end
	
	always @ (*)
	begin
		if (click) begin
			if (mode == 3'b111) begin
				mode = 0;
			end else begin
				mode=mode+1;
			end
		end
		case (mode)
			3'b000: begin // Suma
					  end
			3'b001: begin // Resta
					  end
			3'b010: begin // Multiplicacion
					  end
			3'b011: begin // AND
							num = in1 & in2;
					  end
			3'b100: begin	// OR
							num = in1 | in2;
					  end
			3'b101: begin // XOR
							num = in1 ^ in2;
					  end
			3'b110: begin // Shift Left
					  end
			3'b111: begin // Shift Right 
					  end
		endcase
	end
	
			
endmodule