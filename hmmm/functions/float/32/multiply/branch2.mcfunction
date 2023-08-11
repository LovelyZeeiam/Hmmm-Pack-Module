#> hmmm:float/32/multiply/branch2
#   Check for infinity
#

execute if score 6 hmmm_temp matches 1..2 run scoreboard players set 8 hmmm_temp 1
execute if score 7 hmmm_temp matches 1..2 run scoreboard players set 8 hmmm_temp 1

execute if score 8 hmmm_temp matches 1 run function hmmm:float/32/multiply/branch20
execute if score 8 hmmm_temp matches 0 run function hmmm:float/32/multiply/branch21