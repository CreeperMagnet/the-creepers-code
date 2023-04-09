############################################################
# Commands for interactions with entities
############################################################

execute if entity @s[type=!#tcc:boomerang/break,type=!minecraft:enderman] run function tcc:item/boomerang/entity_interaction/damage
execute if entity @s[type=#tcc:boomerang/break,nbt=!{Invulnerable:1b}] run function tcc:item/boomerang/entity_interaction/break_entities
execute if entity @s[type=minecraft:enderman,tag=!smithed.strict] run function tcc:item/boomerang/entity_interaction/enderman_artificial_teleport
