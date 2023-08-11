#> hmmm:float/32/divide/branch2105
#   Shift hmmm_io.R2 left until the leading bit is 1.
#

scoreboard players operation R2 hmmm_io *= 2 hmmm_constant
scoreboard players add R1 hmmm_io 1

execute unless score R2 hmmm_io matches 8388608.. if score R1 hmmm_io matches ..-127 run function hmmm:float/32/divide/branch2105