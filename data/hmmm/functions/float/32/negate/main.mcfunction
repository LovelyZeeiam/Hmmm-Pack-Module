#> hmmm:float/32/negate/main
#   Return the negation of a 32-bit float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##

scoreboard players operation R0 hmmm_io = P0 hmmm_io
scoreboard players operation R1 hmmm_io = P1 hmmm_io
scoreboard players operation R2 hmmm_io = P2 hmmm_io

scoreboard players add R0 hmmm_io 1
execute if score R0 hmmm_io matches 2 run scoreboard players set R0 hmmm_io 0