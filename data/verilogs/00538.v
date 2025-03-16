module counter_2bit (
    Q      ,
    CLK    ,
    RESET_B
);

    // Module ports
    output reg [1:0] Q      ;
    input  CLK            ;
    input  RESET_B        ;

    // Local signals
    reg [1:0] next_Q;

    // Counter logic
    always @(posedge CLK, negedge RESET_B) begin
        if (~RESET_B) begin
            Q <= 2'b00;
        end else begin
            next_Q <= Q + 1;
            if (next_Q == 2'b11) begin
                Q <= 2'b00;
            end else begin
                Q <= next_Q;
            end
        end
    end

endmodule