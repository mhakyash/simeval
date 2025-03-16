module top_module (
    input clk,
    input reset,
    input [3:0] a,
    input [3:0] b,
    input select, // Select input to choose between addition and subtraction
    input shift_parallel,
    input [3:0] parallel_in,
    output [3:0] sum,
    output overflow,
    output [3:0] shift_reg_out,
    output [3:0] func_out // Bitwise OR output of shift register and result
);

reg [3:0] shift_reg;
reg [3:0] result;
reg [1:0] operation;
wire [3:0] bitwise_or;

assign bitwise_or = shift_reg | result;

// Shift register module
shift_register shift_reg_module (
    .clk(clk),
    .reset(reset),
    .parallel_in(parallel_in),
    .shift(shift_parallel),
    .parallel_out(shift_reg_out),
    .serial_out(shift_reg)
);

// Adder-subtractor module
adder_subtractor add_sub_module (
    .a(a),
    .b(b),
    .select(select),
    .sum(sum),
    .overflow(overflow),
    .result(result),
    .operation(operation)
);

// Functional module for bitwise OR
assign func_out = bitwise_or;

endmodule

// Shift register module
module shift_register (
    input clk,
    input reset,
    input [3:0] parallel_in,
    input shift,
    output [3:0] parallel_out,
    output [3:0] serial_out
);

reg [3:0] shift_reg;

always @(posedge clk) begin
    if (reset) begin
        shift_reg <= 4'b0;
    end else if (shift) begin
        shift_reg <= {shift_reg[2:0], parallel_in[0]};
    end else begin
        shift_reg <= parallel_in;
    end
end

assign parallel_out = shift_reg;
assign serial_out = shift_reg[0];

endmodule

// Adder-subtractor module
module adder_subtractor (
    input [3:0] a,
    input [3:0] b,
    input select,
    output [3:0] sum,
    output overflow,
    output [3:0] result,
    output reg [1:0] operation
);

reg [3:0] twos_comp_b;
reg [3:0] temp_sum;
reg [1:0] temp_operation;

assign overflow = (sum > 4'b1111) || (sum < 4'b0000);

always @(*) begin
    if (select) begin
        temp_sum = a + (~b + 1);
        temp_operation = 2'b10;
    end else begin
        temp_sum = a + b;
        temp_operation = 2'b01;
    end
end

assign sum = temp_sum;
assign operation = temp_operation;
assign result = temp_sum;

endmodule