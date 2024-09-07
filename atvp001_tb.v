`timescale 1ns/1ns
`include "atvp001.v"

module atvp001_tb;

    reg A;
    wire Verd_A,Verd_B,Verm_A,Verm_B;
    atvp001 uut(A, Verd_A,Verd_B,Verm_A,Verm_B);

    initial begin
        $dumpfile("atvp001.vcd");
        $dumpvars(0, atvp001_tb);

        A = 0; #30;
        A = 1; #30;

        $display("Teste completo");
    end

endmodule