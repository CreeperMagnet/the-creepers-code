############################################################
# Damages a player for two hearts (4.0 health)
############################################################

scoreboard players set #damage tcc.dummy 40
scoreboard players set #ignore_armor tcc.dummy 0
tag @s add tcc.damage.boomerang
execute as @a[gamemode=!spectator,nbt=!{Health:0.0f}] run function tcc:item/boomerang/entity_interaction/hit_player_sound
function tcc:entity/player/damage/calculate
