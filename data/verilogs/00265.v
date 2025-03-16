module BRGC_encoder (
    input [3:0] in, // Active-low inputs for the priority encoder
    output reg [3:0] out // 4-bit output for the BRGC of the highest-priority input that is low
);

    // BRGC module instantiation
    BRGC_4bit BRGC_inst (
        .in(in),
        .out(out)
    );

endmodule

module priority_encoder (
    input [3:0] in, // Active-low inputs for the priority encoder
    output reg [1:0] out // 2-bit output for the highest-priority input that is low
);

    always @(*) begin
        casez(~in)
            4'b0000: out = 2'b00;
            4'b0001: out = 2'b01;
            4'b0010: out = 2'b10;
            4'b0011: out = 2'b01;
            4'b0100: out = 2'b11;
            4'b0101: out = 2'b01;
            4'b0110: out = 2'b10;
            4'b0111: out = 2'b01;
            4'b1000: out = 2'b11;
            4'b1001: out = 2'b01;
            4'b1010: out = 2'b10;
            4'b1011: out = 2'b01;
            4'b1100: out = 2'b11;
            4'b1101: out = 2'b01;
            4'b1110: out = 2'b10;
            4'b1111: out = 2'b01;
        endcase
    end

endmodule

module top_module (
    input [3:0] in, // Active-low inputs for the priority encoder
    output reg [3:0] out // 4-bit output for the BRGC of the highest-priority input that is low
);

    wire [1:0] priority;
    wire [3:0] BRGC;

    // Priority encoder module instantiation
    priority_encoder priority_inst (
        .in(in),
        .out(priority)
    );

    // BRGC module instantiation
    BRGC_encoder BRGC_inst (
        .in(in),
        .out(BRGC)
    );

    // Additive functional module
    always @(*) begin
        casez(priority)
            2'b00: out = BRGC[3:0];
            2'b01: out = {BRGC[2],BRGC[3],BRGC[1],BRGC[0]};
            2'b10: out = {BRGC[1],BRGC[0],BRGC[2],BRGC[3]};
            2'b11: out = {BRGC[0],BRGC[1],BRGC[3],BRGC[2]};
        endcase
    end

endmodule