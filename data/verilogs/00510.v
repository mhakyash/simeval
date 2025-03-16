module shift_reg_comp (
    input clk,
    input reset,            // Synchronous reset
    input [3:0] data,       // 4-bit input for the comparator
    input [7:0] in_data,    // 8-bit input for the shift register
    output [7:0] out_data   // 8-bit output from the functional module
);

    reg [7:0] shift_reg;
    reg [3:0] prev_data;
    wire comp_out;

    // Comparator module
    comparator comp(.a(prev_data), .b(data), .eq(comp_out));

    // Shift register module
    always @(negedge clk) begin
        if (reset) begin
            shift_reg <= 8'b0;
        end else if (comp_out) begin
            shift_reg <= {shift_reg[6:0], 1'b0};
        end else begin
            shift_reg <= in_data;
        end
    end

    // Output assignment
    assign out_data = shift_reg;

endmodule

// Comparator module
module comparator (
    input [3:0] a,
    input [3:0] b,
    output reg eq
);

    always @(*) begin
        if (a == b) begin
            eq = 1'b1;
        end else begin
            eq = 1'b0;
        end
    end

endmodule