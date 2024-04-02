module contador_seg (input logic clk,
							input logic en_cont_seg,
							output int total_seg);
	
	int temp_seg = 0;
							
	always_ff @ (posedge clk) begin
		if (!en_cont_seg) begin
			temp_seg = 0;
		end else begin
			temp_seg = temp_seg + 1;
		end
	end
	
	assign total_seg = temp_seg;
							
endmodule