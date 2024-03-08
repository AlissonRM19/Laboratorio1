module ff_out (input logic neg,
					input logic cero,
					input logic carry,
					input logic des,
					input logic num,
					input logic mode_seg,
					input logic out,
					input logic clk,
					input logic reset,
					output logic out_neg,
					output logic out_cero,
					output logic out_carry,
					output logic out_des,
					output logic out_num,
					output logic out_mode_seg,
					output logic out_out);
						
	always @(posedge clk or posedge reset) begin
		if (reset)  begin
			out_neg <= 1'b0;
			out_cero <= 1'b0;
			out_carry <= 1'b0;
			out_des <= 1'b0;
			out_num <= 1'b0;
			out_mode_seg <= 1'b0;
			out_out <= 1'b0;
		end else begin
			out_neg <= neg;
			out_cero <= cero;
			out_carry <= carry;
			out_des <= des;
			out_num <= num;
			out_mode_seg <= mode_seg;
			out_out <= out;
		end
	end
endmodule