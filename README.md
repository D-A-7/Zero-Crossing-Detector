# Zero-Crossing-Detector
A Zero Crossing Detector (ZCD) is an analog circuit that identifies the precise instant an AC signal transitions through zero volts, converting it into a digital pulse. ZCDs are critical building blocks in power electronics, motor control, signal processing, and phase-locked loops.

The Basic ZCD employs a comparator topology with 26 transistors (13 PMOS + 13 NMOS). It detects every zero crossing
of the sinusoidal input and produces a full-swing digital output. The transient simulation confirms correct polarity inversion
at each crossing, with a propagation delay of 2.2 ns and a total power draw of 193 μW at 100 MHz.
The SR Latch ZCD integrates a set-reset latch to hold the output state between transitions, eliminating glitches and
metastability. With only 8 transistors (4 PMOS + 4 NMOS) it is the most area-efficient design (≈ 650 μm2), achieving the
lowest propagation delay (1.2 ns) and the lowest total power (81 μW at 100 MHz). The simulation shows clean
complementary Q / Q■ output waveforms with well-defined edges.
