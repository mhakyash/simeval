module top_module (
    input clk,
    input sync_reset, // Synchronous active-high reset
    input async_reset, // Asynchronous active-high reset
    output [3:1] ena,
    output [15:0] q);

    reg [3:1] johnson;
    reg [3:0] bcd;
    wire [3:0] decoder_out;

    // Johnson counter
    always @(posedge clk, posedge sync_reset, posedge async_reset) begin
        if (async_reset) begin
            johnson <= 3'b000;
        end else if (sync_reset) begin
            johnson <= 3'b001;
        end else begin
            johnson <= {johnson[1:0], johnson[2]};
        end
    end

    // BCD decoder
    assign decoder_out = (johnson == 3'b000) ? 4'b0001 :
                         (johnson == 3'b001) ? 4'b0010 :
                         (johnson == 3'b010) ? 4'b0100 :
                         (johnson == 3'b011) ? 4'b1000 :
                         (johnson == 3'b100) ? 4'b0001 :
                         (johnson == 3'b101) ? 4'b0010 :
                         (johnson == 3'b110) ? 4'b0100 :
                                              4'b1000 ;

    // BCD counter
    always @(posedge clk, posedge sync_reset, posedge async_reset) begin
        if (async_reset) begin
            bcd <= 4'b0000;
        end else if (sync_reset) begin
            bcd <= 4'b0001;
        end else begin
            bcd <= bcd + 1;
        end
    end

    // Output enable signals for upper three digits
    assign ena = {bcd[3], bcd[2], bcd[1]};

    // Output BCD value
    assign q = {decoder_out, bcd[0]};

endmodule