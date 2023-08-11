#> hmmm:bitwise/32/unsigned/modulo/main
#   Return the unsigned modulo of hmmm_io.P[0, 1]
##
# @params
#   hmmm_io.P[0, 1]
#       Two 32-bit integers
# @returns
#   hmmm_io.R0
#       32-bit integer
##

function hmmm:bitwise/32/unsigned/divmod/main
scoreboard players operation R0 hmmm_io = R1 hmmm_io