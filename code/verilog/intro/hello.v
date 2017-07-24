module simpleand (f, x, y);
   input x, y;
   output f;
   assign f = x & y;
endmodule // simpleand
module main;
   initial
     begin
        $display("Hello, World");
        $finish ;
     end
endmodule // main

