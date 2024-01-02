############################################################
# Sets the status of a painting
############################################################

execute if entity @s[nbt={variant:"minecraft:pool"}] run return run data modify entity @s variant set value "minecraft:courbet"
execute if entity @s[nbt={variant:"minecraft:courbet"}] run return run data modify entity @s variant set value "minecraft:sunset"
execute if entity @s[nbt={variant:"minecraft:sunset"}] run return run data modify entity @s variant set value "minecraft:sea"
execute if entity @s[nbt={variant:"minecraft:sea"}] run return run data modify entity @s variant set value "minecraft:creebet"
execute if entity @s[nbt={variant:"minecraft:creebet"}] run return run data modify entity @s variant set value "minecraft:pool"