module vga(input logic clk,
			input logic [3:0] matriz_pc_final [4:0] [4:0],
			input logic [3:0] matriz_player_final [4:0] [4:0],
			output logic vgaclk, // 25.175 MHz VGA clock
			output logic hsync, vsync,
			output logic sync_b, blank_b, // To monitor & DAC
			output logic [7:0] r, g, b,  // To video DAC
			output logic [3:0] prueba);
	
	
	//Temporales de conexion
	//int matriz_player_final [4:0] [4:0];
	//int matriz_pc_final [4:0] [4:0];
	 
	
	logic [9:0] x, y;
	
	// Use a PLL to create the 25.175 MHz VGA pixel clock
	// 25.175 MHz clk period = 39.772 ns
	// Screen is 800 clocks wide by 525 tall, but only 640 x 480 used
	// HSync = 1/(39.772 ns *800) = 31.470 kHz
	// Vsync = 31.474 kHz / 525 = 59.94 Hz (~60 Hz refresh rate)
	
	pll vgapll(.refclk(clk), .outclk_0(vgaclk));
	// Generate monitor timing signals
	vgaController vgaCont(vgaclk, hsync, vsync, sync_b, blank_b, x, y);
	// User-defined module to determine pixel color
	videoGen videoGen(x, y, matriz_player_final, matriz_pc_final,clk, r, g, b);
	
	assign prueba = matriz_pc_final[2][2];
	
endmodule