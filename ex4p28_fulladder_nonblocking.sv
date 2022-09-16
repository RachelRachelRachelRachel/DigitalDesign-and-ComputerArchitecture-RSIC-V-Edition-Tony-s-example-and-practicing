// Code your design here
`timescale 1ns/1ps
//'timescale unit/precision
module fulladder(input  logic a, b, cin,
                       output logic s, cout);
  logic p, g;
  
  always_comb
    begin
      p <= a^b;
      g <= a&b;
      s <= p^cin;
      cout <= g|(p&cin);
    end
endmodule
