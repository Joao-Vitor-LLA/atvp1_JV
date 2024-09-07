`timescale 1ns/1ns
`include "atvp003.v"

module atvp003_tb;

    reg P,W,M,S;
    wire A;
    atvp003 uut(A,P,W,M,S);

    initial begin
        $dumpfile("atvp003.vcd");
        $dumpvars(0, atvp003_tb);

        P = 0; W = 0; M = 0; S = 0; #30;
        P = 0; W = 0; M = 0; S = 1; #30;
        P = 0; W = 0; M = 1; S = 0; #30;
        P = 0; W = 0; M = 1; S = 1; #30;
        P = 0; W = 1; M = 0; S = 0; #30;
        P = 0; W = 1; M = 0; S = 1; #30;
        P = 0; W = 1; M = 1; S = 0; #30;
        P = 0; W = 1; M = 1; S = 1; #30;
        P = 1; W = 0; M = 0; S = 0; #30;
        P = 1; W = 0; M = 0; S = 1; #30;
        P = 1; W = 0; M = 1; S = 0; #30;
        P = 1; W = 0; M = 1; S = 1; #30;
        P = 1; W = 1; M = 0; S = 0; #30;
        P = 1; W = 1; M = 0; S = 1; #30;
        P = 1; W = 1; M = 1; S = 0; #30;
        P = 1; W = 1; M = 1; S = 1; #30;

        $display("Teste completo");
    end

endmodule