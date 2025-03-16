module top_module (
    input clk,
    input reset,  // Synchronous active-high reset
    input [7:0] a,
    input [7:0] b,
    input [3:0] data,
    input select,
    output [7:0] s,
    output overflow
);

    // Convert 2's complement numbers to sign-magnitude format
    wire [7:0] a_mag = (a[7] == 1) ? {1'b0, ~a[6:0] + 1} : a;
    wire [7:0] b_mag = (b[7] == 1) ? {1'b0, ~b[6:0] + 1} : b;

    // Adder module
    wire [8:0] adder_out;
    wire adder_overflow;
    carry_select_adder adder_inst (
        .a(a_mag),
        .b(b_mag),
        .cin(1'b0),
        .s(adder_out),
        .cout(),
        .overflow(adder_overflow)
    );

    // Shift register module
    wire [3:0] shift_out;
    shift_register shift_inst (
        .clk(clk),
        .reset(reset),
        .data(data),
        .enable(1'b1),
        .load(1'b0),
        .shift_left(select),
        .q(shift_out)
    );

    // Output selection logic
    assign s = (select == 1'b0) ? adder_out[7:0] : {4'b0, shift_out};
    assign overflow = adder_overflow;

endmodule

// 8-bit carry-select adder module
module carry_select_adder (
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [8:0] s,
    output cout,
    output overflow
);

    wire [7:0] p = a + b;
    wire [7:0] g = a & b;
    wire [7:0] u = p + (g << 1);
    wire [7:0] v = p - (g << 1);

    assign s = (cin == 1'b0) ? u : v;
    assign cout = (g[6] | (g[5] & cin));
    assign overflow = (a[7] == b[7] && s[7] != a[7]);

endmodule

// 4-bit shift register module
module shift_register (
    input clk,
    input reset,  // Asynchronous active-high reset
    input [3:0] data,
    input enable,
    input load,
    input shift_left,
    output [3:0] q
);

    reg [3:0] q_reg;

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            q_reg <= 4'b0;
        end else if (enable) begin
            if (load) begin
                q_reg <= data;
            end else if (shift_left) begin
                q_reg <= {q_reg[2:0], 1'b0};
            end else begin
                q_reg <= {1'b0, q_reg[3:1]};
            end
        end
    end

    assign q = q_reg;

endmodule