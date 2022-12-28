############################################################
# Adds a soulbound item to the array
############################################################

data modify storage tcc:storage root.dropped_soulbound_items[-1].Items append value {}
data modify storage tcc:storage root.dropped_soulbound_items[-1].Items[-1] set from entity @s Item
execute if entity @s[nbt={Item:{id:"minecraft:recovery_compass"}}] as @e[type=item,distance=..7] run function tcc:item/recovery_compass/glow
kill @s