module Contador_tb;

	logic clk;
	logic reset;
	logic mode;
	logic [1:0] out_2;
	logic [3:0] out_4;
	logic [5:0] out_6;
	
	Contador #(2) test_2 (
		.clk(clk),
		.reset(reset),
		.mode(mode),
		.out(out_2)
	);
	
	Contador #(4) test_4 (
		.clk(clk),
		.reset(reset),
		.mode(mode),
		.out(out_4)
	);
	
	Contador #(6) test_6 (
		.clk(clk),
		.reset(reset),
		.mode(mode),
		.out(out_6)
	);

endmodule