module top_module (
    input clk,
    input async_reset,
    input [1:0] enable,
    input [2:0] shift_amount,
    input shift_direction,
    output reg [3:0] q
);

reg [1:0] count;
wire [3:0] shifted_data;

up_down_counter udc (
    .clk(clk),
    .async_reset(async_reset),
    .enable(enable),
    .count(count)
);

barrel_shifter bs (
    .data_in(count),
    .shift_amount(shift_amount),
    .shift_direction(shift_direction),
    .data_out(shifted_data)
);

always @ (posedge clk or negedge async_reset) begin
    if (async_reset == 0) begin
        q <= 2'b00;
    end else if (enable == 2'b01) begin
        q <= shifted_data;
    end else if (enable == 2'b10) begin
        q <= ~shifted_data + 1;
    end
end

endmodule

module up_down_counter (
    input clk,
    input async_reset,
    input [1:0] enable,
    output reg [1:0] count
);

always @ (posedge clk or negedge async_reset) begin
    if (async_reset == 0) begin
        count <= 2'b00;
    end else if (enable == 2'b01) begin
        count <= count + 1;
    end else if (enable == 2'b10) begin
        count <= count - 1;
    end
end

endmodule

module barrel_shifter (
    input [3:0] data_in,
    input [2:0] shift_amount,
    input shift_direction,
    output [3:0] data_out
);

reg [3:0] shifted_data;

always @ (*) begin
    if (shift_direction == 0) begin
        shifted_data = data_in << shift_amount;
    end else begin
        shifted_data = data_in >> shift_amount;
    end
end

assign data_out = shifted_data;

endmodule