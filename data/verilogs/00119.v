module top_module (
    input clk,
    input reset,
    input [3:0] A,
    input [3:0] B,
    input load,
    input shift,
    output [3:0] final_output
);

    // Ripple Carry Adder
    wire [3:0] adder_output;
    ripple_carry_adder adder(.A(A), .B(B), .Cin(1'b0), .Sum(adder_output), .Cout());

    // Shift-Left Register with Parallel Load and Asynchronous Reset
    reg [3:0] shift_register;
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            shift_register <= 4'b0000;
        end else if (load) begin
            shift_register <= adder_output;
        end else if (shift) begin
            shift_register <= {shift_register[2:0], 1'b0};
        end
    end

    // Final Output
    assign final_output = adder_output + shift_register;

endmodule

module ripple_carry_adder (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

    wire [3:0] xor_output;
    wire [3:0] and_output;

    assign xor_output = A ^ B;
    assign and_output = A & B;

    assign Sum = xor_output ^ Cin;
    assign Cout = and_output | (xor_output & Cin);

endmodule