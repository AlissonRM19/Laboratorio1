module conexion_vga (input logic clk,
							input logic en_put_barcos,
							input logic en_attack,
							input logic en_pc_attack,
							input logic [3:0] matriz_pc [4:0] [4:0],
							input logic [3:0] matriz_player [4:0] [4:0],
							input logic [2:0] posicion_x_move,
							input logic [2:0] posicion_y_move,
							input logic [2:0] posicion_x_attack,
							input logic [2:0] posicion_y_attack,
							//extras
							input logic [3:0] matriz_player_temp [4:0] [4:0],
							output logic [3:0] matriz_pc_final [4:0] [4:0],
							output logic [3:0] matriz_player_final [4:0] [4:0]
							);

	logic [3:0] temp_pc [4:0] [4:0];
	logic [3:0] temp_player [4:0] [4:0];
							
	always @(clk) begin
		if (en_put_barcos) begin
			temp_pc = matriz_pc;
			temp_player = matriz_player_temp;
			temp_player[posicion_y_move][posicion_x_move] = 9;
		end else if (en_attack) begin
			temp_player = matriz_player;
			temp_pc = matriz_pc;
			temp_pc[posicion_y_attack][posicion_x_attack] = 9;
		end else if (en_pc_attack) begin
			temp_pc = matriz_pc;
			temp_player = matriz_player;
		end else begin
			temp_pc = '{'{0,0,0,0,0},
						   '{0,0,0,0,0},
							'{0,0,0,0,0},
							'{0,0,0,0,0},
							'{0,0,0,0,0}};
			temp_player = '{'{0,0,0,0,0},
								 '{0,0,0,0,0},
								 '{0,0,0,0,0},
								 '{0,0,0,0,0},
								 '{0,0,0,0,0}};
		end
	end
	
	assign matriz_pc_final = temp_pc;
	assign matriz_player_final = temp_player;

endmodule