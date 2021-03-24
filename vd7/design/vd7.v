module vd7(Reset,clk,w,q);



parameter A=0; 
parameter B=1;
parameter C=2;
parameter D=3;
parameter E=4;
parameter F=5;
parameter H=6;
parameter G=7;
parameter I=8;



input clk,Reset,w;

output q;

reg q;



reg [3:0] state; 

reg [3:0] nxt_state;



always @(posedge clk or posedge Reset)

    begin

        if (Reset) begin

            state <= A;

        end

        else begin

            state <= nxt_state;

        end

    end

always @(*)

    begin

        case (state)

            A : begin 

               nxt_state <= (w==0) ? B : F;

               q <= 0;

           end   

            B : begin 

               nxt_state <= (w==0) ? C : F;

               q <= 0;

           end   

            C : begin 

               nxt_state <= (w==0) ? D : F;

               q <= 0;

           end   

            D : begin 

               nxt_state <= (w==0) ? E : F;

               q <= 0;

           end    
            E : begin 

               nxt_state <= (w==0) ? E : F;

               q <= 1;

           end    
            F : begin 

               nxt_state <= (w==0) ? B : G;

               q <= 0;

           end    
            G : begin 

               nxt_state <= (w==0) ? B : H;

               q <= 0;

           end    
            H : begin 

               nxt_state <= (w==0) ? B : I;

               q <= 0;

           end    
            I : begin 

               nxt_state <= (w==0) ? B : I;

               q <= 1;

           end    

        endcase    

    end     



endmodule
