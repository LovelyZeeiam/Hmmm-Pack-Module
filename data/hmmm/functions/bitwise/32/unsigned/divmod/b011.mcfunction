#> hmmm:bitwise/32/unsigned/divmod/b011
#   branch from hmmm:bitwise/32/unsigned/divmod/b01
##
# hmmm_io.R0 = div
# hmmm_io.R1 = mod
# temp.0 = mod1
# temp.1 = div1
# temp.2 = or
##

scoreboard players operation R1 hmmm_io -= P1 hmmm_io
scoreboard players add R0 hmmm_io 1