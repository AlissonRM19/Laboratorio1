module videoGen(input logic [9:0] x, y,
					 input logic [3:0] matriz_player_final [4:0] [4:0],
					 input logic [3:0] matriz_pc_final [4:0] [4:0],
					 input logic dead_pc,
					 input logic dead_player,
					 output logic [7:0] r, g, b);
 
    /*logic pixel, inrect1, inrect2;
    rectgen rectgen1(inrect1);*/
	 

	 always @(*) begin
	  // Asignación de color negro por defecto
        r = 8'h00;
        g = 8'h00;
        b = 8'h00;
		  
		 if (x == 10'd25 && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd295  && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x == 10'd79  && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x == 10'd133 && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x == 10'd187 && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x == 10'd241  && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 //Hasta aca son las lineas verticales del tablero 1
		 
		 if (x == 10'd345  && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd399  && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd453 && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd507  && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd561  && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x == 10'd615 && y >= 10'd100 && y <= 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 //Hasta aqui llegan las paredes verticales del segundo tablero
		 
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd100) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd170) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd240) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd310) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd380) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x >= 10'd345 && x <= 10'd615 && y == 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 //Hasta aqui llegan las lineas horizontales del tablero 2
		 
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd100) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd170) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd240) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd310) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd380) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 if (x >= 10'd25 && x <= 10'd295 && y == 10'd450) begin
				// Si las condiciones se cumplen, pinta la línea de color blanco
					r = 8'hFF;
					g = 8'hFF;
					b = 8'hFF;
		 end
		 //Hasta aqui llegan las lineas horizontales del tablero 1
		 
//----------------------------------------------------------------------------------------------------------------------------
		 //Logica para pintar la casilla 1 del tablero de la pc
		 
		 if(x >= 10'd26 && x <= 10'd78 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_pc_final[4][4] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[4][4] == 1||matriz_pc_final[4][4] == 2 ||matriz_pc_final[4][4] == 3 ||matriz_pc_final[4][4] == 4 ||matriz_pc_final[4][4] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[4][4] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[4][4] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[4][4] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[4][4] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 2 del tablero de la pc
		 
		 if(x >= 10'd80 && x <= 10'd132 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_pc_final[4][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[4][3] == 1||matriz_pc_final[4][3] == 2 ||matriz_pc_final[4][3] == 3 ||matriz_pc_final[4][3] == 4 ||matriz_pc_final[4][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[4][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[4][3] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[4][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[4][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 3 del tablero de la pc
		 
		 if(x >= 10'd134 && x <= 10'd186 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_pc_final[4][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[4][2] == 1||matriz_pc_final[4][2] == 2 ||matriz_pc_final[4][2] == 3 ||matriz_pc_final[4][2] == 4 ||matriz_pc_final[4][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[4][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[4][2] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[4][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[4][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 4 del tablero de la pc
		 
		 if(x >= 10'd188 && x <= 10'd240 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_pc_final[4][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[4][1]== 1||matriz_pc_final[4][1] == 2 ||matriz_pc_final[4][1] == 3 ||matriz_pc_final[4][1] == 4 ||matriz_pc_final[4][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[4][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[4][1] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[4][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[4][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 5 del tablero de la pc
		 
		 if(x >= 10'd242 && x <= 10'd294 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_pc_final[4][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[4][0] == 1||matriz_pc_final[4][0] == 2 ||matriz_pc_final[4][0] == 3 ||matriz_pc_final[4][0] == 4 ||matriz_pc_final[4][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[4][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[4][0] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[4][0] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[4][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		
		//Logica para pintar la casilla 6 del tablero de la pc
		 
		 if(x >= 10'd26 && x <= 10'd78 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_pc_final[3][4] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[3][4] == 1||matriz_pc_final[3][4] == 2 ||matriz_pc_final[3][4] == 3 ||matriz_pc_final[3][4] == 4 ||matriz_pc_final[3][4] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[3][4] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[3][4]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[3][4] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[3][4] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 7 del tablero de la pc
		 
		 if(x >= 10'd80 && x <= 10'd132 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_pc_final[3][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[3][3] == 1||matriz_pc_final[3][3] == 2 ||matriz_pc_final[3][3] == 3 ||matriz_pc_final[3][3] == 4 ||matriz_pc_final[3][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[3][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[3][3] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[3][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[3][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 8 del tablero de la pc
		 
		 if(x >= 10'd134 && x <= 10'd186 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_pc_final[3][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[3][2] == 1||matriz_pc_final[3][2] == 2 ||matriz_pc_final[3][2] == 3 ||matriz_pc_final[3][2] == 4 ||matriz_pc_final[3][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[3][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[3][2]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[3][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[3][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 9 del tablero de la pc
		 
		 if(x >= 10'd188 && x <= 10'd240 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_pc_final[3][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[3][1] == 1||matriz_pc_final[3][1] == 2 ||matriz_pc_final[3][1] == 3 ||matriz_pc_final[3][1] == 4 ||matriz_pc_final[3][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[3][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[3][1] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[3][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[3][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 10 del tablero de la pc
		 
		 if(x >= 10'd242 && x <= 10'd294 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_pc_final[3][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[3][0] == 1||matriz_pc_final[3][0] == 2 ||matriz_pc_final[3][0]== 3 ||matriz_pc_final[3][0] == 4 ||matriz_pc_final[3][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[3][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h0F;
			end
			if (matriz_pc_final[3][0] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[3][0] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[3][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 11 del tablero de la pc
		 
		 if(x >= 10'd26 && x <= 10'd78 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_pc_final[2][4] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[2][4] == 1||matriz_pc_final[2][4] == 2 ||matriz_pc_final[2][4] == 3 ||matriz_pc_final[2][4] == 4 ||matriz_pc_final[2][4] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[2][4] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[2][4] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[2][4] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[2][4] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 12 del tablero de la pc
		 
		 if(x >= 10'd80 && x <= 10'd132 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_pc_final[2][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[2][3] == 1||matriz_pc_final[2][3] == 2 ||matriz_pc_final[2][3] == 3 ||matriz_pc_final[2][3] == 4 ||matriz_pc_final[2][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[2][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[2][3] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[2][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[2][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 13 del tablero de la pc
		 
		 if(x >= 10'd134 && x <= 10'd186 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_pc_final[2][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[2][2] == 1||matriz_pc_final[2][2] == 2 ||matriz_pc_final[2][2] == 3 ||matriz_pc_final[2][2] == 4 ||matriz_pc_final[2][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[2][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[2][2] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[2][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[2][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 14 del tablero de la pc
		 
		 if(x >= 10'd188 && x <= 10'd240 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_pc_final[2][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[2][1] == 1||matriz_pc_final[2][1] == 2 ||matriz_pc_final[2][1] == 3 ||matriz_pc_final[2][1] == 4 ||matriz_pc_final[2][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[2][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[2][1] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[2][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[2][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 15 del tablero de la pc
		 
		 if(x >= 10'd242 && x <= 10'd294 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_pc_final[2][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[2][0] == 1||matriz_pc_final[2][0] == 2 ||matriz_pc_final[2][0] == 3 ||matriz_pc_final[2][0] == 4 ||matriz_pc_final[2][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[2][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[2][0]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[2][0]== 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[2][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 16 del tablero de la pc
		 
		 if(x >= 10'd26 && x <= 10'd78 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_pc_final[1][4] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[1][4] == 1||matriz_pc_final[1][4] == 2 ||matriz_pc_final[1][4] == 3 ||matriz_pc_final[1][4] == 4 ||matriz_pc_final[1][4] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[1][4] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[1][4]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[1][4] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[1][4] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 17 del tablero de la pc
		 
		 if(x >= 10'd80 && x <= 10'd132 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_pc_final[1][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[1][3] == 1||matriz_pc_final[1][3] == 2 ||matriz_pc_final[1][3] == 3 ||matriz_pc_final[1][3] == 4 ||matriz_pc_final[1][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[1][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[1][3]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[1][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[1][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 18 del tablero de la pc
		 
		 if(x >= 10'd134 && x <= 10'd186 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_pc_final[1][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[1][2] == 1||matriz_pc_final[1][2] == 2 ||matriz_pc_final[1][2] == 3 ||matriz_pc_final[1][2] == 4 ||matriz_pc_final[1][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[1][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[1][2]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[1][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[1][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 19 del tablero de la pc
		 
		 if(x >= 10'd188 && x <= 10'd240 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_pc_final[1][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[1][1] == 1||matriz_pc_final[1][1] == 2 ||matriz_pc_final[1][1] == 3 ||matriz_pc_final[1][1] == 4 ||matriz_pc_final[1][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[1][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[1][1]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[1][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[1][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 20 del tablero de la pc
		 
		 if(x >= 10'd242 && x <= 10'd294 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_pc_final[1][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[1][0] == 1||matriz_pc_final[1][0] == 2 ||matriz_pc_final[1][0] == 3 ||matriz_pc_final[1][0] == 4 ||matriz_pc_final[1][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[1][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[1][0]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[1][0] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[1][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 21 del tablero de la pc
		 
		 if(x >= 10'd26 && x <= 10'd78 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_pc_final[0][4] == 0)begin
					r = 8'h00;
					g = 8'h00;
					b = 8'hFF;
				end
				if(matriz_pc_final[0][4] == 1||matriz_pc_final[0][4] == 2 ||matriz_pc_final[0][4] == 3 ||matriz_pc_final[0][4] == 4 ||matriz_pc_final[0][4] == 5)begin
					r = 8'h80;
					g = 8'h80;
					b = 8'h80;
				end
				if (matriz_pc_final[0][4] == 6) begin
					r = 8'hFF;
					g = 8'hFF;
					b = 8'h00;
				end
				if (matriz_pc_final[0][4]== 7) begin
					r = 8'hFF;
					g = 8'h7F;
					b = 8'h00;
				end
				if (matriz_pc_final[0][4] == 8) begin
					r = 8'hFF;
					g = 8'h00;
					b = 8'h00;
				end
				if (matriz_pc_final[0][4] == 9) begin
					r = 8'h00;
					g = 8'hFF;
					b = 8'h00;
				end
			end
		
		//Logica para pintar la casilla 22 del tablero de la pc
		 
		 if(x >= 10'd80 && x <= 10'd132 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_pc_final[0][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[0][3]== 1||matriz_pc_final[0][3] == 2 ||matriz_pc_final[0][3] == 3 ||matriz_pc_final[0][3] == 4 ||matriz_pc_final[0][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[0][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[0][3]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[0][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[0][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 23 del tablero de la pc
		 
		 if(x >= 10'd134 && x <= 10'd186 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_pc_final[0][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[0][2] == 1||matriz_pc_final[0][2] == 2 ||matriz_pc_final[0][2] == 3 ||matriz_pc_final[0][2] == 4 ||matriz_pc_final[0][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[0][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[0][2]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[0][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[0][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 24 del tablero de la pc
		 
		 if(x >= 10'd188 && x <= 10'd240 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_pc_final[0][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[0][1] == 1||matriz_pc_final[0][1] == 2 ||matriz_pc_final[0][1] == 3 ||matriz_pc_final[0][1] == 4 ||matriz_pc_final[0][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[0][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[0][1]==7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[0][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[0][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 25 del tablero de la pc
		 
		 if(x >= 10'd242 && x <= 10'd294 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_pc_final[0][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_pc_final[0][0] == 1||matriz_pc_final[0][0] == 2 ||matriz_pc_final[0][0] == 3 ||matriz_pc_final[0][0] == 4 ||matriz_pc_final[0][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_pc_final[0][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_pc_final[0][0]==7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_pc_final[0][0] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_pc_final[0][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
//----------------------------------------------------------------------------------------------------------------------------
		 //Logica para pintar la casilla 1 del tablero del jugador
		 
		 if(x >= 10'd346 && x <= 10'd398 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_player_final[4][4] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[4][4] == 1||matriz_player_final[4][4] == 2 ||matriz_player_final[4][4] == 3 ||matriz_player_final[4][4] == 4 ||matriz_player_final[4][4] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[4][4] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[4][4] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[4][4] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[4][4] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 2 del tablero del jugador
		 
		 if(x >= 10'd400 && x <= 10'd452 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_player_final[4][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[4][3] == 1||matriz_player_final[4][3] == 2 ||matriz_player_final[4][3] == 3 ||matriz_player_final[4][3] == 4 ||matriz_player_final[4][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[4][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[4][3] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[4][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[4][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 3 del tablero del jugador
		 
		 if(x >= 10'd454 && x <= 10'd506 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_player_final[4][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[4][2] == 1||matriz_player_final[4][2] == 2 ||matriz_player_final[4][2] == 3 ||matriz_player_final[4][2] == 4 ||matriz_player_final[4][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[4][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[4][2] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[4][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[4][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 4 del tablero del jugador
		 
		 if(x >= 10'd508 && x <= 10'd560 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_player_final[4][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[4][1]== 1||matriz_player_final[4][1] == 2 ||matriz_player_final[4][1] == 3 ||matriz_player_final[4][1] == 4 ||matriz_player_final[4][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[4][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[4][1] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[4][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[4][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 5 del tablero del jugador
		 
		 if(x >= 10'd562 && x <= 10'd614 && y >= 10'd101 && y <= 10'd169)begin
			if(matriz_player_final[4][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[4][0] == 1||matriz_player_final[4][0] == 2 ||matriz_player_final[4][0] == 3 ||matriz_player_final[4][0] == 4 ||matriz_player_final[4][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[4][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[4][0] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[4][0] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[4][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		
		//Logica para pintar la casilla 6 del tablero del jugador
		 
		 if(x >= 10'd346 && x <= 10'd398 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_player_final[3][4] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[3][4] == 1||matriz_player_final[3][4] == 2 ||matriz_player_final[3][4] == 3 ||matriz_player_final[3][4] == 4 ||matriz_player_final[3][4] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[3][4] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[3][4]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[3][4] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[3][4] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 7 del tablero del jugador
		 
		 if(x >= 10'd400 && x <= 10'd452 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_player_final[3][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[3][3] == 1||matriz_player_final[3][3] == 2 ||matriz_player_final[3][3] == 3 ||matriz_player_final[3][3] == 4 ||matriz_player_final[3][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[3][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[3][3] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[3][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[3][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 8 del tablero del jugador
		 
		 if(x >= 10'd454 && x <= 10'd506  && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_player_final[3][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[3][2] == 1||matriz_player_final[3][2] == 2 ||matriz_player_final[3][2] == 3 ||matriz_player_final[3][2] == 4 ||matriz_player_final[3][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[3][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[3][2]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[3][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[3][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 9 del tablero del jugador
		 
		 if(x >= 10'd508 && x <= 10'd560 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_player_final[3][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[3][1] == 1||matriz_player_final[3][1] == 2 ||matriz_player_final[3][1] == 3 ||matriz_player_final[3][1] == 4 ||matriz_player_final[3][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[3][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[3][1] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[3][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[3][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 10 del tablero del jugador
		 
		 if(x >= 10'd562 && x <= 10'd614 && y >= 10'd171 && y <= 10'd239)begin
			if(matriz_player_final[3][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[3][0] == 1||matriz_player_final[3][0] == 2 ||matriz_player_final[3][0]== 3 ||matriz_player_final[3][0] == 4 ||matriz_player_final[3][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[3][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[3][0] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[3][0] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[3][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 11 del tablero del jugador
		 
		 if(x >= 10'd346 && x <= 10'd398 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_player_final[2][4] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[2][4] == 1||matriz_player_final[2][4] == 2 ||matriz_player_final[2][4] == 3 ||matriz_player_final[2][4] == 4 ||matriz_player_final[2][4] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[2][4] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[2][4] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[2][4] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[2][4] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 12 del tablero del jugador
		 
		 if(x >= 10'd400 && x <= 10'd452 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_player_final[2][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[2][3] == 1||matriz_player_final[2][3] == 2 ||matriz_player_final[2][3] == 3 ||matriz_player_final[2][3] == 4 ||matriz_player_final[2][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[2][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[2][3] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[2][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[2][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 13 del tablero del jugador
		 
		 if(x >= 10'd454 && x <= 10'd506  && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_player_final[2][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[2][2] == 1||matriz_player_final[2][2] == 2 ||matriz_player_final[2][2] == 3 ||matriz_player_final[2][2] == 4 ||matriz_player_final[2][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[2][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[2][2] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[2][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[2][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 14 del tablero del jugador
		 
		 if(x >= 10'd508 && x <= 10'd560 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_player_final[2][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[2][1] == 1||matriz_player_final[2][1] == 2 ||matriz_player_final[2][1] == 3 ||matriz_player_final[2][1] == 4 ||matriz_player_final[2][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[2][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[2][1] == 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[2][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[2][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 15 del tablero del jugador
		 
		 if(x >= 10'd562 && x <= 10'd614 && y >= 10'd241 && y <= 10'd309)begin
			if(matriz_player_final[2][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[2][0] == 1||matriz_player_final[2][0] == 2 ||matriz_player_final[2][0] == 3 ||matriz_player_final[2][0] == 4 ||matriz_player_final[2][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[2][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[2][0]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[2][0]== 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[2][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 16 del tablero del jugador
		 
		 if(x >= 10'd346 && x <= 10'd398 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_player_final[1][4] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[1][4] == 1||matriz_player_final[1][4] == 2 ||matriz_player_final[1][4] == 3 ||matriz_player_final[1][4] == 4 ||matriz_player_final[1][4] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[1][4] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[1][4]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[1][4] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[1][4] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
		//Logica para pintar la casilla 17 del tablero del jugador
		 
		 if(x >= 10'd400 && x <= 10'd452 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_player_final[1][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[1][3] == 1||matriz_player_final[1][3] == 2 ||matriz_player_final[1][3] == 3 ||matriz_player_final[1][3] == 4 ||matriz_player_final[1][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[1][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[1][3]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[1][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[1][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 18 del tablero del jugador
		 
		 if(x >= 10'd454 && x <= 10'd506  && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_player_final[1][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[1][2] == 1||matriz_player_final[1][2] == 2 ||matriz_player_final[1][2] == 3 ||matriz_player_final[1][2] == 4 ||matriz_player_final[1][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[1][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[1][2]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[1][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[1][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 19 del tablero del jugador
		 
		 if(x >= 10'd508 && x <= 10'd560 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_player_final[1][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[1][1] == 1||matriz_player_final[1][1] == 2 ||matriz_player_final[1][1] == 3 ||matriz_player_final[1][1] == 4 ||matriz_player_final[1][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[1][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[1][1]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[1][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[1][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 20 del tablero del jugador
		 
		 if(x >= 10'd562 && x <= 10'd614 && y >= 10'd311 && y <= 10'd379)begin
			if(matriz_player_final[1][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[1][0] == 1||matriz_player_final[1][0] == 2 ||matriz_player_final[1][0] == 3 ||matriz_player_final[1][0] == 4 ||matriz_player_final[1][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[1][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[1][0]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[1][0] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[1][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 21 del tablero del jugador
		 
		 if(x >= 10'd346 && x <= 10'd398 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_player_final[0][4] == 0)begin
					r = 8'h00;
					g = 8'h00;
					b = 8'hFF;
				end
				if(matriz_player_final[0][4] == 1||matriz_player_final[0][4] == 2 ||matriz_player_final[0][4] == 3 ||matriz_player_final[0][4] == 4 ||matriz_player_final[0][4] == 5)begin
					r = 8'h80;
					g = 8'h80;
					b = 8'h80;
				end
				if (matriz_player_final[0][4] == 6) begin
					r = 8'hFF;
					g = 8'hFF;
					b = 8'h00;
				end
				if (matriz_player_final[0][4]== 7) begin
					r = 8'hFF;
					g = 8'h7F;
					b = 8'h00;
				end
				if (matriz_player_final[0][4] == 8) begin
					r = 8'hFF;
					g = 8'h00;
					b = 8'h00;
				end
				if (matriz_player_final[0][4] == 9) begin
					r = 8'h00;
					g = 8'hFF;
					b = 8'h00;
				end
			end
		
		//Logica para pintar la casilla 22 del tablero del jugador
		 
		 if(x >= 10'd400 && x <= 10'd452 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_player_final[0][3] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[0][3]== 1||matriz_player_final[0][3] == 2 ||matriz_player_final[0][3] == 3 ||matriz_player_final[0][3] == 4 ||matriz_player_final[0][3] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[0][3] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[0][3]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[0][3] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[0][3] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 23 del tablero del jugador
		 
		 if(x >= 10'd454 && x <= 10'd506  && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_player_final[0][2] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[0][2] == 1||matriz_player_final[0][2] == 2 ||matriz_player_final[0][2] == 3 ||matriz_player_final[0][2] == 4 ||matriz_player_final[0][2] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[0][2] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[0][2]== 7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[0][2] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[0][2] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		 
		 //Logica para pintar la casilla 24 del tablero del jugador
		 
		 if(x >= 10'd508 && x <= 10'd560 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_player_final[0][1] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[0][1] == 1||matriz_player_final[0][1] == 2 ||matriz_player_final[0][1] == 3 ||matriz_player_final[0][1] == 4 ||matriz_player_final[0][1] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[0][1] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[0][1]==7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[0][1] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[0][1] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		//Logica para pintar la casilla 25 del tablero del jugador
		 
		 if(x >= 10'd562 && x <= 10'd614 && y >= 10'd381 && y <= 10'd449)begin
			if(matriz_player_final[0][0] == 0)begin
				r = 8'h00;
				g = 8'h00;
				b = 8'hFF;
			end
			if(matriz_player_final[0][0] == 1||matriz_player_final[0][0] == 2 ||matriz_player_final[0][0] == 3 ||matriz_player_final[0][0] == 4 ||matriz_player_final[0][0] == 5)begin
				r = 8'h80;
				g = 8'h80;
				b = 8'h80;
			end
			if (matriz_player_final[0][0] == 6) begin
				r = 8'hFF;
				g = 8'hFF;
				b = 8'h00;
			end
			if (matriz_player_final[0][0]==7) begin
				r = 8'hFF;
				g = 8'h7F;
				b = 8'h00;
			end
			if (matriz_player_final[0][0] == 8) begin
				r = 8'hFF;
				g = 8'h00;
				b = 8'h00;
			end
			if (matriz_player_final[0][0] == 9) begin
				r = 8'h00;
				g = 8'hFF;
				b = 8'h00;
			end
		end
		
	//--------------------------------------------------------------------------------------------------------------------
		//Mensajes del juego
		 
		
		// Declaración de la variable ganar
	//logic [31:0] ganar = 32'h0; // Usando 'logic' para representar un entero de 32 bits inicializado en 0

	// Mensajes del juego

	// El jugador Pierde
	if (x >= 10'd79 && x <= 10'd149 && y >= 10'd15 && y <= 10'd30 && dead_player) begin
		//if (ganar == 32'h0) begin // Comparación con el valor correcto de ganar
			r = 8'hFF;
			g = 8'h00;
			b = 8'h00;
		//end
	end

	// El jugador Gana
	if (x >= 10'd400 && x <= 10'd470 && y >= 10'd15 && y <= 10'd30 && dead_pc) begin
		//if (ganar == 32'h1) begin // Comparación con el valor correcto de ganar
			r = 8'h00;
			g = 8'hFF;
			b = 8'h00;
		//end
	end
		
		  
	end

endmodule



