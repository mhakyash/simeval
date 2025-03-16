module synchronizer_ff
   (D,
    Q,
    m_aclk,
    AR);
  output reg [3:0]D;
  input [3:0]Q;
  input m_aclk;
  input AR;

  reg [3:0] Q_sync;
  always @(posedge m_aclk) begin
    Q_sync <= Q;
    D <= Q_sync;
  end

  always @(negedge AR) begin
    if (!AR) begin
      D <= 4'b0;
    end
  end
endmodule