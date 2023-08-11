#> hmmm:float/32/add/branch111110
# shift significand left, decrease exponent

scoreboard players operation R2 hmmm_io *= 2 hmmm_constant
scoreboard players remove R1 hmmm_io 1

# check for underflow
execute if score R1 hmmm_io matches ..-128 run function hmmm:float/32/add/exception/underflow
execute unless score R1 hmmm_io matches ..-128 run function hmmm:float/32/add/branch11111