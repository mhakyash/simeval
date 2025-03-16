module mux4to1 (
    input [7:0] inA,
    input [7:0] inB,
    input [7:0] inC,
    input [7:0] inD,
    input [1:0] select,
    output reg [7:0] out
    );

    always @(*) begin
        case (select)
            2'b00: out = inA;
            2'b01: out = inB;
            2'b10: out = inC;
            2'b11: out = inD;
        endcase
    end

endmodule