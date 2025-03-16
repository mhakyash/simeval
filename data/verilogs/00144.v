module top_module (
    input [3:0] A,
    input [3:0] B,
    output eq,
    output gt,
    input C,
    input [3:0] D,
    output [3:0] final_output
);

    // 4-bit magnitude comparator
    wire [3:0] eq_temp;
    wire [3:0] gt_temp;
    assign eq_temp = (A == B);
    assign gt_temp = (A > B);
    assign eq = eq_temp[3] & eq_temp[2] & eq_temp[1] & eq_temp[0];
    assign gt = gt_temp[3] & gt_temp[2] & gt_temp[1] & gt_temp[0];

    // 4-bit barrel shifter
    wire [3:0] shifted_value;
    assign shifted_value = (C == 0) ? (A << D) : (A >> D);

    // Functional module
    assign final_output = eq & gt & shifted_value;

endmodule