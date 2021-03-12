############################################################
# Description: Juices a gobblerift, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

execute store result storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.tcc.riftjuice.pos[0] int 1 run data get entity @s Pos[0]
execute store result storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.tcc.riftjuice.pos[1] int 1 run data get entity @s Pos[1]
execute store result storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.tcc.riftjuice.pos[2] int 1 run data get entity @s Pos[2]
execute store result storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.tcc.riftjuice.uuid int 1 run data get entity @s UUID[0]
execute if entity @s[predicate=tcc:dimension/overworld] run data modify storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.tcc.riftjuice.dimension set value "minecraft:overworld"
execute if entity @s[predicate=tcc:dimension/the_end] run data modify storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.tcc.riftjuice.dimension set value "minecraft:the_end"
execute if entity @s[predicate=tcc:dimension/the_nether] run data modify storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.tcc.riftjuice.dimension set value "minecraft:the_nether"
execute if entity @s[predicate=tcc:dimension/overworld] run data modify storage tcc:storage root.inventory_temp.gobblerift_dimension set value '{"translate":"item.tcc.riftjuice_bottle.lore.dimension.overworld","color":"gray"}'
execute if entity @s[predicate=tcc:dimension/the_end] run data modify storage tcc:storage root.inventory_temp.gobblerift_dimension set value '{"translate":"item.tcc.riftjuice_bottle.lore.dimension.the_end","color":"gray"}'
execute if entity @s[predicate=tcc:dimension/the_nether] run data modify storage tcc:storage root.inventory_temp.gobblerift_dimension set value '{"translate":"item.tcc.riftjuice_bottle.lore.dimension.the_nether","color":"gray"}'
execute if entity @s[tag=tcc.gobblerift.custom_name] in minecraft:overworld run loot replace block -30000000 0 2033 container.0 loot tcc:technical/resolve_string/named_riftjuice
execute unless entity @s[tag=tcc.gobblerift.custom_name] in minecraft:overworld run loot replace block -30000000 0 2033 container.0 loot tcc:technical/resolve_string/riftjuice
execute in minecraft:overworld run data modify storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.display.Lore set from block -30000000 0 2033 Items[0].tag.display.Lore
data modify storage tcc:storage root.inventory_temp.Inventory[{tag:{tcc:{id:"unset_riftjuice_bottle"}}}].tag.tcc.id set value "riftjuice_bottle"
playsound tcc:block.gobblerift.fill_bottle block @a[distance=..16]
data modify entity @s HandItems[0].tag.CustomModelData set value 330040
tag @s remove tcc.gobblerift.juice_ready
tag @s add tcc.gobblerift.hungry
tag @s add tcc.gobblerift.can_love