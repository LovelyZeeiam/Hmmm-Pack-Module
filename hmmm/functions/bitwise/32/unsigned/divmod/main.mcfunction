#> hmmm:bitwise/32/unsigned/divmod/main
#   Return the unsigned quotient and modulo of hmmm_io.P[0, 1]
##
# @params
#   hmmm_io.P[0, 1]
#       Two 32-bit integers
# @returns
#   hmmm_io.R[0, 1]
#       Two 32-bit integers, quotient and modulo
##
# hmmm_io.R0 = div
# hmmm_io.R1 = mod
##

scoreboard players operation R0 hmmm_io = P0 hmmm_io
execute if score P1 hmmm_io matches 1.. run function hmmm:bitwise/32/unsigned/divmod/b0
execute if score P1 hmmm_io matches ..0 run function hmmm:bitwise/32/unsigned/divmod/b1