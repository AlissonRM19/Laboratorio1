module ALU #(parameter n = 4) (input logic [n - 1:0] in1,
										 input logic [n - 1:0] in2,
										 input logic click,
										output logic neg,
										output logic cero,
										output logic carry,
										output logic des,
										output logic [1:0] [3:0] num,
										output logic [6:0] mode_seg,
										output logic [1:0] [6:0] out);

	logic [2:0] mode;
	logic [3:0] Resultado_sum;
	logic Cout_sum;
	logic [1:0] [6:0] seg7_1;
	integer x;
	sumadornbits UUT(
		.Ent1(in1),
		.Ent2(in2),
		.Resultado(Resultado_sum),
		.Cout(Cout_sum)
	);
	DecodificadorN deco (
		.num_all(num),
		.seg(seg7_1)
	);
	initial begin
		out[0] = 7'b1000000;
		out[1] = 7'b1000000;
		num = 0;
		mode = 0;
		neg = 1;
		cero = 1;
		carry = 0;
		des = 0;
		seg7_1 = 0;
		x = 0;
	end
	
	always @ (*)
	begin
		if (click == 1 && x == 0) begin
			if (mode == 3'b111) begin
				mode = 0;
			end else begin
				mode = mode + 1;
			end
			x = 1;
		end
		if (click == 0 && x == 1)begin
			x = 0;
		end
		case (mode)
			3'b000: begin // Suma
							mode_seg = 7'b1000000;
							num[0] = Resultado_sum;
							num[1] = Cout_sum;
							carry = Cout_sum;
					  end
			3'b001: begin // Resta
							mode_seg = 7'b1111001;
					  end
			3'b010: begin // Multiplicacion
							mode_seg = 7'b0100100;
							neg = 1;
					  end
			3'b011: begin // AND
							mode_seg = 7'b0110000;
							carry = 0;
							num = in1 & in2;
					  end
			3'b100: begin	// OR
							mode_seg = 7'b0011001;
							num = in1 | in2;
					  end
			3'b101: begin // XOR
							mode_seg = 7'b0010010;
							num = in1 ^ in2;
					  end
			3'b110: begin // Shift Left
							mode_seg = 7'b0000010;
					  end
			3'b111: begin // Shift Right 
							mode_seg = 7'b1111000;
					  end
		endcase
		if (num == 0) begin
			cero = 1;
			out[0] = 7'b1000000;
			out[1] = 7'b1000000;
		end else begin
			cero = 0;
			out = seg7_1;
		end
	end
	
			
endmodule