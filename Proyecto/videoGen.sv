module videoGen(input logic [9:0] x, y,
					 input logic [7:0] current_char, // Entrada para la letra actual
					 output logic [7:0] r, g, b);
	
	logic pixel;
	//logic pixel, inrect;
	// Given y position, choose a character to display
	// then look up the pixel value from the character ROM
	// and display it in red or blue.Also draw a green rectangle.
	
	
	//chargenrom chargenromb(y[8:3] + 8'd65, x[2:0], y[2:0], pixel);
		
	
	//assign {r, b} = (y[3]==0) ? {{8{pixel}},8'h00} : {8'h00,{8{pixel}}};
	
	
	chargenrom chargenromb(current_char, x[2:0], y[2:0], pixel);
	//assign b = {8'h00, 8'h00, pixel[7:0]};
   //assign g = 8'h00; // Puedes ajustar esto si necesitas un color diferente
	
	// Asignación de colores basados en el valor de pixel
   // Aquí asumimos que `pixel` es un bit (0 o 1), por lo que debe ser convertido a un byte de 8 bits.
   assign r = (y[3] == 0) ? {8{pixel}} : 8'h00;
   assign b = (y[3] != 0) ? {8{pixel}} : 8'h00;
   assign g = 8'h00; // Color verde apagado
	
endmodule
