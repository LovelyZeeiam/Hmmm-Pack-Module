execute if score P1 hmmm_io matches -127..-64 run function hmmm:float/32/convert/to_storage_double/b/1
execute if score P1 hmmm_io matches -63..0 run function hmmm:float/32/convert/to_storage_double/b/2
execute if score P1 hmmm_io matches 1..64 run function hmmm:float/32/convert/to_storage_double/b/3
execute if score P1 hmmm_io matches 65..128 run function hmmm:float/32/convert/to_storage_double/b/4
