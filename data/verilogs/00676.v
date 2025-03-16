module AN_encoder_decoder (
  input [n-1:0] message,
  input [m-1:0] symbol_prob,
  input [m-1:0] symbol_count,
  input precision,
  output reg [precision-1:0] encoded_message,
  output reg [n-1:0] decoded_message
);

parameter n = 8; // number of symbols in the message
parameter m = 256; // number of possible symbols
parameter precision = 16; // number of decimal places in the encoding

// Calculate cumulative probabilities
reg [m-1:0] cum_prob;
reg [m-1:0] prob_sum;
integer i;
always @* begin
  prob_sum = 0;
  for (i = 0; i < m; i = i + 1) begin
    prob_sum = prob_sum + symbol_prob[i];
    cum_prob[i] = prob_sum;
  end
end

// Encode message
reg [precision-1:0] low;
reg [precision-1:0] high;
reg [precision-1:0] range;
integer j;
always @* begin
  low = 0;
  high = (1 << precision) - 1;
  for (j = 0; j < n; j = j + 1) begin
    range = high - low + 1;
    high = low + (range * cum_prob[message[j]] / symbol_count[message[j]]) - 1;
    low = low + (range * cum_prob[message[j]-1] / symbol_count[message[j]]);
  end
  encoded_message = (high + low) / 2;
end

// Decode message
reg [precision-1:0] value;
reg [m-1:0] symbol;
reg [m-1:0] cum_count;
always @* begin
  value = encoded_message;
  for (i = 0; i < m; i = i + 1) begin
    cum_count[i] = symbol_count[i];
    if (i > 0) cum_count[i] = cum_count[i] + cum_count[i-1];
  end
  for (j = n-1; j >= 0; j = j - 1) begin
    range = high - low + 1;
    symbol = 0;
    while (cum_prob[symbol] * range / cum_count[m-1] <= value - low) begin
      symbol = symbol + 1;
    end
    decoded_message[j] = symbol;
    high = low + (range * cum_prob[symbol] / cum_count[m-1]) - 1;
    low = low + (range * cum_prob[symbol-1] / cum_count[m-1]);
    value = value - low;
  end
end

endmodule