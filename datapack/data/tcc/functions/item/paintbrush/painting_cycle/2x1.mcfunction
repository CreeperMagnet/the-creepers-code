############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:pool"}] run data modify entity @s variant set value "minecraft:courbet"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:courbet"}] run data modify entity @s variant set value "minecraft:sunset"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:sunset"}] run data modify entity @s variant set value "minecraft:sea"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:sea"}] run data modify entity @s variant set value "minecraft:creebet"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:creebet"}] run data modify entity @s variant set value "minecraft:pool"