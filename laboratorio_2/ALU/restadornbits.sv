module restadornbits #(parameter n = 4)
			(input logic [n-1:0]Ent1,
			input logic [n-1:0]Ent2,
			output logic Cout,
			output logic [n:0] Resultado,
			output logic [6:0] salida7seg0,
			output logic [6:0] salida7seg1
);

genvar i;
logic [n:0] temporal1;
logic [n:0] temporal2;

generate 
Restador_medio U1 (
	.A(Ent1[0]),
	.B(Ent2[0]),
	.Cout(temporal1[0]),
	.Resta(temporal2[0])
);

for (i=1; i<n; i= i+1) begin: for_loop
	Restador_completo U2 (
		.Cin(temporal1[i-1]),
		.A(Ent1[i]),
		.B(Ent2[i]),
		.Cout(temporal1[i]),
		.Resta(temporal2[i])
	);
end

endgenerate
assign Resultado = temporal2;
assign Cout = temporal1[n-1];

endmodule