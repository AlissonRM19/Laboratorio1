module conexion_vga (input logic clk,
							input logic en_put_barcos,
							input logic en_attack,
							input logic en_pc_attack,
							input logic en_check_pc_life,
							input logic en_check_player_life,
							input logic dead_pc,
							input logic dead_player,
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
							
	always @(clk,en_put_barcos,en_attack,en_pc_attack) begin
		if (en_put_barcos) begin
			temp_player = matriz_player_temp;
			temp_player[posicion_y_move][posicion_x_move] = 9;
		end else if (en_attack || en_check_pc_life) begin
			temp_player = matriz_player;
			temp_pc = matriz_pc;
			temp_pc[posicion_y_attack][posicion_x_attack] = 9;
		end else if (en_pc_attack || en_check_player_life || dead_pc || dead_player) begin
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
		/*if (cont==1) begin
			temp_pc = '{'{0,0,0,0,0},
						   '{0,0,0,0,0},
							'{0,0,1,0,0},
							'{0,0,0,0,0},
							'{0,0,0,0,0}};
			temp_player = '{'{2,2,0,0,0},
								 '{0,0,9,0,0},
								 '{0,0,0,0,0},
								 '{0,0,3,3,3},
								 '{0,0,0,0,0}};
			cont=2;
		end else if (cont==2) begin
			temp_pc = '{'{0,0,0,0,0},
						   '{0,0,9,0,0},
							'{0,0,8,8,8},
							'{0,6,7,0,0},
							'{0,0,0,0,0}};
			temp_player = '{'{0,7,6,0,0},
								 '{0,0,8,0,0},
								 '{0,0,0,0,0},
								 '{0,6,7,7,0},
								 '{0,0,0,0,0}};
			cont=3;
		end else if (cont==3) begin
			temp_pc = '{'{8,0,0,0,0},
						   '{0,6,9,6,0},
							'{6,0,8,8,8},
							'{0,6,8,8,0},
							'{0,0,6,0,0}};
			temp_player = '{'{0,7,6,6,0},
								 '{6,6,8,0,6},
								 '{0,0,0,0,0},
								 '{0,6,7,7,0},
								 '{0,0,0,6,0}};
			cont=0;
		end else begin
			temp_pc = '{'{0,0,0,0,0},
						   '{0,0,0,0,0},
							'{0,0,0,1,0},
							'{0,0,0,0,0},
							'{0,0,0,0,0}};
			temp_player = '{'{0,0,0,0,0},
								 '{0,0,0,0,0},
								 '{0,0,0,0,0},
								 '{0,0,0,0,0},
								 '{0,0,0,0,0}};
			cont=1;
		end*/
		/*
		temp_pc = '{'{8,0,0,0,0},
						'{0,6,9,6,0},
						'{6,0,8,8,8},
						'{0,6,8,8,0},
						'{0,0,6,0,0}};
		temp_player = '{'{0,7,6,6,0},
							 '{6,6,8,0,6},
							 '{0,0,0,0,0},
							 '{0,6,7,7,0},
							 '{0,0,0,6,0}};*/
	end
	
	assign matriz_pc_final = temp_pc;
	assign matriz_player_final = temp_player;

endmodule