module citydemux (enable, in, select, local_lib, fire, school, rib_shack);
input enable;
input [3:0] in;
input [1:0] select;
output [3:0] local_lib, fire, school, rib_shack;

assign local_lib = (enable && select == 2'b0) ? in : 4'b0;
assign fire = (enable && select == 2'b01) ? in : 4'b0;
assign school = (enable && select == 2'b10) ? in : 4'b0;
assign rib_shack = (enable && select == 2'b11) ? in : 4'b0;


    
endmodule