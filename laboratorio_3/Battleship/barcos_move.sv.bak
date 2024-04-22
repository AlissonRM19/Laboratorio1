module barcos_move (input logic izquierda,
						  input logic arriba,
						  input logic abajo,
						  input logic derecha,
						  input logic poner,
						  input logic en_put_barcos,
						  input logic [2:0] barcos,
						  input logic [3:0] matriz_player_begin [4:0] [4:0],
						 output logic end_move_barcos,
						 output logic [3:0] matriz_player_temp [4:0] [4:0],
						 output logic [2:0] posicion_x_move,
						 output logic [2:0] posicion_y_move
						  );
	
	logic [3:0] temp [4:0] [4:0];
	logic cont = 0;
	logic [2:0] temp_barcos;
	logic [2:0] temp_x = 3'b100;
	logic [2:0] temp_y = 3'b100;
	
	always @ (izquierda, arriba, abajo, derecha, en_put_barcos, poner) begin
		if (en_put_barcos) begin
			if (!cont) begin
				temp = matriz_player_begin;
				temp_barcos = barcos;
				cont = 1;
			end
			case(temp_barcos)
				3'b101: begin
							if (arriba && temp_y != 3'b100) begin
								temp_y = temp_y + 1;
							end else if (abajo && temp_y != 0) begin
								temp_y = temp_y - 1;
							end else if (poner) begin
								temp[temp_y][temp_x] = 5;
								temp[temp_y][temp_x - 1] = 5;
								temp[temp_y][temp_x - 2] = 5;
								temp[temp_y][temp_x - 3] = 5;
								temp[temp_y][temp_x - 4] = 5;
								temp_barcos = temp_barcos - 1;
							end
						end
				3'b100: begin
							if (arriba && temp_y != 3'b100) begin
								temp_y = temp_y + 1;
							end else if (abajo && temp_y != 0) begin
								temp_y = temp_y - 1;
							end else if (izquierda && temp_x != 3'b100) begin
								temp_x = temp_x + 1;
							end else if (derecha && temp_x != 3'b011) begin
								temp_x = temp_x - 1;
							end else if (poner && temp[temp_y][temp_x] == 0) begin
								temp[temp_y][temp_x] = 4;
								temp[temp_y][temp_x - 1] = 4;
								temp[temp_y][temp_x - 2] = 4;
								temp[temp_y][temp_x - 3] = 4;
								temp_barcos = temp_barcos - 1;
							end
						end
				3'b011: begin
							if (arriba && temp_y != 3'b100) begin
								temp_y = temp_y + 1;
							end else if (abajo && temp_y != 0) begin
								temp_y = temp_y - 1;
							end else if (izquierda && temp_x != 3'b100) begin
								temp_x = temp_x + 1;
							end else if (derecha && temp_x != 3'b010) begin
								temp_x = temp_x - 1;
							end else if (poner && temp[temp_y][temp_x] == 0 && temp[temp_y][temp_x - 1] == 0) begin
								temp[temp_y][temp_x] = 3;
								temp[temp_y][temp_x - 1] = 3;
								temp[temp_y][temp_x - 2] = 3;
								temp_barcos = temp_barcos - 1;
							end
						end
				3'b010: begin
							if (arriba && temp_y != 3'b100) begin
								temp_y = temp_y + 1;
							end else if (abajo && temp_y != 0) begin
								temp_y = temp_y - 1;
							end else if (izquierda && temp_x != 3'b100) begin
								temp_x = temp_x + 1;
							end else if (derecha && temp_x != 3'b001) begin
								temp_x = temp_x - 1;
							end else if (poner && temp[temp_y][temp_x] == 0 && temp[temp_y][temp_x - 1] == 0) begin
								temp[temp_y][temp_x] = 2;
								temp[temp_y][temp_x - 1] = 2;
								temp_barcos = temp_barcos - 1;
							end
						end
				3'b001: begin
							if (arriba && temp_y != 3'b100) begin
								temp_y = temp_y + 1;
							end else if (abajo && temp_y != 0) begin
								temp_y = temp_y - 1;
							end else if (izquierda && temp_x != 3'b100) begin
								temp_x = temp_x + 1;
							end else if (derecha && temp_x != 0) begin
								temp_x = temp_x - 1;
							end else if (poner && temp[temp_y][temp_x] == 0) begin
								temp[temp_y][temp_x] = 1;
								temp_barcos = temp_barcos - 1;
							end
						end
				default: temp = temp;
			endcase
		end else begin
			cont = 0;
		end
	end
	
	assign end_move_barcos = (temp_barcos == 0);
	assign matriz_player_temp = temp;
	assign posicion_x_move = temp_x;
	assign posicion_y_move = temp_y;
	
endmodule

