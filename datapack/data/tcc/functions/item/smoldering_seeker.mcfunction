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
data modify storage tcc:storage root.temp.item.tag.LodestonePos.X set from storage tcc:storage root.temp.item2.tag.Decorations[0].x
data modify storage tcc:storage root.temp.item.tag.LodestonePos.Z set from storage tcc:storage root.temp.item2.tag.Decorations[0].z

item modify entity @s weapon.mainhand tcc:copy_nbt
advancement grant @s only tcc:minecraft/nether/smoldering_seeker
