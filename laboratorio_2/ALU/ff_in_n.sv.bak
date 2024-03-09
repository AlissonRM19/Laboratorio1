module ff_in_n #(parameter n = 4) (	input logic [n - 1:0] in1,
												input logic [n - 1:0] in2,
												input logic [3:0] mode,
												input logic clk,
												input logic reset,
												output logic [n - 1:0] out1,
												output logic [n - 1:0] out2,
												output logic [3:0] out_mode);

	genvar i;
	generate
		for (i = 0; i < n; i = i + 1) begin:bit_
			ff_in register_in_(	.in1(in1[i]),
										.in2(in2[i]),
										.mode(mode[i]),
										.reset(reset),
										.clk(clk),
										.out1(out1[i]),
										.out2(out2[i]),
										.out_mode(out_mode[i]));
		end
	endgenerate
			
			
			
												
endmodule