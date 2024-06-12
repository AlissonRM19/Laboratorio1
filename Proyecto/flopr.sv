module flopr #(parameter n = 8) (input logic clk,
											input logic rst, 
											input logic [n-1:0] d,
											output logic [n-1:0] q); 

	always_ff @(posedge clk, posedge rst) 
		if (rst) q <= 0;
		else q <= d;
		
endmodule