module Contador_tb;

	logic clk=0;
	logic reset;
	logic mode;
	logic [1:0] [6:0] out_2;
	logic [1:0] [6:0] out_4;
	logic [1:0] [6:0] out_6;
	
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
	
	initial begin
		reset=0;
		mode=1;
	end

endmodule