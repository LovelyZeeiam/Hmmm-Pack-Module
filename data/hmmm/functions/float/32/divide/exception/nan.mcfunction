#> hmmm:float/32/divide/exception/nan
#   Throw a NaN exception
##

scoreboard players set R0 hmmm_io 0
scoreboard players set R1 hmmm_io 128
scoreboard players set R2 hmmm_io 1
scoreboard players set 8 hmmm_temp 1

tellraw @a[tag=exception] [{"text":"[Exception] NaN Value Computed. Use /tag @s remove exception to ignore these messages.","color":"red"}]