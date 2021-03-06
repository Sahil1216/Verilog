module counter_4b(clk,clr,status,q);
input clk,clr,status;
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk or posedge clr )
    begin
        if(clr)
            temp <= 4'b0000;
        else if(status)
            temp <= temp + 1'b1;
        else 
            temp <= temp - 1'b1;       
    end
        assign q = temp;
endmodule
