module seq( output reg x,
  output reg y,
  output reg [1:0] w,
           output reg [1:0] z);
  initial
    fork
      x = 1'b0;
      y = 1'b1;
      w = {x,y};
      z = {y,x};
    join
endmodule

module tb;
  wire x,y;
  wire [1:0] w,z;
  seq uut (x,y,w,z);
  initial 
    begin
      $monitor("time = %0t:x = %b, y = %b, w = %b, z = %b",$time,x,y,w,z);
    end
endmodule
