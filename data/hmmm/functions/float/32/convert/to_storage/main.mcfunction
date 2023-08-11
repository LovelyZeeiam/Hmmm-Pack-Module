#> hmmm:float/32/convert/to_storage/main
#   Return a 32-bit float representation as a storage float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   {io.R0}
#       storage float type
##

# scoreboard players set 0 temp 1
# execute if score P1 hmmm_io matches 128 run function hmmm:float/32/convert/to_storage/special
# execute if score 0 temp matches 1 unless score P1 hmmm_io matches 128 run function hmmm:float/32/convert/to_storage/number

function hmmm:float/32/convert/to_storage/number
