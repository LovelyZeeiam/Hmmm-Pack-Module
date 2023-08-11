#> hmmm:float/32/multiply/branch2102
#   Shift hmmm_temp.2 left until the leading bit is 1.
#

scoreboard players operation 2 hmmm_temp *= 2 hmmm_constant
scoreboard players remove R1 hmmm_io 1

execute if score R1 hmmm_io matches -125.. unless score 2 hmmm_temp matches 8388608.. run function hmmm:float/32/multiply/branch2102