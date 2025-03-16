module vending_machine(
    input clk,
    input reset,
    input item1,
    input item2,
    input item3,
    input item4,
    input coin,
    input cancel,
    output reg [7:0] price,
    output reg [7:0] money,
    output reg dispense,
    output reg [7:0] change,
    output reg out_of_stock
);

// Define constants
parameter ITEM1_PRICE = 64;
parameter ITEM2_PRICE = 54;
parameter ITEM3_PRICE = 27;
parameter ITEM4_PRICE = 63;
parameter ITEM1_STOCK = 5;
parameter ITEM2_STOCK = 0;
parameter ITEM3_STOCK = 3;
parameter ITEM4_STOCK = 2;

// Define state variables
reg [7:0] current_item_price;
reg [7:0] current_money;
reg [7:0] current_change;
reg [7:0] item1_stock;
reg [7:0] item2_stock;
reg [7:0] item3_stock;
reg [7:0] item4_stock;
reg [1:0] current_state;
reg [1:0] next_state;

// Define state machine states
parameter IDLE_STATE = 2'b00;
parameter SELECT_ITEM_STATE = 2'b01;
parameter INSERT_COIN_STATE = 2'b10;
parameter DISPENSE_ITEM_STATE = 2'b11;

// Define state machine transitions
parameter TRANSITION_IDLE_TO_SELECT_ITEM = 2'b00;
parameter TRANSITION_SELECT_ITEM_TO_INSERT_COIN = 2'b01;
parameter TRANSITION_INSERT_COIN_TO_DISPENSE_ITEM = 2'b10;
parameter TRANSITION_DISPENSE_ITEM_TO_IDLE = 2'b11;

// Define state machine outputs
parameter OUTPUT_NONE = 2'b00;
parameter OUTPUT_DISPENSE = 2'b01;
parameter OUTPUT_RETURN_CHANGE = 2'b10;
parameter OUTPUT_RETURN_MONEY = 2'b11;

// Define state machine logic
always @(posedge clk, posedge reset) begin
    if (reset) begin
        current_item_price <= 0;
        current_money <= 0;
        current_change <= 0;
        item1_stock <= ITEM1_STOCK;
        item2_stock <= ITEM2_STOCK;
        item3_stock <= ITEM3_STOCK;
        item4_stock <= ITEM4_STOCK;
        current_state <= IDLE_STATE;
        next_state <= IDLE_STATE;
        dispense <= 0;
        out_of_stock <= 0;
    end else begin
        current_state <= next_state;
        case (current_state)
            IDLE_STATE: begin
                if (item1) begin
                    current_item_price <= ITEM1_PRICE;
                    next_state <= SELECT_ITEM_STATE;
                end else if (item2) begin
                    current_item_price <= ITEM2_PRICE;
                    next_state <= SELECT_ITEM_STATE;
                end else if (item3) begin
                    current_item_price <= ITEM3_PRICE;
                    next_state <= SELECT_ITEM_STATE;
                end else if (item4) begin
                    current_item_price <= ITEM4_PRICE;
                    next_state <= SELECT_ITEM_STATE;
                end else begin
                    next_state <= IDLE_STATE;
                end
            end
            SELECT_ITEM_STATE: begin
                if (current_item_price == 0) begin
                    next_state <= IDLE_STATE;
                end else if (current_item_price <= current_money) begin
                    next_state <= DISPENSE_ITEM_STATE;
                end else begin
                    next_state <= INSERT_COIN_STATE;
                end
            end
            INSERT_COIN_STATE: begin
                if (cancel) begin
                    next_state <= IDLE_STATE;
                end else if (coin == 5 || coin == 10 || coin == 25 || coin == 50) begin
                    current_money <= current_money + coin;
                    next_state <= SELECT_ITEM_STATE;
                end else begin
                    next_state <= INSERT_COIN_STATE;
                end
            end
            DISPENSE_ITEM_STATE: begin
                if (current_item_price == 0) begin
                    next_state <= IDLE_STATE;
                end else if (current_item_price <= current_money) begin
                    current_change <= current_money - current_item_price;
                    current_money <= 0;
                    dispense <= 1;
                    out_of_stock <= 0;
                    if (item1 && item1_stock > 0) begin
                        item1_stock <= item1_stock - 1;
                    end else if (item2 && item2_stock > 0) begin
                        item2_stock <= item2_stock - 1;
                    end else if (item3 && item3_stock > 0) begin
                        item3_stock <= item3_stock - 1;
                    end else if (item4 && item4_stock > 0) begin
                        item4_stock <= item4_stock - 1;
                    end else begin
                        out_of_stock <= 1;
                    end
                    next_state <= DISPENSE_ITEM_STATE;
                end else begin
                    next_state <= SELECT_ITEM_STATE;
                end
            end
        endcase
    end
end

// Define change and money outputs
always @(*) begin
    if (current_change > 0) begin
        change = current_change;
        money = 0;
    end else begin
        change = 0;
        money = current_money;
    end
end

// Define state machine outputs
always @(*) begin
    case (current_state)
        IDLE_STATE: begin
            dispense = 0;
        end
        SELECT_ITEM_STATE: begin
            dispense = 0;
        end
        INSERT_COIN_STATE: begin
            dispense = 0;
        end
        DISPENSE_ITEM_STATE: begin
            dispense = OUTPUT_DISPENSE;
            if (current_change > 0) begin
                dispense = OUTPUT_RETURN_CHANGE;
            end else if (out_of_stock) begin
                dispense = OUTPUT_RETURN_MONEY;
            end
        end
    endcase
end

endmodule