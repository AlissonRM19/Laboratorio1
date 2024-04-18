module fsm (input logic clk,
				input logic reset,
				// inputs
				input logic attack,
				input logic to,
				input logic end_attack,
				input logic end_move_barcos,
				input logic end_move_pc_barcos,
				input logic end_pc_attack,
				input logic dead_pc,
				input logic dead_player,
				//  outputs
				output logic en_put_barcos,
				output logic en_pc_attack,
				output logic en_check_pc_life,
				output logic en_attack,
				output logic en_check_player_life,
				// Prueba
				output logic [6:0] lugar
				);
				
	// FSM
	logic [3:0] estado;
	logic [3:0] siguiente_estado;
	
	// temporales
	
	
	// Movimiendo en la fsm
	always_ff @ (posedge clk or posedge reset) begin
		if (reset) begin
			estado = 4'b0000;
			lugar = 7'b1000000;
		end else begin
			estado = siguiente_estado;
			case(estado)
				4'b0000: begin
							lugar = 7'b1000000;
						end
				4'b0001: begin
							lugar = 7'b1111001;
						end
				4'b010: begin
							lugar = 7'b0100100;
						end
				4'b0011: begin
							lugar = 7'b0110000;
						end
				4'b0100: begin
							lugar = 7'b0011001;
						end
				4'b0101: begin 
							lugar = 7'b0010010;
						end
				4'b0110: begin
							lugar = 7'b0000010;
						end
				4'b0111: begin
							lugar = 7'b1111000;
							end
		endcase
		end
	end

	// Logica de los estados
	always_comb begin
		case(estado)
			4'b0000: begin
						if (attack) begin
							siguiente_estado = 4'b0001;
						end else begin
							siguiente_estado = 4'b0000;
						end
					end
			4'b0001: begin
						if (end_move_barcos && end_move_pc_barcos) begin
							siguiente_estado = 4'b0010;
						end else begin
							siguiente_estado = 4'b0001;
						end
					end
			4'b010: begin
						if (end_attack) begin
							siguiente_estado = 4'b0100;
						end else begin
							siguiente_estado = 4'b0011;
						end
					end
			4'b0011: begin
						if (to) begin
							siguiente_estado = 4'b0101;
						end else begin
							siguiente_estado = 4'b0010;
						end
					end
			4'b0100: begin
						if (dead_pc) begin
							siguiente_estado = 4'b0111;
						end else begin
							siguiente_estado = 4'b0101;
						end
					end
			4'b0101: begin 
							if (end_pc_attack) begin
								siguiente_estado = 4'b0110;
							end else begin
								siguiente_estado = 4'b0101;
							end
						end
			4'b0110: begin
						if (dead_player) begin
							siguiente_estado = 4'b0111;
						end else begin
							siguiente_estado = 4'b0010;
						end
					end
			4'b0111: begin
							siguiente_estado = 4'b0111;
						end
			default: siguiente_estado = 4'b0000;
		endcase
	end

	// Assign de outputs
	assign en_put_barcos = (estado == 4'b0001);
	assign en_attack = (estado == 4'b0010 || estado == 4'b0011);
	assign en_check_pc_life = (estado == 4'b0100);
	assign en_pc_attack = (estado == 4'b0101);
	assign en_check_player_life = (estado == 4'b0110);
	

endmodule