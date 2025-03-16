module top_module (
    input clk,
    input reset, // Synchronous active-high reset
    input [15:0] serial_in, // Serial input for shift register
    input shift_direction, // Shift direction for shift register
    input [3:0] A, // First input for adder-subtractor
    input [3:0] B, // Second input for adder-subtractor
    input SUB, // Select between addition and subtraction for adder-subtractor
    input select, // Select between shift register output and functional module output
    output [15:0] serial_out, // Serial output for shift register
    output [15:0] functional_out // Output of functional module
);

// Instantiate shift register module
reg [15:0] shift_reg;
shift_register shift_reg_inst (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .shift_direction(shift_direction),
    .serial_out(serial_out),
    .shift_reg(shift_reg)
);

// Instantiate adder-subtractor module
wire [3:0] adder_sub_out;
adder_subtractor adder_sub_inst (
    .A(A),
    .B(B),
    .SUB(SUB),
    .out(adder_sub_out)
);

// Instantiate functional module
wire [15:0] functional_out_wire;
functional_module functional_inst (
    .shift_reg_out(shift_reg),
    .adder_sub_out(adder_sub_out),
    .functional_out(functional_out_wire)
);

// Control logic for selecting output
always @(*) begin
    if (select) begin
        functional_out <= functional_out_wire;
    end else begin
        functional_out <= shift_reg;
    end
end

endmodule