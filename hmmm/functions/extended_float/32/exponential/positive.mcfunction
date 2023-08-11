scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 7
scoreboard players set P5 hmmm_io 0

function hmmm:float/32/compare/greater_equal/main

# if it is greater, set to positive infinity
execute if score R0 hmmm_io matches 1 run function hmmm:extended_float/32/exponential/pos_inf
# if it isn't, do nothing (in this function)