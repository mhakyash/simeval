module mux_2to1 (
    input A,
    input B,
    input SEL,
    output reg OUT
);

    always @ (SEL)
    begin
        if (SEL == 0)
            OUT = A;
        else
            OUT = B;
    end

endmodule