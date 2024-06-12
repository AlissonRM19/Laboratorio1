module ALU #(parameter n = 32) (	input logic [n - 1:0] src1,
											input logic [n - 1:0] src2,
											input logic [1:0] alucontrol,
											input logic clk,
											output logic neg,
											output logic cero,
											output logic carry,
											output logic des,
											output logic [n-1:0] num
											);

	// SUM
	logic [n-1:0] Resultado_sum;
	logic Cout_sum;
	// RES
	logic [n-1:0] Resultado_res;
	logic Cout_res;
	
	sumadornbits #(n) UUT(
		.Ent1(src1),
		.Ent2(src2),
		.Resultado(Resultado_sum),
		.Cout(Cout_sum)
	);
	restadornbits #(n) UUT_r (
		.Ent1(src1),
		.Ent2(src2),
		.Resultado(Resultado_res),
		.Cout(Cout_res)
	);
	
	initial begin
		num = 0;
		neg = 0;
		cero = 0;
		carry = 0;
		des = 0;
	end
	
	always @ (src1,src2,alucontrol)
	begin
		case (alucontrol)
			2'b00:begin // Suma
						num = Resultado_sum;
						carry = Cout_sum;
						neg = 0;
					end
			2'b01:begin // Resta
						if (Cout_res) begin
							num = ~Resultado_res + 1;
						end else begin
							num = Resultado_res;
						end
						carry = 0;
						neg = Cout_res;
					end
			2'b10:begin // AND
						carry = 0;
						num = src1 & src2;
						neg = 0;
					end
			2'b11:begin	// OR
						carry = 0;
						num = src1 | src2;
						neg = 0;
					end
			default: begin // Error
							num = 0;
							neg = 0;
							carry = 0;
						end
			
		endcase
		if (num == 0) begin
			cero = 1;
		end else begin
			cero = 0;
		end
	end
			
endmodule