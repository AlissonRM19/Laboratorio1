module Contador #(parameter n = 6) (input logic clk,
												input logic reset,
												input logic mode,
												output logic [n-1:0] out);
												
		integer i = 0;
		always @ (posedge clk) begin
			if (reset) begin // Reset
				out = 0;
				i = 0;
			end else if (mode) begin // Creciente
				if (i + 1 > 2**n - 1) begin
					i = 0;
					out = i;
				end else begin
					i = i + 1;
					out = i;
				end
			end else begin // Decreciente
				if (i == 0) begin
					i = 0;
					out = i;
				end else begin
					i = i - 1;
					out = i;
				end	
			end
			
		end
		
endmodule