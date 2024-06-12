module MUX #(parameter n = 8) (input logic [n-1:0] entrada1,
										input logic [n-1:0] entrada2,
										input logic selector,
										output logic [n-1:0] salida
										);

	assign salida = selector ? entrada2 : entrada1;
										
endmodule