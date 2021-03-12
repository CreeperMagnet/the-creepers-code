############################################################
# Description: Reaps out an area of warts
# Creator: CreeperMagnet_
############################################################
particle minecraft:block minecraft:nether_wart[age=3] ~ ~ ~ 0.25 0.25 0.25 1 4 normal
execute as @p[scores={tcc.minewarts=1..},predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ nether_wart[age=0]
execute if entity @p[scores={tcc.minewarts=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~1 ~ ~ minecraft:nether_wart[age=3] positioned ~1 ~ ~ run function tcc:item/obsidian_scythe/reap_nether_wart
execute if entity @p[scores={tcc.minewarts=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~ ~ ~1 minecraft:nether_wart[age=3] positioned ~ ~ ~1 run function tcc:item/obsidian_scythe/reap_nether_wart
execute if entity @p[scores={tcc.minewarts=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~-1 ~ ~ minecraft:nether_wart[age=3] positioned ~-1 ~ ~ run function tcc:item/obsidian_scythe/reap_nether_wart
execute if entity @p[scores={tcc.minewarts=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~ ~ ~-1 minecraft:nether_wart[age=3] positioned ~ ~ ~-1 run function tcc:item/obsidian_scythe/reap_nether_wart
