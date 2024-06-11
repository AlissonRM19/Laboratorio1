module Control_ALU_Decoder (	input logic aluop,
										input logic [4:0] funct,
										output logic [1:0] alucontrol,
										output logic [1:0] flagw);
			
				
	always_comb begin
		if (aluop) begin
			case (funct[4:1])
				4'b0100:	begin
								alucontrol = 0;
							end
				4'b0010:	begin
								alucontrol = 1;
							end
				4'b0000:	begin
								alucontrol = 2;
							end
				4'b1100:	begin
								alucontrol = 3;
							end
			endcase
			flagw[1] = funct[0];
			flagw[0] = funct[0] & (alucontrol == 2'b00 | alucontrol == 2'b01);
		end else begin
			alucontrol = 0;
			flagw = 0;
		end
	end

endmodule