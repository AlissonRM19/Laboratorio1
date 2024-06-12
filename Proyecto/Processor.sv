module Processor (input logic clk, 
						input logic rst,
						input logic [31:0] writedata_b, 
						input logic [31:0] dataadr_b, 
						input logic memwrite_b, 
						output logic [7:0] ascii);

	logic [31:0] pc;
	logic [31:0] instr;
	logic [7:0] readdata;
	
	// control
	logic [3:0] aluflags; 
	logic regwrite;
	logic alusrc;
	logic memtoreg;
	logic memwrite;
	logic pcsrc;
	logic [1:0] regsrc;
	logic [1:0] immsrc;
	logic [1:0] alucontrol;
	
	Control_Unit c_u (.clk(clk),
							.rst(rst),
							.cond(instr[31:28]),
							.aluflags(aluflags),
							.op(instr[27:26]),
							.funct(instr[25:20]),
							.rd(instr[15:12]),
							.pcsrc(pcsrc),
							.regwrite(regwrite),
							.memwrite(memwrite),
							.memtoreg(memtoreg),
							.alusrc(alusrc),
							.immsrc(immsrc),
							.regsrc(regsrc),
							.alucontrol(alucontrol)
							);
							
	// datapath
	logic [31:0] pcnext;
	logic [31:0] pcplus4;
	logic [31:0] pcplus8;
	logic [31:0] extimm;
	logic [31:0] srca;
	logic [31:0] srcb;
	logic [31:0] result;
	logic [3:0] ra1;
	logic [3:0] ra2;
	
	logic [31:0] writedata;
	logic [31:0] aluresult;
	
	// next PC logic 
	MUX #(32) pcmux(.entrada1(pcplus4), 
						.entrada2(result-32'b1),
						.selector(pcsrc), 
						.salida(pcnext)
						);
						
	flopr #(32) pcreg(.clk(clk),
							.rst(rst),
							.d(pcnext), 
							.q(pc)
							);
							
	adder #(32) pcadd1(.a(pc), 
							.b(32'b001), 
							.y(pcplus4)
							);
							
	adder #(32) pcadd2(.a(pcplus4), 
							.b(32'b001), 
							.y(pcplus8)
							);
	
	// register file logic
	MUX #(4) ra1mux(.entrada1(instr[19:16]),
						.entrada2(4'b1111), 
						.selector(regsrc[0]), 
						.salida(ra1)
						);
						
	MUX #(4) ra2mux(.entrada1(instr[3:0]), 
						.entrada2(instr[15:12]), 
						.selector(regsrc[1]), 
						.salida(ra2)
						);
	
	Register_File rf(.clk(clk), 
						.we3(regwrite), 
						.a1(ra1), 
						.a2(ra2),
						.a3(instr[15:12]), 
						.wd3(result), 
						.r15(pcplus8), 
						.rd1(srca), 
						.rd2(writedata)
						);
						
	MUX #(32) resmux(.entrada1(aluresult), 
						.entrada2({24'b0, readdata[7:0]}), 
						.selector(memtoreg), 
						.salida(result)
						);
						
	extend ext(.imm(instr[23:0]), 
					.immsrc(immsrc), 
					.extimm(extimm)
					);
	
	// ALU logic 
	MUX #(32) srcbmux(.entrada1(writedata), 
							.entrada2(extimm), 
							.selector(alusrc), 
							.salida(srcb)
							);
							
	ALU alu(.src1(srca), 
				.src2(srcb), 
				.alucontrol(alucontrol),
				.num(aluresult),
				.aluflags(aluflags)
				);
	
	
	Instruction_Memory imem(.address(pc),
									.clock(clk),
									.q(instr));
	
	data_memory dmem (.address_a(aluresult),
							.address_b(dataadr_b),
							.clock(clk),
							.data_a(writedata),
							.data_b(writedata_b),
							.wren_a(memwrite),
							.wren_b(memwrite_b),
							.q_a(readdata),
							.q_b(ascii));
endmodule