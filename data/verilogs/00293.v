module top_module (
    input [3:0] A, // 4-bit input to be shifted and multiplied by 3
    input [1:0] shift_type, // 2-bit control signal to select the type of shift operation
    input select, // 1-bit control signal to select between multiplication and shift operation
    output reg [3:0] B // 4-bit output of the active module
);

    // Multiplication module
    wire [6:0] mul_output;
    assign mul_output = A * 3;

    // Barrel shifter module
    wire [3:0] shift_output;
    barrel_shifter barrel_shifter_inst(
        .in(A),
        .out(shift_output),
        .shift_type(shift_type)
    );

    // Additive control logic
    always @(*) begin
        if (select == 0) begin
            B <= mul_output[3:0];
        end else begin
            B <= shift_output;
        end
    end

endmodule

// Barrel shifter module
module barrel_shifter (
    input [3:0] in, // 4-bit input to be shifted
    output reg [3:0] out, // 4-bit output of the shift operation
    input [1:0] shift_type // 2-bit control signal to select the type of shift operation
);

    always @(*) begin
        case (shift_type)
            2'b00: out = in << 1; // Logical left shift
            2'b01: out = in >> 1; // Logical right shift
            2'b10: out = {in[2], in[3], in[3], in[3]}; // Arithmetic left shift
            2'b11: out = {in[0], in[0], in[0], in[1]}; // Arithmetic right shift
        endcase
    end

endmodule