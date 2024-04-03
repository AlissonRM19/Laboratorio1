module movimiento (input logic izquierda,
						input logic arriba,
						input logic abajo,
						input logic derecha,
						input logic en_move,
						output logic [2:0] posicion_x,
						output logic [2:0] posicion_y);

	logic [2:0] temp_x = 3'b010;
	logic [2:0] temp_y = 3'b010;
	
	always @ (izquierda, arriba, abajo, derecha, en_move) begin
		if (en_move) begin
			if (izquierda && temp_x != 0) begin
				temp_x = temp_x - 1;
			end else if (derecha && temp_x != 3'b100) begin
				temp_x = temp_x + 1;
			end else if (arriba && temp_y != 0) begin
				temp_y = temp_y - 1;
			end else if (abajo && temp_y != 3'b100) begin
				temp_y = temp_y + 1;
			end
		end else begin
			temp_x = 3'b010;
			temp_y = 3'b010;
		end
	end
	
	assign posicion_x = temp_x;
	assign posicion_y = temp_y;
	
endmodule

