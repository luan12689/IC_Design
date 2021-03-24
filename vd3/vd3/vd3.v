// modiule declaration
// input delclaration
// output declaration
// internal signal
// conbination logic

module vd3 (ena,clk,rst_n,trigger)
input  clk,ena,rst_n;
output       trigger;

wire D3,D2,D1,D0;
wire a,b,c;
reg  Q3,Q2,Q1,trigger;



assign a=ena & Q3;
assign b=a   & Q2;
assign c=b   & Q1;

always @(posedge clk or negedge rst_n ) begin
    if (rst_n == 0)
        begin 
          Q3      <= 0
          Q2      <= 0 
          Q1      <= 0 
          trigger <= 0
        end  
    else 
        begin
            Q3 <= ena;
            Q2 <= a;
            Q1 <= b;
            trigger <= c;
        end    
end