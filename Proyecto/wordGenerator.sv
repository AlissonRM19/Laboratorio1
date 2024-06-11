module wordGenerator(
    input logic clk,
    input logic [9:0] x, y,
    output logic [7:0] current_char,
	 output logic [7:0] current_char2,
	 output logic [7:0] current_char3,
	 output logic [7:0] current_char4,
	 output logic [7:0] current_char5,
	 output logic [7:0] current_char6,
	 output logic [7:0] current_char7,
	 output logic [7:0] current_char8,
	 output logic [7:0] current_char9,
	 output logic [7:0] current_char10,
	 output logic [7:0] current_char11,
	 output logic [7:0] current_char12
);
    parameter string word = "LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT. IN QUIS LECTUS VEL SEM."; // Define la palabra que quieres mostrar
    parameter string word2 = "AOREET VOLUTPAT UT VEL QUAM SUSPENDISSE POTENTI VESTIBULUM FERMENTUM NISI LIGULA"; // Define la palabra que quieres mostrar
	 parameter string word3 = "QUIS ELEIFEND NISL PELLENTESQUE VEL SUSPENDISSE ELEIFEND IN TELLUS UT VARIUS NUL"; // Define la palabra que quieres mostrar
	 parameter string word4 = "QUIS ORCI PHARETRA IMPERDIET ENIM NON SOLLICITUDIN ANTE CRAS AT ALIQUET NIBH NUL"; // Define la palabra que quieres mostrar
	 parameter string word5 = "EU CONSEQUAT NULLA FACILISI SUSPENDISSE IN FEUGIAT TELLUS DONEC CONGUE VELIT NEC"; // Define la palabra que quieres mostrar
	 parameter string word6 = "NULLA SCELERISQUE POSUERE INTEGER QUIS EX ORCI PROIN ACCUMSAN NISI VITAE ORCI AC"; // Define la palabra que quieres mostrar
	 parameter string word7 = "PORTA CLASS APTENT TACITI SOCIOSQU AD LITORA TORQUENT PER CONUBIA NOSTRA PER INC"; // Define la palabra que quieres mostrar
	 parameter string word8 = "HIMENAEOS NUNC ACCUMSAN MOLLIS DUI DONEC IN NUNC NON SAPIEN BIBENDUM LUCTUS. UT "; // Define la palabra que quieres mostrar
	 parameter string word9 = "PHARETRA IACULIS RISUS NON FRINGILLA NUNC MALESUADA IN DOLOR VEL LUCTUS IN RISUS"; // Define la palabra que quieres mostrar
	 parameter string word10 = "PURUS SAGITTIS IN LIBERO EGET ALIQUET TRISTIQUE ELIT MAECENAS SUSCIPIT LIBERO UT"; // Define la palabra que quieres mostrar
	 parameter string word11 = "ERAT AUCTOR MOLLIS UT GRAVIDA SUSCIPIT NULLA UT CONVALLIS QUISQUE SEMPER MALESUA"; // Define la palabra que quieres mostrar
	 parameter string word12 = "EFFICITUR FUSCE MOLLIS GRAVIDA CONGUE IN LOREM AUGU POSUERE SEMPER POSUE NE TEMP"; // Define la palabra que quieres mostrar

	 
	 logic [7:0] char_array [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array2 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array3 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array4 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array5 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array6 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array7 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array8 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array9 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array10 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array11 [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array12 [0:79]; // Array para la palabra (80 caracteres máximo)
    integer i;

    initial begin
		
        // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word.len()) begin
                char_array[i] = word[i];
            end else begin
                char_array[i] = 8'd32; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word2.len()) begin
                char_array2[i] = word2[i];
            end else begin
                char_array2[i] = 8'd34; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word3.len()) begin
                char_array3[i] = word3[i];
            end else begin
                char_array3[i] = 8'd36; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word4.len()) begin
                char_array4[i] = word4[i];
            end else begin
                char_array4[i] = 8'd38; // Espacio en ASCII
            end
        end
		  
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word5.len()) begin
                char_array5[i] = word5[i];
            end else begin
                char_array5[i] = 8'd40; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word6.len()) begin
                char_array6[i] = word6[i];
            end else begin
                char_array6[i] = 8'd42; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word7.len()) begin
                char_array7[i] = word7[i];
            end else begin
                char_array7[i] = 8'd44; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word8.len()) begin
                char_array8[i] = word8[i];
            end else begin
                char_array8[i] = 8'd46; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word9.len()) begin
                char_array9[i] = word9[i];
            end else begin
                char_array9[i] = 8'd48; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word10.len()) begin
                char_array10[i] = word10[i];
            end else begin
                char_array10[i] = 8'd50; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word11.len()) begin
                char_array11[i] = word11[i];
            end else begin
                char_array11[i] = 8'd52; // Espacio en ASCII
            end
        end
		  // Inicializa el array con la palabra, agregando espacios al final si es necesario
        for (i = 0; i < 80; i = i + 1) begin
            if (i < word12.len()) begin
                char_array12[i] = word12[i];
            end else begin
                char_array12[i] = 8'd54; // Espacio en ASCII
            end
        end
			 
    end

    // Calcula el índice de la letra a mostrar en función de la posición x
    always @(*) begin
        //if (x < 640 && y < 480) begin
		  if(x<640 && y>6 && y<15) begin
            current_char = char_array[(x / 8) % word.len()]; // Cambia cada 8 píxeles horizontales
				
		  end else if(x<640 && y>15 && y< 23) begin
				current_char = char_array2[(x / 8) % word2.len()];
				
		  end else if(x<640 && y>23 && y< 31) begin
				current_char = char_array3[(x / 8) % word3.len()];
				
		  end else if(x<640 && y>31 && y< 39) begin
				current_char = char_array4[(x / 8) % word4.len()];
				
		  end else if(x<640 && y>39 && y< 47) begin
				current_char = char_array5[(x / 8) % word5.len()];
				
		  end else if(x<640 && y>47 && y< 55) begin
				current_char = char_array6[(x / 8) % word6.len()];
				
		  end else if(x<640 && y>55 && y< 63) begin
				current_char = char_array7[(x / 8) % word7.len()];
				
		  end else if(x<640 && y>63 && y< 71) begin
				current_char = char_array8[(x / 8) % word8.len()];
				
		  end else if(x<640 && y>71 && y< 79) begin
				current_char = char_array9[(x / 8) % word9.len()];
				
		  end else if(x<640 && y>79 && y< 87) begin
				current_char = char_array10[(x / 8) % word10.len()];
				
		  end else if(x<640 && y>87 && y< 95) begin
				current_char = char_array11[(x / 8) % word11.len()];	
				
		  end else if(x<640 && y>95 && y< 103) begin
				current_char = char_array12[(x / 8) % word12.len()];	
				
				
		  end	else begin
            current_char = 8'd32; // Espacio
				current_char2 = 8'd33; // Espacio
				current_char3 = 8'd34; // Espacio
				current_char4 = 8'd35; // Espacio
				current_char5 = 8'd36; // Espacio
				current_char6 = 8'd37; // Espacio
				current_char7 = 8'd38; // Espacio
				current_char8 = 8'd39; // Espacio
				current_char9 = 8'd40; // Espacio
				current_char10 = 8'd41; // Espacio
				current_char11 = 8'd42; // Espacio
				current_char12 = 8'd43; // Espacio


				

        end
    end
endmodule
