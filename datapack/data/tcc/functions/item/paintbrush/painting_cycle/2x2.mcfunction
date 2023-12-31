############################################################
# Sets the status of a painting
############################################################


execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:wither"}] run data modify entity @s variant set value "minecraft:void"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:void"}] run data modify entity @s variant set value "minecraft:stage"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:stage"}] run data modify entity @s variant set value "minecraft:skull_and_roses"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:skull_and_roses"}] run data modify entity @s variant set value "minecraft:match"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:match"}] run data modify entity @s variant set value "minecraft:bust"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:bust"}] run data modify entity @s variant set value "minecraft:wither"