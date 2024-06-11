module flopenr #(parameter n = 8) (input logic clk,
											input logic rst,
											input logic en,
											input logic [n-1:0] d,
											output logic [n-1:0] q
											);
											
	always_ff @(posedge clk, posedge rst)
		if (rst) q <= 0;
		else if (en) q <= d;
endmodule