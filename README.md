# Digital-System-Design

Personal repository on studying digital design using verilog.
https://freegear.tistory.com/236
https://www.embecosm.com/appnotes/ean6/embecosm-or1k-verilator-tutorial-ean6-issue-1.pdf
https://blog.naver.com/doksg/222038542081

# How to replicate

iverilog <project>/module_tb.sv
vvp a.out

# Tools

## OpenRISC
https://www.embecosm.com/appnotes/ean2/html/index.html

## VS Code

## Icarus verilog

https://github.com/steveicarus/iverilog

## Verilator

https://verilator.org/guide/latest/install.html
https://m.blog.naver.com/doksg/221979883906

# Conventions

## Coding Conventions

Inspired by _lowRISC Verilog Coding Style Guide_[SG24].
Declarations
Basic Template

## Folder Structure

Inspired by _Directories Within the Project_[Ba21].

```
|-<project>
    |-module/
    |-test/
    |-simulation/
    |-run/
    |-log/
```

## module/

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

http://www.asic-world.com/systemverilog/tutorial.html

Baas, B. (2021). _EEC 180 - Digital Systems II_[Lecture Page]. UCDVIS. https://www.ece.ucdavis.edu/~bbaas/180/tutorials/file.organization.html

Style Guides. (2024). _lowRISC Verilog Coding Style Guide_. Github. https://github.com/lowRISC/style-guides/blob/master/VerilogCodingStyle.md#lowrisc-verilog-coding-style-guide

https://course.ece.cmu.edu/~ece447/s15/lib/exe/fetch.php?media=goodrtl-parkin.pdf

Roth, C. H., John, L. K., & Lee, B. K. (2016). Digital systems design using Verilog. Cengage Learning.

Beaumont, J., Flautner, K., Manerkar Y. (2024). EECS 370: Intro to Computer Organization. _The University of Michigan, Winter 2024_. https://eecs370.github.io/

Mutlu, O. (2022). Digital Design and Computer Architecture. _ETH Zurich_. https://safari.ethz.ch/digitaltechnik/spring2022/
