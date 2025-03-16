module mux4_ctrl(
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    input ctrl,
    output reg [7:0] out
);

always @ (A or B or C or D or ctrl) begin
    case(ctrl)
        1'b0: out = A;
        1'b1: out = D;
        default: out = 8'hZZ; // tri-state output
    endcase
end

endmodule