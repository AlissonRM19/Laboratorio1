module Processor (input logic clk, 
						input logic rst,
						input logic [31:0] writedata_b, 
						input logic [31:0] dataadr_b, 
						input logic memwrite_b, 
						output logic [7:0] ascii);

	logic [31:0] pc, instr, readdata;
	arm arm(clk, rst, PC, Instr, MemWrite, DataAdr,WriteData, readdata);
	
	Instruction_Memory imem(.address(pc),
									.clock(clk),
									.q(instr));
	
	data_memory dmem (.address_a(),
							.address_b(dataadr_b),
							.clock(clk),
							.data_a(),
							.data_b(writedata_b),
							.wren_a(),
							.wren_b(memwrite_b),
							.q_a(readdata),
							.q_b(ascii));
endmodule