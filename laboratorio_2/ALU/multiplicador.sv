module multiplicador #(parameter n = 4) (
	input logic [n-1:0] Inp1, Inp2, 
	output logic [2*n-1:0] Product, 
	output logic CarryOut	       
);

	// Matrices para cálculos intermedios
	logic [n-1:0] suma_array[n-1:0];
	logic [n-1:0] carry_array[n-1:0];
	
	// Matrices para E/S intermedias

	logic [n-1:0] elem1[n-1:0];
	logic [n-1:0] elem2[n-1:0];
	logic [n-1:0] Carry_calc[n-1:0]; // Almacena bits de acarreo calculados durante la multiplicación
	logic [n-1:0] Carry_in[n-1:0]; 	// Almacena bits de acarreo de entrada para cada celda
	logic [n-1:0] SumaResult[n-1:0]; // Almacena resultados de las sumas parciales
	logic [n-1:0] Carry_out[n-1:0]; 	// Almacena bits de acarreo de salida de cada celda

	integer i, j;
	
	
	// Generación de productos parciales
	generate 
	
	genvar x, y;
		for (x = 0; x < n; x = x+1) begin : gen_row
		
			for (y = 0; y < n; y = y+1) begin : gen_column
			
				// Instancia del generador de producto parcial.
				Productos_Parciales PPX(
					elem1[x][y],
					elem2[x][y],
					Carry_calc[x][y],
					Carry_in[x][y],
					SumaResult[x][y],
					Carry_out[x][y]
				);
				
			end 
			
		end
		
	endgenerate
	
	// Calculos mediante asignaciones
	always@* begin 
		for(i = 0; i < n; i = i + 1) begin
          for(j =  0; j < n; j = j + 1) begin
			 
              elem1[i][j] = Inp1[i];
              elem2[i][j] = Inp2[j];
				  
				  
              Carry_calc[i][j] = (i == 0) ? 1'b0 :  	 // Si i es igual a 0, el bit de acarreo para la primera fila es 0, porque no hay acarreo desde la fila anterior
				  
					  (j == (n-1)) ? carry_array[i-1][j] :  // Si j es igual a n-1, se asigna el bit de acarreo de la columna anterior para la misma fila
					  
					  suma_array[i-1][j+1];						 // Si las condiciones no se cumplen, se considera el bit de acarreo proveniente de la operación realizada en j+1
																	    // y en i-1.
				  
				  
              Carry_in[i][j] = (j == 0) ? 1'b0 : 		 // Si j es igual a 0, el bit de acarreo de entrada es 0, entonces no hay acarreo de entrada desde la columna anterior
				  
					  carry_array[i][j-1];				 		 // Si j no es igual a 0, el bit de acarreo de entrada se toma del bit de acarreo en la I pero en la columna anterior j-1
					  

				  // Asignación de matrices de suma y acarreo
              suma_array[i][j] = SumaResult[i][j];
              carry_array[i][j] = Carry_out[i][j];
			
          end
      end
      
		// Asignar los valores de salida
      for(i = 0; i < n; i = i + 1) begin
			Product[i] = suma_array[i][0];
      end
		
      for(i = 1; i < n; i = i + 1) begin
			Product[n+i-1] = suma_array[n-1][i];
		end
		
      Product[2*n-1] = carry_array[n-1][n-1];
		CarryOut = carry_array[n-1][n-1];
		
    end
	
endmodule