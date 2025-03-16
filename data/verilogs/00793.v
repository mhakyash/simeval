module system_auto_cc_0_synchronizer_ff_77
   (\Q_reg_reg[0]_0 ,
    AS,
    out,
    m_aclk,
    in0);
  output \Q_reg_reg[0]_0 ;
  output [0:0]AS;
  input out;
  input m_aclk;
  input [0:0]in0;

  wire [0:0]AS;
  wire Q_reg;
  wire [0:0]in0;
  wire m_aclk;
  wire out;

  assign \Q_reg_reg[0]_0  = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__2 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule