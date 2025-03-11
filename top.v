module top (
    input sw[15:0],
    input btnL, btnR, btnU, btnD, btnC,
    output led[15:0],
    wire [3:0] carry,
    wire [1:0] muxselect,
    wire [1:0] demuxselect
);
//structure is b1, b0
    assign muxselect = {btnU, btnL};
    assign demuxselect = {btnR, btnD};

citymux mux(
    btnC, sw[3:0], sw[7:4], sw[11:8], sw[15:12], muxselect, carry
);
citydemux demux(
    btnC, carry, demuxselect, led[3:0], led[7:4], led[11:8], led[15:12]
);
    
endmodule