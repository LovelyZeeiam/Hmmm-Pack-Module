#> hmmm:bitwise/extended_float/32/cos/real
#   Case when the angle is real
#

# see sine implementation for comments
function hmmm:bitwise/float/32/convert/to_storage/main
data modify entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] set from storage hmmm:io R0
execute store result entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] float 0.00005464151336010201 run data get entity fef32a78-71bf-4588-9c82-115070685847 Rotation[0] 1048576

execute positioned 0.0 0.0 0.0 rotated as fef32a78-71bf-4588-9c82-115070685847 run tp fef32a78-71bf-4588-9c82-115070685847 ^ ^ ^1
execute store result score P0 io run data get entity fef32a78-71bf-4588-9c82-115070685847 Pos[2] 1073741824
function hmmm:bitwise/float/32/convert/from_int/main

scoreboard players remove R1 io 30
execute if score R1 io matches ..-128 run function hmmm:bitwise/extended_float/32/sin/zero