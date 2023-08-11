#> hmmm:float/32/multiply/branch0
#   Both values are not NaN
#

execute if score 6 hmmm_temp matches 3..4 run scoreboard players set 8 hmmm_temp 1
execute if score 7 hmmm_temp matches 3..4 run scoreboard players set 8 hmmm_temp 1

execute if score 8 hmmm_temp matches 1 run function hmmm:float/32/multiply/branch1
execute if score 8 hmmm_temp matches 0 run function hmmm:float/32/multiply/branch2