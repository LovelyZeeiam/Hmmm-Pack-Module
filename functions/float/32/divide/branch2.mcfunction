#> hmmm:float/32/divide/branch2
#   Check for infinity
#

execute if score 6 hmmm_temp matches 1..2 run scoreboard players add 8 hmmm_temp 1
execute if score 7 hmmm_temp matches 1..2 run scoreboard players add 8 hmmm_temp 2

# return infinity if dividend is infinity
execute if score 8 hmmm_temp matches 1 run function hmmm:float/32/divide/branch20
# return 0 if divisor is infinity
execute if score 8 hmmm_temp matches 2 run function hmmm:float/32/divide/branch1
# return NaN if both are infinity
execute if score 8 hmmm_temp matches 3 run function hmmm:float/32/divide/exception/nan
# other case
execute if score 8 hmmm_temp matches 0 run function hmmm:float/32/divide/branch21