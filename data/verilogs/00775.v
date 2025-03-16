module barrel_shifter_4bit (
    input [3:0] A,
    input load,
    input reset,
    input [1:0] shift,
    output reg [3:0] Q
);

always @(posedge clk) begin
    if (reset) begin
        Q <= 4'b0;
    end else if (load) begin
        Q <= A;
    end else begin
        case (shift)
            2'b00: Q <= Q;
            2'b01: Q <= {Q[2:0], 1'b0};
            2'b10: Q <= {1'b0, Q[3:1]};
            2'b11: begin
                if (shift_dir) begin
                    Q <= {Q[2:0], Q[3]};
                end else begin
                    Q <= {Q[0], Q[3:1]};
                end
            end
        endcase
    end
end

endmodule