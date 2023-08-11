#> hmmm:extended_float/32/acos/main
#   Return the arccos of the 32-bit float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies hmmm_temp.[0..19]

scoreboard players add P0 hmmm_io 1
execute if score P0 hmmm_io matches 2 run scoreboard players set P0 hmmm_io 0
function hmmm:extended_float/32/asin/main

scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 0
scoreboard players set P5 hmmm_io 4788187

function hmmm:float/32/add/main