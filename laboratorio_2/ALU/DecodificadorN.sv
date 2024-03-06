module DecodificadorN #(parameter n = 4)(
													input logic [1:0] [n-1:0]  num_all,
													output logic [1:0] [6:0] seg
													);

	genvar i;
	logic [1:0] [6:0] temporal1;

	generate 

		for (i = 0; i < n*2 - 1; i = i + 4) begin: for_loop
			DecodificadorBinario U1 (
				.bin(num_all[i/4]),
				.seg(temporal1[i/4])
			);
		end

	endgenerate
	assign seg = temporal1;

endmodule