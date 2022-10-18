############################################################
# Kills the player if their health is too low
############################################################

tag @s add tcc.dead
tag @s remove tcc.tag
tag @s[predicate=tcc:entity/holding/totem_of_undying] add tcc.tag
scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run gamerule showDeathMessages
effect give @s[tag=tcc.tag] instant_damage 1 100 true
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1}] run gamerule showDeathMessages false
kill @s[tag=!tcc.tag]
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1}] run function tcc:entity/player/damage/death_messages
tag @s remove tcc.tag
