module Control_Unit (input logic clk,
							input logic rst,
							input logic [3:0] cond,
							input logic [3:0] aluflags,
							input logic [1:0] op,
							input logic [5:0] funct,
							input logic [3:0] rd,
							output logic pcsrc,
							output logic regwrite,
							output logic memwrite,
							output logic memtoreg,
							output logic alusrc,
							output logic [1:0] immsrc,
							output logic [1:0] regsrc,
							output logic [1:0] alucontrol
							);
							
							
	logic [1:0] flagw;
	logic pcs;
	logic regw;
	logic memw;
							
	Control_Conditional_Logic ccl (.clk(clk),
											.rst(rst),
											.cond(cond),
											.aluflags(aluflags),
											.flagw(flagw),
											.pcs(pcs),
											.regw(regw),
											.memw(memw),
											.pcsrc(pcsrc),
											.regwrite(regwrite),
											.memwrite(memwrite)
											);
											
	Control_Decoder cd (.op(op),
								.funct(funct),
								.rd(rd),
								.pcs(pcs),
								.memw(memw),
								.regw(regw),
								.memtoreg(memtoreg),
								.alusrc(alusrc),
								.immsrc(immsrc),
								.regsrc(regsrc),
								.alucontrol(alucontrol),
								.flagw(flagw)
								);

	/*assign memtoreg = (op == 01 && funct[0] == 1);
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
	assign pcsrc = (op == 10 || (rd == 15 && regwrite));*/
	
endmodule