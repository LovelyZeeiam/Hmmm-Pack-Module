#> hmmm:extended_float/32/fast_inverse_sqrt/main
#   Return the inverse square root of the 32-bit float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[11..16]

scoreboard players set 11 temp 1
execute if score P0 hmmm_io matches 1 run function hmmm:extended_float/32/fast_inverse_sqrt/nan
execute if score P0 hmmm_io matches 0 if score P1 hmmm_io matches -127 if score P2 hmmm_io matches 0 run function hmmm:extended_float/32/fast_inverse_sqrt/inf
execute if score 11 temp matches 1 run function hmmm:extended_float/32/fast_inverse_sqrt/positive