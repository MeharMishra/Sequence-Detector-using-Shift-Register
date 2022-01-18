module seqdet
(
   input wire x,
   input wire clk,
   input wire rst,
   output reg z
);
 
  reg [5:0] temp;
 
//assign z = (q == 6'b101010) ? 1'b1:1'b0;
 
  always @ (posedge clk,posedge rst)
   if(rst)
      temp <= 6'd0;
   else
     temp <= {x,temp[5:1]};
  
  always @(temp)
    if(temp==6'b101010)
      z=1'b1;
  else
    z=1'b0;
  
 
endmodule 
