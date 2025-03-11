module citydemux (in, select, Y1, Y2, Y3, Y4);
input [3:0] in;
input [1:0] select;
output [3:0] Y1, Y2, Y3, Y4;

assign Y1 = select == 0 ? in : 4'b0;
assign Y2 = select == 1 ? in : 4'b0;
assign Y3 = select == 2 ? in : 4'b0;
assign Y4 = select == 3 ? in : 4'b0;


    
endmodule