module binary_multiplier (
    input [7:0] a,
    input [7:0] b,
    output reg [15:0] result
);

reg [7:0] a_reg;
reg [7:0] b_reg;
reg [15:0] product_reg;
reg [3:0] stage;

always @(*) begin
    case (stage)
        0: begin
            a_reg = a;
            b_reg = b;
            product_reg = 0;
        end
        1: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1);
            a_reg = a_reg >> 1;
            stage = 2;
        end
        2: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 3;
        end
        3: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 4;
        end
        4: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 5;
        end
        5: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 6;
        end
        6: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 7;
        end
        7: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 8;
        end
        8: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 9;
        end
        9: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 10;
        end
        10: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 11;
        end
        11: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 12;
        end
        12: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 13;
        end
        13: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 14;
        end
        14: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 15;
        end
        15: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            a_reg = a_reg >> 1;
            stage = 16;
        end
        16: begin
            product_reg = {a_reg[0], 7'b0} + (b_reg << 1) + product_reg;
            result = product_reg;
            stage = 0;
        end
    endcase
end

endmodule