#> hmmm:tests/init
#   Checks whether the unit tests should be run
#   To use this, UTM pack must be installed and loaded.
#
# use /tag @s add unit_test to enable testing

execute if entity @a[tag=unit_test] run function hmmm:tests/main