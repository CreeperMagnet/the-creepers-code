############################################################
# Sets the status of a painting
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:plant"}] variant set value "minecraft:wasteland"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:kebab"}] variant set value "minecraft:plant"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:bomb"}] variant set value "minecraft:kebab"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:aztec2"}] variant set value "minecraft:bomb"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:aztec"}] variant set value "minecraft:aztec2"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:alban"}] variant set value "minecraft:aztec"
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify entity @s[nbt={variant:"minecraft:wasteland"}] variant set value "minecraft:alban"
