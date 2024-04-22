module ataque (input logic izquierda,
					input logic arriba,
					input logic abajo,
					input logic derecha,
					input logic reset,
					input logic attack,
					input logic en_attack,
					input logic [2:0] hp_pc [4:0],
					input logic [3:0] matriz_pc_temp [4:0] [4:0],
				  output logic end_attack,
				  output logic [2:0] impact_ship,
				  output logic [3:0] matriz_pc_final [4:0] [4:0],
			     output logic [2:0] posicion_x_attack,
				  output logic [2:0] posicion_y_attack);

	logic [3:0] temp [4:0] [4:0];
	logic temp_end = 0;
	logic [2:0] temp_x = 3'b010;
	logic [2:0] temp_y = 3'b010;
	
	always @ (izquierda, arriba, abajo, derecha, en_attack, attack, reset) begin
		if (en_attack) begin
			if (izquierda && temp_x != 3'b100) begin
				temp_x = temp_x + 1;
			end else if (derecha && temp_x != 0) begin
				temp_x = temp_x - 1;
			end else if (arriba && temp_y != 3'b100) begin
				temp_y = temp_y + 1;
			end else if (abajo && temp_y != 0) begin
				temp_y = temp_y - 1;
			end else if (attack && temp[temp_y][temp_x] == 0) begin
				case (matriz_pc_temp[temp_y][temp_x])
					4'b0000: begin
									temp[temp_y][temp_x] = 6;
									impact_ship = 0;
								end
					4'b0001: begin
									temp[temp_y][temp_x] = 8;
									impact_ship = 1;
								end
					4'b0010: begin
									if (hp_pc[1] == 1) begin
										temp[temp_y][temp_x] = 8;
										temp[temp_y][temp_x-1] = 8;
									end else begin
										temp[temp_y][temp_x] = 7;
									end
									impact_ship = 2;
								end
					4'b0011: begin
									if (hp_pc[2] == 1) begin
										temp[temp_y][temp_x] = 8;
										temp[temp_y][temp_x-1] = 8;
										temp[temp_y][temp_x-2] = 8;
									end else begin
										temp[temp_y][temp_x] = 7;
									end
									impact_ship = 3;
								end
					4'b0100: begin
									if (hp_pc[3] == 1) begin
										temp[temp_y][temp_x] = 8;
										temp[temp_y][temp_x-1] = 8;
										temp[temp_y][temp_x-2] = 8;
										temp[temp_y][temp_x-3] = 8;
									end else begin
										temp[temp_y][temp_x] = 7;
									end
									impact_ship = 4;
								end
					4'b0101: begin
									if (hp_pc[4] == 1) begin
										temp[temp_y][temp_x] = 8;
										temp[temp_y][temp_x-1] = 8;
										temp[temp_y][temp_x-2] = 8;
										temp[temp_y][temp_x-3] = 8;
										temp[temp_y][temp_x-4] = 8;
									end else begin
										temp[temp_y][temp_x] = 7;
									end
									impact_ship = 5;
								end
				endcase
				temp_end = 1;
			end
		end else if (reset) begin
			temp_x = 3'b010;
			temp_y = 3'b010;
			temp_end = 0;
			temp = '{'{0,0,0,0,0},
						'{0,0,0,0,0},
						'{0,0,0,0,0},
						'{0,0,0,0,0},
						'{0,0,0,0,0}};
		end else begin
			temp_end = 0;
			temp_x = 3'b010;
			temp_y = 3'b010;
		end
	end
	
	assign matriz_pc_final = temp;
	assign end_attack = temp_end;
	assign posicion_x_attack = temp_x;
	assign posicion_y_attack = temp_y;
	
endmodule