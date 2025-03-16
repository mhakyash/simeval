module dff_with_enable_and_set(output Q, input C, E, S, D);
    reg Q;

    always @(negedge C) begin
        if (E) begin
            if (S) begin
                Q <= 1;
            end else begin
                Q <= D;
            end
        end
    end
endmodule