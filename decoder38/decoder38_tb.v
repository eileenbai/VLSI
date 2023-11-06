`timescale 1ns/1ns

module decoder38_tb();
    reg a,b,c;
    wire [7:0] out;
    initial begin
        $dumpfile("wave.vcd"); 
	    $dumpvars(0, decoder38_tb); 
        a=0;b=0;c=0;
        #100;
        a=0;b=0;c=1;
        #100;
        a=0;b=1;c=0;
        #100;
        a=0;b=1;c=1;
        #100;
        a=1;b=0;c=0;
        #100;
        a=1;b=0;c=1;
        #100;
        a=1;b=1;c=0;
        #100;
        a=1;b=1;c=1;
        #100;
        $finish;
    end
    decoder38 decoder38_1(a,b,c,out);
endmodule

