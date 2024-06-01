module wordGenerator(
    input logic clk,
    input logic [9:0] x, y,
    output logic [7:0] current_char,
	 output logic [7:0] current_char2
);
    parameter string word = "LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT. SED IMPERDIET PLACERAT."; // Define la palabra que quieres mostrar
    parameter string word2 = "FUSCE MAURIS PURUS, ORNARE NON CURSUS QUIS, TRISTIQUE EU ID.SED IMPERDI PLACERAT."; // Define la palabra que quieres mostrar

	 logic [7:0] char_array [0:79]; // Array para la palabra (80 caracteres máximo)
	 logic [7:0] char_array2 [0:79]; // Array para la palabra (80 caracteres máximo)
    integer i;
	 integer j;

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
        for (j = 0; j < 80; j = j + 1) begin
            if (j < word2.len()) begin
                char_array2[j] = word2[j];
            end else begin
                char_array2[j] = 8'd34; // Espacio en ASCII
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
		  end	else begin
            current_char = 8'd32; // Espacio
				current_char2 = 8'd33; // Espacio
        end
    end
endmodule
