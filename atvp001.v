module atvp001(A,Verd_A,Verd_B,Verm_A,Verm_B);
  input A;
  output Verd_A,Verd_B,Verm_A,Verm_B;
  assign Verd_A = A, Verm_A =~A,Verd_B =~A,Verm_B = A;
endmodule