# Target Architecture

## Scope

The system is a teaching prototype that combines a closed-loop Simulink simulation with an Arduino-based hardware I/O demonstration.

## Logical components

| Component | Responsibility |
| --- | --- |
| ThermalManagementSWC | Acquire/simulate temperature and prepare an engine-status/fan-request message. |
| FanControlSWC | Validate received request, run fan-control logic, and produce PWM/fan-state commands. |
| FanDiagnosticsSWC | Report sensor plausibility, communication validity, and fan-related faults. |
| CAN communication model | Define IDs, signals, packing/decoding, validity, and timeout behavior. |
| Thermal plant | Simulate engine heat generation, dissipation, and the cooling fan's feedback effect. |
| Arduino hardware I/O | Read LM35 and drive fan PWM through a protected external MOSFET circuit. |

## AUTOSAR boundary

The AUTOSAR Classic architecture is modeled through SWCs, ports, sender-receiver interfaces, runnables, and RTE/BSW concepts where tooling permits. The Arduino Uno is an I/O demonstration platform, not a full AUTOSAR ECU.

## Required user-defined functions

1. `TemperatureProcessing`: range/plausibility validation, filtering, and diagnostic status.
2. `FanControlLogic`: hysteresis, PWM calculation, fail-safe behavior, and diagnostic status.

Instructor acceptance of the selected function-block types must be confirmed before the final design is frozen.

## Communication claim levels

- **Message-level simulation:** CAN-like messages are represented in Simulink.
- **Toolbox-based CAN modeling:** encoding/decoding and CAN blocks are used when supported.
- **Physical CAN:** only after an MCP2515 controller, transceiver, wiring, and successful tests are documented.
