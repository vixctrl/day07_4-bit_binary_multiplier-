#!/bin/bash
iverilog -o multiplier_tb 4bit_multiplier.v tb_4bit_multiplier.v
vvp multiplier_tb
gtkwave output.vcd &
