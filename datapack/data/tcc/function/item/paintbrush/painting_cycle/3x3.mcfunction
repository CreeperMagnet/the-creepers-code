# Sets the status of a painting

execute if entity @s[nbt={variant:"minecraft:bouquet"}] run return run data modify entity @s variant set value "minecraft:cavebird"
execute if entity @s[nbt={variant:"minecraft:cavebird"}] run return run data modify entity @s variant set value "minecraft:cotan"
execute if entity @s[nbt={variant:"minecraft:cotan"}] run return run data modify entity @s variant set value "minecraft:endboss"
execute if entity @s[nbt={variant:"minecraft:endboss"}] run return run data modify entity @s variant set value "minecraft:fern"
execute if entity @s[nbt={variant:"minecraft:fern"}] run return run data modify entity @s variant set value "minecraft:owlemons"
execute if entity @s[nbt={variant:"minecraft:owlemons"}] run return run data modify entity @s variant set value "minecraft:sunflowers"
execute if entity @s[nbt={variant:"minecraft:sunflowers"}] run return run data modify entity @s variant set value "minecraft:tides"
execute if entity @s[nbt={variant:"minecraft:tides"}] run return run data modify entity @s variant set value "minecraft:dennis"
execute if entity @s[nbt={variant:"minecraft:dennis"}] run return run data modify entity @s variant set value "minecraft:bouquet"