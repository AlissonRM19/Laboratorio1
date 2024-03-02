module ALU #(parameter n = 4) (input logic [n - 1:0] in1,
										 input logic [n - 1:0] in2,
										 input logic [3:0] mode,
										output logic neg,
										output logic cero,
										output logic carry,
										output logic des,
										output logic [1:0] [3:0] num,
										output logic [6:0] mode_seg,
										output logic [1:0] [6:0] out);

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
		neg = 0;
		cero = 1;
		carry = 0;
		des = 0;
		seg7_1 = 0;
		x = 0;
	end
	
	always @ (*)
	begin
		case (mode)
			4'b0000: begin // Suma
							mode_seg = 7'b1000000;
							num[0] = Resultado_sum;
							num[1] = Cout_sum;
							carry = Cout_sum;
					  end
			4'b0001: begin // Resta
							mode_seg = 7'b1111001;
					  end
			4'b0010: begin // Multiplicacion
							mode_seg = 7'b0100100;
							neg = 0;
					  end
			4'b0011: begin // AND
							mode_seg = 7'b0110000;
							carry = 0;
							num = in1 & in2;
					  end
			4'b0100: begin	// OR
							mode_seg = 7'b0011001;
							num = in1 | in2;
					  end
			4'b0101: begin // XOR
							mode_seg = 7'b0010010;
							num = in1 ^ in2;
					  end
			4'b0110: begin // Shift Left
							mode_seg = 7'b0000010;
					  end
			4'b0111: begin // Shift Right 
							mode_seg = 7'b1111000;
					  end
			4'b1000: begin // División
							mode_seg = 7'b0000000;
							num = in1 / in2;
						end
			4'b1001: begin // Módulo
							mode_seg = 7'b0010000;
							num = in1 % in2;
						end
			default: begin // Error
							num = 1;
							mode_seg = 7'b0001001;
							x = 1;
						end
			
		endcase
		if (num == 0) begin
			cero = 1;
			out[0] = 7'b1000000;
			out[1] = 7'b1000000;
		end else begin
			cero = 0;
			if (x) begin
				x = 0;
				out[0] = 7'b1000000;
				out[1] = 7'b1000000;
			end else begin
				out = seg7_1;
			end
		end
	end
	
			
endmodule