// modiule declaration
// input delclaration
// output declaration
// internal signal
// conbination logic

module ex2 (Clock,s2,s1,s0,U,V,W,X,Y,seg7);
parameter DATA_WIDTH = 3;
input   Clock;
input   s2,s1,s0;
input  [DATA_WIDTH-1:0] U;
input  [DATA_WIDTH-1:0] V;
input  [DATA_WIDTH-1:0] W;
input  [DATA_WIDTH-1:0] X;
input  [DATA_WIDTH-1:0] Y;
output           [6:0]  seg7;        


wire [DATA_WIDTH-1:0] A;
wire [DATA_WIDTH-1:0] B;
wire [DATA_WIDTH-1:0] C;

wire [DATA_WIDTH-1:0] D;
reg  [DATA_WIDTH-1:0] Qa;

reg [6:0] seg7;


assign A = (s0 == 0) ? U : V;
assign B = (s0 == 0) ? W : X;
assign C = (s1 == 0) ? A : B;
assign D = (s2 == 0) ? C : Y;



always @(posedge Clock) begin
    Qa <= D;
end
// Anot 7SEG
always @(Qa) begin
    case (Qa)
        3'd0: begin
            seg7=8'hC0;
        end
        3'd1: begin
            seg7=8'hF9;
        end
        3'd2: begin
            seg7=8'hA4;
        end
        3'd3: begin
            seg7=8'hB0;
        end
        3'd4: begin
            seg7=8'h99;
        end
        3'd5: begin
            seg7=8'h92;
        end
        3'd6: begin
            seg7=8'h82;
        end
        3'd7: begin
            seg7=8'hF8;
        end
    endcase    
end

endmodule   


