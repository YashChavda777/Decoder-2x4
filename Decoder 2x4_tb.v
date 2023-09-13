module Decoder2x4_tb;
  reg A, B;
  wire [3:0] Y;

 Decoder2x4 UUT (
    .A(A),
    .B(B),
    .Y(Y)
  );

  initial begin
    $display("Testing 2-to-4 Decoder");
    A = 0;
     B = 0; 
    #10;
    
    A = 0;
     B = 1; 
    #10;
    
    A = 1;
     B = 0; 
    #10;
    
    A = 1;
     B = 1; 
    #10;
    
    $finish;
  end

  always @(A or B or Y) begin
    $display("A=%b, B=%b -> Y=%b", A, B, Y);
  end

endmodule
