# Adds a soulbound item to the array

data modify storage tcc:dropped_soulbound_items array[-1].Items append value {}
data modify storage tcc:dropped_soulbound_items array[-1].Items[-1] set from entity @s Item
execute if entity @s[nbt={Item:{id:"minecraft:recovery_compass"}}] as @e[type=minecraft:item,distance=..10] run function tcc:item/recovery_compass/glow
kill @s