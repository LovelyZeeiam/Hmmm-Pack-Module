#> hmmm:extended_float/32/truncate/main
#   Returns a truncated float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#

scoreboard players operation R0 hmmm_io = P0 hmmm_io
scoreboard players operation R1 hmmm_io = P1 hmmm_io
scoreboard players operation R2 hmmm_io = P2 hmmm_io

function hmmm:extended_float/32/truncate/b/main

execute if score P1 hmmm_io matches 1..22 run scoreboard players operation R2 hmmm_io -= P2 hmmm_io
execute if score P1 hmmm_io matches ..0 run function hmmm:extended_float/32/truncate/zero