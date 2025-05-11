module mux_2x1 (
    input wire a,
    input wire b,
    input wire sel,
    output wire y
);
    assign y = (sel) ? b : a;
endmodule


module decoder_4x2 (
    input wire [1:0] in,
    output wire [3:0] out
);
    assign out[0] = ~in[1] & ~in[0];
    assign out[1] = ~in[1] & in[0];
    assign out[2] = in[1] & ~in[0];
    assign out[3] = in[1] & in[0];
endmodule

module sr_latch (
    input wire S,
    input wire R,
    output wire Q,
    output wire Qn
);
    wire n1, n2;

    assign n1 = ~(S & Qn);
    assign n2 = ~(R & Q);
    assign Q = n1;
    assign Qn = n2;
endmodule