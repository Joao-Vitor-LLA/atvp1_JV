// Write your modules here!
module atvp003(A,P,W,M,S);
  input P,W,M,S;
  output A;
  assign A =(M) | (S & P) | (W & S);
endmodule