module top_module (
    input clk,
    input reset,
    input [3:0] data_in,
    input [3:0] max_count,
    input load,
    input shift,
    output reg [15:0] out
);

reg [11:0] count;
wire [3:0] shift_reg_out;

counter counter_inst (
    .clk(clk),
    .reset(reset),
    .max_count(max_count),
    .count(count)
);

shift_register shift_register_inst (
    .data_in(data_in),
    .load(load),
    .shift(shift),
    .out(shift_reg_out)
);

functional_module functional_module_inst (
    .count(count),
    .shift_reg_out(shift_reg_out),
    .out(out)
);

always @(posedge clk) begin
    if (reset) begin
        count <= 0;
    end else if (count == max_count) begin
        count <= 0;
    end else begin
        count <= count + 1;
    end
end

endmodule

module shift_register (
    input [3:0] data_in,
    input load,
    input shift,
    output [3:0] out
);

reg [3:0] reg_out;

always @(posedge shift) begin
    if (load) begin
        reg_out <= data_in;
    end else begin
        reg_out <= {reg_out[2:0], 1'b0};
    end
end

assign out = reg_out;

endmodule

module counter (
    input clk,
    input reset,
    input [3:0] max_count,
    output reg [11:0] count
);

always @(posedge clk) begin
    if (reset) begin
        count <= 0;
    end else if (count == max_count) begin
        count <= 0;
    end else begin
        count <= count + 1;
    end
end

endmodule

module functional_module (
    input [11:0] count,
    input [3:0] shift_reg_out,
    output reg [15:0] out
);

assign out = {count, shift_reg_out};

endmodule