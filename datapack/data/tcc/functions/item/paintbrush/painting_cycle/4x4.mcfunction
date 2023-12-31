############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:burning_skull"}] run data modify entity @s variant set value "minecraft:pigscene"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:pigscene"}] run data modify entity @s variant set value "minecraft:pointer"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:pointer"}] run data modify entity @s variant set value "minecraft:burning_skull"