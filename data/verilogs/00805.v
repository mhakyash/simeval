module multiplication_module (
    input [3:0] A,
    input [3:0] B,
    output [7:0] product
);

    wire [7:0] temp_product;
    
    assign temp_product = A * B;
    assign product[7:4] = temp_product[7:4];
    assign product[3:0] = temp_product[3:0];
    
endmodule