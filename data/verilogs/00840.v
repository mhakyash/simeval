module binary_counter (
    input clk,
    input reset,      // Asynchronous active-high reset
    output reg [3:0] q
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 4'b0000;
        end else if (q == 4'b1111) begin
            q <= 4'b0000;
        end else begin
            q <= q + 1;
        end
    end

endmodule

module binary_counter_with_operation (
    input clk,
    input reset,      // Asynchronous active-high reset
    output reg [3:0] out_func
);

    reg [3:0] q;

    binary_counter counter (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out_func <= 4'b0000;
        end else if (q <= 4'b0111) begin
            out_func <= q + 4'b0011;
        end else begin
            out_func <= q - 4'b0011;
        end
    end

endmodule

module top_module (
    input clk,
    input reset,      // Asynchronous active-high reset
    output reg [3:0] q,
    output reg [3:0] out_func
);

    binary_counter_with_operation counter_with_op (
        .clk(clk),
        .reset(reset),
        .out_func(out_func)
    );

    assign q = counter_with_op.q;

endmodule