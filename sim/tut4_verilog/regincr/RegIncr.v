//========================================================================
// Registered Incrementer
//========================================================================
// This is a simple example of a module for a registered incrementer
// which combines a positive edge triggered register with a combinational
// +2 incrementer. We use flat register-transfer-level modeling.

`ifndef TUT4_VERILOG_REGINCR_REG_INCR_V
`define TUT4_VERILOG_REGINCR_REG_INCR_V

//note name of gaurd and module is related to path to avoid namespace collisions
module tut4_verilog_regincr_RegIncr
(
  input  logic       clk,
  input  logic       reset,
  input  logic [7:0] in,
  output logic [7:0] out
);
	//always blocks use verilog not systemverilog syntax in this example
  // Sequential logic

  logic [7:0] reg_out;
  always @( posedge clk ) begin
    if ( reset )
      reg_out <= 0;
    else
      reg_out <= in;
  end

  logic [7:0] temp_wire;
  always @(*) begin
    temp_wire = reg_out + 1;
  end

   //tie to output port (not convention is to put these outside always block)
   assign out = temp_wire;


endmodule

`endif /* TUT4_VERILOG_REGINCR_REG_INCR_V */

