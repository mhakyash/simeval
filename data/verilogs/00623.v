module booth_shift_sum (
    input clk,
    input reset, // Synchronous active-high reset
    input [3:0] A,
    input [3:0] B,
    input [1:0] control,
    output reg [7:0] Y_mul, // 8-bit output for Booth's multiplication
    output reg [3:0] Y_shift, // 4-bit output for shift/rotate operations
    output reg [11:0] Y_sum // 12-bit output for the sum of the two outputs
);

// Booth's multiplication module
reg [7:0] booth_out;
wire [3:0] booth_A;
wire [3:0] booth_B;
assign booth_A = (A[3]) ? {{2{A[3]}}, A} : A;
assign booth_B = (B[3]) ? {{2{B[3]}}, B} : B;
booth_multiplier booth_inst (
    .clk(clk),
    .reset(reset),
    .A(booth_A),
    .B(booth_B),
    .out(booth_out)
);
always @(*) begin
    case (control)
        2'b00: Y_mul = booth_out;
        default: Y_mul = 8'b0;
    endcase
end

// Barrel shifter module
reg [3:0] shift_out;
barrel_shifter shift_inst (
    .A(A),
    .B(B),
    .control(control),
    .out(shift_out)
);
always @(*) begin
    case (control)
        2'b01: Y_shift = shift_out;
        2'b10: Y_shift = shift_out;
        2'b11: Y_shift = shift_out;
        default: Y_shift = 4'b0;
    endcase
end

// Sum module
always @(*) begin
    Y_sum = {booth_out, shift_out};
end

endmodule