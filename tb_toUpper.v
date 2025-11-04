`timescale 1ns / 1ps

module tb_toUpper;
    reg [7:0] in;
    wire [7:0] out;


    toUpper test (in, out);

    initial begin
        $display("Decimal\tBinary\tAscii_IN\tAscii_OUT");
        in = 8'd40; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd72; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd183; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd131; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd124; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd20; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd235; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd97; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd65; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd122; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd71; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd109; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd146; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd48; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd207; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd58; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd123; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd148; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd127; #26;  $display("%d\t%b\t%c\t%c", in, in, in, out);

        $finish;
    end

    initial begin
        $dumpfile("tb_toUpper.vcd");
        $dumpvars(0, tb_toUpper);
    end


    
endmodule