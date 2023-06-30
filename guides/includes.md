<!--
 Copyright (C) 2023 Chris Laprade (chris@rootiest.com)

 This file is part of printcfg.

 printcfg is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 printcfg is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with printcfg.  If not, see <http://www.gnu.org/licenses/>.
-->

# Using Includes to Organize Your Config

![header](../resources/code_header.png)

This guide will explain the concept of includes and how to use them to organize your config for your convenience.

## What are Includes?

Includes are a way to split your config into multiple files. This is useful for organizing your config into logical sections, and for sharing common code between multiple configs.

## How do I use Includes?

Includes are a simple concept. You can include another file in your config by using the `include` keyword. For example, if you have a file called `my_include.cfg` in the same directory as your config, you can include it like this:

```properties
[include my_include.cfg]
```

This will include the contents of `my_include.cfg` in your config. You can also include files from other directories by using a relative path:

```properties
[include ../macros/my_include.cfg]
```

You can also use wildcards to include multiple files at once:

```properties
[include *.cfg]
```

or include all .cfg files in a directory:

```properties
[include macros/*.cfg]
```

## How does it work?

It's important to understand that Includes do not change the way your config is parsed. When you include a file, the contents of that file are inserted into your config at the location of the include. This means that you can include files anywhere in your config, and you can even include files from within other files.

As far as Klipper is concerned, the config you end up with after all includes are processed is the same as if you had written it all in one file. This means that you can use includes to organize your config however you want, and you can use them to share code between multiple configs.

Functionally, there is almost no difference between pasteing the contents of a file into your config and including it.

## Why should I use Includes?

Includes are a great way to organize your config. You can use them to split your config into logical sections, and you can use them to share code between multiple configs.

You could break your macros out into a separate file, or even break each macro out into its own file. You could also break your printer config out into multiple files, one for each section.

You could also use includes to share code between multiple configs. For example, if you have multiple printers that use the same hotend, you could put the hotend config in a separate file and include it in each printer config.

## What are the limitations of Includes?

There are a few limitations to using includes.

First, you cannot include a file that is outside of your config directory.

Second, the save_config feature is not compatible with sections that are included from another file. This means that if you include a file that contains a section that is saved to config, the save_config feature will not work for that section.

### Example of save_config limitation

> You have just added a canbus toolboard, and the documentation has you include a config file that contains the toolboard config. All is well until you attempt to pid tune the hotend.

`printer.cfg`:

```properties
[include hotend.cfg]
```

`hotend.cfg`:

```properties
[extruder]
step_pin: EBBCan: PD0
dir_pin: !EBBCan: PD1
enable_pin: !EBBCan: PD2
microsteps: 16
rotation_distance: 33.500
nozzle_diameter: 0.400
filament_diameter: 1.750
heater_pin: EBBCan: PB13
sensor_type: EPCOS 100K B57560G104F
sensor_pin: EBBCan: PA3
control: pid
pid_Kp: 21.527
pid_Ki: 1.063
pid_Kd: 108.982
min_temp: 0
max_temp: 250

### ETC ###
```

When you try to run `SAVE_CONFIG` after completing the pid tuning, you receive an error message stating the config section was not able to be modified.

This is because the `hotend.cfg` file is included in the `printer.cfg` file, and the `SAVE_CONFIG` command is not able to modify sections that are included from another file.

In order to avoid this issue we can do the following:

`printer.cfg`:

```properties
[include hotend.cfg]

[extruder]
control: pid
pid_Kp: 21.527
pid_Ki: 1.063
pid_Kd: 108.982
```

`hotend.cfg`:

```properties
[extruder]
step_pin: EBBCan: PD0
dir_pin: !EBBCan: PD1
enable_pin: !EBBCan: PD2
microsteps: 16
rotation_distance: 33.500
nozzle_diameter: 0.400
filament_diameter: 1.750
heater_pin: EBBCan: PB13
sensor_type: EPCOS 100K B57560G104F
sensor_pin: EBBCan: PA3
min_temp: 0
max_temp: 250

### ETC ###
```

Now the `SAVE_CONFIG` command will work as expected.

This same method can be used for any other section that you wish to modify with the `SAVE_CONFIG` command.

Some other examples include:

- heater_bed pid
- probe z-offset
- input_shaper

It is also worth noting that this limitation only applies to the initial `SAVE_CONFIG` command for that section. Once the section has been saved to config, it no longer needs to be placed in the main config file.

This is because further modifications made by save_config can happen in the save_config section itself. Your original settings that were overidden by save_config will be commented out and effectively removed from the config, no matter where they are located.

## Conclusion

Includes are a great way to organize your config and share code between multiple configs. They are easy to use and have relatively few limitations.

I highly recommend using includes to organize your config. It will make your config easier to read and easier to maintain.

Just keep in mind that the save_config feature is not compatible with sections that are included from another file and you should be good to go!

## Further Reading

- [Klipper Documentation - Includes](https://www.klipper3d.org/Config_Reference.html#include)

## Questions?

If you have any questions that aren't answered in this guide, or you have found an error, please visit the
[Rootiest Discord Server](https://discord.rootiest.com) for support.
