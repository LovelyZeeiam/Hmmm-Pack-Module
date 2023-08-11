#> hmmm:float/32/divide/branch2104
#   Shift hmmm_temp.2 left until the leading bit is 1.
#

scoreboard players operation 5 hmmm_temp *= 2 hmmm_constant
scoreboard players add R1 hmmm_io 1

execute unless score 5 hmmm_temp matches 8388608.. run function hmmm:float/32/divide/branch2104