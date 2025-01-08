# VHDL Sensitivity List Error: Missing Signals

This repository demonstrates a common error in VHDL: an incomplete sensitivity list in a process.  The code in `wrong_sensitivity.vhdl` incorrectly only includes 'clk' and 'a' in the sensitivity list of the process. This means that if the signal 'b' changes, the process won't be triggered, resulting in incorrect output.

The corrected code in `correct_sensitivity.vhdl` shows the proper way to fix this: all signals read within the process must be included in the sensitivity list.  Note that for synchronous designs (like this one using a clock), you only need to list the clock signal explicitly.  Other signals in the process will be implicitly sensitive to state changes if they are read in the process's conditional statements. This will allow correct functionality regardless of signal changes.