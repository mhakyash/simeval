module Uart_rx(
    input clk,
    input rst_n,
    input rs232_rx,
    input [3:0] num,
    input sel_data,
    output rx_en,
    output reg tx_en,
    output reg [7:0] rx_data
);

// Internal signals
reg in_1, in_2;
reg [7:0] rx_data_r;

// Detect start bit
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        in_1 <= 1'b1;
        in_2 <= 1'b1;
    end else begin
        in_1 <= rs232_rx;
        in_2 <= in_1;
    end
end

assign rx_en = in_2 & (~in_1);

// Collect data bits
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rx_data_r <= 8'd0;
        rx_data <= 8'd0;
    end else begin
        if (sel_data) begin
            case (num)
                0: ; // Ignore start bit
                1: rx_data_r[0] <= rs232_rx; // Collect data bits
                2: rx_data_r[1] <= rs232_rx;
                3: rx_data_r[2] <= rs232_rx;
                4: rx_data_r[3] <= rs232_rx;
                5: rx_data_r[4] <= rs232_rx;
                6: rx_data_r[5] <= rs232_rx;
                7: rx_data_r[6] <= rs232_rx;
                8: rx_data_r[7] <= rs232_rx;
                9: rx_data <= rx_data_r; // Store collected data bits
                default: ; // Default case
            endcase
        end
    end
end

// Enable transmission of data
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        tx_en <= 0;
    end else begin
        if ((num == 4'd9) && sel_data) begin
            tx_en <= 1;
        end else begin
            tx_en <= 0;
        end
    end
end

endmodule