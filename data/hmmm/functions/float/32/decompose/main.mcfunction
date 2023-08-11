#> hmmm:float/32/decompose/main
#   Return the exponent and significand of hmmm_io.P0
##
# @params
#   hmmm_io.P0
#       32-bit float
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##

# extract the leftmost bit (sign), leave R0 as 31-bits
scoreboard players set R0 hmmm_io 0
scoreboard players operation R1 hmmm_io = P0 hmmm_io
execute if score R1 hmmm_io matches ..-1 run function hmmm:float/32/decompose/extract_sign


scoreboard players operation R2 hmmm_io = R1 hmmm_io

# slice the significand off
scoreboard players operation R1 hmmm_io /= 8388608 hmmm_constant
# sign the exponent
scoreboard players remove R1 hmmm_io 127

# slice the exponent off
scoreboard players operation R2 hmmm_io %= 8388608 hmmm_constant