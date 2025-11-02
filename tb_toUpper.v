`timescale 1ns / 1ps

module tb_toUpper;
    reg [7:0] in;
    wire [7:0] out;


    toUpper test (
        .in(in),
        .out(out)
    );

    initial begin
        $display("Decimal\tBinary\tAscii_IN\tAscii_OUT");
        in = 8'd40; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd72; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd183; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd131; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd124; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd20; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd235; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd97; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd65; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd122; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd71; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd109; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd146; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd48; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd207; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd58; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd123; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd148; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);
        in = 8'd127; #50;  $display("%d\t%b\t%c\t%c", in, in, in, out);

        #10 $finish;
    end

    initial begin
        $dumpfile("tb_toUpper.vcd");
        $dumpvars(0, tb_toUpper);
    end


    
endmodule