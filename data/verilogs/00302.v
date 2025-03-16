module mux_256_to_1(
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out
);

wire [7:0] priority;

priority_encoder pe(
    .in(sel),
    .out(priority)
);

assign out = in[(priority*4)+:4];

endmodule

module priority_encoder(
    input [7:0] in,
    output reg [7:0] out
);

always @* begin
    case(in)
        8'b10000000: out = 8'b10000000;
        8'b01000000: out = 8'b01000000;
        8'b00100000: out = 8'b00100000;
        8'b00010000: out = 8'b00010000;
        8'b00001000: out = 8'b00001000;
        8'b00000100: out = 8'b00000100;
        8'b00000010: out = 8'b00000010;
        8'b00000001: out = 8'b00000001;
        default: out = 8'b00000000;
    endcase
end

endmodule