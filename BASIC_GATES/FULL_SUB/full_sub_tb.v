module full_sub_tb;
  
  reg a,b,c;
  
  wire borrow,diff;
  
  full_sub dut (.a(a), .b(b), .c(c), .borrow(borrow), .diff(diff));
  
  initial
    
    begin
      
      $monitor($time,"a=%d, b=%d, c=%d, borrow=%d, diff=%d, ",a,b,c,borrow,diff);
      
      #5 a=0; b=0; c=0;
      #5 a=0; b=0; c=1;
      #5 a=0; b=1; c=0;
      #5 a=0; b=1; c=1;
      #5 a=1; b=0; c=0;
      #5 a=1; b=0; c=1;
      #5 a=1; b=1; c=0;
      #5 a=1; b=1; c=1;
      #20 $finish;
      
    end
  initial
    
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(3, full_sub_tb);
      
    end
  
endmodule
