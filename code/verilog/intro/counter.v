module counter(out, clk, reset);

   parameter WIDTH = 8;

   input                clk, reset;
   output [WIDTH-1 : 0] out;

   reg [WIDTH-1 : 0]    out;
   wire                 clk, reset;

   always @(posedge clk)
     out <= out + 1;

   always @reset
     if (reset)
       assign out = 0;
     else
       deassign out;

endmodule // counter
