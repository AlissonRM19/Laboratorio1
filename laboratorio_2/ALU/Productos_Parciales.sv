module Productos_Parciales (
	input logic elem1, elem2, fac, Carry_in, 
	output logic SumResult, Carry_out
);
  
  logic partialprod;

  assign partialprod = elem1 & elem2;

  Sumador_completo SCX(
		.A(partialprod), 
		.B(fac), 
		.Cin(Carry_in), 
		.Cout(Carry_out), 
		.Suma(SumResult)
	);

endmodule