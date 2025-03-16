// Benchmark "mux2to1" written by ABC on Wed Jun 26 15:22:02 2024

module mux2to1 ( 
    data_in_0, data_in_1, select,
    data_out  );
  input  data_in_0, data_in_1, select;
  output data_out;
  MX2X1    g0(.A(data_in_0), .B(data_in_1), .S0(select), .Y(data_out));
endmodule


