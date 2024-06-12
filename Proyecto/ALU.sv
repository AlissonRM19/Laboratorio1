module ALU #(parameter n = 32) (	input logic [n - 1:0] src1,
											input logic [n - 1:0] src2,
											input logic [1:0] alucontrol,
											output logic [n - 1:0] num,
											output logic [3:0] aluflags
											);

	logic[n - 1:0]	temp_result;
	logic	flag_negative, flag_zero;
	logic	flag_carry, flag_overflow;
	
	
	always_comb
	begin
		case (alucontrol[1:0])
			2'b00:	temp_result <= src1 + src2;
			2'b01:	temp_result <= src1 - src2;
			2'b10:	temp_result <= src1 & src2;
			2'b11:	temp_result <= src1 | src2;
			
			default:	temp_result = 32'b0;
		endcase
	end
	
	always_comb
	begin
		flag_negative = (temp_result[n - 1] == 1'b1) ?	1'b1 : 1'b0;
		flag_zero = (temp_result == 0) ?							1'b1 : 1'b0;
		case (alucontrol[1:0])
			2'b00:
			begin
				flag_carry = (src1 >= src2) ?					1'b1 : 1'b0;
				flag_overflow =	((~src1[n - 1] & ~src2[n - 1] & temp_result[n - 1]) |
									(src1[n - 1] & src2[n - 1] & ~temp_result[n - 1]));
			end
			2'b01:
			begin
				flag_carry = (src1 < src2) ?					1'b1 : 1'b0;
				flag_overflow =	((src1[n - 1] & ~src2[n - 1] & temp_result[n - 1]) |
									(~src1[n - 1] & src2[n - 1] & temp_result[n - 1]));
			end
			
			default:
			begin
				flag_carry = 1'bx;
				flag_overflow = 1'bx;
			end
		endcase
	end
	
	assign num =	temp_result;
	assign aluflags =	{flag_negative, flag_zero,
							flag_carry, flag_overflow};
			
endmodule