module atvp002(A,B,PC,AL,TV);
  input A,B;
  output TV,PC,AL;
  assign TV = A,PC = ~A & B,AL= ~A & ~B;	
endmodule