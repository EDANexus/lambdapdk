// //#############################################################################
// //# Function: 4 Input Or Gate                                                 #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_or4 #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  a,
//     input  b,
//     input  c,
//     input  d,
//     output z
// );
// 
//     assign z = a | b | c | d;
// 
// endmodule

/* Generated by Yosys 0.40 (git sha1 a1bb0255d, g++ 11.4.0-1ubuntu1~22.04 -fPIC -Os) */

module la_or4(a, b, c, d, z);
  input a;
  wire a;
  input b;
  wire b;
  input c;
  wire c;
  input d;
  wire d;
  output z;
  wire z;
  OR4x1_ASAP7_75t_L _0_ (
    .A(b),
    .B(a),
    .C(c),
    .D(d),
    .Y(z)
  );
endmodule