#=========================================================================
# RegIncr
# PyMTL wrapper for out verilog module, RegIncr.v
# Will need for doing PyMTL testing of our verilog module
#=========================================================================

from pymtl import *

class RegIncr( VerilogModel ):

  # Verilog module setup
  # Define namespace
  vprefix = "tut4_verilog_regincr"

  # Constructor

  def __init__( s ):

    # Port-based interface

    s.in_ = InPort  ( Bits(8) )
    s.out = OutPort ( Bits(8) )

    # Verilog ports

    s.set_ports({
      'clk'   : s.clk,
      'reset' : s.reset,
      'in'    : s.in_,
      'out'   : s.out,
    })

  # Line tracing

  def line_trace( s ):
    return "{} () {}".format( s.in_, s.out )

