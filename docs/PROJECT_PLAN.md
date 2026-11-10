# Project Plan

## Phase 1 — Environment verification

Verify MATLAB Online access, Simulink, AUTOSAR Blockset, Arduino Support Package, serial/USB connectivity, and CAN-related capability. Record licenses and limitations.

## Phase 2 — Baseline controller

Implement sensor input, temperature processing, fan-control logic, PWM, thermal plant, and feedback. Confirm meaningful thermal response before calling the system stable.

## Phase 3 — AUTOSAR structure

Create logical SWCs, ports, interfaces, runnables, and test each component independently.

## Phase 4 — CAN and diagnostics

Define message data, timeout behavior, invalid-message handling, and diagnostic states. State the actual CAN implementation level honestly.

## Phase 5 — Hardware demonstration

Connect LM35 and protected fan driver to the Arduino Uno. Keep the fan on an external supply and provide a common ground.

## Phase 6 — Test evidence

Log raw and filtered temperature, error, PWM, fan state, RPM if available, CAN status, and diagnostics. Evaluate rise time, settling time, overshoot, steady-state error, PWM variation, and fault-detection latency.

## Phase 7 — Final evidence

Prepare model screenshots, AUTOSAR configuration evidence, hardware photos/video, results, scalability discussion, report, and presentation.
