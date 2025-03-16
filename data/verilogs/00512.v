module block_memory_generator
   (
    input wire clka,
    input wire clkb,
    input wire [15:0] addra,
    input wire [15:0] addrb,
    input wire [3:0] dina,
    input wire wea,
    output reg [3:0] doutb
   );

   // Define memory array
   reg [3:0] memory [0:65535];

   // Read and write operations
   always @(posedge clka, posedge clkb) begin
      if (wea) memory[addra] <= dina;
      doutb <= memory[addrb];
   end

endmodule