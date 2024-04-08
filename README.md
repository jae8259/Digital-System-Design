# Digital-System-Design

Personal repository on studying digital design using verilog.

# How to replicate

iverilog <project>/module_tb.sv
vvp a.out

# Tools

## VS Code

## Icarus verilog

https://github.com/steveicarus/iverilog

# Conventions

## Coding Conventions

Inspired by _lowRISC Verilog Coding Style Guide_[SG24].
Declarations
Basic Template

## Folder Structure

Inspired by _Directories Within the Project_[Ba21].

```
|-<project>
    |-hdl/
    |-test/
    |-simulation/
    |-run/
    |-log/
```

## hdl/

The HDL directory is where all hardware Verilog source \*.v files to be used for synthesis belong.

## test/

All Verilog testbenches for the design go into the "test" folder.

## simulation/

The main file in here is the wave files from icarus-verilog.

## run/

object file from running the veriog files.

## log/

log files reside here.

# References

Baas, B. (2021). _EEC 180 - Digital Systems II_[Lecture Page]. UCDVIS. https://www.ece.ucdavis.edu/~bbaas/180/tutorials/file.organization.html

Style Guides. (2024). _lowRISC Verilog Coding Style Guide_. Github. https://github.com/lowRISC/style-guides/blob/master/VerilogCodingStyle.md#lowrisc-verilog-coding-style-guide

https://course.ece.cmu.edu/~ece447/s15/lib/exe/fetch.php?media=goodrtl-parkin.pdf