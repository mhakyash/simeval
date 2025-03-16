module vending_machine (
    input clk,
    input reset,
    input [2:0] coin,
    input [1:0] product,
    output reg dispense,
    output reg [2:0] change,
    output reg [3:0] display
);

    // Constants for product costs
    localparam COST_A = 2;
    localparam COST_B = 3;
    localparam COST_C = 4;

    // Registers for amount inserted and product cost
    reg [2:0] amount_inserted;
    reg [2:0] product_cost;

    // Register for excess change
    reg [2:0] excess_change;

    always @(posedge clk) begin
        if (reset) begin
            amount_inserted <= 0;
            product_cost <= 0;
            excess_change <= 0;
            dispense <= 0;
            change <= 0;
            display <= 0;
        end else begin
            // Update amount inserted
            case (coin)
                1: amount_inserted <= amount_inserted + 5;
                2: amount_inserted <= amount_inserted + 10;
                3: amount_inserted <= amount_inserted + 25;
                4: amount_inserted <= amount_inserted + 50;
                5: amount_inserted <= amount_inserted + 100;
            endcase

            // Update product cost
            case (product)
                1: product_cost <= COST_A;
                2: product_cost <= COST_B;
                3: product_cost <= COST_C;
            endcase

            // Calculate change
            excess_change <= amount_inserted - product_cost;
            change <= excess_change;

            // Dispense product if exact amount inserted
            if (amount_inserted >= product_cost) begin
                dispense <= 1;
                amount_inserted <= amount_inserted - product_cost;
            end else begin
                dispense <= 0;
            end

            // Update display
            display <= {amount_inserted, product_cost};
        end
    end

endmodule