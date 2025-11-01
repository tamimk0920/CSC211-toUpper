module toUpper (in,out);
    input [7:0] in; 
    output [7:0] out;

    wire a0n, a1n, a2n, a3n, a4n, a5n, a6n, a7n;
    not #(5) N0(a0n, in[0]);
    not #(5) N1(a1n, in[1]);
    not #(5) N2(a2n, in[2]);
    not #(5) N3(a3n, in[3]);
    not #(5) N4(a4n, in[4]);
    not #(5) N5(a5n, in[5]);
    not #(5) N6(a6n, in[6]);
    not #(5) N7(a7n, in[7]);   

    wire s0, s1, s2, s3, s4

    and #(10) S0(s0, a7n,a1n,in[5]); // Yellow
    and #(10) S1(s1, a7n,in[5],a4n,a3n,a2n,a1n,a0n); // Red
    and #(10) S2(s2, a7n,in[6],in[5],in[4],in[3],in[2]); // Blue
    and #(10) S3(s3, a7n,in[6],in[5],in[4],in[3],a2n,in[1],in[0]); // Green
    and #(10) S4(s4, in[7],in[5]); // Purple

    
    or #(10) O1(out[5], s0, s1, s2, s3, s4); 
    
    buf #(4) B0(out[0], in[0])
    buf #(4) B1(out[1], in[1])
    buf #(4) B2(out[2], in[2])
    buf #(4) B3(out[3], in[3])
    buf #(4) B4(out[4], in[4])
    buf #(4) B6(out[6], in[6])
    buf #(4) B7(out[7], in[7])
    
endmodule