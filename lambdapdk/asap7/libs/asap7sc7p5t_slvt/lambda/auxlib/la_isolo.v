// //#############################################################################
// //# Function: Power isolation circuit                                         #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_isolo #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  iso,  // isolation signal
//     input  in,   // input
//     output out   // out = ~iso & in
// );
// 
//     assign out = ~iso & in;
// 
// endmodule

/* Generated by Yosys 0.41 (git sha1 c1ad37779, g++ 11.4.0-1ubuntu1~22.04 -fPIC -Os) */

module la_isolo(iso, in, out);
  wire _0_;
  input in;
  wire in;
  input iso;
  wire iso;
  output out;
  wire out;
  INVx2_ASAP7_75t_SL _1_ (
    .A(iso),
    .Y(_0_)
  );
  AND2x4_ASAP7_75t_SL _2_ (
    .A(in),
    .B(_0_),
    .Y(out)
  );
endmodule