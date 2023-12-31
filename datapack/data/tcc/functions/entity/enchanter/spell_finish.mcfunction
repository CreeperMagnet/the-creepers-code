############################################################
# Enchants a random mob nearby
############################################################

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.spellcasting
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3
playsound tcc:entity.enchanter.spell hostile @a[distance=..16]
execute as @e[sort=random,distance=..10,predicate=tcc:entity/enchanter_affected,tag=!tcc.enchanter,limit=1,nbt=!{active_effects:[{ambient:1b}]}] at @s run function tcc:entity/enchanter/enchanted
