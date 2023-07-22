module ConvolutionalEncoderDecoder_TB;

  // Inputs
  reg [3:0] x;
  reg [3:0] y;
  reg [7:0] a;
  reg [7:0] b;

  // Outputs
  wire [7:0] encodedOutput;
  wire [3:0] x1;
  wire [3:0] y1;
  wire [7:0] combinedData;
  wire [7:0] decodedData;

  // Instantiate the module under test
  ConvolutionalEncoderDecoder dut (
    .x(x),
    .y(y),
    .a(a),
    .b(b),
    .encodedOutput(encodedOutput),
    .x1(x1),
    .y1(y1),
    .combinedData(combinedData),
    .decodedData(decodedData)
  );

  // Test stimulus
  initial begin
    // Initialize inputs
    x = 4'b0000;
    y = 4'b0000;
    a = 8'b00000000;
    b = 8'b00000000;
    
    // Apply test cases
    #10;
    x = 4'b1010;
    y = 4'b0101;
    a = 8'b10001000;
    b = 8'b00010001;
    #20;
    
    // Add more test cases as needed
    
    // Display results
    $display("x = %b, y = %b, a = %b, b = %b", x, y, a, b);
    $display("Combined Data = %b", combinedData);
    $display("Encoded Output = %b", encodedOutput);
    $display("Decoded Data = %b", decodedData);
    $display("Decoded x1 = %b, Decoded y1 = %b", x1, y1);
    
    // End simulation
    #10 $finish;
  end

endmodule

