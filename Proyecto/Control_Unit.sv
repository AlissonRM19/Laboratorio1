module Control_Unit (input logic [3:0] cond,
							input logic [1:0] op,
							input logic [5:0] funct,
							input logic [3:0] rd,
							input logic flags,
							output logic pcsrc,
							output logic memtoreg,
							output logic memwrite,
							output logic alucontrol,
							output logic alusrc,
							output logic immsrc,
							output logic regwrite,
							output logic regsrc
							);

	assign memtoreg = (op == 01 && funct[0] == 1);
	assign memwrite = (op == 01 && funct[0] == 0);
	// ALU Control
	logic [1:0] temp_alucontrol = 0;
	logic [1:0] temp_immsrc = 0;
	logic [1:0] temp_regsrc = 0;
	always @ (*)
	begin
		case(funct[4:1])
			4'b0000: temp_alucontrol = 10;
			4'b0010: temp_alucontrol = 01;
			4'b0100: temp_alucontrol = 00;
			4'b1100: temp_alucontrol = 11;
		endcase
		case(op)
			2'b00: temp_immsrc = 00;
			2'b01: temp_immsrc = 01;
			2'b10: temp_immsrc = 10;
		endcase
		case(op)
			2'b00: temp_regsrc = 00;
			2'b10: temp_regsrc = 01;
			2'b01: begin 
						if (funct[0] == 0) begin
							temp_regsrc = 10;
						end
					end
		endcase
	end
	assign alucontrol = temp_alucontrol;
	assign alusrc = !(op == 00 && funct[5] == 0);
	// ImmSrc
	
	assign immsrc = temp_immsrc;
	// RegSrc
	
	assign regsrc = temp_regsrc;
	assign regwrite = ((op == 00 || op == 01) && funct[0] == 1);
	assign pcsrc = (op == 10 || (rd == 15 && regwrite));
	
endmodule