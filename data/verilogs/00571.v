module nor4_module (
    input A,
    input B,
    input C,
    input D,
    output reg Y
);

    always @(*) begin
        if(!(A|B|C|D)) begin
            Y = 1'b1;
        end else begin
            Y = 1'b0;
        end
    end

endmodule