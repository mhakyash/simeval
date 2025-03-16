module snes_bus_sync (
    input clk,           // clock (40 MHz and reset)
    input rst_n,
    input [7:0] PA,      // RAW SNES addr bus
    output reg [7:0] PA_sync,
    input [7:0] D,
    output reg [7:0] D_sync,
    output reg event_latch
);

reg [7:0] PA_reg;
reg [7:0] D_reg;
reg PARD_n_reg;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        PA_sync <= 8'h00;
        D_sync <= 8'h00;
        PA_reg <= 8'h00;
        D_reg <= 8'h00;
        PARD_n_reg <= 1'b1;
        event_latch <= 1'b0;
    end
    else begin
        PA_sync <= PA_reg;
        D_sync <= D_reg;
        PARD_n_reg <= $random % 2;
        if (PA_reg != PA) begin
            PA_reg <= PA;
            event_latch <= 1'b1;
        end
        else begin
            event_latch <= 1'b0;
        end
        if (PARD_n_reg) begin
            D_reg <= D;
        end
    end
end

endmodule