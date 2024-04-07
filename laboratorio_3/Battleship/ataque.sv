module ataque (input logic izquierda,
					input logic arriba,
					input logic abajo,
					input logic derecha,
					input logic reset,
					input logic attack,
					input logic en_attack,
					input int matriz_pc_begin [4:0] [4:0],
				  output logic end_attack,
				  output int matriz_pc_final [4:0] [4:0],
			     output logic [2:0] posicion_x_attack,
				  output logic [2:0] posicion_y_attack);

	int temp [4:0] [4:0];
	logic cont = 0;
	logic temp_end = 0;
	logic [2:0] temp_x = 3'b010;
	logic [2:0] temp_y = 3'b010;
	
	always @ (izquierda, arriba, abajo, derecha, en_attack, attack, reset) begin
		if (en_attack) begin
			if (!cont) begin
				temp = matriz_pc_begin;
				cont = 1;
			end
			if (izquierda && temp_x != 3'b100) begin
				temp_x = temp_x + 1;
			end else if (derecha && temp_x != 0) begin
				temp_x = temp_x - 1;
			end else if (arriba && temp_y != 3'b100) begin
				temp_y = temp_y + 1;
			end else if (abajo && temp_y != 0) begin
				temp_y = temp_y - 1;
			end else if (attack && temp[temp_y][temp_x] < 6) begin
				if (temp[temp_y][temp_x] == 0) begin
					temp[temp_y][temp_x] = 7;
				end else begin
					temp[temp_y][temp_x] = 6;
				end
				temp_end = 1;
			end
		end else if (reset) begin
			cont = 0;
		end else begin
			temp_end = 0;
			temp_x = 3'b010;
			temp_y = 3'b010;
		end
	end
	
	assign matriz_pc_final = temp;
	assign end_attack = temp_end;
	assign posicion_x_attack = temp_x;
	assign posicion_y_attack = temp_y;
	
endmodule