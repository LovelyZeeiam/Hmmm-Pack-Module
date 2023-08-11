#> hmmm:float/32/recompose/main
#   Return the 32-bit floating-point representation using
#   hmmm_io.P0 as a sign, hmmm_io.P1 as an (signed) exponent and
#   hmmm_io.P2 as a (unsigned) significand
#   Essentially the inverse of hmmm:float/32/decompose/main
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R0
#       32-bit float
##

# set hmmm_io.R0 to the exponent
scoreboard players operation R0 hmmm_io = P1 hmmm_io
# add 127 to remove sign
scoreboard players add R0 hmmm_io 127
# shift hmmm_io.R0 to put it in the right place
scoreboard players operation R0 hmmm_io *= 8388608 hmmm_constant

# add the significand to exponent to yield last 31-bits of the float
scoreboard players operation R0 hmmm_io += P2 hmmm_io

# add the sign (add 2^31) if needed
execute if score P0 hmmm_io matches 1 run function hmmm:float/32/recompose/replace_sign