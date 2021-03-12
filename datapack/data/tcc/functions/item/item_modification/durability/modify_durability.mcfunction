############################################################
# Description: Damages an item using scoreboards
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp.Items[0].Slot
tag @s remove tcc.break

execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.Items[0].tag.tcc.durability[0] 1
execute if entity @s[scores={tcc.dummy2=1..}] run function tcc:item/item_modification/durability/unbreaking_check
execute if entity @s[scores={tcc.dummy2=..-1}] run tag @s add tcc.tag
scoreboard players operation @s tcc.dummy -= @s tcc.dummy2
tag @s[scores={tcc.dummy=..0},tag=tcc.tag] add tcc.break

# Differing particles and sounds that run if the item is going to break
  execute if entity @s[tag=tcc.break] run playsound minecraft:entity.item.break player @a[distance=..16]
  execute if entity @s[tag=tcc.break] if data storage tcc:storage root.temp.Items[0].tag.tcc{id:"wrench"} run particle item minecraft:carrot_on_a_stick{CustomModelData:330000} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
  execute if entity @s[tag=tcc.break] if data storage tcc:storage root.temp.Items[0].tag.tcc{id:"obsidian_mirror"} run particle item minecraft:carrot_on_a_stick{CustomModelData:330007} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
  execute if entity @s[tag=tcc.break] if data storage tcc:storage root.temp.Items[0].tag.tcc{id:"obsidian_scythe"} run particle item minecraft:carrot_on_a_stick{CustomModelData:330008} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
  execute if entity @s[tag=tcc.break] if data storage tcc:storage root.temp.Items[0].tag.tcc{id:"ring"} run function #tcc:dynamic_rings/material_checks/break_particles

# Damage the item
execute if entity @s[tag=!tcc.break,tag=tcc.tag] store result storage tcc:storage root.temp.Items[0].tag.tcc.durability[0] int 1 run scoreboard players get @s tcc.dummy
execute if entity @s[tag=!tcc.break,tag=tcc.tag] store result score @s tcc.dummy2 run data get storage tcc:storage root.temp.Items[0].tag.tcc.durability[1] 1
execute if entity @s[tag=!tcc.break,tag=tcc.tag] run data modify storage tcc:storage root.temp.Items[0].tag.tcc.repaired set value 0b
execute if entity @s[tag=!tcc.break,tag=tcc.tag] if score @s tcc.dummy = @s tcc.dummy2 run data modify storage tcc:storage root.temp.Items[0].tag.tcc.repaired set value 1b
execute if entity @s[tag=!tcc.break,tag=tcc.tag] in minecraft:overworld run loot replace block -30000000 0 2033 container.0 loot tcc:technical/resolve_string/durability
execute if entity @s[tag=!tcc.break,tag=tcc.tag] in minecraft:overworld run data modify storage tcc:storage root.temp.Items[0].tag.display.Lore[0] set from block -30000000 0 2033 Items[0].tag.display.Lore[0]

execute in minecraft:overworld run data modify block -30000000 0 2033 Items set from storage tcc:storage root.temp.Items
tag @s remove tcc.tag