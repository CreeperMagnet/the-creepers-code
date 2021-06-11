############################################################
# Description: Makes a gobblerift go love mode
# Creator: CreeperMagnet_
############################################################

particle minecraft:heart ~ ~1 ~ 1 1 1 0 20 normal
scoreboard players set @s tcc.dummy 0
execute if entity @s[scores={tcc.dummy=0}] positioned ~1 ~ ~ run function tcc:block/gobblerift/feed_stew/spawn_child
execute if entity @s[scores={tcc.dummy=0}] positioned ~-1 ~ ~ run function tcc:block/gobblerift/feed_stew/spawn_child
execute if entity @s[scores={tcc.dummy=0}] positioned ~ ~ ~1 run function tcc:block/gobblerift/feed_stew/spawn_child
execute if entity @s[scores={tcc.dummy=0}] positioned ~ ~ ~-1 run function tcc:block/gobblerift/feed_stew/spawn_child
execute if entity @s[scores={tcc.dummy=0}] run loot spawn ~ ~ ~ loot tcc:items/gobblerift
execute as @e[type=minecraft:wandering_trader,tag=tcc.gobblerift,distance=..1,tag=tcc.gobblerift.in_love] run function tcc:block/gobblerift/feed_stew/reset_states
tag @s remove tcc.scheduled.gobblerift_love
