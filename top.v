module top (
    input sw[15:0],
    input btn L, R, U, D, C,
    output led[15:0],
    wire [3:0] carry,
    wire [1:0] muxselect,
    wire [1:0] demuxselect
);
//structure is b1, b0
assign muxselect = {btnU, btnL};
assign demuxselect = {btnR, btnD};

citymux mux(
    sw[3:0], sw[7:4], sw[11:8], sw[15:12], muxselect, carry
);
citydemux demux(
    carry, demuxselect, led[3:0], led[7:4], led[11:8], led[15:12]
);
    
endmodule