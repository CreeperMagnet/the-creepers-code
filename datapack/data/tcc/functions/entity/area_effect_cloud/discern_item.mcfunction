############################################################
# Description: Helps the area effect cloud see what types of items it's dealing with and if it has a potion
# Creator: CreeperMagnet_
############################################################

execute if data entity @s Potion run tag @s add tcc.aec.has_potion
execute if data entity @s Effects run tag @s add tcc.aec.has_potion
execute unless data entity @s Effects unless data entity @s Potion run tag @s add tcc.aec.no_potion

execute if entity @s[tag=tcc.aec.has_potion] run function tcc:entity/area_effect_cloud/add_potion
