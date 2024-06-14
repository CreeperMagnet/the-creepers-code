# Sets the status of a painting

execute if entity @s[nbt={variant:"minecraft:changing"}] run return run data modify entity @s variant set value "minecraft:fighters"
execute if entity @s[nbt={variant:"minecraft:fighters"}] run return run data modify entity @s variant set value "minecraft:finding"
execute if entity @s[nbt={variant:"minecraft:finding"}] run return run data modify entity @s variant set value "minecraft:lowmist"
execute if entity @s[nbt={variant:"minecraft:lowmist"}] run return run data modify entity @s variant set value "minecraft:passage"
execute if entity @s[nbt={variant:"minecraft:passage"}] run return run data modify entity @s variant set value "minecraft:changing"
