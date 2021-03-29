############################################################
# Description: Smashes blocks with particles
# Creator: CreeperMagnet_
############################################################

playsound minecraft:block.amethyst_block.break block @a[distance=..16] ~ ~ ~ 1 0.7

execute if block ~ ~-0.9 ~ minecraft:amethyst_block run particle minecraft:item minecraft:amethyst_block ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal
execute if block ~ ~-0.9 ~ minecraft:amethyst_cluster run particle minecraft:item minecraft:amethyst_cluster ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal
execute if block ~ ~-0.9 ~ minecraft:small_amethyst_bud run particle minecraft:item minecraft:small_amethyst_bud ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal
execute if block ~ ~-0.9 ~ minecraft:medium_amethyst_bud run particle minecraft:item minecraft:medium_amethyst_bud ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal
execute if block ~ ~-0.9 ~ minecraft:large_amethyst_bud run particle minecraft:item minecraft:large_amethyst_bud ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal
execute if block ~ ~-0.9 ~ minecraft:budding_amethyst run particle minecraft:item minecraft:budding_amethyst ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal

setblock ~ ~-0.9 ~ air
execute if predicate tcc:chance/one_fourth run loot spawn ~ ~ ~ loot tcc:items/amethyst_dust
