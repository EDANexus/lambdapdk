// //#############################################################################
// //# Function: 2-Input Clock OR Gate                                           #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_clkor2 #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  a,
//     input  b,
//     output z
// );
// 
//     assign z = a | b;
// 
// endmodule

/* Generated by Yosys 0.44 (git sha1 80ba43d26, g++ 11.4.0-1ubuntu1~22.04 -fPIC -O3) */

(* top =  1  *)
(* src = "generated" *)
module la_clkor2 (
    a,
    b,
    z
);
  (* src = "generated" *)
  input a;
  wire a;
  (* src = "generated" *)
  input b;
  wire b;
  (* src = "generated" *)
  output z;
  wire z;
  sg13g2_or2_1 _0_ (
      .A(b),
      .B(a),
      .X(z)
  );
endmodule