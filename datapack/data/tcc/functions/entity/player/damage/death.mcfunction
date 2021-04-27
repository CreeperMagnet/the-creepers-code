############################################################
# Description: Kills the player if their health is too low
# Creator: CreeperMagnet_
############################################################

tag @s add tcc.dead
tag @s remove tcc.tag
tag @s[predicate=tcc:holding/totem_of_undying] add tcc.tag
scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run gamerule showDeathMessages
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1}] run gamerule showDeathMessages false
effect give @s[tag=tcc.tag] instant_damage 1 100 true
kill @s[tag=!tcc.tag,tag=!global.ignore.kill]
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.boomerang] run tellraw @a {"translate":"death.tcc.boomerang","with":[{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.iceologer_ice] run tellraw @a {"translate":"death.tcc.iceologer_ice","with":[{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.iceologer_freeze] run tellraw @a {"translate":"death.tcc.iceologer_freeze","with":[{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.swordfish] run tellraw @a {"translate":"death.tcc.swordfish","with":[{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.geomancer_explosive] run tellraw @a {"translate":"death.tcc.geomancer_explosive","with":[{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.channeling_lightning] run tellraw @a {"translate":"death.tcc.channeling_lightning","with":[{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1}] run gamerule showDeathMessages true
tag @s remove tcc.tag
