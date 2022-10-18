############################################################
# Shows a death message if the player dies
############################################################

execute if entity @s[tag=tcc.damage.boomerang] run tellraw @a {"translate":"death.attack.tcc.boomerang","with":[{"selector":"@s"}]}
execute if entity @s[tag=tcc.damage.iceologer_ice] run tellraw @a {"translate":"death.attack.tcc.iceologer_ice","with":[{"selector":"@s"},{"translate":"entity.tcc.iceologer"}]}
execute if entity @s[tag=tcc.damage.iceologer_freeze] run tellraw @a {"translate":"death.attack.tcc.iceologer_freeze","with":[{"selector":"@s"}]}
execute if entity @s[tag=tcc.damage.swordfish] run tellraw @a {"translate":"death.attack.tcc.swordfish","with":[{"selector":"@s"}]}
execute if entity @s[tag=tcc.damage.geomancer_explosive] run tellraw @a {"translate":"death.attack.tcc.geomancer_explosive","with":[{"selector":"@s"},{"translate":"entity.tcc.geomancer"}]}
execute if entity @s[tag=tcc.damage.diluted_harming_potion] run tellraw @a {"translate":"death.attack.indirectMagic","with":[{"selector":"@s"},{"selector":"@s"}]}
gamerule showDeathMessages true
