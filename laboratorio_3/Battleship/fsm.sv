module fsm (input logic clk,
				input logic reset,
				// inputs
				input logic attack,
				input logic [2:0] barcos_put,
				input logic to,
				input logic [2:0] hp_pc,
				input logic [2:0] hp_player,
				//  outputs
				output logic en_cont_seg,
				output logic en_put_barcos,
				output logic en_player_attack,
				output logic en_move
				);
	
	// FSM
	logic [2:0] estado;
	logic [2:0] siguiente_estado;
	
	// temporales
	
	
	// Movimiendo en la fsm
	always_ff @ (posedge clk or posedge reset) begin
		if (reset) begin
			estado = 3'b000;
		end else begin
			estado = siguiente_estado;
		end
	end

	// Logica de los estados
	always_comb begin
		case(estado)
			3'b000: begin
						if (attack) begin
							siguiente_estado = 3'b001;
						end else begin
							siguiente_estado = 3'b000;
						end
					end
			3'b001: begin
						if (!barcos_put) begin
							siguiente_estado = 3'b010;
						end else begin
							siguiente_estado = 3'b001;
						end
					end
			3'b010: begin
						if (attack) begin
							siguiente_estado = 3'b100;
						end else begin
							siguiente_estado = 3'b011;
						end
					end
			3'b011: begin
						if (to) begin
							siguiente_estado = 3'b101;
						end else begin
							siguiente_estado = 3'b010;
						end
					end
			3'b100: begin
						if (!hp_pc) begin
							siguiente_estado = 3'b111;
						end else begin
							siguiente_estado = 3'b101;
						end
					end
			3'b101: begin
						siguiente_estado = 3'b110;
					end
			3'b110: begin
						if (!hp_player) begin
							siguiente_estado = 3'b111;
						end else begin
							siguiente_estado = 3'b010;
						end
					end
			3'b111: siguiente_estado = 3'b111;
			default: siguiente_estado = 3'b000;
		endcase
	end

	// Assign de outputs
	assign en_cont_seg = (estado == 3'b010 || estado == 3'b011);
	assign en_put_barcos = (estado == 3'b001);
	assign en_player_attack = (estado == 3'b010 || estado == 3'b011);
	assign en_move = (estado == 3'b001 || estado == 3'b010 || estado == 3'b011);

endmodule