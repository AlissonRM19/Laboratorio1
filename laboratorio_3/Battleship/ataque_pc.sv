module ataque_pc (input logic [2:0] random_x,
						input logic [2:0] random_y,
						input logic reset,
						input logic en_pc_attack,
						input logic [2:0] hp_player [4:0],
						input logic [3:0] matriz_player_temp [4:0] [4:0],
					  output logic end_pc_attack,
					  output logic [2:0] impact_ship_player,
				     output logic [3:0] matriz_player_final [4:0] [4:0]);

	logic [3:0] temp [4:0] [4:0];
	logic cont = 0;
	logic temp_end = 0;
	
	always @ (random_x, random_y, en_pc_attack, reset) begin
		if (en_pc_attack) begin
			if (!cont) begin
				temp = matriz_player_temp;
				cont = 1;
			end
			if (random_x < 5 && random_y < 5 && temp[random_y][random_x] < 6 && !temp_end) begin
				case (temp[random_y][random_x])
					4'b0000: begin
									temp[random_y][random_x] = 6;
									impact_ship_player = 0;
								end
					4'b0001: begin
									temp[random_y][random_x] = 8;
									impact_ship_player = 1;
								end
					4'b0010: begin
									if (hp_player[1] == 1) begin
										temp[random_y][random_x] = 8;
									end else begin
										temp[random_y][random_x] = 7;
									end
									impact_ship_player = 2;
								end
					4'b0011: begin
									if (hp_player[2] == 1) begin
										temp[random_y][random_x] = 8;
									end else begin
										temp[random_y][random_x] = 7;
									end
									impact_ship_player = 3;
								end
					4'b0100: begin
									if (hp_player[3] == 1) begin
										temp[random_y][random_x] = 8;
									end else begin
										temp[random_y][random_x] = 7;
									end
									impact_ship_player = 4;
								end
					4'b0101: begin
									if (hp_player[4] == 1) begin
										temp[random_y][random_x] = 8;
									end else begin
										temp[random_y][random_x] = 7;
									end
									impact_ship_player = 5;
								end
				endcase
				temp_end = 1;
			end
		end else if (reset) begin
			cont = 0;
		end else begin
			temp_end = 0;
		end
	end
	
	assign matriz_player_final = temp;
	assign end_pc_attack = temp_end;
	
endmodule