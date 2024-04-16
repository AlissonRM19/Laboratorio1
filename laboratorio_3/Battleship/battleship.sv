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
						output logic [2:0] posicion_x_move,
						output logic [2:0] posicion_y_move,
						output logic [2:0] posicion_x_attack,
						output logic [2:0] posicion_y_attack
						//output int matriz_player_final [4:0] [4:0],
						//output int matriz_pc_final [4:0] [4:0]
						);
	// Clk Divider
	logic clk_delay;
	
	//VGA
	int matriz_player_final [4:0] [4:0];
	int matriz_pc_final [4:0] [4:0];
	
	// FSM
	logic to;
	logic [2:0] hp_pc;
	logic [2:0] hp_player;
	logic en_cont_seg;
	logic en_put_barcos;
	logic en_player_attack;
	logic en_attack;
	logic en_pc_attack;
	logic end_move_barcos;
	logic end_pc_attack;
	logic end_attack;
	int matriz_pc_begin [4:0] [4:0];
	int matriz_player_begin [4:0] [4:0]; // rows, columns
	
	// Contador Segundos
	int total_seg;
	
	always @(reset) begin
		hp_pc = 1;
		hp_player = 1;
		matriz_player_begin = '{'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0}};
		matriz_pc_begin = '{'{0,0,0,0,0},
								  '{0,0,2,2,0},
								  '{0,0,1,0,0},
								  '{0,0,0,0,0},
								  '{0,0,0,0,0}};
	end
	
	// Instaancia clk_divider
	clk_divider new_clk (.clk(clk),
								.clk_delay(clk_delay));

	// Instancia FSM					
	fsm maquina (.clk(clk),
					 .reset(!reset),
					 .attack(!attack),
					 .to(to),
					 .end_attack(end_attack),
					 .end_move_barcos(end_move_barcos),
					 .end_pc_attack(end_pc_attack),
					 .hp_pc(hp_pc),
					 .hp_player(hp_player),
					 .en_cont_seg(en_cont_seg),
					 .en_put_barcos(en_put_barcos),
					 .en_player_attack(en_player_attack),
					 .en_pc_attack(en_pc_attack),
					 .en_attack(en_attack)
					 );
					
	// Instancia Contador Segundos
	contador_seg contador (.clk(clk),
								  .en_cont_seg(en_cont_seg),
								  .total_seg(total_seg)
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
										 .poner(!poner),
										 .en_put_barcos(en_put_barcos),
										 .barcos(barcos),
										 .matriz_player_begin(matriz_player_begin),
										 .end_move_barcos(end_move_barcos),
										 .matriz_player_temp(matriz_player_final),
										 .posicion_x_move(posicion_x_move),
										 .posicion_y_move(posicion_y_move)
										 );
	
	// Instancia Ataque
	ataque move (.izquierda(!izquierda),
					 .arriba(!arriba),
					 .abajo(!abajo),
					 .derecha(!derecha),
					 .attack(!attack),
					 .reset(!reset),
					 .en_attack(en_attack),
					 .matriz_pc_begin(matriz_pc_begin),
					 .end_attack(end_attack),
					 .matriz_pc_final(matriz_pc_final),
					 .posicion_x_attack(posicion_x_attack),
					 .posicion_y_attack(posicion_y_attack)
					 );
						
endmodule