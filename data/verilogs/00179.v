module pipelined_multiplier(
    input wire clk,
    input wire rst,
    input wire [7:0] num1,
    input wire [7:0] num2,
    output reg [15:0] product
);

reg [7:0] multiplier_input1;
reg [7:0] multiplier_input2;
reg [15:0] multiplier_output1;
reg [15:0] multiplier_output2;

always @(posedge clk) begin
    if (rst) begin
        multiplier_input1 <= 0;
        multiplier_input2 <= 0;
        multiplier_output1 <= 0;
        multiplier_output2 <= 0;
        product <= 0;
    end else begin
        multiplier_input1 <= num1;
        multiplier_input2 <= num2;
        multiplier_output1 <= multiplier_input1 * multiplier_input2;
        multiplier_output2 <= multiplier_output1;
        product <= multiplier_output2;
    end
end

endmodule

module top_module( 
    input wire [7:0] num1,
    input wire [7:0] num2,
    output wire [15:0] product
);

wire clk;
wire rst;

// Clock generation
reg [31:0] clk_counter = 0;
assign clk = clk_counter[3];

// Reset generation
reg [31:0] rst_counter = 0;
assign rst = rst_counter[7];

// Instantiate pipelined multiplier
pipelined_multiplier multiplier(
    .clk(clk),
    .rst(rst),
    .num1(num1),
    .num2(num2),
    .product(product)
);

// Clock and reset generation
always @(posedge clk) begin
    clk_counter <= clk_counter + 1;
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        rst_counter <= 0;
    end else begin
        rst_counter <= rst_counter + 1;
    end
end

endmodule