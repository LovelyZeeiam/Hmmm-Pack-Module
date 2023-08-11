#> hmmm:extended_float/32/exponential/floor_nonzero
# Sets the exponent of a float to another float expressed as an integer
#

# Add implicit bit to mantissa
scoreboard players add P2 hmmm_io 8388608
# Turn float exponent into integer
execute if score P1 hmmm_io matches 6 run scoreboard players operation P2 hmmm_io /= 131072 hmmm_constant
execute if score P1 hmmm_io matches 5 run scoreboard players operation P2 hmmm_io /= 262144 hmmm_constant
execute if score P1 hmmm_io matches 4 run scoreboard players operation P2 hmmm_io /= 524288 hmmm_constant
execute if score P1 hmmm_io matches 3 run scoreboard players operation P2 hmmm_io /= 1048576 hmmm_constant
execute if score P1 hmmm_io matches 2 run scoreboard players operation P2 hmmm_io /= 2097152 hmmm_constant
execute if score P1 hmmm_io matches 1 run scoreboard players operation P2 hmmm_io /= 4194304 hmmm_constant
execute if score P1 hmmm_io matches 0 run scoreboard players operation P2 hmmm_io /= 8388608 hmmm_constant
# Now P2 is an integer
execute if score P0 hmmm_io matches 1 run scoreboard players operation P2 hmmm_io *= -1 hmmm_constant

# Set P2 as the exponent for a new number hmmm_temp.[11..13]
scoreboard players set 11 hmmm_temp 0
scoreboard players operation 12 hmmm_temp = P2 hmmm_io
scoreboard players set 13 hmmm_temp 0