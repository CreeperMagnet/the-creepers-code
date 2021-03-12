############################################################
# Description: Kills the player if their health is too low
# Creator: CreeperMagnet_
############################################################

execute store result score @s tcc.dummy run gamerule showDeathMessages
execute if entity @s[scores={tcc.dummy=1}] run gamerule showDeathMessages false
kill @s[tag=!global.ignore.kill]
execute if entity @s[scores={tcc.dummy=1},tag=tcc.damage.boomerang] run tellraw @a {"translate":"death.tcc.boomerang","with":[{"selector":"@s"}]}
execute if entity @s[scores={tcc.dummy=1},tag=tcc.damage.iceologer_ice] run tellraw @a {"translate":"death.tcc.iceologer_ice","with":[{"selector":"@s"}]}
execute if entity @s[scores={tcc.dummy=1},tag=tcc.damage.iceologer_freeze] run tellraw @a {"translate":"death.tcc.iceologer_freeze","with":[{"selector":"@s"}]}
execute if entity @s[scores={tcc.dummy=1},tag=tcc.damage.swordfish] run tellraw @a {"translate":"death.tcc.swordfish","with":[{"selector":"@s"}]}
execute if entity @s[scores={tcc.dummy=1},tag=tcc.damage.geomancer_explosive] run tellraw @a {"translate":"death.tcc.geomancer_explosive","with":[{"selector":"@s"}]}
execute if entity @s[scores={tcc.dummy=1},tag=tcc.damage.channeling_lightning] run tellraw @a {"translate":"death.tcc.channeling_lightning","with":[{"selector":"@s"}]}
execute if entity @s[scores={tcc.dummy=1}] run gamerule showDeathMessages true
