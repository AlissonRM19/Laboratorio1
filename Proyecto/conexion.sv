module conexion (
    input logic clk,
    input logic [7:0] ascii,
    input logic [9:0] x, y,
    input logic write_enable,
    output logic [7:0] current_charM
);

    // Array para la palabra (80 caracteres máximo)
    logic [7:0] char_arrayM [0:79];
    logic [6:0] char_index; // Índice para el array de caracteres (0-79)

    // Inicialización del índice
    initial begin
        char_index = 0;
    end

    // Lógica secuencial para almacenar caracteres en el array
    always_ff @(posedge clk) begin
        if (write_enable) begin
            if (char_index < 80) begin
                char_arrayM[char_index] = ascii;
                char_index = char_index + 1;
            end
        end
    end

    // Lógica combinacional para determinar el carácter actual
    always @(*) begin
        if (x < 640 && y > 200 && y < 208) begin
            current_charM = char_arrayM[x / 8]; // Cambia cada 8 píxeles horizontales
        end else begin
            current_charM = 8'd32; // Espacio
        end
    end

endmodule
