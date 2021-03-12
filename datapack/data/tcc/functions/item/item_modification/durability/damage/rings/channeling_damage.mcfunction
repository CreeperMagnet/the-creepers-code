############################################################
# Description: Commands to run when you hit something and you have a channeling ring
# Creator: CreeperMagnet_
############################################################

execute as @e[predicate=tcc:global.ignore,nbt={HurtTime:10s},distance=0.0000001..15,sort=arbitrary] at @s run summon lightning_bolt ~ ~ ~
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function tcc:item/item_modification/durability/damage/offhand
advancement revoke @s only tcc:technical/item/rings/channeling_damage
scoreboard players set tcc.damage tcc.dummy 30
scoreboard players set tcc.ignore_armor tcc.dummy 1
tag @s add tcc.damage.channeling_lightning
function tcc:entity/player/damage/calculate
