module VGA (input logic clk,
input logic write_enable,
input logic [7:0] ascii,
output logic vgaclk, // 25.175 MHz VGA clock
output logic hsync, vsync,
output logic sync_b, blank_b, // To monitor & DAC
output logic [7:0] r, g, b); // To video DAC


	logic [9:0] x, y;
	logic [7:0] current_char; // Letra actual a mostrar
   logic [7:0] current_charM; // Letra actual a mostrar modificada



	// Use a PLL to create the 25.175 MHz VGA pixel clock
	// 25.175 MHz clk period = 39.772 ns
	// Screen is 800 clocks wide by 525 tall, but only 640 x 480 used
	// HSync = 1/(39.772 ns *800) = 31.470 kHz
	// Vsync = 31.474 kHz / 525 = 59.94 Hz (~60 Hz refresh rate)

	pll vgapll(.refclk(clk), .outclk_0(vgaclk));

	// Generate monitor timing signals
	vgaController vgaCont(vgaclk, hsync, vsync, sync_b, blank_b, x, y);
	wordGenerator wordGen(clk, x, y, current_char); // Instancia del generador de palabras
	conexion conexM(clk, ascii,write_enable, x, y, current_charM); // Instancia del modulo de conexion

	// User-defined module to determine pixel color
	videoGen videoGen(x, y, current_char,current_charM, r, g, b);

endmodule

