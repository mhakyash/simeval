module top_module (
    input clk,
    input reset,             // Asynchronous reset
    input [7:0] a,           // 8-bit input to the adder
    input [7:0] b,           // 8-bit input to the adder
    input [7:0] data,        // Input data to be multiplied
    output [7:0] q           // 8-bit output from the functional module
);

    // Instantiate the given modules
    adder8 adder(.a(a), .b(b), .c_out(c_out), .sum(sum));
    d_ff dff(.clk(clk), .reset(reset), .d(d), .q(q_dff));

    // Declare internal signals
    wire [7:0] sum;
    wire [7:0] d;
    wire [15:0] product;
    wire [7:0] q_dff;

    // Control the addition of the two 8-bit numbers using a conditional statement
    assign d = (q_dff == 1'b1) ? sum : 8'b0;

    // Multiply the result by the value of the input data using a multiplication module
    assign product = d * data;

    // Output the 8-bit result of the multiplication module
    assign q = product[7:0];

endmodule

// 8-bit adder with carry look-ahead logic
module adder8 (
    input [7:0] a,
    input [7:0] b,
    output [7:0] sum,
    output c_out
);

    // Declare internal signals
    wire [7:0] g;
    wire [7:0] p;
    wire [7:0] c;

    // Generate the g and p signals
    assign g = a & b;
    assign p = a ^ b;

    // Generate the c signals
    assign c[0] = 1'b0;
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & c[1]);
    assign c[3] = g[2] | (p[2] & c[2]);
    assign c[4] = g[3] | (p[3] & c[3]);
    assign c[5] = g[4] | (p[4] & c[4]);
    assign c[6] = g[5] | (p[5] & c[5]);
    assign c[7] = g[6] | (p[6] & c[6]);

    // Generate the sum output
    assign sum = p ^ c;

    // Generate the carry-out output
    assign c_out = g[7] | (p[7] & c[6]);

endmodule

// 8-bit D flip-flop with asynchronous reset
module d_ff (
    input clk,
    input reset,
    input d,
    output reg q
);

    // Trigger the reset on the negative edge of the clock
    always @(negedge clk) begin
        if (reset == 1'b1) begin
            q <= 1'b0;
        end else begin
            q <= d;
        end
    end

endmodule