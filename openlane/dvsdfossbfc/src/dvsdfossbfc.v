/*Bloom Filter Counter Design*/
module dvsdfossbfc (
  input wire clk,                // Clock input
  input wire reset,              // Reset input
  input wire enable,             // Enable input
  input wire [7:0] inputData,     // Input data to be counted
  output wire [15:0] count        // Counter value output
);

  reg [15:0] counter;
  reg [15:0] bloomFilter;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      counter <= 16'b0000_0000_0000_0000;
      bloomFilter <= 16'b0000_0000_0000_0000;
    end else if (enable) begin
      if (bloomFilter[inputData]) begin
        // Bloom filter indicates that the input data is likely already counted
        counter <= counter;
      end else begin
        // Bloom filter indicates that the input data is likely not counted
        counter <= counter + 1;
        bloomFilter[inputData] <= 1;
      end
    end
  end

  assign count = counter;

endmodule
