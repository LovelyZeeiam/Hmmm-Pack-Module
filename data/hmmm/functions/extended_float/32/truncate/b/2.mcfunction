execute if score P1 hmmm_io matches 7 run scoreboard players operation P2 hmmm_io %= 65536 constant
execute if score P1 hmmm_io matches 8 run scoreboard players operation P2 hmmm_io %= 32768 constant
execute if score P1 hmmm_io matches 9 run scoreboard players operation P2 hmmm_io %= 16384 constant
execute if score P1 hmmm_io matches 10..11 run function hmmm:extended_float/32/truncate/b/12
