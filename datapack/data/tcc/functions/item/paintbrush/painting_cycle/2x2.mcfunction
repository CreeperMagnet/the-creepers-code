############################################################
# Sets the status of a painting
############################################################


execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:wither"}] variant set value "minecraft:void"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:void"}] variant set value "minecraft:stage"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:stage"}] variant set value "minecraft:skull_and_roses"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:skull_and_roses"}] variant set value "minecraft:match"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:match"}] variant set value "minecraft:bust"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:bust"}] variant set value "minecraft:wither"