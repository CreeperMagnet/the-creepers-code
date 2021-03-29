############################################################
# Description: Damages a mainhand item using scoreboards
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.potion.durability[0] 1
tag @s[scores={tcc.dummy=..1}] add tcc.tag

# Differing particles and sounds that run if the item is going to break
  execute if entity @s[tag=tcc.tag] run playsound minecraft:entity.item.break player @a[distance=..16]
  execute if entity @s[tag=tcc.tag] run function tcc:item/item_modification/ring/remove_potion/main

execute unless entity @s[tag=tcc.tag] store result storage tcc:storage root.temp.item.tag.tcc.potion.durability[0] int 1 run scoreboard players remove @s tcc.dummy 1
