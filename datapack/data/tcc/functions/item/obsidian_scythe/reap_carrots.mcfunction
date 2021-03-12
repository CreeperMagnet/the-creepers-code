############################################################
# Description: Reaps out an area of carrots
# Creator: CreeperMagnet_
############################################################

particle minecraft:block minecraft:carrots[age=7] ~ ~ ~ 0.25 0.25 0.25 1 4 normal
execute as @p[scores={tcc.minecarrots=1..},predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ carrots[age=0]
execute if entity @p[scores={tcc.minecarrots=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~1 ~ ~ minecraft:carrots[age=7] positioned ~1 ~ ~ run function tcc:item/obsidian_scythe/reap_carrots
execute if entity @p[scores={tcc.minecarrots=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~ ~ ~1 minecraft:carrots[age=7] positioned ~ ~ ~1 run function tcc:item/obsidian_scythe/reap_carrots
execute if entity @p[scores={tcc.minecarrots=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~-1 ~ ~ minecraft:carrots[age=7] positioned ~-1 ~ ~ run function tcc:item/obsidian_scythe/reap_carrots
execute if entity @p[scores={tcc.minecarrots=1..},distance=..4,predicate=!tcc:sneaking,nbt={SelectedItem:{tag:{tcc:{id:"obsidian_scythe"}}}}] if block ~ ~ ~-1 minecraft:carrots[age=7] positioned ~ ~ ~-1 run function tcc:item/obsidian_scythe/reap_carrots
