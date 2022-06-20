############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:pool"}] variant set value "minecraft:courbet"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:courbet"}] variant set value "minecraft:sunset"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:sunset"}] variant set value "minecraft:sea"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:sea"}] variant set value "minecraft:creebet"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:creebet"}] variant set value "minecraft:pool"