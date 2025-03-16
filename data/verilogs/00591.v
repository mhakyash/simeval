module top_module(
    input clk,
    input [3:0] a,
    input [3:0] b,
    output reg [1:0] out
);

    wire eq_out;
    wire lt_out;
    wire [3:0] a_inv;
    wire [3:0] b_inv;

    // Invert inputs for NOR-NAND module
    assign a_inv = ~a;
    assign b_inv = ~b;

    // Instantiate given modules
    magnitude_comp comp_inst(
        .a(a),
        .b(b),
        .eq_out(eq_out),
        .lt_out(lt_out)
    );
    nor_nand nor_inst(
        .a(a_inv & b_inv),
        .b(a_inv & b_inv),
        .out(out[1])
    );

    // Clocked always block for equality output
    always @(posedge clk) begin
        if (eq_out) begin
            out[0] <= 1'b1;
        end else begin
            out[0] <= 1'b0;
        end
    end

    // Determine greater than or less than
    always @* begin
        if (lt_out) begin
            out <= 2'b01;
        end else if (a > b) begin
            out <= 2'b10;
        end else begin
            out <= 2'b00;
        end
    end

endmodule

// Given modules
module nor_nand(
    input a,
    input b,
    output out
);

    assign out = ~(a & b);

endmodule

module magnitude_comp(
    input [3:0] a,
    input [3:0] b,
    output eq_out,
    output lt_out
);

    assign eq_out = (a == b);
    assign lt_out = (a < b);

endmodule