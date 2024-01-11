# Tests for various block changes around the frostbloom

execute as @e[type=minecraft:item_display,tag=tcc.frostbloom,distance=..7] at @s if block ~ ~ ~ minecraft:spruce_sapling[stage=1] run loot spawn ~ ~0.2 ~ loot tcc:blocks/frostbloom_bonemeal
advancement revoke @s only tcc:technical/item_used_on_block/bonemeal_frostbloom
