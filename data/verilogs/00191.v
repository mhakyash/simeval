module top_module (
    input clk,
    input rst,
    input [3:0] in,
    input load,
    output reg [15:0] data_out,
    output reg [3:0] count
);

wire [15:0] decoder_out;
reg [15:0] shift_reg;

// 4-to-16 decoder module
decoder_4to16 decoder (
    .in(in),
    .out(decoder_out)
);

// 16-bit shift register module
shift_register_16bit shift_reg_inst (
    .clk(clk),
    .rst(rst),
    .load(load),
    .data_in(decoder_out),
    .data_out(shift_reg)
);

// Counter module
counter_16bit counter_inst (
    .data_in(shift_reg),
    .count(count)
);

assign data_out = shift_reg;

endmodule

// 4-to-16 decoder module
module decoder_4to16 (
    input [3:0] in,
    output [15:0] out
);

assign out = 1 << in;

endmodule

// 16-bit shift register module
module shift_register_16bit (
    input clk,
    input rst,
    input load,
    input [15:0] data_in,
    output reg [15:0] data_out
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        data_out <= 16'b0;
    end else if (load) begin
        data_out <= data_in;
    end else begin
        data_out <= {data_out[14:0], 1'b0};
    end
end

endmodule

// Counter module
module counter_16bit (
    input [15:0] data_in,
    output reg [3:0] count
);

integer i;

always @(*) begin
    count = 0;
    for (i = 0; i < 16; i = i + 1) begin
        if (data_in[i]) begin
            count = count + 1;
        end
    end
end

endmodule