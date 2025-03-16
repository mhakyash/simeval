// Benchmark "stratixiv_tsdblock" written by ABC on Wed Jun 26 15:22:07 2024

module stratixiv_tsdblock ( clock, 
    \offset[0] , \offset[1] , \offset[2] , \offset[3] , \offset[4] ,
    \offset[5] , \testin[0] , \testin[1] , \testin[2] , \testin[3] ,
    \testin[4] , \testin[5] , \testin[6] , \testin[7] , clk, ce, clr,
    fdbkctrlfromcore, compouttest,
    \tsdcalo[0] , \tsdcalo[1] , \tsdcalo[2] , \tsdcalo[3] , \tsdcalo[4] ,
    \tsdcalo[5] , \tsdcalo[6] , \tsdcalo[7] , tsdcaldone, tsdcompout,
    \offsetout[0] , \offsetout[1] , \offsetout[2] , \offsetout[3] ,
    \offsetout[4] , \offsetout[5]   );
  input  clock;
  input  \offset[0] , \offset[1] , \offset[2] , \offset[3] , \offset[4] ,
    \offset[5] , \testin[0] , \testin[1] , \testin[2] , \testin[3] ,
    \testin[4] , \testin[5] , \testin[6] , \testin[7] , clk, ce, clr,
    fdbkctrlfromcore, compouttest;
  output \tsdcalo[0] , \tsdcalo[1] , \tsdcalo[2] , \tsdcalo[3] , \tsdcalo[4] ,
    \tsdcalo[5] , \tsdcalo[6] , \tsdcalo[7] , tsdcaldone, tsdcompout,
    \offsetout[0] , \offsetout[1] , \offsetout[2] , \offsetout[3] ,
    \offsetout[4] , \offsetout[5] ;
  reg \tsdcompout_wire[0] ;
  wire n72;
  MX2X1    g00(.A(\tsdcompout_wire[0] ), .B(compouttest), .S0(ce), .Y(n72));
  ZERO     g01(.Y(\tsdcalo[0] ));
  ZERO     g02(.Y(\tsdcalo[1] ));
  ZERO     g03(.Y(\tsdcalo[2] ));
  ZERO     g04(.Y(\tsdcalo[3] ));
  ZERO     g05(.Y(\tsdcalo[4] ));
  ZERO     g06(.Y(\tsdcalo[5] ));
  ZERO     g07(.Y(\tsdcalo[6] ));
  ZERO     g08(.Y(\tsdcalo[7] ));
  ZERO     g09(.Y(tsdcaldone));
  ZERO     g10(.Y(\offsetout[0] ));
  ZERO     g11(.Y(\offsetout[1] ));
  ZERO     g12(.Y(\offsetout[2] ));
  ZERO     g13(.Y(\offsetout[3] ));
  ZERO     g14(.Y(\offsetout[4] ));
  ZERO     g15(.Y(\offsetout[5] ));
  BUFX1    g16(.A(\tsdcompout_wire[0] ), .Y(tsdcompout));
  always @ (posedge clock) begin
    \tsdcompout_wire[0]  <= n72;
  end
endmodule


