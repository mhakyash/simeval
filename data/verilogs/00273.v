module my_module (
    input [1:0] temp,
    output reg pass
);

reg [1:0] memory [1:0];

initial begin
    // references & concatenation.
    memory[1][0] = 2'h0;
    memory[1][1] = {2'h3, temp};
    memory[1] = {memory[1], {2'h3, temp}};

    // Display the value that will be checked
    $display("memory[1] = %h", memory[1]);

    // Check that setting was made correctly
    if (memory[1] != {{2{temp}}, {2{temp}}}) begin
        $display("ERROR! memory[1] failed to get set correctly!");
        pass = 0;
    end else begin
        $display("PASS! memory[1] set correctly.");
        pass = 1;
    end

    // Display the value that was checked
    $display("memory[1] = %h", memory[1]);
end

endmodule