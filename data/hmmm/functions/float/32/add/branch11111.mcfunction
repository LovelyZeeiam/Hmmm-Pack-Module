#> hmmm:bitwise/float/32/add/branch11111
# check if result is normalized

# is not normalized
execute unless score R1 io matches -127 unless score R2 io matches 8388608..16777215 run function hmmm:bitwise/float/32/add/branch111110


# is normalized
execute if score R2 io matches 8388608..16777215 run scoreboard players remove R2 io 8388608

