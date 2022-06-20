############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:burning_skull"}] variant set value "minecraft:pigscene"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:pigscene"}] variant set value "minecraft:pointer"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:pointer"}] variant set value "minecraft:burning_skull"