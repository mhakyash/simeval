module top_module (
    input [15:0] A,
    input [15:0] B,
    input EN,
    output reg [15:0] Y,
    output overflow,
    output reg [15:0] sum,
    output [15:0] decoder_output
);

    wire [15:0] adder_out;
    wire [3:0] decoder_sel;
    wire decoder_en;

    // Instantiate the 16-bit ripple carry adder module
    ripple_carry_adder adder(
        .A(A),
        .B(B),
        .Cin(1'b0),
        .Sum(adder_out),
        .Cout(overflow)
    );

    // Instantiate the 4-to-16 decoder module
    decoder_4to16 decoder(
        .A(decoder_sel),
        .Y(decoder_output),
        .EN(decoder_en)
    );

    // Assign decoder enable signal
    assign decoder_en = EN;

    // Assign decoder select signal based on adder output
    assign decoder_sel = adder_out[15:12];

    // Assign sum output
    always @(*) begin
        sum = adder_out;
    end

    // Assign Y output
    always @(*) begin
        Y = decoder_output;
    end

endmodule

// 16-bit ripple carry adder module
module ripple_carry_adder (
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output reg [15:0] Sum,
    output reg Cout
);

    reg [15:0] temp;

    always @(A or B or Cin) begin
        temp = A + B + Cin;
        Sum = temp[15:0];
        Cout = temp[16];
    end

endmodule

// 4-to-16 decoder module
module decoder_4to16 (
    input [3:0] A,
    output reg [15:0] Y,
    input EN
);

    always @(A or EN) begin
        if (EN) begin
            case (A)
                4'b0000: Y = 16'b0000000000000001;
                4'b0001: Y = 16'b0000000000000010;
                4'b0010: Y = 16'b0000000000000100;
                4'b0011: Y = 16'b0000000000001000;
                4'b0100: Y = 16'b0000000000010000;
                4'b0101: Y = 16'b0000000000100000;
                4'b0110: Y = 16'b0000000001000000;
                4'b0111: Y = 16'b0000000010000000;
                4'b1000: Y = 16'b0000000100000000;
                4'b1001: Y = 16'b0000001000000000;
                4'b1010: Y = 16'b0000010000000000;
                4'b1011: Y = 16'b0000100000000000;
                4'b1100: Y = 16'b0001000000000000;
                4'b1101: Y = 16'b0010000000000000;
                4'b1110: Y = 16'b0100000000000000;
                4'b1111: Y = 16'b1000000000000000;
            endcase
        end else begin
            Y = 16'b0000000000000000;
        end
    end

endmodule