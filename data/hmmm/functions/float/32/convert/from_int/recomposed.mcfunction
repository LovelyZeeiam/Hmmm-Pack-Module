scoreboard players set R0 hmmm_io 0
execute if score P0 hmmm_io matches ..-1 run function hmmm:float/32/convert/from_int/negative

scoreboard players operation P2 hmmm_io = P0 hmmm_io
function hmmm:float/32/convert/from_int/b/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io

scoreboard players remove P2 hmmm_io 8388608

function hmmm:float/32/recompose/main