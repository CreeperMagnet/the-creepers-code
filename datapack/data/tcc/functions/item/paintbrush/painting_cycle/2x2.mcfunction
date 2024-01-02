############################################################
# Sets the status of a painting
############################################################


execute if entity @s[nbt={variant:"minecraft:wither"}] run return run data modify entity @s variant set value "minecraft:void"
execute if entity @s[nbt={variant:"minecraft:void"}] run return run data modify entity @s variant set value "minecraft:stage"
execute if entity @s[nbt={variant:"minecraft:stage"}] run return run data modify entity @s variant set value "minecraft:skull_and_roses"
execute if entity @s[nbt={variant:"minecraft:skull_and_roses"}] run return run data modify entity @s variant set value "minecraft:match"
execute if entity @s[nbt={variant:"minecraft:match"}] run return run data modify entity @s variant set value "minecraft:bust"
execute if entity @s[nbt={variant:"minecraft:bust"}] run return run data modify entity @s variant set value "minecraft:wither"