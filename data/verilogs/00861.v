module logic_gate(
    input A1,
    input [1:0] select,
    input A2,
    input A3,
    input B1,
    input C1,
    input reset,
    output reg X,
    output reg valid
);

always @(A1, select, A2, A3, B1, C1, reset) begin
    if(reset) begin
        X <= 1'b0;
        valid <= 1'b0;
    end else begin
        if(select == 2'b00) begin
            if(A1 && A2 && A3) begin
                X <= 1'b1;
                valid <= 1'b1;
            end else begin
                X <= 1'b0;
                valid <= 1'b0;
            end
        end else begin
            if(A1 && B1 && C1) begin
                X <= 1'b1;
                valid <= 1'b1;
            end else begin
                X <= 1'b0;
                valid <= 1'b0;
            end
        end
    end
end

endmodule