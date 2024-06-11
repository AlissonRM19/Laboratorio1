module Control_Decoder (input logic [1:0] op,
								input logic [5:0] funct,
								input logic [3:0] rd,
								output logic pcs,
								output logic regw,
								output logic memw,
								output logic memtoreg,
								output logic alusrc,
								output logic [1:0] immsrc,
								output logic [1:0] regsrc,
								output logic [1:0] alucontrol,
								output logic [1:0] flagw
								);
								
	logic branch;
	logic aluop;
								
	Control_PC_Logic cpcl(.rd(rd),
								.branch(branch),
								.regw(regw),
								.pcs(pcs)
								);
									
	Control_Main_Decoder cmd(.op(op),
									.funct0(funct[0]),
									.funct5(funct[5]),
									.branch(branch),
									.memtoreg(memtoreg),
									.memw(memw),
									.alusrc(alusrc),
									.immsrc(immsrc),
									.regw(regw),
									.regsrc(regsrc),
									.aluop(aluop)
									);
										
	Control_ALU_Decoder cad(.aluop(aluop),
									.funct(funct[4:0]),
									.alucontrol(alucontrol),
									.flagw(flagw)
									);

endmodule