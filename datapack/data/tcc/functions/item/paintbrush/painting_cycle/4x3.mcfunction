############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:skeleton"}] run data modify entity @s variant set value "minecraft:donkey_kong"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:donkey_kong"}] run data modify entity @s variant set value "minecraft:skeleton"