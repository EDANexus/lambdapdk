//#############################################################################
//# Function:  Reset synchronizer (async assert, sync deassert)               #
//# Copyright: Lambda Project Authors. All rights Reserved.                   #
//# License:   MIT (see LICENSE file in Lambda repository)                    #
//#############################################################################
module la_rsync #(
    parameter PROP   = "DEFAULT",
    parameter STAGES = 2,          // synchronizer depth
    parameter RND    = 1
)  // randomize sync

(
    input  clk,     // clock
    input  nrst_in, // async reset input
    output nrst_out // async assert, sync deassert reset
);

  //    reg     [STAGES:0] sync_pipe;
  //    integer            sync_delay;


  //    always @(posedge clk or negedge nrst_in)
  //      if (!nrst_in)
  //        sync_pipe[STAGES:0] <= 'b0;
  //      else
  //        sync_pipe[STAGES:0] <= {sync_pipe[STAGES-1:0], 1'b1};

  // `ifdef SIM
  //    always @(posedge clk)
  //      sync_delay <= {$random} % 2;

  //    assign nrst_out = (|sync_delay & (|RND)) ? sync_pipe[STAGES] : sync_pipe[STAGES-1];
  // `else
  //    assign nrst_out = sync_pipe[STAGES-1];
  // `endif

  genvar i;
  generate
    for (i = 0; i < STAGES; i = i + 1) begin : DELAY
      wire reg_in;
      wire reg_out;
      if (i == 0) begin : SEL_IN
        LOGIC1_X1 u1 (.Z(reg_in));
      end else begin : SEL_PREV
        assign reg_in = reg_out[i-1];
      end

      wire reg_out_int;
      wire setn;
      TIEHIx1_ASAP7_75t_R u1 (.H(setn));
      DFFASRHQNx1_ASAP7_75t_R u0 (
          .CK(clk),
          .RESETN(nrest_in),
          .SETN(setn),
          .D(reg_in),
          .QN(reg_out_int)
      );
      INVx1_ASAP7_75t_R u2 (
          .A(reg_out_int),
          .Y(reg_out)
      );
    end
  endgenerate

  assign nrst_out = DELAY[STAGES-1].reg_out;

endmodule
