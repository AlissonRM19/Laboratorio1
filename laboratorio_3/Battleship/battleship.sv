module battleship (input logic clk,
						input logic reset,
						// inputs
						input logic attack,
						input logic poner,
						input logic izquierda,
						input logic arriba,
						input logic abajo,
						input logic derecha,
						input logic [2:0] barcos,
						//  outputs
						output logic [6:0] life_pc,
						output logic [6:0] life_player,
						output logic vgaclk,
						output logic hsync, vsync,
						output logic sync_b, blank_b,
						output logic [7:0] r, g, b,
						//
						output logic  [6:0] lugar,
						output logic  [6:0] time_s,
						output logic led_0,
						output logic led_1,
						output logic led_2,
						output logic led_3,
						output logic led_4,
						output logic led_5,
						output logic led_6,
						output logic led_7,
						output logic led_8,
						output logic led_9,
						output logic [6:0] impacto,
						output logic x_0, x_1, x_2, y_0, y_1, y_2
						//output logic [2:0] posicion_x_move,
						//output logic [2:0] posicion_y_move,
						//output logic [2:0] posicion_x_attack,
						//output logic [2:0] posicion_y_attack,
						//output logic [3:0] matriz_player_final [4:0] [4:0],
						//output logic [3:0] matriz_pc_final [4:0] [4:0]
						);
	
	logic [3:0] prueba;
	logic [2:0] barcos_poner;
	
	
	// Clk Divider
	logic clk_delay;
	logic clk_delay_x;
	logic clk_delay_y;
	//VGA
	logic [3:0] matriz_player_final [4:0] [4:0];
	logic [3:0] matriz_pc_final [4:0] [4:0];
	
	logic [3:0] matriz_player_vga_b [4:0] [4:0];
	logic [3:0] matriz_pc_vga_b [4:0] [4:0];
	logic [2:0] posicion_x_move;
	logic [2:0] posicion_y_move;
	logic [2:0] posicion_x_attack;
	logic [2:0] posicion_y_attack;
	
	// FSm
	logic to;
	logic dead_pc;
	logic dead_player;
	
	// Attack
	logic [2:0] hp_pc [4:0];
	logic [2:0] impact_ship_pc;
	
	// Attack PC
	logic [2:0] hp_player [4:0];
	logic [2:0] impact_ship_player;
	
	
		//EN
	logic en_put_barcos;
	logic en_attack;
	logic en_pc_attack;
	logic en_check_pc_life;
	logic en_check_player_life;
	
		//END
	logic end_move_barcos;
	logic end_move_pc_barcos;
	logic end_pc_attack;
	logic end_attack;
	
	// Matrices
	logic [3:0] matriz_pc_begin [4:0] [4:0];
	logic [3:0] matriz_player_begin [4:0] [4:0]; // rows, columns
	logic [3:0] matriz_player_temp [4:0] [4:0];
	logic [3:0] matriz_pc_temp [4:0] [4:0];
	
	// Contador Segundos
	logic [3:0] total_seg;
	
	
	//Random Variables
	logic [2:0] random_x;
	logic [2:0] random_y;
	
	always @(reset) begin
		matriz_player_begin = '{'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0}};
		matriz_pc_begin = '{'{0,0,0,0,0},
								  '{0,0,0,0,0},
								  '{0,0,0,0,0},
								  '{0,0,0,0,0},
								  '{0,0,0,0,0}};
	end
	
	// Instaancia clk_divider
	clk_divider new_clk (.clk(clk),
								.tipo(0),
								.clk_delay(clk_delay));

	// Instancia FSM					
	fsm maquina (.clk(clk_delay),
					 .reset(reset),
					 .attack(attack),
					 .to(to),
					 .end_attack(end_attack),
					 .end_move_barcos(end_move_barcos),
					 .end_move_pc_barcos(end_move_pc_barcos),
					 .end_pc_attack(end_pc_attack),
					 .dead_pc(dead_pc),
					 .dead_player(dead_player),
					 .en_put_barcos(en_put_barcos),
					 .en_pc_attack(en_pc_attack),
					 .en_check_pc_life(en_check_pc_life),
					 .en_attack(en_attack),
					 .en_check_player_life(en_check_player_life),
					 .lugar(lugar)
					 );
					
	// Instancia Contador Segundos
	contador_seg contador (.clk(clk_delay),
								  .en_cont_seg(en_attack),
								  .total_seg(total_seg),
								  .time_s(time_s)
								  );
	
	// Instancia Comparador
	comparador comparar (.total_seg(total_seg),
								.to(to)
								);
								
	// Instancia Poner barcos
	barcos_move ordenar_barcos (.izquierda(!izquierda),
										 .arriba(!arriba),
										 .abajo(!abajo),
										 .derecha(!derecha),
										 .poner(poner),
										 .reset(reset),
										 .en_put_barcos(en_put_barcos),
										 .barcos(barcos),
										 .matriz_player_begin(matriz_player_begin),
										 .end_move_barcos(end_move_barcos),
										 .matriz_player_temp(matriz_player_temp),
										 .posicion_x_move(posicion_x_move),
										 .posicion_y_move(posicion_y_move),
										 .barcos_poner(barcos_poner)
										 );
	
	// Life
	manage_life m_life_player (.en_put_barcos(en_put_barcos),
										.en_check_life(en_check_player_life),
										.barcos(barcos),
										.impact_ship(impact_ship_player),
										.reset(reset),
										.display_life(life_player),
										.array_life(hp_player),
										.dead(dead_player)
										);
	manage_life m_life_pc (.en_put_barcos(en_put_barcos),
								.en_check_life(en_check_pc_life),
								.barcos(barcos),
								.impact_ship(impact_ship_pc),
								.reset(reset),
								.display_life(life_pc),
								.array_life(hp_pc),
								.dead(dead_pc)
								);
	
	// Instancia Ataque
	ataque move (.izquierda(!izquierda),
					 .arriba(!arriba),
					 .abajo(!abajo),
					 .derecha(!derecha),
					 .attack(attack),
					 .reset(reset),
					 .en_attack(en_attack),
					 .hp_pc(hp_pc),
					 .impact_ship(impact_ship_pc),
					 .matriz_pc_temp(matriz_pc_temp),
					 .end_attack(end_attack),
					 .matriz_pc_final(matriz_pc_final),
					 .posicion_x_attack(posicion_x_attack),
					 .posicion_y_attack(posicion_y_attack)
					 );
	
	// Instancia Poner barcos PC
	barcos_move_pc ordenar_barcos_pc (	.random_x(random_x-1),
													.random_y(random_y-1),
													.reset(reset),
													.en_put_barcos(en_put_barcos),
													.barcos(barcos),
													.matriz_pc_begin(matriz_pc_begin),
													.end_move_pc_barcos(end_move_pc_barcos),
													.matriz_pc_temp(matriz_pc_temp)
													);
	
	// Instancia Ataque PC
	ataque_pc move_pc (	.random_x(random_x-1),
								.random_y(random_y-1),
								.reset(reset),
								.en_pc_attack(en_pc_attack),
								.hp_player(hp_player),
								.matriz_player_temp(matriz_player_temp),
								.end_pc_attack(end_pc_attack),
								.impact_ship_player(impact_ship_player),
								.matriz_player_final(matriz_player_final),
								.impacto(impacto)
								);
								
								
	//VGA
	conexion_vga conex(.clk(clk_delay),
							.en_put_barcos(en_put_barcos),
							.en_attack(en_attack),
							.en_pc_attack(en_pc_attack),
							.en_check_pc_life(en_check_pc_life),
							.en_check_player_life(en_check_player_life),
							.dead_pc(dead_pc),
							.dead_player(dead_player),
							.matriz_pc(matriz_pc_final),
							.matriz_player(matriz_player_final),
							.posicion_x_move(posicion_x_move),
							.posicion_y_move(posicion_y_move),
							.posicion_x_attack(posicion_x_attack),
							.posicion_y_attack(posicion_y_attack),
							//extras
							.matriz_player_temp(matriz_player_temp),
							.matriz_pc_final(matriz_pc_vga_b),
							.matriz_player_final(matriz_player_vga_b)
							);
							
	vga vv(.clk(clk),
			.dead_pc(dead_pc),
			.dead_player(dead_player),
			.matriz_pc_final(matriz_pc_vga_b),
			.matriz_player_final(matriz_player_vga_b),
			.vgaclk(vgaclk),
			.hsync(hsync), 
			.vsync(vsync),
			.sync_b(sync_b), 
			.blank_b(blank_b),
			.r(r), 
			.g(g), 
			.b(b),
			.prueba(prueba));
					 
					 
	// Randoms Instancias
	clk_divider new_clk_x (.clk(clk),
								.tipo(1),
								.clk_delay(clk_delay_x));
	clk_divider new_clk_y (.clk(clk),
								.tipo(2),
								.clk_delay(clk_delay_y));
	
	LFSR pos_x (.clk(clk_delay_x),
					.rst(reset),
					.random(random_x));
	LFSR pos_y (.clk(clk_delay_y),
					.rst(reset),
					.random(random_y));
					
	assign led_0 = posicion_x_attack[0];
	assign led_1 = posicion_x_attack[1];
	assign led_2 = posicion_x_attack[2];
	assign led_3 = posicion_y_attack[0];
	assign led_4 = posicion_y_attack[1];
	assign led_5 = posicion_y_attack[2];
	assign led_6 = barcos_poner[0];
	assign led_7 = barcos_poner[1];
	assign led_8 = barcos_poner[2];
	assign led_9 = clk_delay;
	assign x_0 = !posicion_x_move[0];
	assign x_1 = !posicion_x_move[1];
	assign x_2 = !posicion_x_move[2];
	assign y_0 = !posicion_y_move[0];
	assign y_1 = !posicion_y_move[1];
	assign y_2 = !posicion_y_move[2];
						
endmodule