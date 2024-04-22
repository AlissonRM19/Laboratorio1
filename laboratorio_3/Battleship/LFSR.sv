module LFSR(
	input clk, rst, 
	output logic [2:0] random);
	
	always @ (posedge clk, posedge rst)
		if(rst)
			random <= 3'hf;
		else
			random <= {random[1:0], (random[2] ^ random[1])};

endmodule