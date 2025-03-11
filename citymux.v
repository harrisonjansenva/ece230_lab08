module citymux (enable, ceo_data, my_data, fred_data, jill_data, select, Y);

    input enable;
    input [3:0] ceo_data, my_data, fred_data, jill_data;
    input [1:0] select;
    output [3:0] Y;


    assign Y =  enable ? (
                select == 2'b0 ? ceo_data :
                select == 2'b01 ? my_data :
                select == 2'b10 ? fred_data : jill_data) : 4'b0;

    
endmodule