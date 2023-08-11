#> hmmm:float/32/compare/equal/main
#   Checks for equality between two floating point numbers
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   hmmm_io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R0
#       0 if numbers are not equal, 1 if they are.
#
scoreboard players set R0 hmmm_io 1
execute unless score P0 hmmm_io = P3 hmmm_io run scoreboard players set R0 hmmm_io 0
execute unless score P1 hmmm_io = P4 hmmm_io run scoreboard players set R0 hmmm_io 0
execute unless score P2 hmmm_io = P5 hmmm_io run scoreboard players set R0 hmmm_io 0