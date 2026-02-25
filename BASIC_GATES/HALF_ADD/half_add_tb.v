module half_add_tb;
  
  reg a,b;
  
  wire sum,carry;
  
  half_add dut (.a(a), .b(b), .sum(sum), .carry(carry));
  
  initial
    
    begin
      
      $monitor($time,"a=%d, b=%d, sum=%d, carry=%d, ",a,b,sum,carry);
      
      #5 a=0; b=0; 
      #5 a=0; b=1; 
      #5 a=1; b=0; 
      #5 a=1; b=1; 
      #20 $finish;
      
    end
  
  initial
    
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(3, half_add_tb);
      
    end
  
endmodule
