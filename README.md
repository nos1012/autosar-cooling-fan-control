# AUTOSAR Classic Cooling Fan Control

> **Academic prototype** — Design and simulation of an automotive engine cooling fan control system based on AUTOSAR Classic architecture, CAN communication, Simulink, and Arduino.

## Project goal

Build a demonstrable cooling-fan control system that:

- acquires engine-coolant temperature through an Arduino Uno and LM35 sensor;
- validates and filters the measurement;
- determines a fan request and PWM command using hysteresis-aware control logic;
- models CAN message exchange between logical ECUs;
- simulates a closed-loop thermal plant;
- exposes monitoring, diagnostics, fault-injection, and performance metrics.

This repository supports a university final project. It is **not** production automotive software and does not claim an Arduino Uno runs a complete AUTOSAR Classic runtime.

## Planned architecture

```text
LM35 / simulated temperature
          |
Engine-management logical ECU ── CAN model ── Fan-control logical ECU
          |                                        |
     Thermal-management SWC                   PWM fan command
          |                                        |
          └──────── thermal plant feedback ────────┘
                                                   |
                                          Arduino + MOSFET + DC fan
```

The AUTOSAR Classic concepts are represented in the Simulink/AUTOSAR model. Arduino provides the hardware I/O demonstration. Physical CAN is only claimed when MCP2515/transceiver hardware is actually integrated and tested.

## Repository layout

- `models/` — Simulink and AUTOSAR model files.
- `arduino/` — Arduino sketches, pin maps, and hardware notes.
- `docs/` — architecture, test evidence, and report material.
- `tests/` — test cases and logged evaluation data.

## Core deliverables

1. Arduino-based sensor acquisition and PWM fan control.
2. At least 10 genuinely used Simulink library block types.
3. At least two instructor-approved user-defined function blocks.
4. Measurable monitoring and stability/performance evaluation.
5. Scalability and system-integration assessment.
6. AUTOSAR Classic-inspired SWC/interface structure and an accurately documented CAN implementation level.

## Development milestones

1. Verify MATLAB Online, Simulink, AUTOSAR Blockset, Arduino support, and relevant licenses.
2. Build and test the baseline closed-loop thermal control model.
3. Separate functionality into logical SWCs and interfaces.
4. Add CAN message modeling plus timeout/invalid-message diagnostics.
5. Integrate and demonstrate Arduino hardware I/O safely.
6. Run fault-injection tests, measure response metrics, and complete documentation.

See [Architecture](docs/ARCHITECTURE.md) and [Project plan](docs/PROJECT_PLAN.md).

## Safety notes

- Never power a DC fan directly from an Arduino GPIO.
- Use a suitable MOSFET driver, external fan supply, common ground, and flyback protection as appropriate.
- Treat hardware and toolbox availability as items to verify, not assumptions.
