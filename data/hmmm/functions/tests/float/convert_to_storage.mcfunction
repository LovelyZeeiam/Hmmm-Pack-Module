#> hmmm:tests/float/convert_to_storage
#   Test the float storage conversion function
##

data modify storage u_test name set value float_storage_conversion
function u_test:run/reset


# test 1
# 01000101101000000001110111101110 -> 5123.7412109375
data modify storage u_test expected set value 5123.7412109375f

scoreboard players set P0 hmmm_io 1168121326
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage


# test 2
# 01110100010010100101011010101001 -> 64123635388758186968546937929728
data modify storage u_test expected set value 64123635388758186968546937929728f

scoreboard players set P0 hmmm_io 1951028905
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage


# test 3
# 00010000000000000000000000000001 -> 2.52435519763e-29f
data modify storage u_test expected set value 2.52435519763e-29f

scoreboard players set P0 hmmm_io 268435457
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage


# test 4
# 00111111100000000000000000000000 -> 1.0f
data modify storage u_test expected set value 1.0f

scoreboard players set P0 hmmm_io 1065353216
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage


# test 5
# 01000000000000000000000000000000 -> 2.0f
data modify storage u_test expected set value 2.0f

scoreboard players set P0 hmmm_io 1073741824
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage


# test 6
# 01000000100000000000000000000000 -> 4.0f
data modify storage u_test expected set value 4.0f

scoreboard players set P0 hmmm_io 1082130432
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage


# test 7
# 01000001000000000000000000000000 -> 8.0f
data modify storage u_test expected set value 8.0f

scoreboard players set P0 hmmm_io 1090519040
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage


# test 8
# 01000001100000000000000000000000 -> 16.0f
data modify storage u_test expected set value 16.0f

scoreboard players set P0 hmmm_io 1098907648
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage


# test 9
# 01000001000000000000000000000000 -> 32.0f
data modify storage u_test expected set value 32.0f

scoreboard players set P0 hmmm_io 1107296256
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage

# test 10
# 01000010100000000000000000000000 -> 64.0f
data modify storage u_test expected set value 64.0f

scoreboard players set P0 hmmm_io 1115684864
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage

# test 11
# 01000011000000000000000000000000 -> 128.0f
data modify storage u_test expected set value 128.0f

scoreboard players set P0 hmmm_io 1124073472
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage

# test 12
# 01000011000000000000000000000000 -> 256.0f
data modify storage u_test expected set value 256.0f

scoreboard players set P0 hmmm_io 1132462080
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage
# test 13
# 01000011000000000000000000000000 -> 512.0f
data modify storage u_test expected set value 512.0f

scoreboard players set P0 hmmm_io 1140850688
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage
# test 14
# 01000011000000000000000000000000 -> 1024.0f
data modify storage u_test expected set value 1024.0f

scoreboard players set P0 hmmm_io 1149239296
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage
# test 15
# 01000011000000000000000000000000 -> 2048.0f
data modify storage u_test expected set value 2048.0f

scoreboard players set P0 hmmm_io 1157627904
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage
# test 16
# 01000011000000000000000000000000 -> 4096.0f
data modify storage u_test expected set value 4096.0f

scoreboard players set P0 hmmm_io 1166016512
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage

# test 17
# 00000000000000000000000000000000 -> 0.0f
data modify storage u_test expected set value 0.0f

scoreboard players set P0 hmmm_io 0
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage

# test 18
# 00111111100000000000000000000000 -> 1.0f
data modify storage u_test expected set value 1.0f

scoreboard players set P0 hmmm_io 1065353216
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/convert/to_storage/main
data modify storage u_test actual set from storage hmmm:io R0

function u_test:run/storage






function u_test:run/end_set

