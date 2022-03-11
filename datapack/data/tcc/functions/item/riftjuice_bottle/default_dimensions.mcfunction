############################################################
# Makes riftjuice teleportation cross-dimensionally work properly, and also adds a failsafe condition
############################################################

particle dragon_breath ~ ~ ~ 0.5 1 0.5 0.05 100 force
playsound tcc:block.gobblerift.teleport_player block @a[distance=..16]
function #tcc:riftjuice_custom_dimensions
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:overworld"} in minecraft:overworld positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:the_end"} in minecraft:the_end positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:the_nether"} in minecraft:the_nether positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if entity @s[tag=!tcc.tag] run function tcc:item/riftjuice_bottle/failsafe
tag @s remove tcc.tag