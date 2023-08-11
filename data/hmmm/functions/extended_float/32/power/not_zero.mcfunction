#> hmmm:extended_float/32/power/not_zero
#   Return not one
#

scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io


scoreboard players operation P3 hmmm_io = 23 temp
scoreboard players operation P4 hmmm_io = 24 temp
scoreboard players operation P5 hmmm_io = 25 temp

function hmmm:float/32/multiply/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:extended_float/32/exponential/main