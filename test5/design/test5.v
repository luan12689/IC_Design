// modiule declaration
// input delclaration
// output declaration
// internal signal
// conbination logic

module test5(duty,clk,m);
input [3:0] duty;
input clk;
output m;

always @(posedge clk)
    begin
        if(duty != 0) begin
            assign m = 1;
            duty=duty-1;
        end
        else 
            m=0;
    end

endmodule    

