module top_module (
    input clk,
    input reset, // Synchronous active-high reset
    input [7:0] in_hi, // Input to the circuit that merges two bytes
    input [7:0] in_lo, // Input to the circuit that merges two bytes
    output reg [7:0] q // Final output of the system
);

    reg [7:0] shift_reg;
    wire [7:0] xor_out;
    wire [7:0] merge_out;
    wire [7:0] dff_out;

    // Instantiate the shift register module
    shift_register shift_reg_inst (
        .clk(clk),
        .reset(reset),
        .in(xor_out),
        .out(shift_reg)
    );

    // Instantiate the circuit that merges two bytes
    merge_circuit merge_inst (
        .in_hi(in_hi),
        .in_lo(in_lo),
        .out(merge_out)
    );

    // Instantiate the circuit that performs the same functionality as a dual-edge triggered flip-flop
    dff_circuit dff_inst (
        .clk(clk),
        .in(merge_out),
        .out(dff_out)
    );

    // XOR the outputs of the two given circuits
    assign xor_out = merge_out ^ dff_out;

    // Output the shifted result of the XOR operation
    assign q = shift_reg;

endmodule

// Shift register module
module shift_register (
    input clk,
    input reset, // Synchronous active-high reset
    input [7:0] in,
    output reg [7:0] out
);

    always @(posedge clk) begin
        if (reset) begin
            out <= 8'b0;
        end else begin
            out <= {out[6:0], in[0]};
        end
    end

endmodule

// Circuit that merges two bytes into a half-word with a parity bit
module merge_circuit (
    input [7:0] in_hi,
    input [7:0] in_lo,
    output reg [7:0] out
);

    always @* begin
        out[7:1] = {in_hi[6:0], in_lo[6:0]};
        out[0] = ~(in_hi[7] ^ in_lo[7] ^ out[6] ^ out[5] ^ out[4] ^ out[3] ^ out[2] ^ out[1]);
    end

endmodule

// Circuit that performs the same functionality as a dual-edge triggered flip-flop without using a dual-edge triggered flip-flop
module dff_circuit (
    input clk,
    input [7:0] in,
    output reg [7:0] out
);

    reg [7:0] dff_reg;

    always @(posedge clk) begin
        dff_reg <= in;
    end

    always @* begin
        out = dff_reg;
    end

endmodule