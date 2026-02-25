module xnor_gate_tb;
  
  reg a,b;
  
  wire y;
  
  xnor_gate dut (.a(a), .b(B), .y(y));
  
  initial 
    
    begin
      
      $monitor($time,"a=%d,b=%d, y=%y",a,b,y);
      
      #5 a=0; b=0;
      #5 a=0; b=1;
      #5 a=1; b=0;
      #5 a=1; b=1;
      #20 $finish;
      
    end
  
  initial
    
    begin
      
      $dumpfile("dump.vcd");
      
      $dumpvars(0, xnor_gate_tb);
      
    end
  
endmodule
