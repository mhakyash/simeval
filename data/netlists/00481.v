// Benchmark "Convolutional_Encoder_Viterbi_Decoder" written by ABC on Wed Jun 26 15:22:12 2024

module Convolutional_Encoder_Viterbi_Decoder ( 
    in,
    \enc_out[0] , \enc_out[1] , dec_out  );
  input  in;
  output \enc_out[0] , \enc_out[1] , dec_out;
  ZERO     g0(.Y(\enc_out[0] ));
  ZERO     g1(.Y(\enc_out[1] ));
  ONE      g2(.Y(dec_out));
endmodule


