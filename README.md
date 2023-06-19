<!--
 Copyright (C) 2022 Chris Laprade (chris@rootiest.com)

 This file is part of zippy_guides.

 zippy_guides is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 zippy_guides is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with zippy_guides.  If not, see <http://www.gnu.org/licenses/>.
-->

![header](resources/pretty_header.png)

# Guides For Klipper Things and Stuff

[![GitHub Super-Linter](https://github.com/rootiest/zippy_guides/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)

## [Axis Limits](guides/axis_limits.md)

Calibrate the physical travel and bed size/print boundaries for _your_ machine.

## [Probe Offsets](guides/probe.md)

Calibrate your probe offsets for X,Y,and Z axis.

## [Bed Mesh Boundaries](guides/mesh.md)

Calibrate the boundaries for bed meshing.

## [Macros](guides/macros.md)

Create and use macros for your `START_PRINT` and `END_PRINT` gcode commands.

## [Advanced Macro Techniques](guides/variables.md) (WIP)

Learn more advanced techniques you can use in your macros.

Covers parameters, variables and types, gcode_variables, persistant_variables, the printer object, delayed_gcode, and more.

## [USB Pico Setup](guides/usb-pico.md)

Set up a USB-connected Pico (or any RP2040 board) as a secondary mcu.

Covers compiling, flashing, configuring in Klipper, and some extras!

## [CANbus your Pico](guides/pico_can.md)

Use an SKR-Pico (or any Pico/RP2040 board) as both a CANbus bridge _and_ a Klipper mcu.

## External Guides

The following are links to external guides that I have found useful. These are not my guides, but I have found them useful enough to include here. If you have a guide you would like to see included here, please open an issue or submit a pull request.

### [Klipper Documentation](https://www.klipper3d.org/)

The official Klipper documentation. Everything you need to know about Klipper is here. Sometimes it can be a bit hard to find what you are looking for, but it is all here. See the [Other Useful Links](guides/links.md) section for some links to specific pages.

### [Klipper Discord](https://discord.klipper3d.org/)

The official Klipper Discord server. The best place to get one-on-one help with Klipper.

### [Voron Discord](https://discord.com/invite/voron)

The official Voron Discord server. Not just for Voron users!

### [Ellis's Print Tuning Guide](https://ellis3dp.com/Print-Tuning-Guide/)

One of the best guides for tuning your printer. Unlike most guides, this one specifically focuses on Klipper printers. Should be one of your first steps after getting Klipper up and running.

### [Esoterical's CANbus Guide](https://github.com/Esoterical/voron_canbus)

Pretty much the best CANbus installation resource out there. If you are looking to install a CANbus toolboard, this is the guide you want to follow.

### [Other Useful Links](guides/links.md)

A collection of helpful links for Klipper users.

## Contributing

Contributions are welcome! If you have a guide you would like to see included here, please open an issue or submit a pull request.

## Issues

If you find an issue with any of the guides, please open an issue or submit a pull request.

If you just have a question or need help, feel free to open an issue or contact me on Discord.

## License

This project is licensed under the terms of the [GNU General Public License v3.0](LICENSE).

## Contact

Rootiest on Discord (Voron and Klipper servers)

Donate to support my work:

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/rootiest)

Join the [Rootiest Discord server](http://rootiest.com/discord.html) for information and support for my projects.

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="resources/github-snake-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="resources/github-snake.svg">
  <img alt="Shows a snake consuming the squares from the rootiest contributions graph." src="resources/github-snake.svg">
</picture>
