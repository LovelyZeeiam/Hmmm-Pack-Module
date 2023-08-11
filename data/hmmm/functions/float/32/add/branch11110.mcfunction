#> hmmm:float/32/add/branch11110
# check exponent overflow

scoreboard players add R1 hmmm_io 1
# report overflow
execute if score R1 hmmm_io matches 129.. run function hmmm:float/32/add/exception/overflow
# no overflow
execute unless score R1 hmmm_io matches 129.. run scoreboard players operation R2 hmmm_io /= 2 hmmm_constant
execute unless score R1 hmmm_io matches 129.. run function hmmm:float/32/add/branch11111