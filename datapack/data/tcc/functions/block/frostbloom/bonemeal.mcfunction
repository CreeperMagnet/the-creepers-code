############################################################
# Tests for various block changes around the frostbloom
############################################################

execute as @e[type=item_frame,tag=tcc.frostbloom,distance=..7] at @s if block ~ ~ ~ spruce_sapling[stage=1] run loot spawn ~ ~ ~ loot tcc:blocks/frostbloom_bonemeal
advancement revoke @s only tcc:technical/item_used_on_block/bonemeal_frostbloom
