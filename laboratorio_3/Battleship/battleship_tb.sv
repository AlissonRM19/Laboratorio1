module battleship_tb;

	logic clk;
	logic reset;
	logic attack;
	logic poner;
	logic izquierda;
	logic arriba;
	logic abajo;
	logic derecha;
	logic [2:0] barcos;
	logic [2:0] posicion_x_move;
	logic [2:0] posicion_y_move;
	logic [2:0] posicion_x_attack;
	logic [2:0] posicion_y_attack;
	int matriz_player_final [4:0] [4:0];
	int matriz_pc_final [4:0] [4:0];

	battleship game (.clk(clk),
							.reset(!reset),
							.attack(!attack),
							.poner(!poner),
							.izquierda(!izquierda),
							.arriba(!arriba),
							.abajo(!abajo),
							.derecha(!derecha),
							.barcos(barcos),
							.posicion_x_move(posicion_x_move),
							.posicion_y_move(posicion_y_move),
							.posicion_x_attack(posicion_x_attack),
							.posicion_y_attack(posicion_y_attack),
							.matriz_player_final(matriz_player_final),
							.matriz_pc_final(matriz_pc_final)
							);
	
	always begin
		#10 clk = ~clk;
	end
	
	initial begin
		// Inicio
		clk = 0;
		izquierda = 0;
		arriba = 0;
		abajo = 0;
		derecha = 0;
		attack = 0;
		poner = 0;
		reset = 1;
		#10
		
		// Seleccion de barcos
		reset = 0;
		barcos = 2;
		#10
		
		attack = 1;
		#15
		
		attack = 0;
		#5
		
		// Pone barco 5
		/*poner = 1;
		#10
		poner = 0;
		
		// Pone barco 4
		derecha = 1;
		#10
		derecha = 0;
		abajo = 1;
		#10
		abajo = 0;
		poner = 1;
		#10
		poner = 0;
		
		// Pone barco 3
		derecha = 1;
		#10
		derecha = 0;
		abajo = 1;
		#10
		abajo = 0;
		poner = 1;
		#10
		poner = 0;*/
		
		// Pone barco 2
		derecha = 1;
		#10
		derecha = 0;
		abajo = 1;
		#10
		abajo = 0;
		poner = 1;
		#10
		poner = 0;
		
		// Pone barco 1
		derecha = 1;
		#10
		derecha = 0;
		abajo = 1;
		#10
		abajo = 0;
		poner = 1;
		#10
		poner = 0;
		#10
		
		// Ataque
		derecha = 1;
		#10
		derecha = 0;
		attack = 1;
		#10
		attack = 0;
		#10
		
		$stop;
	end
	
endmodule