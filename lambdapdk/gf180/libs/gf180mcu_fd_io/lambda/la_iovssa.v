/*****************************************************************************
 * Function: IO supply cell (vssa)
 * Copyright: Lambda Project Authors. All rights Reserved.
 * License:  MIT (see LICENSE file in Lambda repository)
 *
 * Docs:
 *
 *
 ****************************************************************************/
module la_iovssa #(
    parameter PROP  = "DEFAULT",  // cell type
    parameter SIDE  = "NO",       // "NO", "SO", "EA", "WE"
    parameter RINGW = 8           // width of io ring
) (
    inout             vdd,    // core supply
    inout             vss,    // core ground
    inout             vddio,  // io supply
    inout             vssio,  // io ground
    inout [RINGW-1:0] ioring  // generic io-ring interface
);

  gf180mcu_fd_io__dvdd iovdd (
      .DVDD(vddio),
      .DVSS(vssio),
      .VSS (vss)
  );

endmodule
