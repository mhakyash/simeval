module mux_2to1(
    input A,
    input B,
    input sel,
    output Y
);

assign Y = sel ? B : A;

endmodule