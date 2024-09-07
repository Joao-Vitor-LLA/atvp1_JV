`timescale 1ns/1ns
`include "atvp002.v"

module atvp002_tb;

    reg A,B;
    wire TV,PC,AL;
    atvp002 uut(A,B,TV,PC,AL);

    initial begin
        $dumpfile("atvp002.vcd");
        $dumpvars(0, atvp002_tb);

        A = 0;
        B = 0;  #30;

        A = 0; 
        B = 1; #30;

        A = 1; 
        B = 1; #30;

        A = 1; 
        B = 0; #30;

        $display("Teste completo");
    end

endmodule