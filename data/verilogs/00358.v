module barrel_shifter(
    input [15:0] data_in,
    input [3:0] shift_amount,
    input shift_control,
    output [15:0] shifted_data
);

    reg [15:0] shifted_data_reg;

    always @(*) begin
        if (shift_control == 0) begin
            shifted_data_reg = data_in >> shift_amount;
        end else begin
            shifted_data_reg = data_in << shift_amount;
        end
    end

    assign shifted_data = shifted_data_reg;

endmodule

module bitwise_or(
    input [15:0] data1,
    input [15:0] data2,
    output [15:0] result
);

    assign result = data1 | data2;

endmodule

module top_module (
    input [15:0] data_in1,
    input [15:0] data_in2,
    input [3:0] shift_amount1,
    input [3:0] shift_amount2,
    input shift_control,
    output [15:0] result
);

    wire [15:0] shifted_data1;
    wire [15:0] shifted_data2;

    barrel_shifter shifter1(
        .data_in(data_in1),
        .shift_amount(shift_amount1),
        .shift_control(shift_control),
        .shifted_data(shifted_data1)
    );

    barrel_shifter shifter2(
        .data_in(data_in2),
        .shift_amount(shift_amount2),
        .shift_control(shift_control),
        .shifted_data(shifted_data2)
    );

    bitwise_or or_gate(
        .data1(shifted_data1),
        .data2(shifted_data2),
        .result(result)
    );

endmodule