module comparador (input int total_seg,
						output to);
			
	assign to = (total_seg >= 4'b1111);
			
endmodule