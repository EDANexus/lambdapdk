// //#############################################################################
// //# Function: Or-And (oa31) Gate                                              #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_oa31 #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  a0,
//     input  a1,
//     input  a2,
//     input  b0,
//     output z
// );
// 
//     assign z = (a0 | a1 | a2) & b0;
// 
// endmodule

/* Generated by Yosys 0.44 (git sha1 80ba43d26, g++ 11.4.0-1ubuntu1~22.04 -fPIC -O3) */

(* top =  1  *)
(* src = "generated" *)
module la_oa31 (
    a0,
    a1,
    a2,
    b0,
    z
);
  wire _0_;
  (* src = "generated" *)
  input a0;
  wire a0;
  (* src = "generated" *)
  input a1;
  wire a1;
  (* src = "generated" *)
  input a2;
  wire a2;
  (* src = "generated" *)
  input b0;
  wire b0;
  (* src = "generated" *)
  output z;
  wire z;
  sg13g2_nor3_2 _1_ (
      .A(a1),
      .B(a0),
      .C(a2),
      .Y(_0_)
  );
  sg13g2_nor2b_1 _2_ (
      .A  (_0_),
      .B_N(b0),
      .Y  (z)
  );
endmodule