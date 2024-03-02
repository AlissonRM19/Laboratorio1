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
		
		// Suma test
		#5;
		in1 = 4;
		in2 = 5;
		#10;
		in1 = 6;
		in2 = 10;
		#10;
		
		#5;
		mode = 1;
		// Resta test
		#5;
		mode = 2;
		// Multiplicacion test
		#5;
		mode = 3;
		// AND test
		#5;
		in1 = 5;
		in2 = 1;
		#10;
		in1 = 4;
		in2 = 5;
		#10;
		
		#5;
		mode = 4;
		// Or  test
		#5;
		mode = 5;
		// Xor test
		#5;
		mode = 6;
		// Shift left test
		#5;
		mode = 7;
		// Shift right test
		#5;
		mode = 8;
		// Division test
		#5;
		mode = 9;
		// Modulo test
		#5;
		mode = 10; // Error
		#5;
		// Regreso
		mode = 0;
		#5;
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

//testbench para la resta
/*
module restadornbits_tb;

	logic [3:0] Ent1_tb,Ent2_tb;
	logic [3:0] Resultado_tb;
	logic Cout_tb;
	logic [6:0] salida7seg0_tb, salida7seg1_tb;

	restadorwnbits UUT(
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


//testbench para la multiplicacion
/*
module multiplier_tb;

    // Parámetros del testbench
    parameter n = 4;

    // Señales de entrada y salida
    logic [n-1:0] A, B;
    logic [n-1:0] Result;

    // Instancia del módulo de multiplicación
    multiplier #(n) dut (
        .A(A),
        .B(B),
        .Result(Result)
    );

    // Proceso de estimulación
    initial begin
        // Caso de prueba 1
        A = 4'b1111;
        B = 4'b1111;
        #60;
        $display("Caso de prueba 1:");
        $display("Operando A: %b", A);
        $display("Operando B: %b", B);
        $display("Resultado: %b", Result);

        // Caso de prueba 2
        A = 4'b0010;
        B = 4'b0010;
        #60;
        $display("Caso de prueba 2:");
        $display("Operando A: %b", A);
        $display("Operando B: %b", B);
        $display("Resultado: %b", Result);

        // Caso de prueba 3
        A = 4'b0011;
        B = 4'b0011;
        #60;
        $display("Caso de prueba 3:");
        $display("Operando A: %b", A);
        $display("Operando B: %b", B);
        $display("Resultado: %b", Result);
        
        // Finaliza la simulación
        $stop;
    end

endmodule
*/
	
endmodule
