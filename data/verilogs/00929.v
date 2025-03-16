module Forwarding(
    input [15:0] one,
    input [15:0] two,
    input one_A,
    input one_B,
    input two_A,
    input two_B,
    output reg [15:0] outA,
    output reg [15:0] outB,
    output reg forwarda,
    output reg forwardb
);

always @(*) begin
    if (one_A == 1'b1) begin
        outA = one;
        forwarda = 1'b0;
    end
    else if (two_A == 1'b1) begin
        outA = two;
        forwarda = 1'b0;
    end
    else if (one_B == 1'b1) begin
        outB = one;
        forwardb = 1'b0;
    end
    else if (two_B == 1'b1) begin
        outB = two;
        forwardb = 1'b0;
    end
    else if (one_A == 1'b1 && two_A == 1'b1) begin
        outA = two;
        forwarda = 1'b1;
    end
    else if (one_B == 1'b1 && two_B == 1'b1) begin
        outB = two;
        forwardb = 1'b1;
    end
    else begin
        outA = 16'b0;
        outB = 16'b0;
        forwarda = 1'b0;
        forwardb = 1'b0;
    end
end

endmodule