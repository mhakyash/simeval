module counter (
    input clk,
    input reset,
    input up_down,
    output reg [2:0] q
);

always @(posedge clk or negedge reset) begin
    if (!reset) begin
        q <= 3'b0;
    end else if (up_down) begin
        q <= q + 1;
    end else begin
        q <= q - 1;
    end
end

endmodule

module control_logic (
    input up_down,
    input [2:0] q,
    output reg [2:0] up,
    output reg [2:0] down
);

assign up = q + 1;
assign down = q - 1;

endmodule

module functional_module (
    input [2:0] q,
    input func_ctrl,
    output reg [2:0] out
);

always @(*) begin
    if (func_ctrl) begin
        out = q;
    end else begin
        out = ~q;
    end
end

endmodule

module top_module (
    input clk,
    input reset,
    input up_down,
    output [2:0] q,
    input func_ctrl,
    output [2:0] out
);

counter counter_inst (
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .q(q)
);

control_logic control_inst (
    .up_down(up_down),
    .q(q),
    .up(counter_up),
    .down(counter_down)
);

functional_module func_inst (
    .q(q),
    .func_ctrl(func_ctrl),
    .out(out)
);

always @(*) begin
    if (up_down) begin
        q <= counter_up;
    end else begin
        q <= counter_down;
    end
end

endmodule