#> hmmm:float/32/divide/branch21
#   Subtract exponents
#

# Subtract exponents, adjust for bias
execute if score 1 hmmm_temp matches -127 run scoreboard players add 8 hmmm_temp 1
execute if score 1 hmmm_temp matches -127 run scoreboard players add 1 hmmm_temp 1
execute if score 4 hmmm_temp matches -127 run scoreboard players add 8 hmmm_temp 2
execute if score 4 hmmm_temp matches -127 run scoreboard players add 4 hmmm_temp 1
scoreboard players operation 1 hmmm_temp -= 4 hmmm_temp

scoreboard players operation 4 hmmm_temp = 8 hmmm_temp
scoreboard players set 8 hmmm_temp 0
# overflow
execute if score 1 hmmm_temp matches 129.. run function hmmm:float/32/divide/exception/overflow
# underflow
execute if score 1 hmmm_temp matches ..-128 run function hmmm:float/32/divide/exception/underflow

# if working
execute if score 8 hmmm_temp matches 0 run function hmmm:float/32/divide/branch210