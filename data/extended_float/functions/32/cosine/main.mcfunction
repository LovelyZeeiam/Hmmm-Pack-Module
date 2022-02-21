#> extended_float:32/cosine/main
#   Return the cosine of the 32-bit float
##
# @params
#   io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#

execute if score P1 io matches 128 run function extended_float:32/sine/nan
execute unless score P1 io matches 128 run function extended_float:32/cosine/real