module vending_machine (
    input coin,
    input button1,
    input button2,
    input button3,
    output product1,
    output product2,
    output product3,
    output change
);

    wire valid_selection = (button1 | button2 | button3) & ~coin;
    
    assign product1 = (valid_selection & button1) ? 1'b1 : 1'b0;
    assign product2 = (valid_selection & button2) ? 1'b1 : 1'b0;
    assign product3 = (valid_selection & button3) ? 1'b1 : 1'b0;
    assign change = coin & ~valid_selection;
    
endmodule