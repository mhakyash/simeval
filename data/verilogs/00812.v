module shift_register_4bit (
    input CLK,
    input LOAD,
    input CLR,
    input [3:0] D,
    output reg [3:0] Q,
    output reg [3:0] Q_next
);

    always @(posedge CLK) begin
        if (CLR) begin
            Q <= 4'b0000;
            Q_next <= 4'b0000;
        end
        else if (LOAD) begin
            Q <= D;
            Q_next <= D;
        end
        else begin
            Q <= {Q[2:0], D[3]};
            Q_next <= {Q[2:0], D[3]};
        end
    end

endmodule