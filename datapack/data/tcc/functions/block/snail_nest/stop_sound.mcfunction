############################################################
# Makes placing snail nests have correct sounds
############################################################

stopsound @a[distance=..16] * minecraft:block.stone.place
advancement revoke @s only tcc:technical/placed_block/snail_nest