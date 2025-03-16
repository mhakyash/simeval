module test #(parameter n = 50) (
  output reg result
);

  reg set;
  parameter d = 1.55;
  reg fail;
  reg [7:0] ii;

  initial begin
    fail = 0;
    #d set = 0;
    //$display("time in units of 10ns: %0t, in ns: %0d, set: %0b",$time,ii,set);
    if((ii < 15) || (ii > 16)) fail = 1;
    #d set = 1;
    //$display("time in units of 10ns: %0t, in ns: %0d, set: %0b",$time,ii,set);
    if((ii < 31) || (ii > 32)) fail = 1;
  end

  initial begin
    //$dumpvars;
    for(ii = 0; ii < n; ii = ii + 1) begin
      //$display("time in ns: %0d, set: %0b",ii,set);
      #0.1;
    end
    $display("\n\t\t**********************************************");
    if(fail) begin
      $display("\t\t********** timescale test FAILED *************");
      result = 0;
    end
    else begin
      $display("\t\t********** timescale test PASSED *************");
      result = 1;
    end
    $display("\t\t**********************************************\n");
    $finish;
  end
endmodule