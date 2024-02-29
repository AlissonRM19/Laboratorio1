module ALU_tb;
	
	logic [3:0] in1 = 0;
	logic [3:0] in2 = 0;
	logic [3:0] mode = 0;
	logic neg;
	logic cero;
	logic carry;
	logic des;
	logic [7:0] num;
	logic [1:0] [6:0] out;
	
	ALU #(4) alu_test (.in1(in1),
							 .in2(in2),
							 .mode(mode),
							 .num(num),
							 .neg(neg),
							 .cero(cero),
							 .carry(carry),
							 .des(des),
							 .out(out));

	initial begin
		
		#5;
		mode=5;
		#40;
		in1 = 5;
		in2 = 1;
		#40;
		in1 = 4;
		in2 = 5;
		#40;
		
	end
	
/*
module sumador4bits_tb;
	logic [3:0] Ent1_tb,Ent2_tb;
	logic [3:0] Resultado_tb;
	logic Cout_tb;
	logic [6:0] salida7seg0_tb, salida7seg1_tb;
	
	sumadornbits UUT(
		.Ent1(Ent1_tb),
		.Ent2(Ent2_tb),
		.Resultado(Resultado_tb),
		.Cout(Cout_tb),
		.salida7seg0(salida7seg0_tb),
		.salida7seg1(salida7seg1_tb),
	);
	//Proceso de estimulo 
	initial begin
	
	//Ejemplo 1
	Ent1_tb <= 4'b0110;
	Ent2_tb <= 4'b1010;
	#10;
	
	
	//Ejemplo 2
	Ent1_tb <= 4'b0101;
	Ent2_tb <= 4'b0100;
	#10;
	
	//Detener la simulación
	
	$stop;
end
endmodule*/

	
endmodule
