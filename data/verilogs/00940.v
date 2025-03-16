module priority_encoder_twos_complement (
    input [3:0] in,
    output reg [1:0] X,
    output reg Y,
    output reg [3:0] out
);

reg [3:0] in_twos_comp;

// Two's complement module
always @(*) begin
    if (in[3] == 1) begin
        in_twos_comp = ~in + 1;
        Y = 1;
    end
    else begin
        in_twos_comp = in;
        Y = 0;
    end
end

// Priority encoder module
always @(*) begin
    case(in_twos_comp)
        4'b0001: X = 0;
        4'b0010: X = 1;
        4'b0100: X = 2;
        4'b1000: X = 3;
        default: X = 2'b11;
    endcase
end

// Output
always @(*) begin
    if (in[3] == 1) begin
        out = in_twos_comp;
    end
    else begin
        out = X;
    end
end

endmodule

module top_module (
    input [3:0] in,
    output reg [1:0] X,
    output reg Y,
    output reg [3:0] out,
    output reg [4:0] sum
);

priority_encoder_twos_complement encoder(in, X, Y, out);

// Adder module
always @(*) begin
    sum = out + X;
end

endmodule