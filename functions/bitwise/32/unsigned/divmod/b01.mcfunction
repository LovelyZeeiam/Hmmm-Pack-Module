#> hmmm:bitwise/32/unsigned/divmod/b01
#   branch from hmmm:bitwise/32/unsigned/divmod/b0
##
# hmmm_io.R0 = div
# hmmm_io.R1 = mod
# hmmm_temp.0 = mod1
# hmmm_temp.1 = div1
# hmmm_temp.2 = or
##

scoreboard players set 0 hmmm_temp 1073741824
scoreboard players operation 0 hmmm_temp %= P1 hmmm_io

scoreboard players set 1 hmmm_temp 1073741824
scoreboard players operation 1 hmmm_temp /= P1 hmmm_io
scoreboard players operation 1 hmmm_temp *= 2 hmmm_constant
scoreboard players operation R0 hmmm_io += 1 hmmm_temp

scoreboard players operation 0 hmmm_temp *= 2 hmmm_constant

scoreboard players set 2 hmmm_temp 0
execute if score 0 hmmm_temp matches ..-1 run scoreboard players set 2 hmmm_temp 1
execute if score 0 hmmm_temp >= P1 hmmm_io run scoreboard players set 2 hmmm_temp 1
execute if score 2 hmmm_temp matches 1 run function hmmm:bitwise/32/unsigned/divmod/b010

scoreboard players operation R1 hmmm_io += 0 hmmm_temp
scoreboard players set 2 hmmm_temp 0
execute if score R1 hmmm_io matches ..-1 run scoreboard players set 2 hmmm_temp 1
execute if score R1 hmmm_io >= P1 hmmm_io run scoreboard players set 2 hmmm_temp 1
execute if score 2 hmmm_temp matches 1 run function hmmm:bitwise/32/unsigned/divmod/b011