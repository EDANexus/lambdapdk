// //#############################################################################
// //# Function: Dual data rate input buffer                                     #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_iddr #(
//     parameter PROP = "DEFAULT"
// ) (
//     input      clk,      // clock
//     input      in,       // data input sampled on both edges of clock
//     output reg outrise,  // rising edge sample
//     output reg outfall   // falling edge sample
// );
// 
//     // Negedge Sample
//     always @(negedge clk) outfall <= in;
// 
//     // Posedge Sample
//     reg inrise;
//     always @(posedge clk) inrise <= in;
// 
//     // Posedge Latch (for hold)
//     always @(clk or inrise) if (~clk) outrise <= inrise;
// 
// endmodule

/* Generated by Yosys 0.44 (git sha1 80ba43d26, g++ 11.4.0-1ubuntu1~22.04 -fPIC -O3) */

(* top =  1  *)
(* src = "generated" *)
module la_iddr (
    clk,
    in,
    outrise,
    outfall
);
  wire _0_;
  (* unused_bits = "0" *)
  wire _1_;
  (* unused_bits = "0" *)
  wire _2_;
  wire _3_;
  (* src = "generated" *)
  input clk;
  wire clk;
  (* src = "generated" *)
  input in;
  wire in;
  (* src = "generated" *)
  wire inrise;
  (* src = "generated" *)
  output outfall;
  wire outfall;
  (* src = "generated" *)
  output outrise;
  wire outrise;
  sg13g2_inv_2 _4_ (
      .A(clk),
      .Y(_0_)
  );
  (* module_not_derived = 32'b00000000000000000000000000000001 *) (* src = "generated" *)
  sg13g2_dlhq_1 _5_ (
      .D(inrise),
      .GATE(_0_),
      .Q(outrise)
  );
  (* src = "generated" *)
  sg13g2_dfrbp_1 _6_ (
      .CLK(clk),
      .D(in),
      .Q(inrise),
      .Q_N(_2_),
      .RESET_B(_3_)
  );
  (* src = "generated" *)
  sg13g2_dfrbp_1 _7_ (
      .CLK(_0_),
      .D(in),
      .Q(outfall),
      .Q_N(_1_),
      .RESET_B(_3_)
  );
  sg13g2_tiehi _8_ (.L_HI(_3_));
endmodule