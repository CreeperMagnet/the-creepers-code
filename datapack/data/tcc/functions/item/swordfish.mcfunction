############################################################
# Description: Makes swordfish work
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/swordfish
effect give @s saturation 1 2
scoreboard players set tcc.damage tcc.dummy 60
scoreboard players set tcc.ignore_armor tcc.dummy 1
tag @s add tcc.damage.swordfish
function tcc:entity/player/damage/calculate
