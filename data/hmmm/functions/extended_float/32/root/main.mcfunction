#> hmmm:extended_float/32/root/main
#   Return the first 32-bit float-th root of the second 32-bit float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[0..25]

scoreboard players set 0 temp 1
execute if score P0 io matches 0 if score P1 io matches 1 if score P2 io matches 0 run function hmmm:extended_float/32/root/sqrt
execute if score 0 temp matches 1 run function hmmm:extended_float/32/root/not_sqrt