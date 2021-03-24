module vd6(Reset,clk,w,q);

parameter A=0; 
parameter B=1;
parameter C=2;
parameter F=3;

input clk,Reset,w;
ouput q;

reg [1:0] state; 
reg [1:0] nxt_state;

always @(posedge clk or posedge Reset)
    begin
        if (~Reset) begin
            state <= A;
        end
        else begin
            state <= nxt_state;
        end
    end
always @(*)
    begin
        case ()
            A : begin 
               nxt_state <= (w==0) B : F;
               q <= 0;
           end   
            B : begin 
               nxt_state <= (w==0) C : F;
               q <= 0;
           end   
            C : begin 
               nxt_state <= (w==0) C : F;
               q <= 1;
           end   
            F : begin 
               nxt_state <= (w==0) B : F;
               q <= 1;
           end    
        endcase    
    end     

endmodule
