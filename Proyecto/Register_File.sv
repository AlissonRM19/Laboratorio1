module Register_File (input logic clk,
							input logic [3:0] a1,
							input logic [3:0] a2,
							input logic [3:0] a3,
							input logic [31:0] wd3,
							input logic [31:0] r15,
							output logic [31:0] rd1,
							output logic [31:0] rd2,
							input logic we3
							);

	logic [31:0] register [15:0];
	
	always_ff @(posedge clk) begin
		if (we3) begin
			register[a3] <= wd3;
		end
	end
	
	assign rd1 = (a1 == 4'b1111) ? r15 : register[a1];
	assign rd2 = (a2 == 4'b1111) ? r15 : register[a2];
								
endmodule