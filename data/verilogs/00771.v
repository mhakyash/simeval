module hello (
   input [3:0] tied_also
   );

   wire [3:0] inverted_tied_also;

   assign inverted_tied_also[3] = tied_also[3];
   assign inverted_tied_also[2] = tied_also[2];
   assign inverted_tied_also[1] = ~tied_also[1];
   assign inverted_tied_also[0] = tied_also[0];

   assign tied_also = (tied_also[2] == 1'b0) ? inverted_tied_also : (tied_also[1] == 1'b0) ? inverted_tied_also : tied_also;

endmodule