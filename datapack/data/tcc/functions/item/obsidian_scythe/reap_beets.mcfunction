############################################################
# Description: Reaps out an area of beets
# Creator: CreeperMagnet_
############################################################

particle minecraft:block minecraft:beetroots[age=3] ~ ~ ~ 0.25 0.25 0.25 1 4 normal
execute as @p[scores={tcc.minebeets=1..},predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ beetroots[age=0]
execute if entity @p[scores={tcc.minebeets=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~1 ~ ~ minecraft:beetroots[age=3] positioned ~1 ~ ~ run function tcc:item/obsidian_scythe/reap_beets
execute if entity @p[scores={tcc.minebeets=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~ ~ ~1 minecraft:beetroots[age=3] positioned ~ ~ ~1 run function tcc:item/obsidian_scythe/reap_beets
execute if entity @p[scores={tcc.minebeets=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~-1 ~ ~ minecraft:beetroots[age=3] positioned ~-1 ~ ~ run function tcc:item/obsidian_scythe/reap_beets
execute if entity @p[scores={tcc.minebeets=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~ ~ ~-1 minecraft:beetroots[age=3] positioned ~ ~ ~-1 run function tcc:item/obsidian_scythe/reap_beets
