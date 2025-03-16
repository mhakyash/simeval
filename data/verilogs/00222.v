module top_module (
    input wire clk,
    input wire [15:0] in,
    output reg [7:0] out
);

    // Splitter module
    wire [7:0] out1, out2;
    splitter_module splitter(
        .in(in),
        .out1(out1),
        .out2(out2)
    );

    // Priority encoder module for out1
    wire [2:0] pos1;
    priority_encoder_module encoder1(
        .in(out1),
        .pos(pos1)
    );

    // Priority encoder module for out2
    wire [2:0] pos2;
    priority_encoder_module encoder2(
        .in(out2),
        .pos(pos2)
    );

    // Functional module
    functional_module func(
        .in1(out1),
        .in2(out2),
        .pos1(pos1),
        .pos2(pos2),
        .out(out)
    );

    // Pipeline registers
    reg [7:0] out_reg1, out_reg2;
    reg [2:0] pos_reg1, pos_reg2;

    always @(posedge clk) begin
        out_reg1 <= out1;
        out_reg2 <= out2;
        pos_reg1 <= pos1;
        pos_reg2 <= pos2;
    end

endmodule


module splitter_module (
    input wire [15:0] in,
    output reg [7:0] out1,
    output reg [7:0] out2
);

    assign out1 = in[7:0];
    assign out2 = in[15:8];

endmodule


module priority_encoder_module (
    input wire [7:0] in,
    output reg [2:0] pos
);

    always @(*) begin
        casez(in)
            8'b00000001: pos = 0;
            8'b00000010: pos = 1;
            8'b00000100: pos = 2;
            8'b00001000: pos = 3;
            8'b00010000: pos = 4;
            8'b00100000: pos = 5;
            8'b01000000: pos = 6;
            8'b10000000: pos = 7;
            default: pos = 3'b111;
        endcase
    end

endmodule


module functional_module (
    input wire [7:0] in1,
    input wire [7:0] in2,
    input wire [2:0] pos1,
    input wire [2:0] pos2,
    output reg [7:0] out
);

    always @(*) begin
        case ({pos1, pos2})
            3'b000: out = in1 & in2;
            3'b001: out = in1 & (in2 >> 1);
            3'b010: out = in1 & (in2 >> 2);
            3'b011: out = in1 & (in2 >> 3);
            3'b100: out = (in1 >> 1) & in2;
            3'b101: out = (in1 >> 1) & (in2 >> 1);
            3'b110: out = (in1 >> 2) & (in2 >> 1);
            3'b111: out = (in1 >> 3) & (in2 >> 1);
        endcase
    end

endmodule