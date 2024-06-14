# Sets the status of a painting

execute if entity @s[nbt={variant:"minecraft:graham"}] run return run data modify entity @s variant set value "minecraft:prairie_ride"
execute if entity @s[nbt={variant:"minecraft:prairie_ride"}] run return run data modify entity @s variant set value "minecraft:wanderer"
execute if entity @s[nbt={variant:"minecraft:wanderer"}] run return run data modify entity @s variant set value "minecraft:graham"