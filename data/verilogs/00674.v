module input_output_pipeline (
    input clk,
    input reset_n,
    input in_valid,
    input [7:0] in_data,
    output reg out_valid,
    output reg [7:0] out_data,
    input out_ready
);

    // Signal declarations
    reg [7:0] in_payload;
    reg [7:0] out_payload;
    reg ready;
    reg in_ready;

    // Payload mapping
    always @* begin
        in_payload = in_data;
        {out_data} = out_payload;
    end

    // Ready and valid signals
    always @* begin
        ready = out_ready;
        out_valid = in_valid;
        out_payload = in_payload;
        in_ready = ready;
    end

    // Backpressure warning
    always @(negedge in_ready) begin
        $display("%m: The downstream component is backpressuring by deasserting ready, but the upstream component can't be backpressured.");
    end

endmodule