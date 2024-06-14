# Sets the status of a painting

execute if entity @s[nbt={variant:"minecraft:backyard"}] run return run data modify entity @s variant set value "minecraft:pond"
execute if entity @s[nbt={variant:"minecraft:pond"}] run return run data modify entity @s variant set value "minecraft:backyard"