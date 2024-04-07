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
						output logic [2:0] posicion_x,
						output logic [2:0] posicion_y,
						output int matriz_player_final [4:0] [4:0]
						);
	// Clk Divider
	logic clk_delay;
	
	// FSM
	logic to;
	logic [2:0] hp_pc;
	logic [2:0] hp_player;
	logic en_cont_seg;
	logic en_put_barcos;
	logic en_player_attack;
	logic en_move;
	logic en_pc_attack;
	logic end_move_barcos;
	logic end_pc_attack;
	int matriz_pc [4:0] [4:0];
	int matriz_player_begin [4:0] [4:0]; // rows, columns
	
	// Contador Segundos
	int total_seg;
	
	// Movimiento
	/*logic [2:0] posicion_x = 3'b010;
	logic [2:0] posicion_y = 3'b010;*/
	
	always @(reset) begin
		hp_pc = 1;
		hp_player = 1;
		//matriz_pc = 0;
		matriz_player_begin = '{'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0},
										'{0,0,0,0,0}};
		matriz_pc = '{'{0,0,0,0,0},
						  '{0,0,0,0,0},
						  '{0,0,1,0,0},
						  '{0,0,0,0,0},
						  '{0,0,0,0,0}};
	end
	
	// Instaancia clk_divider
	clk_divider new_clk (.clk(clk),
								.clk_delay(clk_delay));

	// Instancia FSM					
	fsm maquina (.clk(clk),
					 .reset(reset),
					 .attack(!attack),
					 .to(to),
					 .end_move_barcos(end_move_barcos),
					 .end_pc_attack(end_pc_attack),
					 .hp_pc(hp_pc),
					 .hp_player(hp_player),
					 .en_cont_seg(en_cont_seg),
					 .en_put_barcos(en_put_barcos),
					 .en_player_attack(en_player_attack),
					 .en_pc_attack(en_pc_attack),
					 .en_move(en_move)
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
										 .matriz_player_temp(matriz_player_final)
										 );
	
	// Instancia Movimiento
	movimiento move (.izquierda(!izquierda),
						  .arriba(!arriba),
						  .abajo(!abajo),
						  .derecha(!derecha),
						  .en_move(en_move),
						  .posicion_x(posicion_x),
						  .posicion_y(posicion_y)
						  );
						
endmodule