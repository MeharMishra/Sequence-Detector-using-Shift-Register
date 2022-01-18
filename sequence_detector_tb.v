
module seqdet_tb;
reg x;
reg clk,rst;
wire z;

  
seqdet U1
(
   .x(x),
   .z(z),
   .clk(clk),
   .rst(rst)
);
 
initial 
    begin
      $dumpfile("sequence_detector.vcd");
      $dumpvars(0,U1);
    end  
    
 
initial
begin
    clk =0;
    rst =1;
    forever #5 clk = ~clk;
end


 
initial
  begin
  #2 rst = 0;  
 
  @(posedge clk) x = 1'b1;
  #5;
  @(posedge clk) x = 1'b0;
  #5;
  @(posedge clk) x = 1'b1;
  #5;
  @(posedge clk)x = 1'b0;
  #5;
  @(posedge clk)x = 1'b1;
  #5;
  @(posedge clk)x = 1'b0;
  #5;
  end
 
  initial 
    begin
  #100 $finish;
    end
   
    
endmodule
