#> hmmm:extended_float/32/atan/main
#   Return the arctan of the 32-bit float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#

function hmmm:float/32/convert/to_storage_double/main
execute as fef32a78-71bf-4588-9c82-115070685847 run function hmmm:extended_float/32/atan/as_entity

function hmmm:float/32/convert/from_int/main
scoreboard players remove R1 hmmm_io 28
execute if score R1 hmmm_io matches ..-128 run function hmmm:extended_float/32/sin/zero