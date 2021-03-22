############################################################
# Description: Damages a potion-tipped sword using scoreboards
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute store result score @s tcc.dummy run data get entity @s SelectedItem.tag.tcc.potion.durability[0] 1
tag @s[scores={tcc.dummy=..1}] add tcc.tag

# Differing particles and sounds that run if the item is going to break
  execute if entity @s[tag=tcc.tag] run playsound minecraft:entity.item.break player @a[distance=..16]
  execute if entity @s[tag=tcc.tag] run function tcc:item/item_modification/tipped_sword/remove_potion/main

  scoreboard players remove @s[tag=!tcc.tag] tcc.dummy 1

  execute unless entity @s[tag=tcc.tag] store result storage tcc:storage root.temp.item.tag.tcc.potion.durability[0] int 1 run scoreboard players get @s tcc.dummy
  execute unless entity @s[tag=tcc.tag] run item entity @s weapon.mainhand modify tcc:potion_durability_lore
  execute unless entity @s[tag=tcc.tag] run data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
  execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:healing"} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-6] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
  execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_healing"} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-6] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
  execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:harming"} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-6] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
  execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_harming"} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-6] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
  execute unless entity @s[tag=tcc.tag] unless data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:healing"} unless data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_healing"} unless data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:harming"} unless data storage tcc:storage root.temp.item.tag.tcc.potion{id:"minecraft:strong_harming"} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-2] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
  execute unless entity @s[tag=tcc.tag] run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]


item entity @s weapon.mainhand modify tcc:copy_nbt
  tag @s remove tcc.tag
