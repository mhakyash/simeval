module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
    );

    // Instantiate the binary counter module
    binary_counter counter (
        .clk(clk),
        .reset(reset),
        .count_out(counter_out)
    );

    // Instantiate the flip-flop module
    flip_flop flipflop (
        .clk(clk),
        .d(d),
        .q(q_ff)
    );

    // Define the output of the system
    assign q = select ? q_ff : counter_out;

    // Instantiate the multiplexer module
    mux2to1 mux (
        .sel(select),
        .in0(counter_out),
        .in1(q_ff),
        .out(select_out)
    );

    // Connect the binary counter output to the multiplexer input 0
    assign mux.in0 = counter_out;

    // Connect the flip-flop output to the multiplexer input 1
    assign mux.in1 = q_ff;

    // Connect the binary counter output to the select input of the multiplexer
    assign select = counter_out[3];

    // Connect the output of the multiplexer to the flip-flop input
    assign flipflop.d = select_out;

    // Define internal signals
    wire [3:0] counter_out;
    wire [7:0] q_ff;
    wire select;
    wire select_out;

endmodule

// Binary counter module
module binary_counter (
    input clk,
    input reset,
    output reg [3:0] count_out
    );

    always @(posedge clk) begin
        if (reset) begin
            count_out <= 4'b0000;
        end else begin
            count_out <= count_out + 1;
        end
    end

endmodule

// Flip-flop module with 2-to-1 multiplexer
module flip_flop (
    input clk,
    input d,
    output reg [7:0] q
    );

    wire [7:0] q_ff;

    mux2to1 mux (
        .sel(clk),
        .in0(d),
        .in1(q_ff),
        .out(q)
    );

    always @(negedge clk) begin
        q_ff <= q;
    end

endmodule

// 2-to-1 multiplexer module
module mux2to1 (
    input sel,
    input [7:0] in0,
    input [7:0] in1,
    output reg [7:0] out
    );

    always @(sel, in0, in1) begin
        if (sel) begin
            out <= in1;
        end else begin
            out <= in0;
        end
    end

endmodule