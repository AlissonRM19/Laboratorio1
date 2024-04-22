module barcos_move_pc (	input logic [2:0] random_x,
								input logic [2:0] random_y,
								input logic reset,
								input logic en_put_barcos,
								input logic [2:0] barcos,
								input logic [3:0] matriz_pc_begin [4:0] [4:0],
								output logic end_move_pc_barcos,
								output logic [3:0] matriz_pc_temp [4:0] [4:0]
								);
	
	logic [3:0] temp [4:0] [4:0];
	logic cont = 0;
	logic [2:0] temp_barcos;
	
	always @ (random_x, random_y, en_put_barcos, reset) begin
		if (en_put_barcos) begin
			if (!cont) begin
				temp = matriz_pc_begin;
				temp_barcos = barcos;
				cont = 1;
			end
			case(temp_barcos)
				3'b101: begin
							if (random_y < 5) begin
								temp[random_y][4] = 5;
								temp[random_y][3] = 5;
								temp[random_y][2] = 5;
								temp[random_y][1] = 5;
								temp[random_y][0] = 5;
								temp_barcos = temp_barcos - 1;
							end
						end
				3'b100: begin
							if (random_y < 5  && random_x < 5 && random_x > 2 && temp[random_y][random_x] == 0) begin
								temp[random_y][random_x] = 4;
								temp[random_y][random_x - 1] = 4;
								temp[random_y][random_x - 2] = 4;
								temp[random_y][random_x - 3] = 4;
								temp_barcos = temp_barcos - 1;
							end
						end
				3'b011: begin
							if (random_y < 5  && random_x < 5 && random_x > 1 && temp[random_y][random_x] == 0 && temp[random_y][random_x - 1] == 0) begin
								temp[random_y][random_x] = 3;
								temp[random_y][random_x - 1] = 3;
								temp[random_y][random_x - 2] = 3;
								temp_barcos = temp_barcos - 1;
							end
						end
				3'b010: begin
							if (random_y < 5  && random_x < 5 && random_x > 0 && temp[random_y][random_x] == 0 && temp[random_y][random_x - 1] == 0) begin
								temp[random_y][random_x] = 2;
								temp[random_y][random_x - 1] = 2;
								temp_barcos = temp_barcos - 1;
							end
						end
				3'b001: begin
							if (random_y < 5 && random_x < 5 && temp[random_y][random_x] == 0) begin
								temp[random_y][random_x] = 1;
								temp_barcos = temp_barcos - 1;
							end
						end
				default: temp = temp;
			endcase
		end else if (reset) begin
			cont = 0;
			temp_barcos = 1;
		end else begin
			cont = 0;
		end
	end
	
	assign end_move_pc_barcos = (temp_barcos == 0);
	assign matriz_pc_temp = temp;
	
endmodule

