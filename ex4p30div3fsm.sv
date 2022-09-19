module divideby3FSM(input  logic clk,
                    input  logic reset,
                    output logic y);
  typedef enum logic [1:0] {s0,s1,s2} statetype;
  //state register
  always_ff@(posedge clk, posedge reset)
    state <= reset ? s0 : nextstate;
  //next state logic
  always_comb
    case(state)
      s0:      nextstate <= s1;
      s1:      nextstate <= s2;
      s2:      nextstate <= s0;
      default: nextstate <= s0;
    endcase
  
  //output logic
  assign y = (state == s0);
