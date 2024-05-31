module ALU_tb;
	
	logic [31:0] src1 = 0;
	logic [31:0] src2 = 0;
	logic [1:0] alucontrol = 0;
	logic neg;
	logic cero;
	logic carry;
	logic des;
	logic [31:0] num;
	
	ALU #(32) alu_test (.src1(src1),
							 .src2(src2),
							 .alucontrol(alucontrol),
							 .num(num),
							 .neg(neg),
							 .cero(cero),
							 .carry(carry),
							 .des(des));

	initial begin
		
		// Suma test
		#5;
		src1 = 4;
		src2 = 5;
		#10;
		src1 = 15;
		src2 = 15;
		#10;
		
		#5;
		alucontrol = 1;
		// Resta test
		#5;
		src1 = 0;
		src2 = 10;
		#10;
		src1 = 15;
		src2 = 9;
		#10;
		
		
		#5;
		alucontrol = 2;
		// AND test
		#5;
		src1 = 15;
		src2 = 0;
		#10;
		src1 = 12;
		src2 = 4;
		#10;
		
		#5;
		alucontrol = 3;
		// Or  test
		#5;
		src1 = 10;
		src2 = 5;
		#10;
		src1 = 0;
		src2 = 0;
		#10;
		
		#5;
		alucontrol = 10; // Error
		#5;
		// Regreso
		alucontrol = 0;
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

	 // Parámetros
    parameter n = 4;

    // Definición de señales
    logic [n-1:0] Inp1, Inp2;
    logic [2*n-1:0] Product;
    logic CarryOut;

    // Instanciación del módulo a probar
    multiplicador #(n) dut (
        .Inp1(Inp1),
        .Inp2(Inp2),
        .Product(Product),
        .CarryOut(CarryOut)
    );


    initial begin
	 
        // Inicialización de entradas
        Inp1 = 4'b1111;
        Inp2 = 4'b1111;
		  
        #100;
		  
		  $display("Input1: %b", Inp1);
        $display("Input2: %b", Inp2);
        $display("Product: %b", Product);
        $display("CarryOut: %b", CarryOut);

        // Test case 1: 0 x 0
        Inp1 = 4'b0011;
        Inp2 = 4'b1100;
		  
        #100;
		  
		  $display("Input1: %b", Inp1);
        $display("Input2: %b", Inp2);
        $display("Product: %b", Product);
        $display("CarryOut: %b", CarryOut);
        // Test case 2: 5 x 3
        Inp1 = 4'b0101;
        Inp2 = 4'b0011;
		  
        #100;
		  $display("Input1: %b", Inp1);
        $display("Input2: %b", Inp2);
        $display("Product: %b", Product);
        $display("CarryOut: %b", CarryOut);

        // Finalización de la simulación
        $stop;
    end

endmodule
*/
	
endmodule
