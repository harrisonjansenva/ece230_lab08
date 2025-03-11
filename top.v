module top (
    input[15:0] sw,
    input btnL, btnR, btnU, btnD, btnC,
    output [15:0] led
    
);
    wire [3:0] carry;
    wire [1:0] muxselect;
    wire [1:0] demuxselect;
//structure is b1, b0
    assign muxselect[1:0] = {btnU, btnL};
    assign demuxselect[1:0] = {btnR, btnD};

citymux users(
    btnC, sw[3:0], sw[7:4], sw[11:8], sw[15:12], muxselect[1:0], carry[3:0]
);
citydemux businesses(
    btnC, carry[3:0], demuxselect[1:0], led[3:0], led[7:4], led[11:8], led[15:12]
);
    
endmodule