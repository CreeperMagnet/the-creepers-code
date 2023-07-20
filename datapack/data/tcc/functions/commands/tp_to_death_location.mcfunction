############################################################
# Teleports you to your death location using riftjuice code
############################################################

data modify storage tcc:storage root.temp.riftjuice.pos set from entity @s LastDeathLocation.pos
execute if data entity @s LastDeathLocation{dimension:"minecraft:overworld"} in minecraft:overworld positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if data entity @s LastDeathLocation{dimension:"minecraft:the_end"} in minecraft:the_end positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if data entity @s LastDeathLocation{dimension:"minecraft:the_nether"} in minecraft:the_nether positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
