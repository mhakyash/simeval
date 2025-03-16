module top_module (
    input clk,
    input rst,
    input ena,
    input [3:0] ABCD,
    input [1:0] SEL,
    input EN,
    input [15:0] data_in,
    output [15:0] data_out
);

    // 4-to-1 Multiplexer
    wire [15:0] mux_out;
    wire mux_en;
    mux4 mux_inst (
        .a(ABCD[0]),
        .b(ABCD[1]),
        .c(ABCD[2]),
        .d(ABCD[3]),
        .sel(SEL),
        .en(mux_en),
        .out(mux_out)
    );

    // Shift Register
    reg [15:0] shift_reg;
    wire shift_out;
    reg [15:0] load_data;
    reg shift_enable;
    reg load_enable;
    always @(posedge clk) begin
        if (rst) begin
            shift_reg <= 0;
            shift_enable <= 0;
            load_enable <= 0;
        end else begin
            if (load_enable) begin
                shift_reg <= load_data;
            end else if (shift_enable) begin
                shift_reg <= {shift_reg[14:0], mux_out};
            end
        end
    end
    assign shift_out = shift_reg[15];

    // Control Logic
    always @(*) begin
        if (EN == 1'b0) begin
            mux_en = 1'b0;
            load_enable = 1'b0;
            shift_enable = 1'b0;
        end else begin
            mux_en = 1'b1;
            if (ena == 1'b1) begin
                load_enable = 1'b1;
                shift_enable = 1'b0;
                load_data = data_in;
            end else begin
                load_enable = 1'b0;
                shift_enable = 1'b1;
            end
        end
    end

    // Output
    assign data_out = shift_reg;

endmodule

// 4-to-1 Multiplexer
module mux4 (
    input a,
    input b,
    input c,
    input d,
    input [1:0] sel,
    input en,
    output reg [15:0] out
);
    always @(*) begin
        case (sel)
            2'b00: out = a;
            2'b01: out = b;
            2'b10: out = c;
            2'b11: out = d;
        endcase
    end
    assign out = en ? out : 16'b0;
endmodule