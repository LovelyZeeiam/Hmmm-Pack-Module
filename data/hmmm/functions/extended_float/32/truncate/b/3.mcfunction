execute if score P1 hmmm_io matches 12 run scoreboard players operation P2 hmmm_io %= 2048 hmmm_constant
execute if score P1 hmmm_io matches 13 run scoreboard players operation P2 hmmm_io %= 1024 hmmm_constant
execute if score P1 hmmm_io matches 14 run scoreboard players operation P2 hmmm_io %= 512 hmmm_constant
execute if score P1 hmmm_io matches 15..16 run function hmmm:extended_float/32/truncate/b/16
