module vending_machine(
    input clk, reset, coin, button_a, button_b, button_c,
    output reg [1:0] item_dispensed,
    output reg [6:0] display
);

    parameter IDLE = 2'b00, SODA_SELECTED = 2'b01, CHIPS_SELECTED = 2'b10, CANDY_SELECTED = 2'b11;
    parameter SODA_PRICE = 75, CHIPS_PRICE = 75, CANDY_PRICE = 75;

    reg [1:0] state;
    reg [7:0] deposited;

    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            deposited <= 0;
            item_dispensed <= 0;
            display <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (coin) begin
                        deposited <= deposited + 25;
                        display <= deposited;
                    end
                    if (button_a) begin
                        state <= SODA_SELECTED;
                        display <= {deposited, 2'b00};
                    end
                    if (button_b) begin
                        state <= CHIPS_SELECTED;
                        display <= {deposited, 2'b01};
                    end
                    if (button_c) begin
                        state <= CANDY_SELECTED;
                        display <= {deposited, 2'b10};
                    end
                end
                SODA_SELECTED: begin
                    if (coin) begin
                        deposited <= deposited + 25;
                        if (deposited >= SODA_PRICE) begin
                            deposited <= deposited - SODA_PRICE;
                            item_dispensed <= 2'b00;
                            state <= IDLE;
                            display <= 0;
                        end else begin
                            display <= {deposited, 2'b00};
                        end
                    end
                end
                CHIPS_SELECTED: begin
                    if (coin) begin
                        deposited <= deposited + 25;
                        if (deposited >= CHIPS_PRICE) begin
                            deposited <= deposited - CHIPS_PRICE;
                            item_dispensed <= 2'b01;
                            state <= IDLE;
                            display <= 0;
                        end else begin
                            display <= {deposited, 2'b01};
                        end
                    end
                end
                CANDY_SELECTED: begin
                    if (coin) begin
                        deposited <= deposited + 25;
                        if (deposited >= CANDY_PRICE) begin
                            deposited <= deposited - CANDY_PRICE;
                            item_dispensed <= 2'b10;
                            state <= IDLE;
                            display <= 0;
                        end else begin
                            display <= {deposited, 2'b10};
                        end
                    end
                end
            endcase
        end
    end

endmodule