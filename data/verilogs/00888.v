module vending_machine (
    input clk,
    input reset,
    input nickel,
    input dime,
    input quarter,
    output candy_dispense,
    output soda_dispense,
    output reg [7:0] display
);

reg [7:0] balance = 0;

assign candy_dispense = (balance >= 10) && (nickel || dime || quarter);
assign soda_dispense = (balance >= 25) && (nickel || dime || quarter);

always @(posedge clk) begin
    if (reset) begin
        balance <= 0;
        display <= 0;
    end
    else begin
        if (nickel) begin
            balance <= balance + 5;
        end
        if (dime) begin
            balance <= balance + 10;
        end
        if (quarter) begin
            balance <= balance + 25;
        end
        
        if (candy_dispense) begin
            balance <= balance - 10;
        end
        if (soda_dispense) begin
            balance <= balance - 25;
        end
        
        display <= balance;
    end
end

endmodule