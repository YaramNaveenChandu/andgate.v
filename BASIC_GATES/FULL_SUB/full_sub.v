module full_sub(a,b,c,borrow,diff);
  
  input a,b,c;
  
  output borrow,diff;
  
  assign borrow = a^b^c;
    
  assign diff = ~a&b|b&c|~a&c;
      
endmodule
