############################################################
# Item teleportation functionality
############################################################

data modify storage tcc:storage root.temp.teleport_pos set from entity @s Pos
execute as @e[type=item,distance=..7,tag=!smithed.entity] at @s unless data entity @s Thrower run function tcc:item/tangling_pearl/as_item