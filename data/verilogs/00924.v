module top();

    // Inputs are registered
    reg D;
    reg RESET;

    // Outputs are wires
    wire Q;

    initial
    begin
        // Initial state is x for all inputs.
        D     = 1'bX;
        RESET = 1'bX;

        #20   D     = 1'b0;
        #40   RESET = 1'b0;
        #60   D     = 1'b1;
        #80   RESET = 1'b1;
        #100  D     = 1'b0;
        #120  RESET = 1'b0;
        #140  RESET = 1'b1;
        #160  D     = 1'b1;
        #180  RESET = 1'bx;
        #200  D     = 1'bx;
    end

    // Create a clock
    reg CLK;
    initial
    begin
        CLK = 1'b0;
    end

    always
    begin
        #5 CLK = ~CLK;
    end

    sky130_fd_sc_ls__udp_dff$PR dut (.D(D), .RESET(RESET), .Q(Q), .CLK(CLK));

endmodule

module sky130_fd_sc_ls__udp_dff$PR (
    input D,
    input RESET,
    output Q,
    input CLK
);

    reg Q_reg;

    always @(posedge CLK or negedge RESET)
    begin
        if (~RESET) begin
            Q_reg <= 1'b0;
        end
        else begin
            Q_reg <= D;
        end
    end

    assign Q = Q_reg;

endmodule