module Control_Conditional_Check (	input logic [3:0] cond,
												input logic [3:0] flags,
												output logic condex
												);
	
	// Flag 0: neg (n)
	// Flag 1: cero (z)
	// Flag 2: carry (c)
	// Flag 3: des (v)
	
	logic neg, zero, carry, overflow, ge;
	assign {neg, zero, carry, overflow} = flags;
	assign ge = (neg == overflow);
	
	always_comb begin
		case(cond)
			4'b0000: condex = zero;
			4'b0001: condex = ~zero;
			4'b0010: condex = carry;
			4'b0011: condex = ~carry;
			4'b0100: condex = neg;
			4'b0101: condex = ~neg;
			4'b0110: condex = overflow;
			4'b0111: condex = ~overflow;
			4'b1000: condex = carry & ~zero;
			4'b1001: condex = ~(carry & ~zero);
			4'b1010: condex = ge;
			4'b1011: condex = ~ge;
			4'b1100: condex = ~zero & ge;
			4'b1101: condex = ~(~zero & ge);
			4'b1110: condex = 1'b1;
			default: condex = 1'bx;
	end

endmodule