// //#############################################################################
// //# Function: Positive edge-triggered inverting static D-type flop-flop       #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_dffqn #(
//     parameter PROP = "DEFAULT"
// ) (
//     input d,
//     input clk,
//     output reg qn
// );
// 
//     always @(posedge clk) qn <= ~d;
// 
// endmodule

/* Generated by Yosys 0.44 (git sha1 80ba43d26, g++ 11.4.0-1ubuntu1~22.04 -fPIC -O3) */

(* top =  1  *)
(* src = "generated" *)
module la_dffqn (
    d,
    clk,
    qn
);
  (* src = "generated" *)
  wire _0_;
  (* unused_bits = "0" *)
  wire _1_;
  wire _2_;
  (* src = "generated" *)
  input clk;
  wire clk;
  (* src = "generated" *)
  input d;
  wire d;
  (* src = "generated" *)
  output qn;
  wire qn;
  sg13g2_inv_2 _3_ (
      .A(d),
      .Y(_0_)
  );
  (* src = "generated" *)
  sg13g2_dfrbp_1 _4_ (
      .CLK(clk),
      .D(_0_),
      .Q(qn),
      .Q_N(_1_),
      .RESET_B(_2_)
  );
  sg13g2_tiehi _5_ (.L_HI(_2_));
endmodule