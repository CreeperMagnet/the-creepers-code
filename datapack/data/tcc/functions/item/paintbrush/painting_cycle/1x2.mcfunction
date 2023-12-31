############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:graham"}] run data modify entity @s variant set value "minecraft:wanderer"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:wanderer"}] run data modify entity @s variant set value "minecraft:graham"