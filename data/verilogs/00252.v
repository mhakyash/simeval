module top_module (
    input [7:0] in,
    input [1:0] shift_amount,
    input shift_direction,
    output [3:0] shifted_out
);

    // Instantiate the barrel shifter module
    barrel_shifter barrel_shifter_inst (
        .in(in),
        .shift_amount(shift_amount),
        .shift_direction(shift_direction),
        .out(shifted_out_temp)
    );

    // Instantiate the 4-to-16 decoder module
    decoder_4to16 decoder_inst (
        .in(in[3:0]),
        .out(decoder_out)
    );

    // Create a 16-bit signal to store the shifted input values
    wire [15:0] shifted_out_temp;

    // Create a 16-bit signal to store the decoder output values
    wire [15:0] decoder_out;

    // Assign the shifted output value based on the highest active decoder output
    assign shifted_out = (decoder_out == 16'h0001) ? shifted_out_temp[3:0] :
                         (decoder_out == 16'h0002) ? shifted_out_temp[7:4] :
                         (decoder_out == 16'h0004) ? shifted_out_temp[11:8] :
                         (decoder_out == 16'h0008) ? shifted_out_temp[15:12] :
                         4'b0000;

endmodule

// Define the barrel shifter module
module barrel_shifter (
    input [7:0] in,
    input [1:0] shift_amount,
    input shift_direction,
    output [7:0] out
);

    // Create a temporary signal to store the shifted input values
    wire [7:0] shifted_out_temp;

    // Shift the input based on the shift amount and direction
    always @(*) begin
        case (shift_direction)
            1'b0: shifted_out_temp = in << shift_amount;
            1'b1: shifted_out_temp = in >> shift_amount;
        endcase
    end

    // Assign the shifted output value
    assign out = shifted_out_temp;

endmodule

// Define the 4-to-16 decoder module
module decoder_4to16 (
    input [3:0] in,
    output reg [15:0] out
);

    // Create a case statement to assign the decoder output values
    always @(*) begin
        case (in)
            4'b0000: out = 16'h0000;
            4'b0001: out = 16'h0001;
            4'b0010: out = 16'h0002;
            4'b0011: out = 16'h0003;
            4'b0100: out = 16'h0004;
            4'b0101: out = 16'h0005;
            4'b0110: out = 16'h0006;
            4'b0111: out = 16'h0007;
            4'b1000: out = 16'h0008;
            4'b1001: out = 16'h0009;
            4'b1010: out = 16'h000A;
            4'b1011: out = 16'h000B;
            4'b1100: out = 16'h000C;
            4'b1101: out = 16'h000D;
            4'b1110: out = 16'h000E;
            4'b1111: out = 16'h000F;
        endcase
    end

endmodule