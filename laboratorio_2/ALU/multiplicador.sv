module multiplicador #(parameter n = 4)(
   input logic [n-1:0] A,
   input logic [n-1:0] B,
   output logic [n-1:0] Result
);

   logic [n-1:0] acumulador;
	logic C_out;

	always_comb begin
	
		 acumulador = 0; // Inicializa el acumulador en 0

		 for (int i = 0; i < n; i = i + 1) begin
		 
			  if (B[i] == 1) begin
			  
			 //Sumador_medio U1(.A(acumulador[i]),.B(AA << i),.Cout(C_out),.Suma(acumulador[i]));

				acumulador = acumulador + (A << i); 
				  
			  end
			  
		 end
		 
	//endgenerate
	
	end


   assign Result = acumulador;

endmodule