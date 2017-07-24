/* Code written by Anand K
contact me at itsexzion@gmail.com */

module ring_count(q,clk,clr);
  input clk,clr;
  output [3:0]q;
  reg [3:0]q;
  always @(posedge clk)
       if(clr==1)
            q<=4′b1000;
        else
            begin
                q[3]<=q[0];
                q[2]<=q[3];
                q[1]<=q[2];
                q[0]<=q[1];
            end
endmodule
//testbench//
`timescale 1ns/1ps
module ring_count_test();
    reg clk_tb,clr_tb;
    wire [3:0]q_tb;
    ring_count dut1(q_tb,clk_tb,clr_tb);
    initial 
        begin
        $display(“time,\t clk_tb,\t clr_tb,\t q_tb”);
        $monitor(“%g,\t %b,\t %b,\t %b”,$time,clk_tb,clr_tb,q_tb);
        clr_tb=1′b0;
        #50 clr_tb=1′b1;
        #100 clr_tb=1′b0;
        end
        always 
            begin
            #50 clk_tb=1′b1;
            #50 clk_tb=1′b0;
            end
endmodule