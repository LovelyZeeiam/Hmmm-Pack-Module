#> hmmm:float/32/multiply/exception/underflow
#   Throw a underflow exception
##

function hmmm:float/32/multiply/branch1
scoreboard players set 8 temp 1

tellraw @a[tag=exception] [{"text":"[Exception] Exponent Underflow. Use /tag @s remove exception to ignore these messages.","color":"red"}]