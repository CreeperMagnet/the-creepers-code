############################################################
# Description: Starts a line of sight raycast
# Creator: CreeperMagnet_
############################################################


tag @s remove tcc.has_line_of_sight
scoreboard players set @s tcc.dummy 0
execute anchored eyes facing entity @e[gamemode=!creative,gamemode=!spectator,distance=..16,type=player,limit=1,sort=nearest] eyes run function tcc:entity/iceologer/line_of_sight/raycast
scoreboard players reset @s tcc.dummy
execute if entity @e[gamemode=!creative,gamemode=!spectator,distance=..4,type=player,limit=1,sort=nearest] run tag @s add tcc.has_line_of_sight
execute if entity @s[tag=tcc.has_line_of_sight] run tag @s add tcc.iceologer.casting
execute if entity @s[tag=tcc.has_line_of_sight] unless entity @s[scores={tcc.dummy2=0..3}] run playsound tcc:entity.iceologer.attack hostile @a[distance=..16]
