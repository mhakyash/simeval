module top_module (
    input clk,
    input reset,      // Asynchronous active-high reset for the counter
    input load,       // Synchronous active-high load for the counter
    input [15:0] A,   // 16-bit input A for the multiplier
    input [15:0] B,   // 16-bit input B for the multiplier
    input [3:0] L,    // 4-bit input for the counter load
    input areset,     // Asynchronous active-high reset for the counter
    output reg [31:0] out // 32-bit output from the functional module
);

reg [15:0] a_reg, b_reg;    // Registers for A and B inputs
reg [31:0] prod;            // Product of A and B
reg [3:0] count;            // Counter value

// Instantiate the 16-bit array multiplier
array_multiplier AM(
    .clk(clk),
    .a(a_reg),
    .b(b_reg),
    .out(prod)
);

// Instantiate the 4-bit synchronous load counter
sync_load_counter SLC(
    .clk(clk),
    .reset(reset),
    .load(load),
    .L(L),
    .areset(areset),
    .out(count)
);

// Functional module to add the outputs of the multiplier and the counter
always @ (posedge clk) begin
    if (load) begin
        out <= count;
    end else begin
        out <= prod + count;
    end
end

// Assign the inputs to the registers
always @ (posedge clk) begin
    a_reg <= A;
    b_reg <= B;
end

endmodule

// 16-bit array multiplier module
module array_multiplier (
    input clk,
    input [15:0] a,
    input [15:0] b,
    output reg [31:0] out
);

// Multiply the inputs and assign the result to the output
always @ (posedge clk) begin
    out <= a * b;
end

endmodule

// 4-bit synchronous load counter module
module sync_load_counter (
    input clk,
    input reset,      // Asynchronous active-high reset
    input load,       // Synchronous active-high load
    input [3:0] L,    // 4-bit input for the load value
    input areset,     // Asynchronous active-high reset
    output reg [3:0] out // 4-bit counter output
);

// Counter logic
always @ (posedge clk, posedge reset, posedge areset) begin
    if (areset) begin
        out <= 0;
    end else if (reset) begin
        out <= 0;
    end else if (load) begin
        out <= L;
    end else begin
        out <= out + 1;
    end
end

endmodule