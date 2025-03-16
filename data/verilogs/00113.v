module top_module (
    input clk,             // Clock input
    input reset,           // Synchronous active-high reset
    input A, B, C,         // 3-bit inputs for the decoder
    input EN,              // Enable input for the decoder
    output [7:0] q         // 8-bit output from the register
);

// Instantiate decoder and binary counter modules
decoder dec(A, B, C, EN, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
binary_counter counter(clk, reset, Q);

// Instantiate adder module
adder add(Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Q, q);

endmodule

// Decoder module
module decoder (
    input A, B, C, EN,
    output reg Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
);

always @ (A or B or C or EN) begin
    if (EN) begin
        case ({A, B, C})
            3'b000: begin Y0 = 1; Y1 = 0; Y2 = 0; Y3 = 0; Y4 = 0; Y5 = 0; Y6 = 0; Y7 = 0; end
            3'b001: begin Y0 = 0; Y1 = 1; Y2 = 0; Y3 = 0; Y4 = 0; Y5 = 0; Y6 = 0; Y7 = 0; end
            3'b010: begin Y0 = 0; Y1 = 0; Y2 = 1; Y3 = 0; Y4 = 0; Y5 = 0; Y6 = 0; Y7 = 0; end
            3'b011: begin Y0 = 0; Y1 = 0; Y2 = 0; Y3 = 1; Y4 = 0; Y5 = 0; Y6 = 0; Y7 = 0; end
            3'b100: begin Y0 = 0; Y1 = 0; Y2 = 0; Y3 = 0; Y4 = 1; Y5 = 0; Y6 = 0; Y7 = 0; end
            3'b101: begin Y0 = 0; Y1 = 0; Y2 = 0; Y3 = 0; Y4 = 0; Y5 = 1; Y6 = 0; Y7 = 0; end
            3'b110: begin Y0 = 0; Y1 = 0; Y2 = 0; Y3 = 0; Y4 = 0; Y5 = 0; Y6 = 1; Y7 = 0; end
            3'b111: begin Y0 = 0; Y1 = 0; Y2 = 0; Y3 = 0; Y4 = 0; Y5 = 0; Y6 = 0; Y7 = 1; end
        endcase
    end else begin
        Y0 = 0; Y1 = 0; Y2 = 0; Y3 = 0; Y4 = 0; Y5 = 0; Y6 = 0; Y7 = 0;
    end
end

endmodule

// Binary counter module
module binary_counter (
    input clk,
    input rst,
    output reg [3:0] Q
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        Q <= 4'b0000;
    end else begin
        Q <= Q + 1;
    end
end

endmodule

// Adder module
module adder (
    input [7:0] in1,       // Input from decoder
    input [3:0] in2,       // Input from counter
    output reg [7:0] out   // Output to register
);

always @ (in1 or in2) begin
    out = in1 + in2;
end

endmodule