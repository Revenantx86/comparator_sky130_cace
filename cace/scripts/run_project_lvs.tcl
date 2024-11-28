# NOTE: PDK_ROOT and PDK are set in the local environment by CACE
#
# This is an example script to drive LVS; because this is a simple
# example, there is no specific benefit of using this instead of the
# default handling in CACE.

set CACE_ROOT $::env(CACE_ROOT)
set PDK_ROOT $::env(PDK_ROOT)
set PDK $::env(PDK)

set circuit1 [readnet spice $CACE_ROOT/netlist/layout/comparator.spice]
set circuit2 [readnet spice $CACE_ROOT/netlist/schematic/comparator.spice]

lvs "$circuit1 comparator" "$circuit2 comparator" $PDK_ROOT/$PDK/libs.tech/netgen/${PDK}_setup.tcl comparator.out -json
