/**************************************************************************
 * Function: Digital Input IO Cell
 * Copyright: Lambda Project Authors. All rights Reserved.
 * License:  MIT (see LICENSE file in Lambda repository)
 *
 * Docs:
 *
 * ../README.md
 *
 *************************************************************************/
module la_ioinput #(
    parameter PROP  = "DEFAULT",  // cell property
    parameter SIDE  = "NO",       // "NO", "SO", "EA", "WE"
    parameter CFGW  = 16,         // width of core config bus
    parameter RINGW = 8           // width of io ring
) (  // io pad signals
    inout              pad,     // input pad
    inout              vdd,     // core supply
    inout              vss,     // core ground
    inout              vddio,   // io supply
    inout              vssio,   // io ground
    // core facing signals
    output             z,       // output to core
    input              ie,      // input enable, 1 = active
    inout  [RINGW-1:0] ioring,  // generic ioring interface
    input  [ CFGW-1:0] cfg      // generic config interface
);

  la_iobidir #(
      .PROP (PROP),
      .SIDE (SIDE),
      .CFGW (CFGW),
      .RINGW(RINGW)
  ) i0 (
      .pad(pad),
      .vdd(vdd),
      .vss(vss),
      .vddio(vddio),
      .vssio(vssio),
      .z(z),
      .ie(ie),
      .oe(1'b0),
      .ioring(ioring),
      .cfg(cfg)
  );

endmodule