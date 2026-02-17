<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
This project implements an SR latch using two cross-coupled NOR gates. The output of each NOR gate is fed back into one input of the other, forming a bistable circuit. 

When s(set) is asserted high, the latch sets q=1 and qb=0.
Wheh r(reset) is asserted high, the latch resets q=0 and qb=1.
When both inputs are low, the latch holds its previous state due to the feedback structure.

The condition s=1 nad r=1 is invalid because it forces both outputs low and can lead to an undefined state when released.
 

## How to test

1. Apply power (vdd and vss) to the circuit.
2. Set both s and r to 0 --> the latch should hold its previous state.
3. set s=1 and r=0 --> q should go high
4. Return s to 0 --> q should remain high, i.e state is stored
5. Set r=1 and s=0 --> q should go low
6. Return r to 0 --> q should remain low

You can verify using these operations:
1. Simulation (transient analysis in xschem/ngspice)
2. Observing q and qb on output pins in hardware  

## External hardware

No external hardware is required!

The design operates as a standalone digital logic block and can be tested using simulation tools or integrated into a larger digital system.
