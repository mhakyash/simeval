module HMAC (
  input [k-1:0] key,
  input [m-1:0] msg,
  input [n-1:0] block,
  output [h-1:0] tag
);

parameter k = 32; // key length in bits
parameter m = 256; // message length in bits
parameter n = 512; // block size of hash function in bits
parameter h = 256; // output size of hash function in bits

reg [h-1:0] hmac;

// Key and message preparation
reg [h-1:0] hashed_key;
reg [n-1:0] padded_key;
reg [k-1:0] k1, k2;
reg [n-1:0] inner_hash, outer_hash;

always @* begin
  if (k > n) begin
    // Hash the key if it is longer than the block size
    hashed_key = H(key);
    padded_key = {hashed_key, {n-k{1'b0}}};
  end else begin
    // Pad the key with zeros if it is shorter than the block size
    padded_key = {key, {n-k{1'b0}}};
  end
  
  // XOR the key with the inner and outer padding values
  k1 = padded_key ^ {k{32'h36363636}};
  k2 = padded_key ^ {k{32'h5c5c5c5c}};
  
  // Concatenate K1 with the message and hash the result
  inner_hash = H({k1, msg});
  
  // Concatenate K2 with the intermediate hash value and hash the result
  outer_hash = H({k2, inner_hash});
  
  // Output the final HMAC value
  hmac = outer_hash;
end

assign tag = hmac;

// HMAC checking
reg [h-1:0] recalculated_hmac;

always @* begin
  // Recalculate the HMAC using the same key and message
  recalculated_hmac = HMAC(key, msg, block);
  
  // Compare the recalculated HMAC with the provided HMAC value
  if (recalculated_hmac == tag) begin
    // The message is authentic and has not been tampered with
    $display("Message is authentic");
  end else begin
    // The message has been tampered with
    $display("Message has been tampered with");
  end
end

endmodule