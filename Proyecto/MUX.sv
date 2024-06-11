module MUX #(parameter n = 4) (input logic [n-1:0] entrada1,
										input logic [n-1:0] entrada2,
										input logic selector,
										output logic [n-1:0] salida
										);

	assign salida = selector ? entrada1 : entrada2;
										
endmodule