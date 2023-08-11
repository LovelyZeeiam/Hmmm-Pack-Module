#> hmmm:extended_float/32/float_type/possible_integer
#   Numbers here are possible integers

# magic 1
# copy it over since P0 is useless
scoreboard players operation P0 hmmm_io = P2 hmmm_io
execute if score P1 hmmm_io matches 1.. run function hmmm:extended_float/32/truncate/b/main
execute if score P2 hmmm_io matches 1.. run scoreboard players set R0 hmmm_io 2


execute if score R0 hmmm_io matches 0 run function hmmm:extended_float/32/float_type/pi_not_invalid