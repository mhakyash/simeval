module priority_encoder (
    input [7:0] in,
    output reg [2:0] pos
);
    always @(*) begin
        case (in)
            8'b1_111_111: pos = 3'b000;
            8'b11_111_110: pos = 3'b001;
            8'b111_111_100: pos = 3'b010;
            8'b111_111_000: pos = 3'b011;
            8'b111_110_000: pos = 3'b100;
            8'b111_100_000: pos = 3'b101;
            8'b111_000_000: pos = 3'b110;
            default: pos = 3'b111;
        endcase
    end
endmodule

module adder (
    input [2:0] a,
    input [2:0] b,
    output reg [2:0] sum
);
    always @(*) begin
        sum = a + b;
    end
endmodule

module top_module (
    input [7:0] in1,
    input [7:0] in2,
    output reg [2:0] pos_diff
);
    wire [2:0] pos1, pos2, add_output;

    priority_encoder pe1 (
        .in(in1),
        .pos(pos1)
    );

    priority_encoder pe2 (
        .in(in2),
        .pos(pos2)
    );

    adder add_inst (
        .a(pos1),
        .b(~pos2 + 3'b001),
        .sum(add_output)
    );

    assign pos_diff = add_output;
endmodule