# Sets the status of a painting

execute if entity @s[nbt={variant:"minecraft:skeleton"}] run return run data modify entity @s variant set value "minecraft:donkey_kong"
execute if entity @s[nbt={variant:"minecraft:donkey_kong"}] run return run data modify entity @s variant set value "minecraft:skeleton"