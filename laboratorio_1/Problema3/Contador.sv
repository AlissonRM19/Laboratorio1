module Contador #(parameter n = 6) (input logic clk,
												input logic reset,
												input logic mode,
												output logic [1:0] [6:0] out);
												
		integer i = 0;
		logic [1:0] [3:0] num=0;
		initial begin
			out[0]=7'b1000000;
			out[1]=7'b1000000;
		end
		always @ (posedge clk) begin
			if (reset) begin // Reset
				out[0]=7'b1000000;
				out[1]=7'b1000000;
				num=0;
				i = 0;
			end else if (mode) begin // Creciente
				if (i + 1 > 2**n - 1) begin
					i = 0;
					out[0]=7'b1000000;
					out[1]=7'b1000000;
					num = 0;
				end else begin
					if (num[0]==4'b1001) begin
						out[0]=7'b1000000;
						num[0]=4'b0000;
						num[1]=num[1]+1;
						case(num[1])
							4'b0000: out[1] = 7'b1000000;  
							4'b0001: out[1] = 7'b1111001;  
							4'b0010: out[1] = 7'b0100100;  
							4'b0011: out[1] = 7'b0110000;  
							4'b0100: out[1] = 7'b0011001;  
							4'b0101: out[1] = 7'b0010010;  
							4'b0110: out[1] = 7'b0000010;  
							4'b0111: out[1] = 7'b1111000;
							4'b1000: out[1] = 7'b0000000;
							4'b1001: out[1] = 7'b0010000; 
							default: out[1] = 7'b1111111;  
						endcase
						i=i+1;
					end else begin
						num[0]=num[0]+1;
						case(num[0])
							4'b0000: out[0] = 7'b1000000;  
							4'b0001: out[0] = 7'b1111001;  
							4'b0010: out[0] = 7'b0100100;  
							4'b0011: out[0] = 7'b0110000;  
							4'b0100: out[0] = 7'b0011001;  
							4'b0101: out[0] = 7'b0010010;  
							4'b0110: out[0] = 7'b0000010;  
							4'b0111: out[0] = 7'b1111000;
							4'b1000: out[0] = 7'b0000000;
							4'b1001: out[0] = 7'b0010000; 
							default: out[0] = 7'b1111111;  
						endcase
						i=i+1;
					end
				end
			end else begin // Decreciente
				if (i == 0) begin
					i = 0;
					out[0]=7'b1000000;
					out[1]=7'b1000000;
				end else begin
					if (num[0]==4'b0000) begin
						out[0]=7'b0010000;
						num[0]=4'b1001;
						num[1]=num[1]-1;
						case(num[1])
							4'b0000: out[1] = 7'b1000000;  
							4'b0001: out[1] = 7'b1111001;  
							4'b0010: out[1] = 7'b0100100;  
							4'b0011: out[1] = 7'b0110000;  
							4'b0100: out[1] = 7'b0011001;  
							4'b0101: out[1] = 7'b0010010;  
							4'b0110: out[1] = 7'b0000010;  
							4'b0111: out[1] = 7'b1111000;
							4'b1000: out[1] = 7'b0000000;
							4'b1001: out[1] = 7'b0010000; 
							default: out[1] = 7'b1111111;  
						endcase
						i=i-1;
					end else begin
						num[0]=num[0]-1;
						case(num[0])
							4'b0000: out[0] = 7'b1000000;  
							4'b0001: out[0] = 7'b1111001;  
							4'b0010: out[0] = 7'b0100100;  
							4'b0011: out[0] = 7'b0110000;  
							4'b0100: out[0] = 7'b0011001;  
							4'b0101: out[0] = 7'b0010010;  
							4'b0110: out[0] = 7'b0000010;  
							4'b0111: out[0] = 7'b1111000;
							4'b1000: out[0] = 7'b0000000;
							4'b1001: out[0] = 7'b0010000; 
							default: out[0] = 7'b1111111;  
						endcase
						i=i-1;
					end
				end	
			end
		end
		
endmodule