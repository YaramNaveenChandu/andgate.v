module half_sub(a,b,borrow,diff);
  
  input a,b;
  
  output borrow,diff;
  
  assign borrow = a^b;
    
  assign diff = ~a&b;
      
endmodule
