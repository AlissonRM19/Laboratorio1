module comparador (input logic [3:0] total_seg,
						output to);
			
	assign to = (total_seg >= 4'b1111);
			
endmodule