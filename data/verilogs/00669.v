module signed_divider (
    input [7:0] dividend,
    input [7:0] divisor,
    output reg [7:0] quotient,
    output reg [7:0] remainder
);

reg [7:0] abs_dividend;
reg [7:0] abs_divisor;
reg [3:0] shift_count;
reg [3:0] i;

wire [3:0] dividend_shifted;
wire [3:0] divisor_shifted;
wire [3:0] quotient_part;
wire [3:0] remainder_part;

// Calculate absolute values of dividend and divisor
assign abs_dividend = (dividend[7] == 1) ? (~dividend + 1) : dividend;
assign abs_divisor = (divisor[7] == 1) ? (~divisor + 1) : divisor;

// Initialize shift count
assign shift_count = 0;

// Shift divisor to the left until it is greater than or equal to dividend
always @(*) begin
    divisor_shifted = abs_divisor << shift_count;
    if (divisor_shifted >= abs_dividend) begin
        shift_count = 0;
    end else begin
        shift_count = shift_count + 1;
    end
end

// Perform division using a 4-bit adder, subtractor, and shifter
always @(*) begin
    dividend_shifted = abs_dividend >> shift_count;
    quotient_part = 4'b0000;
    remainder_part = dividend_shifted;

    for (i = 0; i < 4; i = i + 1) begin
        if (remainder_part >= divisor_shifted) begin
            quotient_part[i] = 1;
            remainder_part = remainder_part - divisor_shifted;
        end
        divisor_shifted = divisor_shifted >> 1;
    end

    quotient = {quotient_part, 4'b0000};
    remainder = remainder_part << shift_count;

    // Add sign back to quotient and remainder
    if (dividend[7] != divisor[7]) begin
        quotient = (~quotient) + 1;
        if (remainder != 0) begin
            remainder = (~remainder) + 1;
        end
    end
end

endmodule