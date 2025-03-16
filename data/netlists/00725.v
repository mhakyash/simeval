// Benchmark "vending_machine" written by ABC on Wed Jun 26 15:22:18 2024

module vending_machine ( 
    coin, button1, button2, button3,
    product1, product2, product3, change  );
  input  coin, button1, button2, button3;
  output product1, product2, product3, change;
  wire new_n9, new_n10, new_n14;
  NOR3X1   g0(.A(button3), .B(button2), .C(button1), .Y(new_n9));
  NOR2X1   g1(.A(new_n9), .B(coin), .Y(new_n10));
  AND2X1   g2(.A(new_n10), .B(button1), .Y(product1));
  AND2X1   g3(.A(new_n10), .B(button2), .Y(product2));
  AND2X1   g4(.A(new_n10), .B(button3), .Y(product3));
  OR2X1    g5(.A(new_n9), .B(coin), .Y(new_n14));
  AND2X1   g6(.A(new_n14), .B(coin), .Y(change));
endmodule


