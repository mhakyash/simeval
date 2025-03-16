module barrel_shifter(
    input [7:0] data_in,
    input [2:0] shift_amount,
    input mode,
    output [7:0] shifted_output
);

    wire [7:0] logical_shift_output;
    wire [7:0] arithmetic_shift_output;
    wire [7:0] rotate_output;
    
    // First barrel shifter module for logical and arithmetic shift
    barrel_shifter_logical logical_shift(
        .data_in(data_in),
        .shift_amount(shift_amount),
        .mode(mode),
        .shifted_output(logical_shift_output)
    );
    
    // Second barrel shifter module for rotate operation
    barrel_shifter_rotate rotate_shift(
        .data_in(data_in),
        .shift_amount(shift_amount),
        .mode(mode),
        .shifted_output(rotate_output)
    );
    
    // Bitwise OR operation on the outputs of both barrel shifter modules
    assign shifted_output = logical_shift_output | rotate_output;
    
endmodule

module barrel_shifter_logical(
    input [7:0] data_in,
    input [2:0] shift_amount,
    input mode,
    output [7:0] shifted_output
);

    reg [7:0] shifted_data;
    
    always @(*) begin
        case(mode)
            1'b0: shifted_data = data_in << shift_amount; // Logical left shift
            1'b1: shifted_data = data_in >>> shift_amount; // Logical right shift
            default: shifted_data = 8'b0;
        endcase
    end
    
    assign shifted_output = shifted_data;
    
endmodule

module barrel_shifter_rotate(
    input [7:0] data_in,
    input [2:0] shift_amount,
    input mode,
    output [7:0] shifted_output
);

    reg [7:0] shifted_data;
    
    always @(*) begin
        case(mode)
            1'b0: shifted_data = {data_in[shift_amount:7], data_in[6:shift_amount]}; // Rotate left
            1'b1: shifted_data = {data_in[(8-shift_amount):7], data_in[6:(8-shift_amount)]}; // Rotate right
            default: shifted_data = 8'b0;
        endcase
    end
    
    assign shifted_output = shifted_data;
    
endmodule