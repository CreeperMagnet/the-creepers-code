# Drops the proper amount of harvested crops from this block

execute if entity @s[tag=!tcc.boomerang.on_fire] run return run setblock ~ ~ ~ air destroy

particle minecraft:block{block_state:"minecraft:cactus"} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.wool.break block @a[distance=..16] ~ ~ ~ 1 0.8
loot spawn ~ ~ ~ loot tcc:blocks/boomerang/cactus_fire
execute positioned ~ ~1 ~ if block ~ ~ ~ cactus run function tcc:item/boomerang/block_interaction/cactus
setblock ~ ~ ~ air