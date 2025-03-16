module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input A, B, SEL, DATA,
    output Y,
    output reg [3:0] Q);

    reg [3:0] shift_reg;
    wire mux_out;

    // 2:1 multiplexer
    assign mux_out = SEL ? DATA : (A & ~B) | (B & ~A);

    // 4-bit shift register
    always @(posedge clk or posedge areset) begin
        if (areset) begin
            Q <= 4'b0;
            shift_reg <= 4'b0;
        end else if (ena) begin
            if (load) begin
                Q <= DATA;
                shift_reg <= DATA;
            end else begin
                Q <= shift_reg;
                shift_reg <= {shift_reg[2:0], Q};
            end
        end
    end

    assign Y = mux_out;

endmodule