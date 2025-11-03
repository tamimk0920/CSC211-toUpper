`timescale 1ns / 1ps

module tb_toUpper;
    reg [7:0] in;
    wire [7:0] out;


    toUpper test (in, out);

    initial begin
        $display("Decimal\tBinary\tAscii_IN\tAscii_OUT");
        in = 8'd40; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd72; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd183; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd131; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd124; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd20; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd235; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd97; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd65; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd122; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd71; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd109; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd146; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd48; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd207; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd58; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd123; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd148; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd127; #30;  $display("%d\t%b\t%c\t%c", in, in, in, out);

        #10 $finish;
    end

    initial begin
        $dumpfile("tb_toUpper.vcd");
        $dumpvars(0, tb_toUpper);
    end


    
endmodule