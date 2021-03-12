############################################################
# Description: Boomerang tracking algorithm
# Creator: CreeperMagnet_
############################################################

execute store result score tcc.temp_0 tcc.dummy run data get entity @s ArmorItems[0].tag.tcc.UUID[0]
execute as @a[distance=..55,sort=arbitrary,gamemode=!spectator] store result score @s tcc.dummy run data get entity @s UUID[0]
scoreboard players operation @a[distance=..55,sort=arbitrary,gamemode=!spectator] tcc.dummy -= tcc.temp_0 tcc.dummy
tp @s ^ ^ ^0.05 facing entity @p[distance=..55,sort=arbitrary,scores={tcc.dummy=0}] eyes
execute if entity @s[tag=!tcc.boomerang.turned] unless entity @p[distance=..55,sort=arbitrary,scores={tcc.dummy=0}] run tp @s ^ ^ ^ ~180 ~
execute if entity @s[tag=!tcc.boomerang.turned] unless entity @p[distance=..55,sort=arbitrary,scores={tcc.dummy=0}] run tag @s add tcc.boomerang.turned
scoreboard players reset @a[distance=..55] tcc.dummy
