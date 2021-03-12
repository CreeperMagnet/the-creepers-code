############################################################
# Description: Damages a mainhand item using scoreboards
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp.Items[0].Slot
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.Items[0].tag.tcc.potion.durability[0] 1
tag @s[scores={tcc.dummy=..1}] add tcc.tag

# Differing particles and sounds that run if the item is going to break
  execute if entity @s[tag=tcc.tag] run playsound minecraft:entity.item.break player @a[distance=..16]
  execute if entity @s[tag=tcc.tag] run function tcc:item/item_modification/ring/remove_potion/main

scoreboard players remove @s[tag=!tcc.tag] tcc.dummy 1
execute unless entity @s[tag=tcc.tag] store result storage tcc:storage root.temp.Items[0].tag.tcc.potion.durability[0] int 1 run scoreboard players get @s tcc.dummy
execute unless entity @s[tag=tcc.tag] in minecraft:overworld run loot replace block -30000000 0 2033 container.0 loot tcc:technical/resolve_string/potion_durability
execute unless entity @s[tag=tcc.tag] unless data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} in minecraft:overworld run data modify storage tcc:storage root.temp.Items[0].tag.display.Lore[-2] set from block -30000000 0 2033 Items[0].tag.display.Lore[0]
execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} in minecraft:overworld run data modify storage tcc:storage root.temp.Items[0].tag.display.Lore[-5] set from block -30000000 0 2033 Items[0].tag.display.Lore[0]

execute in minecraft:overworld run data modify block -30000000 0 2033 Items set from storage tcc:storage root.temp.Items
tag @s remove tcc.tag
