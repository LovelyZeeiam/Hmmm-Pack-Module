execute if score P1 hmmm_io matches 1..2 run function hmmm:extended_float/32/truncate/b/5
execute if score P1 hmmm_io matches 3 run scoreboard players operation P2 hmmm_io %= 1048576 constant
execute if score P1 hmmm_io matches 4 run scoreboard players operation P2 hmmm_io %= 524288 constant
execute if score P1 hmmm_io matches 5..6 run function hmmm:extended_float/32/truncate/b/8
