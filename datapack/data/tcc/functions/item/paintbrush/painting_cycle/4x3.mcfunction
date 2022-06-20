############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:skeleton"}] variant set value "minecraft:donkey_kong"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:donkey_kong"}] variant set value "minecraft:skeleton"