############################################################
# Description: Makes the smoldering seeker function
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp

loot replace entity @s weapon.mainhand loot tcc:technical/smoldering_seeker_map
data modify storage tcc:storage root.temp.item2 set from entity @s SelectedItem
loot replace entity @s weapon.mainhand loot tcc:items/set_smoldering_seeker
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem

execute if data storage tcc:storage root.temp.item2{id:"minecraft:filled_map"} run data modify storage tcc:storage root.temp.item.tag.LodestoneDimension set value "minecraft:the_nether"
execute store result storage tcc:storage root.temp.item.tag.LodestonePos.X int 1.0 run data get storage tcc:storage root.temp.item2.tag.Decorations[0].x
execute store result storage tcc:storage root.temp.item.tag.LodestonePos.Z int 1.0 run data get storage tcc:storage root.temp.item2.tag.Decorations[0].z

item modify entity @s[gamemode=!creative] weapon.mainhand tcc:copy_nbt
loot give @s[gamemode=creative] loot tcc:technical/smoldering_seeker_copy_nbt
loot replace entity @s[gamemode=creative] weapon.mainhand loot tcc:items/smoldering_seeker
advancement grant @s only tcc:minecraft/nether/smoldering_seeker
