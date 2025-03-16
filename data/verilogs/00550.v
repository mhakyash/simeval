module max_value (
    input clk,
    input reset, // Synchronous active-high reset
    input [7:0] a, // First 8-bit binary number
    input [7:0] b, // Second 8-bit binary number
    output reg [7:0] max // Maximum value of a and b
);

always @(posedge clk) begin
    if (reset) begin
        max <= 8'b0;
    end else begin
        if (a > b) begin
            max <= a;
        end else begin
            max <= b;
        end
    end
end

endmodule

module consecutive_ones_counter (
    input clk,
    input reset, // Synchronous active-high reset
    input [7:0] a, // First 8-bit binary number
    input [7:0] b, // Second 8-bit binary number
    output reg [3:0] consecutive_ones_count // Number of consecutive 1's in the sum of a and b
);

reg [7:0] sum;

always @(posedge clk) begin
    if (reset) begin
        sum <= 8'b0;
        consecutive_ones_count <= 4'b0;
    end else begin
        sum <= a + b;
        consecutive_ones_count <= {1'b0, {consecutive_ones_count[2:0], sum[7] & sum[6] & sum[5] & sum[4]}};
    end
end

endmodule

module control_logic (
    input select, // Select input to choose between max_value and consecutive_ones_counter
    input [7:0] max_value_output, // Output of max_value module
    input [3:0] consecutive_ones_counter_output, // Output of consecutive_ones_counter module
    output [7:0] output_max, // Output of max_value module if select is high
    output [3:0] output_consecutive_ones_count // Output of consecutive_ones_counter module if select is low
);

assign output_max = select ? max_value_output : 8'b0;
assign output_consecutive_ones_count = select ? 4'b0 : consecutive_ones_counter_output;

endmodule

module top_module (
    input clk,
    input reset, // Synchronous active-high reset
    input [7:0] a, // First 8-bit binary number
    input [7:0] b, // Second 8-bit binary number
    input select, // Select input to choose between max_value and consecutive_ones_counter
    output [7:0] max, // Maximum value of a and b
    output [3:0] consecutive_ones_count // Number of consecutive 1's in the sum of a and b
);

max_value max_value_inst (
    .clk(clk),
    .reset(reset),
    .a(a),
    .b(b),
    .max(max)
);

consecutive_ones_counter consecutive_ones_counter_inst (
    .clk(clk),
    .reset(reset),
    .a(a),
    .b(b),
    .consecutive_ones_count(consecutive_ones_count)
);

control_logic control_logic_inst (
    .select(select),
    .max_value_output(max),
    .consecutive_ones_counter_output(consecutive_ones_count),
    .output_max(max),
    .output_consecutive_ones_count(consecutive_ones_count)
);

endmodule