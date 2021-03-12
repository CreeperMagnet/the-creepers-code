############################################################
# Description: Makes a gobblerift go love mode
# Creator: CreeperMagnet_
############################################################

particle minecraft:heart ~ ~1 ~ 1 1 1 0 20 normal
scoreboard players set @s tcc.dummy 0
execute if entity @s[scores={tcc.dummy=0}] store success score @s tcc.dummy positioned ~1 ~ ~ if predicate tcc:gobblerift_valid align xyz unless entity @e[type=wandering_trader,tag=tcc.gobblerift,sort=arbitrary,dx=0,dz=0,dy=1] positioned ~ ~-1 ~ run function tcc:block/gobblerift/place/summon
execute if entity @s[scores={tcc.dummy=0}] store success score @s tcc.dummy positioned ~-1 ~ ~ if predicate tcc:gobblerift_valid align xyz unless entity @e[type=wandering_trader,tag=tcc.gobblerift,sort=arbitrary,dx=0,dz=0,dy=1] positioned ~ ~-1 ~ run function tcc:block/gobblerift/place/summon
execute if entity @s[scores={tcc.dummy=0}] store success score @s tcc.dummy positioned ~ ~ ~1 if predicate tcc:gobblerift_valid align xyz unless entity @e[type=wandering_trader,tag=tcc.gobblerift,sort=arbitrary,dx=0,dz=0,dy=1] positioned ~ ~-1 ~ run function tcc:block/gobblerift/place/summon
execute if entity @s[scores={tcc.dummy=0}] store success score @s tcc.dummy positioned ~ ~ ~-1 if predicate tcc:gobblerift_valid align xyz unless entity @e[type=wandering_trader,tag=tcc.gobblerift,sort=arbitrary,dx=0,dz=0,dy=1] positioned ~ ~-1 ~ run function tcc:block/gobblerift/place/summon
execute if entity @s[scores={tcc.dummy=0}] run loot spawn ~ ~ ~ loot tcc:items/gobblerift
tag @e[type=wandering_trader,tag=tcc.gobblerift,distance=..1,tag=tcc.gobblerift.in_love] add tcc.gobblerift.can_love
tag @e[type=wandering_trader,tag=tcc.gobblerift,distance=..1] remove tcc.gobblerift.in_love
tag @s remove tcc.scheduled.gobblerift_love
