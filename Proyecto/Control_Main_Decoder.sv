module Control_Main_Decoder (	input logic [1:0] op,
										input logic funct0,
										input logic funct5,
										output logic branch,
										output logic memtoreg,
										output logic memw,
										output logic alusrc,
										output logic [1:0] immsrc,
										output logic regw,
										output logic [1:0] regsrc,
										output logic aluop
										);
										
	always_comb begin
		case (op)
			2'b00:begin
						branch = 0;
						memtoreg = 0;
						memw = 0;
						alusrc = funct5;
						immsrc = 0;
						regw = 1;
						regsrc = 0;
						aluop = 1;
					end
			2'b01:begin
						branch = 0;
						memtoreg = 1;
						memw = !funct0;
						alusrc = 1;
						immsrc = 1;
						regw = funct0;
						regsrc = 2;
						aluop = 0;
					end
			2'b10:begin
						branch = 1;
						memtoreg = 0;
						memw = 0;
						alusrc = 1;
						immsrc = 2;
						regw = 0;
						regsrc = 1;
						aluop = 0;
					end
			default:begin
						branch = 1'bx;
						memtoreg = 1'bx;
						memw = 1'bx;
						alusrc = 1'bx;
						immsrc = 2'bx;
						regw = 1'bx;
						regsrc = 2'bx;
						aluop = 1'bx;
					end
		endcase
	end
	
	
endmodule