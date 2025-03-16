module top_module (
    input clk,          // Clock input
    input reset,        // Synchronous active-high reset
    input [7:0] data_in,  // 8-bit input for the system
    input select,       // Select input for the multiplexer
    output reg [7:0] final_output  // 8-bit output from the system
);

reg [1:0] out2;
reg [1:0] out1;
reg [1:0] out0;
reg [2:0] mux_out;

split_input split_input_inst (
    .in_vec(data_in),
    .out2(out2),
    .out1(out1),
    .out0(out0)
);

mux mux_inst (
    .a(out0),
    .b(out1),
    .c(out2),
    .s(select),
    .w(mux_out[0]),
    .x(mux_out[1]),
    .y(mux_out[2]),
    .z(mux_out[3])
);

always @(posedge clk) begin
    if (reset) begin
        mux_out <= 3'b001;
        out2 <= 2'b00;
        out1 <= 2'b00;
        out0 <= 2'b00;
        final_output <= 8'b00000000;
    end else begin
        final_output <= mux_out[select] + {2'b00, out2};
    end
end

endmodule

module split_input (
    input wire [7:0] in_vec,
    output reg [1:0] out2,
    output reg [1:0] out1,
    output reg [1:0] out0
);

always @(*) begin
    out2 = in_vec[7:6];
    out1 = in_vec[5:4];
    out0 = in_vec[3:2];
end

endmodule

module mux (
    input a, b, c,
    input s,
    output reg w,
    output reg x,
    output reg y,
    output reg z
);

always @(*) begin
    case (s)
        2'b00: begin
            w = a;
            x = 0;
            y = 0;
            z = 0;
        end
        2'b01: begin
            w = 0;
            x = b;
            y = 0;
            z = 0;
        end
        2'b10: begin
            w = 0;
            x = 0;
            y = c;
            z = 0;
        end
        2'b11: begin
            w = 0;
            x = 0;
            y = 0;
            z = 0;
        end
    endcase
end

endmodule