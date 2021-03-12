############################################################
# Description: Makes the smoldering seeker function
# Creator: CreeperMagnet_
############################################################

loot spawn ~ 1000 ~ loot tcc:technical/smoldering_seeker_map
execute in minecraft:overworld run data remove block -30000000 0 2033 Items
execute in minecraft:overworld run loot replace block -30000000 0 2033 container.0 loot tcc:items/set_smoldering_seeker
execute in minecraft:overworld if entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:filled_map",tag:{tcc:{id:"smoldering_seeker_map"}}}},sort=nearest] run data modify block -30000000 0 2033 Items[{Slot:0b}].tag.LodestoneDimension set value "minecraft:the_nether"
execute in minecraft:overworld run data modify block -30000000 0 2033 Items[{Slot:0b}].tag.LodestonePos.X set from entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:filled_map",tag:{tcc:{id:"smoldering_seeker_map"}}}},sort=nearest] Item.tag.Decorations[0].x
execute in minecraft:overworld run data modify block -30000000 0 2033 Items[{Slot:0b}].tag.LodestonePos.Z set from entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:filled_map",tag:{tcc:{id:"smoldering_seeker_map"}}}},sort=nearest] Item.tag.Decorations[0].z
kill @e[type=item,limit=1,nbt={Item:{tag:{tcc:{id:"smoldering_seeker_map"}}}},sort=nearest]
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine -30000000 0 2033 air{drop_contents:1b}
advancement grant @s only tcc:minecraft/nether/smoldering_seeker