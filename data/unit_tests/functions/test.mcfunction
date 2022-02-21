scoreboard players set expected u_test 1066235454

scoreboard players set P0 io 1036831949
function float:32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io


# Convert e^x to 2^((1/ln2)(2^(E-23)(2^23+m)))

# Get (2^(E-23)(2^23+m)) (already loaded into io.P[0..2])

# Multiply this by 1/ln2

scoreboard players set P3 io 0
scoreboard players set P4 io 0
scoreboard players set P5 io 3713595

function float:32/multiply/main

# Set io.P[1..2] from io.R[1..2]
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io

# Now we have sign((1/ln2)(2^(E-23))(2^23+m)

# save this to temp.[0..2]
scoreboard players operation 11 temp = P0 io
scoreboard players operation 12 temp = P1 io
scoreboard players operation 13 temp = P2 io

# Split integer and decimal part (note decimal is in [0,1))

function extended_float:32/floor/main

# I+d
scoreboard players operation P0 io = 11 temp
scoreboard players operation P1 io = 12 temp
scoreboard players operation P2 io = 13 temp

# integer part
scoreboard players operation P3 io = R0 io
scoreboard players operation P4 io = R1 io
scoreboard players operation P5 io = R2 io

# Save integer part
scoreboard players operation 11 temp = R0 io
scoreboard players operation 12 temp = R1 io
scoreboard players operation 13 temp = R2 io

function float:32/subtract/main
# save decimal part
scoreboard players operation 14 temp = R0 io
scoreboard players operation 15 temp = R1 io
scoreboard players operation 16 temp = R2 io

# works till here

# integer part
scoreboard players operation P0 io = 11 temp
scoreboard players operation P1 io = 12 temp
scoreboard players operation P2 io = 13 temp


# Add implicit bit to mantissa
scoreboard players add P2 io 8388608
# Turn float exponent into integer
execute if score P1 io matches 6 run scoreboard players operation P2 io /= 131072 constant
execute if score P1 io matches 5 run scoreboard players operation P2 io /= 262144 constant
execute if score P1 io matches 4 run scoreboard players operation P2 io /= 524288 constant
execute if score P1 io matches 3 run scoreboard players operation P2 io /= 1048576 constant
execute if score P1 io matches 2 run scoreboard players operation P2 io /= 2097152 constant
execute if score P1 io matches 1 run scoreboard players operation P2 io /= 4194304 constant
execute if score P1 io matches 0 run scoreboard players operation P2 io /= 8388608 constant
# Now P2 is an integer
execute if score P0 io matches 1 run scoreboard players operation P2 io *= -1 constant

# Set P2 as the exponent for a new number temp.[11..13]
scoreboard players set 11 temp 0
scoreboard players operation 12 temp = P2 io
scoreboard players set 13 temp 0