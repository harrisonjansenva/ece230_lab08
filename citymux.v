module citymux (ceo_data, my_data, fred_data, jill_data, select, Y);

    input [3:0] ceo_data, my_data, fred_data, jill_data;
    input [1:0] select;
    output [3:0] Y;


    assign Y =  select == 0 ? ceo_data :
                select == 1 ? my_data :
                select == 2 ? fred_data : jill_data;

    
endmodule