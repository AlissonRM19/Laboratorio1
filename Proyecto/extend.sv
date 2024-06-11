module extend (input logic [1:0] immsrc,
					input logic [23:0] imm,
					output logic [31:0] extimm
					);

	always_comb begin
		case(immsrc)
			2'b00: extimm = {24'b0, imm[7:0]};
			2'b01: extimm = {20'b0, imm[11:0]};
			2'b10: extimm = {{6{imm[23]}}, imm[23:0], 2'b00};
			default: extimm = 32'bx;
endcase
	end
					
endmodule