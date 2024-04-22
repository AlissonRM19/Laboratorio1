module clk_divider (	input logic clk,
							input logic [1:0] tipo,
							output logic clk_delay
							);

	logic [25:0] count = 0;
	logic temp = 0;
	
	always@(posedge clk) begin
		if (tipo == 0) begin
			//if (count == 25'b10111110101111000010000000) begin
			if (count == 25'b00000000000000001111101000) begin
				count = 0;
				temp = ~temp;
			end else begin
				count = count + 1'b1;
			end  
		end else if (tipo == 1) begin
			if (count == 25'b00000000000000000001000110) begin
				count = 0;
				temp = ~temp;
			end else begin
				count = count + 1'b1;
			end 
		end else begin
			if (count == 25'b00000000000000000000011110) begin
				count = 0;
				temp = ~temp;
			end else begin
				count = count + 1'b1;
			end 
		end
	end
	
	assign clk_delay = temp;
		
endmodule