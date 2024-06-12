module videoGen(input logic [9:0] x, y,
					 input logic [7:0] current_char, // Entrada para la letra actual
					 input logic [7:0] current_charM, // Entrada para la letra actual modificada
					 output logic [7:0] r, g, b);
	
	logic pixel,pixel2;
	//logic pixel, inrect;
	// Given y position, choose a character to display
	// then look up the pixel value from the character ROM
	// and display it in red or blue.Also draw a green rectangle.

	chargenrom chargenromb(current_char, x[2:0], y[2:0], pixel);
	chargenrom chargenrombM(current_charM, x[2:0], y[2:0], pixel2);
	// Asignación de colores basados en el valor de pixel
   // Aquí asumimos que `pixel` es un bit (0 o 1), por lo que debe ser convertido a un byte de 8 bits.
   //assign r = (y[3] == 0) ? {8{{pixel}|{pixel2}}} : 8'h00;
   //assign b = (y[3] != 0) ? {8{{pixel}|{pixel2}}} : 8'h00;
   //assign g = 8'h00; // Color verde apagado
	
	always @(*) begin
        if (pixel) begin
            r = 8'hFF; // Rojo completo si pixel es 1
        end else begin
            r = 8'h00; // Rojo apagado si pixel es 0
        end
        
        if (pixel2) begin
            b = 8'hFF; // Azul completo si pixel2 es 1
        end else begin
            b = 8'h00; // Azul apagado si pixel2 es 0
        end
        
        g = 8'h00; // Verde apagado (puedes cambiar esta lógica si necesitas usar verde también)
    end
	
endmodule