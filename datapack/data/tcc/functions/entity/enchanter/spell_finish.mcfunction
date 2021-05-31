############################################################
# Description: Enchants a random mob nearby
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.trader_entity.still
tag @s remove tcc.enchanter.casting
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3
data modify entity @s HandItems[0].tag.CustomModelData set value 330001
playsound tcc:entity.enchanter.spell hostile @a[distance=..16]
execute store result score tcc.temp_0 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_3
execute as @e[sort=random,distance=..10,team=tcc.antivillager,tag=!tcc.enchanter,tag=!tcc.snail,predicate=tcc:global.ignore,limit=1,nbt=!{ActiveEffects:[{Ambient:1b}]}] at @s run function tcc:entity/enchanter/enchanted
