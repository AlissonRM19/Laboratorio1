module mfrecuencia  #(parameter n = 4) (

	input logic clk,
	input logic reset,

	input logic [n-1:0] in1,
	input logic [n-1:0] in2,
	input logic [3:0] mode,

	output logic out_neg,
	output logic out_cero,
	output logic out_carry,
	output logic out_des,
	output logic [1:0] [3:0] out_num,
	output logic [1:0] [6:0] out_out,
	output logic [6:0] out_mode_seg
);

	
	/*logic clk;
	logic reset;

	logic [n-1:0] in1;
	logic [n-1:0] in2;
	logic [3:0] mode;*/
	logic [n-1:0] out_in1;
	logic [n-1:0] out_in2;
	logic [3:0] out_mode;
	
	
	logic neg;
	logic cero;
	logic carry;
	logic des;
	logic [1:0][3:0] num;
	logic [1:0] [6:0] out;
	logic [6:0] mode_seg;
	logic neg1;
	logic cero1;
	logic carry1;
	logic des1;
	logic [1:0] [3:0] num1;
	logic [1:0] [6:0] out1;
	logic [6:0] mode_seg1;
	
	
	ff_in_n #(n) mfrecuencia_in (.in1(in1),
							 .in2(in2),
							 .mode(mode),
							 .clk(clk),
							 .reset(reset),
							 .out1(out_in1),
							 .out2(out_in2),
							 .out_mode(out_mode));
	
	ALU #(n) mfrecuencia_ALU (.in1(out_in1),
							 .in2(out_in2),
							 .mode(out_mode),
							 .num(out_num),
							 .neg(out_neg),
							 .cero(out_cero),
							 .carry(out_carry),
							 .des(out_des),
							 .out(out_out),
							 .mode_seg(out_mode_seg));
							 
	ff_out_n #(n) mfrecuencia_out (.cero(out_cero),
							 .carry(out_carry),
							 .neg(out_neg),
							 .des(out_des),
							 .num(out_num),
							 .mode_seg(out_mode_seg),
							 .out(out_out),
							 .clk(clk),
							 .reset(reset),
							 .out_neg(neg1),
							 .out_cero(cero1),
							 .out_carry(carry1),
							 .out_des(des1),
							 .out_num(num1),
							 .out_mode_seg(mode_seg1),
							 .out_out(out1));	
							 
	
							 
endmodule