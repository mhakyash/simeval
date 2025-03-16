module fifo_wrapper(
    // Clock and depth
    input wire clk_in,
    output wire [7:0] depth_out,

    // Data is clocked into the FIFO on each clock edge where both valid & ready are high
    input wire [7:0] inputData_in,
    input wire inputValid_in,
    output wire inputReady_out,

    // Data is clocked out of the FIFO on each clock edge where both valid & ready are high
    output wire [7:0] outputData_out,
    output wire outputValid_out,
    input wire outputReady_in
);

    wire inputFull;
    wire outputEmpty;

    // Invert "full/empty" signals to give "ready/valid" signals
    assign inputReady_out = !inputFull;
    assign outputValid_out = !outputEmpty;

    // The encapsulated FIFO
    altera_fifo fifo(
        .clock(clk_in),
        .usedw(depth_out),

        // Production end
        .data(inputData_in),
        .wrreq(inputValid_in),
        .full(inputFull),

        // Consumption end
        .q(outputData_out),
        .empty(outputEmpty),
        .rdreq(outputReady_in)
    );

endmodule