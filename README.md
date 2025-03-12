# README - Multiplexer and Demultiplexer in Verilog
### Author: Harrison Jansen van Beek & Boise State ECE230 Instructors
### Date: 11 March 2025

## Overview

This project implements multiplexers (MUX) and demultiplexers (DEMUX) in Verilog to simulate a primitive internet system where multiple users can send data to a library and later route it to different businesses. The lab focuses on using structural Verilog, ternary operators, and concatenation techniques to design efficient digital circuits.

## Project Description

The goal is to design:
* A 4-to-1 multiplexer (MUX) to select data from one of four sources (CEO, You, Fred, Jill).
* A 1-to-4 demultiplexer (DEMUX) to route the selected data to one of four destinations (Library, Fire Department, School, Rib Shack).
* A top-level module that integrates the MUX and DEMUX to form a complete system.
* A testbench to verify functionality using simulation.

## Implementation Details

Multiplexer (MUX)

A multiplexer selects one of multiple inputs based on selector bits and directs it to a single output.
* Inputs: 4-bit data signals from four sources.
* Selector: 2-bit signal (btnL, btnU) to choose the sender.
* Enable: btnC must be active for data transmission.
* Output: Routed data to an intermediate bus.

Demultiplexer (DEMUX)

A demultiplexer takes a single input and routes it to one of several outputs based on selector bits.
* Input: 4-bit data from the MUX.
* Selector: 2-bit signal (btnD, btnR) to choose the receiver.
* Enable: Controlled by btnC.
* Outputs: Routed data to four possible destinations.

## Hardware Mapping

|   Signal   |        Purpose         | Direction |
| :--------: | :--------------------: | :-------: |
|  sw[3:0]   |        CEO data        |   Input   |
|  sw[7:4]   |       Your data        |   Input   |
|  sw[11:8]  |      Fred’s data       |   Input   |
| sw[15:12]  |      Jill’s data       |   Input   |
|    btnL    |    MUX select bit 0    |   Input   |
|    btnU    |    MUX select bit 1    |   Input   |
|    btnD    |   DEMUX select bit 0   |   Input   |
|    btnR    |   DEMUX select bit 1   |   Input   |
|    btnC    |  Enable for MUX/DEMUX  |   Input   |
|  led[3:0]  |     Library output     |  Output   |
|  led[7:4]  | Fire Department output |  Output   |
| led[11:8]  |     School output      |  Output   |
| led[15:12] |    Rib Shack output    |  Output   |

## Files
* citymux.v – Implements the 4-to-1 multiplexer.
* citydemux.v – Implements the 1-to-4 demultiplexer.
* top.v – Connects MUX and DEMUX to form the complete system.
* test.v – Testbench to verify circuit behavior.

## Setup & Usage
1.	Open Vivado and create a new project.
2.	Add the Verilog source files (citymux.v, citydemux.v, top.v).
3.	Assign FPGA constraints (.xdc file) to map inputs/outputs to Basys3 board pins.
4.	Run synthesis, implementation, and generate the bitstream.
5.	Upload the bitstream to the FPGA and test by switching inputs and observing outputs.

## Concepts Learned
* Designing multiplexers and demultiplexers in Verilog.
* Using ternary operators (? :) for selection logic.
* Structuring concatenation and conditional statements.
* Implementing a top-level module integrating MUX and DEMUX.
* Debugging FPGA designs with I/O constraints.

## Acknowledgments

This project was completed as part of a digital systems lab at Boise State University, focusing on practical applications of digital logic design.
