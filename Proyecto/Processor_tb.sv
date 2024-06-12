`timescale 1ps/1ps
`default_nettype none
`define TESTING

module Processor_tb ();

	logic clk;
	logic rst;
	logic [31:0] writedata_b;
	logic [31:0] dataadr_b; 
	logic memwrite_b;
	logic [7:0] ascii;
	
	Processor pro (.clk(clk), 
						.rst(rst),
						.writedata_b(writedata_b), 
						.dataadr_b(dataadr_b), 
						.memwrite_b(memwrite_b), 
						.ascii(ascii)
						);
	
	initial begin
		memwrite_b = 0;
		writedata_b = 0;
		dataadr_b = 100;
		rst = 1; # 22; rst = 0;
	end
	always begin
		clk = 1; # 10; clk = 0; # 10;
	end

	always @(negedge clk) begin
		if(dataadr_b === 100 & ascii === 7) begin
			$display("Simulation succeeded");
			$stop; 
		end else if (dataadr_b !== 96) begin
			$display("Simulation failed");
		end
	end
endmodule