execute if score P1 hmmm_io matches 17..18 run function hmmm:extended_float/32/truncate/b/17
execute if score P1 hmmm_io matches 19 run scoreboard players operation P2 hmmm_io %= 16 constant
execute if score P1 hmmm_io matches 20 run scoreboard players operation P2 hmmm_io %= 8 constant
execute if score P1 hmmm_io matches 21..22 run function hmmm:extended_float/32/truncate/b/20
