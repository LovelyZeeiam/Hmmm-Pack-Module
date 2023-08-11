#> hmmm:float/32/multiply/branch2103
#   Shift hmmm_io.R2 left until the leading bit is 1.
#

scoreboard players set 8 hmmm_temp 0
scoreboard players operation R2 hmmm_io *= 2 hmmm_constant
scoreboard players remove R1 hmmm_io 1


execute if score R1 hmmm_io matches ..-126 run function hmmm:float/32/multiply/exception/underflow
execute if score 8 hmmm_temp matches 0 if score R1 hmmm_io matches -125.. unless score R2 hmmm_io matches 8388608.. run function hmmm:float/32/multiply/branch2103