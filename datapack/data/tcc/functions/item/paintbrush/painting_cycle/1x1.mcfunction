############################################################
# Sets the status of a painting
############################################################

execute if entity @s[nbt={variant:"minecraft:plant"}] run return run data modify entity @s variant set value "minecraft:wasteland"
execute if entity @s[nbt={variant:"minecraft:kebab"}] run return run data modify entity @s variant set value "minecraft:plant"
execute if entity @s[nbt={variant:"minecraft:bomb"}] run return run data modify entity @s variant set value "minecraft:kebab"
execute if entity @s[nbt={variant:"minecraft:aztec2"}] run return run data modify entity @s variant set value "minecraft:bomb"
execute if entity @s[nbt={variant:"minecraft:aztec"}] run return run data modify entity @s variant set value "minecraft:aztec2"
execute if entity @s[nbt={variant:"minecraft:alban"}] run return run data modify entity @s variant set value "minecraft:aztec"
execute if entity @s[nbt={variant:"minecraft:wasteland"}] run return run data modify entity @s variant set value "minecraft:alban"
