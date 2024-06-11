module Control_Conditional_Logic (input logic clk,
											input logic rst,
											input logic [3:0] cond,
											input logic [3:0] aluflags,
											input logic [1:0] flagw,
											input logic pcs,
											input logic regw,
											input logic memw,
											output logic pcsrc,
											output logic regwrite,
											output logic memwrite
											);
											
	logic condex;
	logic [3:0] r_flags;
	logic [1:0] r_and;
	
	flopenr #(2)flagreg1(.clk(clk),
								.rst(rst),
								.en(r_and[1]),
								.d(aluflags[3:2]),
								.q(r_flags[3:2])
								);
								
	flopenr #(2)flagreg0(.clk(clk),
								.rst(rst),
								.en(r_and[0]),
								.d(aluflags[1:0]),
								.q(r_flags[1:0])
								);
	
	Control_Conditional_Check ccc(.cond(cond),
											.flags(r_flags),
											.condex(condex)
											);
	
	assign r_and = flagw & {2{condex}};
	assign regwrite = regw & condex;
	assign memwrite = memw & condex;
	assign pcsrc = pcs & condex;

endmodule