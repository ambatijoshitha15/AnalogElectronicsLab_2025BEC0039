# MOSFET (NMOS) Characterization

## Aim
To obtain and plot the drain characteristics and transfer characteristics of an NMOS transistor using Cadence Virtuoso (ADE-L), and to use the gm/ID methodology for device characterization.

## Design Specifications
- Technology: GPDK 90 nm CMOS
- Device: NMOS transistor
- Width (W): 1 µm
- Length (L): 100 nm
- VGS Sweep: 0 V to 1.2 V
- VDS Sweep: 0 V to 1.2 V
- Tool Used: Cadence Virtuoso ADE-L

## Circuit Description
The circuit consists of a single NMOS transistor. The source is connected to ground. Two DC voltage sources are used: one provides the gate-to-source voltage (VGS) and the other provides the drain-to-source voltage (VDS). The drain current (ID) is measured by sweeping VGS and VDS.

## Simulation Procedure
1. Draw the NMOS circuit in Cadence Virtuoso.
2. Set W = 1 µm and L = 100 nm.
3. Connect VGS and VDS voltage sources.
4. Open ADE-L and select DC Analysis.
5. Sweep VGS from 0 V to 1.2 V to obtain the transfer characteristics.
6. Sweep VDS from 0 V to 1.2 V for different VGS values to obtain the drain characteristics.
7. Plot ID vs VGS and ID vs VDS.
8. Save the simulation results.

## Results
- Obtained the transfer characteristic (ID vs VGS).
- Obtained the drain characteristic (ID vs VDS).
- Verified the NMOS operating characteristics.

## Observations
- Drain current is nearly zero below the threshold voltage.
- Drain current increases as VGS increases.
- For a fixed VGS, ID increases with VDS and then saturates.
- Higher VGS produces higher drain current.

## Conclusion
The NMOS transistor was successfully characterized using Cadence Virtuoso. The transfer and drain characteristics matched the expected behavior of an NMOS transistor.
