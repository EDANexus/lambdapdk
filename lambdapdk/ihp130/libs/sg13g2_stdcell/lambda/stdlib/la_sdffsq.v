// //#############################################################################
// //# Function:  Positive edge-triggered static D-type flop-flop with async     #
// //#            active low preset and scan input.                              #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:   MIT (see LICENSE file in Lambda repository)                    #
// //#############################################################################
// 
// module la_sdffsq #(
//     parameter PROP = "DEFAULT"
// ) (
//     input      d,
//     input      si,
//     input      se,
//     input      clk,
//     input      nset,
//     output reg q
// );
// 
//     always @(posedge clk or negedge nset)
//         if (!nset) q <= 1'b1;
//         else q <= se ? si : d;
// 
// endmodule

/* Generated by Yosys 0.44 (git sha1 80ba43d26, g++ 11.4.0-1ubuntu1~22.04 -fPIC -O3) */

(* top =  1  *)
(* src = "generated" *)
module la_sdffsq (
    d,
    si,
    se,
    clk,
    nset,
    q
);
  wire _0_;
  wire _1_;
  (* unused_bits = "0" *)
  wire _2_;
  (* src = "generated" *)
  input clk;
  wire clk;
  (* src = "generated" *)
  input d;
  wire d;
  (* src = "generated" *)
  input nset;
  wire nset;
  (* src = "generated" *)
  output q;
  wire q;
  (* src = "generated" *)
  input se;
  wire se;
  (* src = "generated" *)
  input si;
  wire si;
  sg13g2_nor2b_1 _3_ (
      .A  (se),
      .B_N(d),
      .Y  (_1_)
  );
  sg13g2_a21oi_1 _4_ (
      .A1(si),
      .A2(se),
      .B1(_1_),
      .Y (_0_)
  );
  (* src = "generated" *)
  sg13g2_dfrbp_1 _5_ (
      .CLK(clk),
      .D(_0_),
      .Q(_2_),
      .Q_N(q),
      .RESET_B(nset)
  );
endmodule