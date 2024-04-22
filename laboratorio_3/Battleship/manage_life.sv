module manage_life (	input logic en_put_barcos,
							input logic en_check_life,
							input logic [2:0] barcos,
							input logic [2:0] impact_ship,
							input logic reset,
							output logic [6:0] display_life,
							output logic [2:0] array_life [4:0],
							output logic dead
							);

			
	logic [2:0] temp [4:0];
	logic [6:0] temp_display_life = 7'b1111001;
	logic [2:0] temp_life = 1;
	
	always @(posedge en_put_barcos, posedge en_check_life, posedge reset) begin
		if (en_put_barcos) begin
			case(barcos)
				3'b101: 	begin
								 temp = '{5,4,3,2,1};
								 temp_display_life = 7'b0010010;
								 temp_life = 5;
							end
				3'b100: 	begin
								 temp = '{0,4,3,2,1};
								 temp_display_life = 7'b0011001;
								 temp_life = 4;
							end
				3'b011: 	begin
								 temp = '{0,0,3,2,1};
								 temp_display_life = 7'b0110000;
								 temp_life = 3;
							end
				3'b010: 	begin
								 temp = '{0,0,0,2,1};
								 temp_display_life = 7'b0100100;
								 temp_life = 2;
							end
				3'b001: 	begin
								 temp = '{0,0,0,0,1};
								 temp_display_life = 7'b1111001;
								 temp_life = 1;
							end
				default: begin
								 temp = '{0,0,0,0,1};
								 temp_display_life = 7'b1111001;
								 temp_life = 1;
							end
			endcase
		end else if (reset) begin
			temp_life = 1;
			temp_display_life = 7'b1111001;
		end else begin
			case(impact_ship)
				3'b101: 	begin
								if (temp[4]==1) begin
									temp_life = temp_life - 1;
									temp[4] = 0;
								end else begin
									temp[4] = temp[4] - 1;
								end
							end
				3'b100: 	begin
								if (temp[3]==1) begin
									temp_life = temp_life - 1;
									temp[3] = 0;
								end else begin
									temp[3] = temp[3] - 1;
								end
							end
				3'b011: 	begin
								if (temp[2]==1) begin
									temp_life = temp_life - 1;
									temp[2] = 0;
								end else begin
									temp[2] = temp[2] - 1;
								end
							end
				3'b010: 	begin
								if (temp[1]==1) begin
									temp_life = temp_life - 1;
									temp[1] = 0;
								end else begin
									temp[1] = temp[1] - 1;
								end
							end
				3'b001: 	begin
								temp_life = temp_life - 1;
								temp[0] = 0;
							end
				default: begin
								temp_life = temp_life;
							end
			endcase
			case(temp_life)
            3'b000: temp_display_life = 7'b1000000;  //	Representa 0
            3'b001: temp_display_life = 7'b1111001;  //	Representa 1
            3'b010: temp_display_life = 7'b0100100;  //	Representa 2
            3'b011: temp_display_life = 7'b0110000;  //	Representa 3
            3'b100: temp_display_life = 7'b0011001;  //	Representa 4
            3'b101: temp_display_life = 7'b0010010;  //	Representa 5
			endcase
		end
	end
	
	assign display_life = temp_display_life;
	assign array_life = temp;
	assign dead = (temp_life == 0);

endmodule