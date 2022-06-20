############################################################
# Makes swordfish work
############################################################

advancement revoke @s only tcc:technical/consume_item/swordfish
effect give @s saturation 1 2
scoreboard players set #damage tcc.dummy 60
scoreboard players set #ignore_armor tcc.dummy 1
tag @s add tcc.damage.swordfish
function tcc:entity/player/damage/calculate
scoreboard players remove @s manic.sanity 100