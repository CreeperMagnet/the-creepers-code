# Sets the status of a painting

execute if entity @s[nbt={variant:"minecraft:burning_skull"}] run return run data modify entity @s variant set value "minecraft:orb"
execute if entity @s[nbt={variant:"minecraft:orb"}] run return run data modify entity @s variant set value "minecraft:pigscene"
execute if entity @s[nbt={variant:"minecraft:pigscene"}] run return run data modify entity @s variant set value "minecraft:pointer"
execute if entity @s[nbt={variant:"minecraft:pointer"}] run return run data modify entity @s variant set value "minecraft:unpacked"
execute if entity @s[nbt={variant:"minecraft:unpacked"}] run return run data modify entity @s variant set value "minecraft:burning_skull"