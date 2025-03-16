module decoder_mux (
    input A,
    input B,
    input C,
    output Y
);

    // 3-to-8 decoder
    wire [7:0] decoder_out;
    decoder decoder_inst (
        .A(A),
        .B(B),
        .C(C),
        .Y(decoder_out)
    );

    // 4-to-1 multiplexer
    wire [3:0] mux_in;
    assign mux_in[0] = decoder_out[0];
    assign mux_in[1] = decoder_out[1];
    assign mux_in[2] = decoder_out[2];
    assign mux_in[3] = decoder_out[3];
    wire [1:0] select;
    assign select[0] = decoder_out[4];
    assign select[1] = decoder_out[5];
    mux_4to1 mux_inst (
        .in(mux_in),
        .select(select),
        .out(Y)
    );

    // Output is 0 if all inputs are 0
    assign Y = (A | B | C) ? Y : 1'b0;

endmodule

// 3-to-8 decoder module
module decoder (
    input A,
    input B,
    input C,
    output [7:0] Y
);
    assign Y = {~(A & B & C), ~(A & B & ~C), ~(A & ~B & C), ~(A & ~B & ~C), 
               ~(~A & B & C), ~(~A & B & ~C), ~(~A & ~B & C), ~(~A & ~B & ~C)};
endmodule

// 4-to-1 multiplexer module
module mux_4to1 (
    input [3:0] in,
    input [1:0] select,
    output reg Y
);
    always @ (select or in) begin
        case (select)
            2'b00: Y = in[0];
            2'b01: Y = in[1];
            2'b10: Y = in[2];
            2'b11: Y = in[3];
        endcase
    end
endmodule