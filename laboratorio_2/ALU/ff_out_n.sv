module ff_out_n #(parameter n = 4) (input logic neg,
												input logic cero,
												input logic carry,
												input logic des,
												input logic [1:0] [3:0] num,
												input logic [6:0] mode_seg,
												input logic [1:0] [6:0] out,
												input logic clk,
												input logic reset,
												output logic out_neg,
												output logic out_cero,
												output logic out_carry,
												output logic out_des,
												output logic [1:0] [3:0] out_num,
												output logic [6:0] out_mode_seg,
												output logic [1:0] [6:0] out_out);
						
	genvar i;
	
	generate
		for (i = 0; i < 13; i = i + 1) begin:bit_
			if (i >= 7) begin
				ff_out register_out_(.neg(neg),
											.cero(cero),
											.carry(carry),
											.des(des),
											.num(num[1][3]),
											.mode_seg(mode_seg[6]),
											.out(out[1][6]),
											.reset(reset),
											.clk(clk),
											.out_neg(out_neg),
											.out_cero(out_cero),
											.out_carry(out_carry),
											.out_des(out_des),
											.out_num(out_num[1][3]),
											.out_mode_seg(out_mode_seg[6]),
											.out_out(out_out[1][6]));
			end else if (i > 3) begin
				ff_out register_out_(.neg(neg),
											.cero(cero),
											.carry(carry),
											.des(des),
											.num(num[1][i/3]),
											.mode_seg(mode_seg[i]),
											.out(out[0][i]),
											.reset(reset),
											.clk(clk),
											.out_neg(out_neg),
											.out_cero(out_cero),
											.out_carry(out_carry),
											.out_des(out_des),
											.out_num(out_num[1][i/3]),
											.out_mode_seg(out_mode_seg[i]),
											.out_out(out_out[0][i]));
			end else begin
				ff_out register_out_(.neg(neg),
											.cero(cero),
											.carry(carry),
											.des(des),
											.num(num[0][i]),
											.mode_seg(mode_seg[i]),
											.out(out[0][i]),
											.reset(reset),
											.clk(clk),
											.out_neg(out_neg),
											.out_cero(out_cero),
											.out_carry(out_carry),
											.out_des(out_des),
											.out_num(out_num[0][i]),
											.out_mode_seg(out_mode_seg[i]),
											.out_out(out_out[0][i]));
			end
		end
	endgenerate
	
	
endmodule