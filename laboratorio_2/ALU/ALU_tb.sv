module ALU_tb;
	
	logic [3:0] in1 = 0;
	logic [3:0] in2 = 0;
	logic [3:0] mode = 0;
	logic neg;
	logic cero;
	logic carry;
	logic des;
	logic [7:0] num;
	logic [1:0] [6:0] out;
	
	ALU #(4) alu_test (.in1(in1),
							 .in2(in2),
							 .mode(mode),
							 .num(num),
							 .neg(neg),
							 .cero(cero),
							 .carry(carry),
							 .des(des),
							 .out(out));

	initial begin
		
		#5;
		mode=5;
		#40;
		in1 = 5;
		in2 = 1;
		#40;
		in1 = 4;
		in2 = 5;
		#40;
		
	end
	
endmodule