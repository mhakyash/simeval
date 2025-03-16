module top_module (
    input clk,
    input reset,
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor,
    output [3:0] Q,
    output reg [3:0] out_sum
);

// AND-OR-XOR circuit
wire [49:0] and_out;
wire [49:0] or_out;
wire [98:0] xor_out;

genvar i;
generate
    for (i = 0; i < 50; i = i + 1) begin : and_gate
        and_gate and_inst (
            .a(in[i*2]),
            .b(in[i*2+1]),
            .y(and_out[i])
        );
    end

    for (i = 0; i < 50; i = i + 1) begin : or_gate
        or_gate or_inst (
            .a(in[i*2]),
            .b(in[i*2+1]),
            .y(or_out[i])
        );
    end

    for (i = 0; i < 99; i = i + 1) begin : xor_gate
        xor_gate xor_inst (
            .a(in[i]),
            .b(in[i+1]),
            .y(xor_out[i])
        );
    end
endgenerate

and_gate and_out_inst (
    .a(and_out),
    .y(out_and)
);

or_gate or_out_inst (
    .a(or_out),
    .y(out_or)
);

xor_gate xor_out_inst (
    .a(xor_out),
    .y(out_xor)
);

// Johnson counter
reg [3:0] johnson_counter = 4'b0000;

always @(posedge clk) begin
    if (reset) begin
        johnson_counter <= 4'b0000;
    end else begin
        case (johnson_counter)
            4'b0000: johnson_counter <= 4'b0001;
            4'b0001: johnson_counter <= 4'b0011;
            4'b0011: johnson_counter <= 4'b0111;
            4'b0111: johnson_counter <= 4'b1111;
            4'b1111: johnson_counter <= 4'b1110;
            4'b1110: johnson_counter <= 4'b1100;
            4'b1100: johnson_counter <= 4'b1000;
            4'b1000: johnson_counter <= 4'b0000;
        endcase
    end
end

assign Q = johnson_counter;

// Additional functional module
always @(*) begin
    case (johnson_counter)
        4'b0001: out_sum = out_xor + 4'b0001;
        4'b0011: out_sum = out_xor + 4'b0011;
        4'b0111: out_sum = out_xor + 4'b0111;
        4'b1111: out_sum = out_xor + 4'b1111;
        4'b1110: out_sum = out_xor + 4'b1110;
        4'b1100: out_sum = out_xor + 4'b1100;
        4'b1000: out_sum = out_xor + 4'b1000;
        default: out_sum = 4'b0000;
    endcase
end

endmodule

// 2-input AND gate
module and_gate (
    input a,
    input b,
    output y
);

assign y = a & b;

endmodule

// 2-input OR gate
module or_gate (
    input a,
    input b,
    output y
);

assign y = a | b;

endmodule

// 2-input XOR gate
module xor_gate (
    input a,
    input b,
    output y
);

assign y = a ^ b;

endmodule