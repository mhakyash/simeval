module sync_signal(
    input clk,      // clock
    input in,       // input signal
    output out,     // synchronized output signal
    output falling, // synchronized falling edge output
    output rising   // synchronized rising edge output
);
    reg [2:0] shiftreg;

    initial begin
        shiftreg <= 0;
    end

    always @(posedge clk) begin
        shiftreg[2:1] <= shiftreg[1:0];
        shiftreg[0] <= in;
    end

    assign out = shiftreg[1];
    assign falling = shiftreg[2] & ~shiftreg[1];
    assign rising = ~shiftreg[2] & shiftreg[1];

endmodule