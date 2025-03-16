module binary_to_gray (
    input  [n-1:0] binary_in,
    output [n-1:0] gray_out
);
    assign gray_out = binary_in ^ ({1'b0, binary_in[n-1:1]});
endmodule