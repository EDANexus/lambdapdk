// //#############################################################################
// //# Function: 4-Input Exclusive-Nor Gate                                      #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_xnor4 #(parameter PROP = "DEFAULT")   (
//     input  a,
//     input  b,
//     input  c,
//     input  d,
//     output z
//     );
// 
//    assign z =  ~(a ^ b ^ c ^ d);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_xnor4(a, b, c, d, z);
  wire _0_;
  wire _1_;
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
  XNOR2_X2 _2_ (
    .A(c),
    .B(d),
    .ZN(_0_)
  );
  XNOR2_X2 _3_ (
    .A(b),
    .B(a),
    .ZN(_1_)
  );
  XNOR2_X1 _4_ (
    .A(_0_),
    .B(_1_),
    .ZN(z)
  );
endmodule