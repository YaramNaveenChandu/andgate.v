module nand_gate_tb;
  
  reg a,b;
  
  wire y;
  
  nand_gate dut (.a(a), .b(b), .y(y));
  
  initial
    
    begin
      
      $monitor($time,"a=%d, b=%d, c=%d", a,b,y);
               
               #5 a=0; b=0;
               #5 a=0; b=1;
               #5 a=1; b=0;
               #5 a=1; b=1;
               #30 $finish;
               
               
               end
  initial
    
    begin
      
      $dumpfile("dump.vcd"); 
      
      $dumpvars(0, nand_gate_tb);
      
    end
            
  
               endmodule
               
