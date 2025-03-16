module priority_encoder (
    input A, B, C, D, // Inputs for the priority encoder
    output reg [1:0] Y // 2-bit output from the priority encoder
);

always @* begin
    case ({D, C, B, A})
        4'b1110: Y = 2'b11;
        4'b1101: Y = 2'b10;
        4'b1011: Y = 2'b01;
        4'b0111: Y = 2'b00;
        default: Y = 2'b00;
    endcase
end

endmodule

module barrel_shifter (
    input [3:0] data, // 4-bit input for the barrel shifter
    input [1:0] shift, // 2-bit input for the barrel shifter
    output reg [3:0] q // 4-bit output from the barrel shifter
);

always @* begin
    case (shift)
        2'b00: q = data;
        2'b01: q = {data[3:1], data[0]};
        2'b10: q = {data[2:0], data[3]};
        2'b11: q = {data[1:0], data[3:2]};
        default: q = data;
    endcase
end

endmodule

module functional_module (
    input [1:0] Y, // 2-bit input from the priority encoder
    input [3:0] data, // 4-bit input from the barrel shifter
    output [3:0] q // 4-bit output from the functional module
);

assign q = Y | data;

endmodule

module top_module (
    input A, B, C, D, // Inputs for the priority encoder
    input [3:0] data, // 4-bit input for the barrel shifter
    input [1:0] shift, // 2-bit input for the barrel shifter
    output [3:0] q // 4-bit output from the functional module
);

wire [1:0] Y;
priority_encoder pe(A, B, C, D, Y);
barrel_shifter bs(data, shift, q);
functional_module fm(Y, q, q);

endmodule