module clk_divider (	input logic clk,
							input logic [1:0] tipo,
							output logic clk_delay
							);

	logic [9:0] count = 0;
	logic temp = 0;
	
	always@(posedge clk) begin
		if (tipo == 0) begin
			if (count == 10'b1111101000) begin
				count = 0;
				temp = ~temp;
			end else begin
				count = count + 1;
			end  
		end else if (tipo == 1) begin
			if (count == 10'b0001000110) begin
				count = 0;
				temp = ~temp;
			end else begin
				count = count + 1;
			end 
		end else begin
			if (count == 10'b0000011110) begin
				count = 0;
				temp = ~temp;
			end else begin
				count = count + 1;
			end 
		end
	end
	
	assign clk_delay = temp;
		
endmodule