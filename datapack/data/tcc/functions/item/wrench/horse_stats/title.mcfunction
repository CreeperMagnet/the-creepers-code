############################################################
# Description: Makes wrench horse stats work
# Creator: CreeperMagnet_
############################################################
execute store result score @s tcc.dummy run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 1000
execute store result score @s tcc.dummy2 run data get entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base 1000
title @p[tag=tcc.wrench_raycaster,tag=!global.ignore.gui] actionbar {"translate":"item.tcc.wrench.horse_stats","with":[{"score":{"name":"@s","objective":"tcc.dummy"}},{"score":{"name":"@s","objective":"tcc.dummy2"}}]}
scoreboard players reset @s tcc.dummy
scoreboard players reset @s tcc.dummy2
