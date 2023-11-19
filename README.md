# LED-Control-Project-Custom-Startup-and-Linker-Script

## Overview

This project demonstrates how to turn on a LED using a custom startup file and linker script. By writing your own initialization routines and configuring the memory layout, you gain fine-grained control over the hardware and software aspects of the application.

## Features

- Turn on a LED connected to an embedded board.
- Custom startup file to initialize the microcontroller's core and peripherals.
- Linker script for defining memory regions and organizing code and data sections.

## Getting Started

### Hardware Setup

- NUCLEO-F446RE board
- Built in User LED

### Software Setup

1. ARM GNU Toolchain

2. OpenOCD

3. Putty
  
5. Git Bash

### Building and Running the Project

#### Git Bash Terminal Commands
```
make All
make Load
```
#### Putty Setup

1. Choose Telnet as a connection type

2. Enter "localhost" as host name with "4444" as Port

#### Putty Commands

```
reset init
flash write_image erase final.elf
reset halt
resume
```

## Acknowledgments

- [OPenOCD General Commands](https://openocd.org/doc/html/General-Commands.html)
