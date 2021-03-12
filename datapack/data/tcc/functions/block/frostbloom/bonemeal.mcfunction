############################################################
# Description: Tests for various block changes around the frostbloom
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/block/bonemealed_frostbloom
execute as @e[type=item_frame,tag=tcc.frostbloom,sort=arbitrary,distance=..7] at @s if block ~ ~ ~ spruce_sapling[stage=1] run loot spawn ~ ~ ~ loot tcc:blocks/frostbloom_bonemeal
