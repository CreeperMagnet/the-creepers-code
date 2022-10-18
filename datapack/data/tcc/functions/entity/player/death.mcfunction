############################################################
# Functions to run when a player dies
############################################################

execute store result score #compendium_temp tcc.dummy run kill @e[type=item,distance=..10,nbt={Age:0s,Item:{tag:{tcc:{id:"compendium"}}}}]
execute if score #compendium_temp tcc.dummy matches 1.. run tag @s add tcc.post_death_compendium
advancement revoke @s only tcc:technical/entity_hurt_player/player_dies