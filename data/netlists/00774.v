// Benchmark "four_bit_adder" written by ABC on Wed Jun 26 15:22:19 2024

module four_bit_adder ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] , cin,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , cout  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    cin;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , cout;
  ZERO     g0(.Y(\sum[0] ));
  ZERO     g1(.Y(\sum[1] ));
  ZERO     g2(.Y(\sum[2] ));
  ZERO     g3(.Y(\sum[3] ));
  ZERO     g4(.Y(cout));
endmodule


