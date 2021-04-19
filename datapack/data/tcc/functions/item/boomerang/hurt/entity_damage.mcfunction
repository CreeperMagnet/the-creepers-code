############################################################
# Description: Commands to damage an entity for 1 heart
# Creator: CreeperMagnet_
############################################################

effect give @s[type=#tcc:undead] instant_health 1 31
effect give @s[type=!#tcc:undead] instant_damage 1 31
execute store result score @s[type=!#tcc:boomerang_break] tcc.dummy run data get entity @s Health 10
execute store result entity @s[type=!#tcc:boomerang_break,scores={tcc.dummy=1..}] Health float 0.1 run scoreboard players remove @s tcc.dummy 40
execute if entity @s[scores={tcc.dummy=..0},type=#minecraft:raiders,nbt={ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}]}] unless data entity @s RaidId as @e[sort=nearest,type=armor_stand,tag=tcc.boomerang,limit=1] run function tcc:item/boomerang/hurt/bad_omen/select_player
kill @s[type=!#tcc:boomerang_break,scores={tcc.dummy=..0},tag=!global.ignore.kill]
execute if entity @s[type=#tcc:boomerang_break] run function tcc:item/boomerang/hurt/break_entities
data merge entity @s {HurtTime:10s}
scoreboard players reset @s tcc.dummy
execute if entity @s[type=#tcc:neutral] run function tcc:item/boomerang/hurt/neutral_damage
execute if entity @s[type=minecraft:piglin_brute] as @e[type=minecraft:piglin,distance=..16,tag=!global.ignore] run function tcc:item/boomerang/hurt/brain_aggro
data remove storage tcc:storage root.temp
