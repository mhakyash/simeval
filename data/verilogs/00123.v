module four_bit_adder (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

  wire [3:0] temp_sum;
  wire temp_cout;

  assign temp_sum = a + b + cin;
  assign sum = temp_sum[3:0];
  assign temp_cout = (temp_sum > 4'b1111);
  assign cout = temp_cout;

endmodule
```
```Verilog
module four_bit_adder_tb;

  reg [3:0] a;
  reg [3:0] b;
  reg cin;

  wire [3:0] sum;
  wire cout;

  four_bit_adder dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  initial begin
    $dumpfile("four_bit_adder_tb.vcd");
    $dumpvars(0, four_bit_adder_tb);
    $display("a b cin | sum cout");
    $monitor("%b %b %b | %b %b", a, b, cin, sum, cout);

    a = 4'b0000; b = 4'b0000; cin = 0;
    #10;
    a = 4'b0001; b = 4'b0000; cin = 0;
    #10;
    a = 4'b0001; b = 4'b0001; cin = 0;
    #10;
    a = 4'b1000; b = 4'b0111; cin = 0;
    #10;
    a = 4'b1000; b = 4'b0111; cin = 1;
    #10;
    a = 4'b1111; b = 4'b1111; cin = 1;
    #10;
    $finish;
  end

endmodule