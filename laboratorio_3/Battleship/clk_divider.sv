module clk_divider (input logic clk,   
						 output logic clk_delay
						 );

	int count = 0;
	logic temp = 0;
	
	always@(posedge clk) begin
			if (count == 5) begin
				count = 0;
				temp = ~temp;
			end else begin
				count = count + 1;
			end                  
		end
	
	assign clk_delay = temp;
		
endmodule