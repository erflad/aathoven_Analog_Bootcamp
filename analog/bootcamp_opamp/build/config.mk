# Analog Block Configuration
BLOCK = bootcamp_opamp
PROJECT = bootcamp_opamp
TOP_SCHEMATIC = bootcamp_opamp
TOP_LAYOUT = bootcamp_opamp

# Sibling blocks this one is built from, space separated.
#
# A top-level block names the blocks it instantiates; a leaf names nothing. Listing a
# dependency puts its symbols and schematics on this block's xschem library path, so its
# symbol can be placed here, and makes `make deps` build it first.
#
# Set with: make AddAnalogBlock BLOCK_NAME=ota DEPENDS="bandgap diffpair"
DEPENDS =

# Simulator for `make -C build/sim`. ngspice is the one to trust for anything headed
# to silicon; vacask is the Verilog-A path, espice the faster-but-pre-release one.
BACKEND ?= ngspice
