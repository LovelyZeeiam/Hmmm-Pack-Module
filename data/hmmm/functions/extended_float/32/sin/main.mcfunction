#> hmmm:extended_float/32/sin/main
#   Return the sine of the 32-bit float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#

execute if score P1 hmmm_io matches 128 run function hmmm:extended_float/32/sin/nan
execute unless score P1 hmmm_io matches 128 run function hmmm:extended_float/32/sin/real