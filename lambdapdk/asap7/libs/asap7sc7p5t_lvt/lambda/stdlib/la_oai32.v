// //#############################################################################
// //# Function: Or-And-Inverter (oai32) Gate                                    #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_oai32 #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  a0,
//     input  a1,
//     input  a2,
//     input  b0,
//     input  b1,
//     output z
// );
// 
//     assign z = ~((a0 | a1 | a2) & (b0 | b1));
// 
// endmodule

/* Generated by Yosys 0.40 (git sha1 a1bb0255d, g++ 11.4.0-1ubuntu1~22.04 -fPIC -Os) */

module la_oai32(a0, a1, a2, b0, b1, z);
  wire _0_;
  input a0;
  wire a0;
  input a1;
  wire a1;
  input a2;
  wire a2;
  input b0;
  wire b0;
  input b1;
  wire b1;
  output z;
  wire z;
  OR3x1_ASAP7_75t_L _1_ (
    .A(a1),
    .B(a0),
    .C(a2),
    .Y(_0_)
  );
  OAI21x1_ASAP7_75t_L _2_ (
    .A1(b1),
    .A2(b0),
    .B(_0_),
    .Y(z)
  );
endmodule