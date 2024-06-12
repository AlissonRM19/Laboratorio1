module Text_Processor (input logic clk,
							input logic rst,
							output logic vgaclk,
							output logic hsync, vsync,
							output logic sync_b, blank_b,
							output logic [7:0] r, g, b);

	logic [7:0] ascii;
	logic [7:0] cont; 
	logic [31:0] dataadr_b;
	logic write_enable;
	
	Processor pro (.clk(clk), 
						.rst(rst),
						.writedata_b(0), 
						.dataadr_b(dataadr_b), 
						.memwrite_b(0), 
						.ascii(ascii)
						);
						
	VGA v (.clk(clk),
			.write_enable(write_enable),
			.ascii(ascii),
			.vgaclk(vgaclk),
			.hsync(hsync), 
			.vsync(vsync),
			.sync_b(sync_b), 
			.blank_b(blank_b),
			.r(r),
			.g(g), 
			.b(b)
			);
	
	initial begin
		cont=0;
		dataadr_b=cont+1;
		write_enable=1;
	end
			
	always @(posedge clk) begin
		if (cont==81) begin 
			write_enable=0;
		end else begin
			cont=cont+1;
		end
	end
							
endmodule