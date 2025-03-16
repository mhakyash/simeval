module top_module (
    input clk,
    input [7:0] d, // 8-bit input for the binary data storage module
    output [7:0] q // 8-bit output from the active module in the shift register
);

    // Shift register of length 3 using D flip-flops and a multiplexer
    reg [2:0] shift_reg;
    wire mux_sel;
    wire d_in = shift_reg[2];
    wire q_out = shift_reg[0];
    d_ff dff1(d_in, clk, d[0], shift_reg[0]);
    d_ff dff2(d_in, clk, d[1], shift_reg[1]);
    d_ff dff3(d_in, clk, d[2], shift_reg[2]);
    mux_2to1 mux(mux_sel, shift_reg[1], shift_reg[0], q_out);

    // Binary data storage using shift register architecture
    reg [7:0] data_reg;
    always @(posedge clk) begin
        data_reg <= {data_reg[6:0], d_in};
    end

    // Functional module to generate final output
    always @(posedge clk) begin
        if (mux_sel) begin
            q <= data_reg;
        end else begin
            q <= q_out;
        end
    end

endmodule

// D flip-flop module
module d_ff (
    input d,
    input clk,
    input rst,
    output reg q
);
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            q <= 1'b0;
        end else begin
            q <= d;
        end
    end
endmodule

// 2-to-1 multiplexer module
module mux_2to1 (
    input sel,
    input a,
    input b,
    output reg out
);
    always @(sel, a, b) begin
        if (sel) begin
            out <= b;
        end else begin
            out <= a;
        end
    end
endmodule