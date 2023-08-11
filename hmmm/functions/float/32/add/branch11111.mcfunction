#> hmmm:float/32/add/branch11111
# check if result is normalized

# is not normalized
execute unless score R1 hmmm_io matches -127 unless score R2 hmmm_io matches 8388608..16777215 run function hmmm:float/32/add/branch111110


# is normalized
execute if score R2 hmmm_io matches 8388608..16777215 run scoreboard players remove R2 hmmm_io 8388608

