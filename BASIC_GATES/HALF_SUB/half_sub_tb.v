module half_sub_tb;
  
  reg a,b;
  
  wire borrow,diff;
  
  half_sub dut (.a(a), .b(b), .borrow(borrow), .diff(diff));
  
  initial
    
    begin
      
      $monitor($time,"a=%d, b=%d, borrow=%d, diff=%d, ",a,b,borrow,diff);
      
      #5 a=0; b=0; 
      #5 a=0; b=1; 
      #5 a=1; b=0; 
      #5 a=1; b=1; 
      #20 $finish;
      
    end
  initial
    
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(3, half_sub_tb);
      
    end
  
endmodule
