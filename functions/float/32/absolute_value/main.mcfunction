#> hmmm:float/32/absolute_value/main
#   Return the absolute value of a 32-bit float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##

scoreboard players set R0 hmmm_io 0
scoreboard players operation R1 hmmm_io = P1 hmmm_io
scoreboard players operation R2 hmmm_io = P2 hmmm_io