module multiplicador (input logic [3:0]Inp1, Inp2, output logic [7:0]Product);

	  logic [3:0] patials[3:0]; 
	  logic [4:0] bitcarry[2:0];
	  logic [3:0] merge_vector[1:0];
	  logic varr;

	  genvar i, j;

	  //Productos parciales
	  generate
		  for (i = 0; i < 4; i = i + 1) begin : Gen_Partial_F
			 for (j = 0; j < 4; j = j + 1) begin : Gen_Partial_C
				  assign  patials[i][j] = Inp1[i] & Inp2[j];
			 end
		  end
		endgenerate

		//Matriz de resultados
		assign Product[0] = patials[0][0];

		
		Sumador_medio SM0L1(patials[0][1], patials[1][0], bitcarry[0][0], Product[1]);
		Sumador_medio SM1L1(patials[0][2], patials[1][1], bitcarry[0][1], merge_vector[0][0]);
		Sumador_medio SM2L1(patials[0][3], patials[1][2], bitcarry[0][2], merge_vector[0][1]);
		Sumador_medio SM3L1(patials[1][3], patials[2][2], bitcarry[0][3], merge_vector[0][2]);
		Sumador_medio SM4L1(patials[2][3], patials[3][2], bitcarry[0][4], merge_vector[0][3]);

		
		Sumador_completo SC0L2(merge_vector[0][0], patials[2][0], bitcarry[0][0], bitcarry[1][0], Product[2]);
		Sumador_completo SC1L2(merge_vector[0][1], patials[2][1], bitcarry[0][1], bitcarry[1][1], merge_vector[1][0]);
		Sumador_completo SC2L2(merge_vector[0][2], patials[3][1], bitcarry[0][2], bitcarry[1][2], merge_vector[1][1]);
		
		Sumador_medio SM5L2(merge_vector[0][3], bitcarry[0][3], bitcarry[1][3], merge_vector[1][2]);
		Sumador_medio SM6L2(patials[3][3], bitcarry[0][4], bitcarry[1][4], merge_vector[1][3]);

		Sumador_completo SC3L3(merge_vector[1][0], patials[3][0], bitcarry[1][0], bitcarry[2][0], Product[3]);
		Sumador_completo SC4L3(merge_vector[1][1], bitcarry[2][0], bitcarry[1][1], bitcarry[2][1], Product[4]);
		Sumador_completo SC5L3(merge_vector[1][2], bitcarry[2][1], bitcarry[1][2], bitcarry[2][2], Product[5]);
		Sumador_completo SC6L3(merge_vector[1][3], bitcarry[2][2], bitcarry[1][3], bitcarry[2][3], Product[6]);
		
		Sumador_medio SM7L3(bitcarry[1][4], bitcarry[2][3], varr, Product[7]);

endmodule