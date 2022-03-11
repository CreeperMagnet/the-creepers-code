############################################################
# Gives blindness
############################################################

execute store result score #difficulty tcc.dummy run difficulty
execute if score #difficulty tcc.dummy matches 3 run effect give @s minecraft:blindness 10
execute if score #difficulty tcc.dummy matches 2 run effect give @s minecraft:blindness 7
execute if score #difficulty tcc.dummy matches 1 run effect give @s minecraft:blindness 5
advancement revoke @s only tcc:technical/entity_hurt_player/glow_lichen_zombie
