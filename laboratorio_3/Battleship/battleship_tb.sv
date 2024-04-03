module battleship_tb;

	logic clk;
	logic reset;
	logic attack;
	logic izquierda;
	logic arriba;
	logic abajo;
	logic derecha;
	logic [2:0] barcos;
	logic [2:0] posicion_x;
	logic [2:0] posicion_y;

	battleship game (.clk(clk),
							.reset(reset),
							.attack(!attack),
							.izquierda(!izquierda),
							.arriba(!arriba),
							.abajo(!abajo),
							.derecha(!derecha),
							.barcos(barcos),
							.posicion_x(posicion_x),
							.posicion_y(posicion_y)
							);
	
	always begin
		#10 clk = ~clk;
	end
	
	initial begin
		clk = 0;
		izquierda = 0;
		arriba = 0;
		abajo = 0;
		derecha = 0;
		reset = 1;
		#10
		
		reset = 0;
		attack = 1;
		#110
		
		attack = 0;
		izquierda = 1;
		#110
		izquierda = 0;
		arriba = 1;
		#110
		arriba = 0;
		izquierda = 1;
		#110
		izquierda = 0;
		arriba = 1;
		#110
		arriba = 0;
		izquierda = 1;
		#110
		izquierda = 0;
		
		#5000
		
		$stop;
	end
	
endmodule