scoreboard players set P3 hmmm_io 1
scoreboard players set P4 hmmm_io 7
scoreboard players set P5 hmmm_io 0

function hmmm:float/32/compare/less_equal/main

# if it is less, set to 0
execute if score R0 hmmm_io matches 1 run function hmmm:extended_float/32/exponential/zero
# if it isn't, do nothing (in this function)