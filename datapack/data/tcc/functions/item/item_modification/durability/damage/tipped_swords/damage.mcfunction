############################################################
# Description: Damages a potion-tipped sword using scoreboards
# Creator: CreeperMagnet_
############################################################


data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.Items insert 0 from entity @s SelectedItem
execute store result score @s tcc.dummy run data get entity @s SelectedItem.tag.tcc.potion.durability[0] 1
tag @s[scores={tcc.dummy=..1}] add tcc.tag

# Differing particles and sounds that run if the item is going to break
  execute if entity @s[tag=tcc.tag] run playsound minecraft:entity.item.break player @a[distance=..16]
  execute if entity @s[tag=tcc.tag] run function tcc:item/item_modification/tipped_sword/remove_potion/main

  scoreboard players remove @s[tag=!tcc.tag] tcc.dummy 1
  execute unless entity @s[tag=tcc.tag] store result storage tcc:storage root.temp.Items[0].tag.tcc.potion.durability[0] int 1 run scoreboard players get @s tcc.dummy
  execute unless entity @s[tag=tcc.tag] in minecraft:overworld run loot replace block -30000000 0 2033 container.0 loot tcc:technical/resolve_string/potion_durability
  execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:healing"} in minecraft:overworld run data modify storage tcc:storage root.temp.Items[0].tag.display.Lore[-5] set from block -30000000 0 2033 Items[0].tag.display.Lore[0]
  execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:strong_healing"} in minecraft:overworld run data modify storage tcc:storage root.temp.Items[0].tag.display.Lore[-5] set from block -30000000 0 2033 Items[0].tag.display.Lore[0]
  execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:harming"} in minecraft:overworld run data modify storage tcc:storage root.temp.Items[0].tag.display.Lore[-5] set from block -30000000 0 2033 Items[0].tag.display.Lore[0]
  execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:strong_harming"} in minecraft:overworld run data modify storage tcc:storage root.temp.Items[0].tag.display.Lore[-5] set from block -30000000 0 2033 Items[0].tag.display.Lore[0]
  execute unless entity @s[tag=tcc.tag] unless data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:healing"} unless data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:strong_healing"} unless data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:harming"} unless data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:strong_harming"} in minecraft:overworld run data modify storage tcc:storage root.temp.Items[0].tag.display.Lore[-1] set from block -30000000 0 2033 Items[0].tag.display.Lore[0]

  execute in minecraft:overworld run data modify block -30000000 0 2033 Items set from storage tcc:storage root.temp.Items
  tag @s remove tcc.tag

execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine -30000000 0 2033 minecraft:air{drop_contents:1b}
