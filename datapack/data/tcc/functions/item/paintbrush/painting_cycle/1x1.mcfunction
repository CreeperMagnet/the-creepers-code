############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:plant"}] run data modify entity @s variant set value "minecraft:wasteland"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:kebab"}] run data modify entity @s variant set value "minecraft:plant"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:bomb"}] run data modify entity @s variant set value "minecraft:kebab"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:aztec2"}] run data modify entity @s variant set value "minecraft:bomb"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:aztec"}] run data modify entity @s variant set value "minecraft:aztec2"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:alban"}] run data modify entity @s variant set value "minecraft:aztec"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if entity @s[nbt={variant:"minecraft:wasteland"}] run data modify entity @s variant set value "minecraft:alban"
