module citydemux (enable, in, select, library, fire, school, rib_shack);
input enable;
input [3:0] in;
input [1:0] select;
output [3:0] library, fire, school, rib_shack;

assign library = (enable && select == 0) ? in : 4'b0;
assign fire = (enable && select == 1) ? in : 4'b0;
assign school = (enable && select == 2) ? in : 4'b0;
assign rib_shack = (enable && select == 3) ? in : 4'b0;


    
endmodule