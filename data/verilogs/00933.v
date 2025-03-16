module mux_4_to_1(
    input D0, D1, D2, D3,
    input S0, S1,
    output reg Y
);

    always @* begin
        case ({S1,S0})
            2'b00: Y = D0;
            2'b01: Y = D1;
            2'b10: Y = D2;
            2'b11: Y = D3;
        endcase
    end

endmodule