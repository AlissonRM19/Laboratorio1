module battleship_tb;

	logic clk;
	logic reset;
	logic attack;
	/*logic izquierda;
	logic arriba;
	logic abajo;
	logic derecha;*/
	logic [2:0] barcos;
	logic en;

	battleship game (.clk(clk),
							.reset(reset),
							.attack(attack),
							/*.izquierda(izquierda),
							.arriba(arriba),
							.abajo(abajo),
							.derecha(derecha),*/
							.barcos(barcos),
							.en(en)
							);
	
	always begin
		#10 clk = ~clk;
	end
	
	initial begin
		clk = 0;
		reset = 1;
		#10
		
		reset = 0;
		attack = 1;
		#10
		
		attack = 0;
		#1000
		
		$stop;
	end
	
endmodule