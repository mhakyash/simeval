module barrel_shifter_16bit (
    input [15:0] data,
    input [3:0] shift_amount,
    output [15:0] shifted_data
);

    assign shifted_data = {data[shift_amount - 1:0], data[15:shift_amount]};

endmodule