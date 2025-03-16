module signal_selector (
    input A1,
    input A2,
    input A3,
    input B1,
    input C1,
    output Y,
    input VPB,
    input VPWR,
    input VGND,
    input VNB
);

    wire sel1, sel2;

    assign sel1 = (A1 >= A2) && (A1 >= A3);
    assign sel2 = (A2 >= A1) && (A2 >= A3);

    always @(*) begin
        if (sel1) begin
            Y = B1;
        end else if (sel2) begin
            Y = C1;
        end else begin
            Y = B1 ^ C1;
        end
    end

endmodule