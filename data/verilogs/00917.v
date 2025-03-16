module mux_4to1(
    input [7:0] d0, d1, d2, d3,
    input s0, s1,
    output [7:0] out
);

wire [1:0] sel;
assign sel = {s1, s0};

assign out = (sel == 2'b00) ? d0 :
             (sel == 2'b01) ? d1 :
             (sel == 2'b10) ? d2 :
             (sel == 2'b11) ? d3 : 8'b0;

endmodule