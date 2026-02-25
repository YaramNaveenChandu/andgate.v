module full_add_tb;
  
  reg a,b,c;
  
  wire sum,carry;
  
  full_add dut (.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
  
  initial
    
    begin
      
      $monitor($time,"a=%d, b=%d, c=%d, sum=%d, carry=%d",a,b,c,sum,carry);
      
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
      $dumpvars(3, full_add_tb);
      
    end
  
endmodule
