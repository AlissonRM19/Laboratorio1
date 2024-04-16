module videoGen(input logic [9:0] x, y,
					 input int matriz_player_final [4:0][4:0],
					 input int matriz_pc_final [4:0][4:0],
					 output logic [7:0] r, g, b);
 
    logic pixel, inrect1, inrect2;
    rectgen rectgen1(inrect1);

	 always_comb begin
	  // Asignación de color negro por defecto
        r = 8'h00;
        g = 8'h00;
        b = 8'h00;
		 if (x == 10'd25 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd295 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x == 10'd79 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x == 10'd133 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x == 10'd187 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x == 10'd241 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 //Hasta aca son las lineas verticales del tablero 1
		 
		 if (x == 10'd345 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd399 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd453 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd507 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd561 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd615 && y >= 10'd50 && y <= 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 //Hasta aqui llegan las paredes verticales del segundo tablero
		 
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd50) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd120) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd190) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd260) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd330) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 //Hasta aqui llegan las lineas horizontales del tablero 2
		 
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd50) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd120) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd190) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd260) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd330) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd400) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 //Hasta aqui llegan las lineas horizontales del tablero 1
		 
	end

endmodule
