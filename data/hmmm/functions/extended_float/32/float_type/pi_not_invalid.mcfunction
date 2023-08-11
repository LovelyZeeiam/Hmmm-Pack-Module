#> hmmm:extended_float/32/float_type/pi_not_invalid
#   Numbers here are possible integers

# magic 2
# copy it back
scoreboard players operation P2 hmmm_io = P0 hmmm_io
scoreboard players remove P1 hmmm_io 1
function hmmm:extended_float/32/truncate/b/main
execute if score P2 hmmm_io matches 1.. run scoreboard players set R0 hmmm_io 1