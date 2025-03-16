module address_operation (
    address_a,
    address_b,
    clock,
    q_a,
    q_b
);

    input   [8:0]   address_a;
    input   [8:0]   address_b;
    input   clock;
    output  [3:0]   q_a;
    output  [3:0]   q_b;

    always @(posedge clock) begin
        if (address_a[8] == 1) begin
            q_a = address_a[3:0] + 1;
        end else begin
            q_a = address_a[3:0] + 2;
        end

        if (address_b[8] == 1) begin
            q_b = address_b[3:0] + 1;
        end else begin
            q_b = address_b[3:0] + 2;
        end
    end

endmodule