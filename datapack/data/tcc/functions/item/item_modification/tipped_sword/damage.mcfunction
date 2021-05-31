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
  execute unless entity @s[tag=tcc.tag] run item modify entity @s weapon.mainhand tcc:potion_durability_lore
  execute unless entity @s[tag=tcc.tag] run data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
  execute unless entity @s[tag=tcc.tag] run data modify storage tcc:storage root.temp.item.tag.display.Lore[-2] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
  execute unless entity @s[tag=tcc.tag] run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]


item modify entity @s weapon.mainhand tcc:copy_nbt
tag @s remove tcc.tag
