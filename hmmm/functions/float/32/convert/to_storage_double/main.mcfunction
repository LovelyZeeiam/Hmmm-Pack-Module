#> hmmm:float/32/convert/to_storage_double/main
#   Return a 32-bit float representation as a storage float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   {io.R0}
#       storage float type
##

# scoreboard players set 0 hmmm_temp 1
# execute if score P1 hmmm_io matches 128 run function hmmm:float/32/convert/to_storage_double/special
# execute if score 0 hmmm_temp matches 1 unless score P1 hmmm_io matches 128 run function hmmm:float/32/convert/to_storage_double/number

function hmmm:float/32/convert/to_storage_double/number
