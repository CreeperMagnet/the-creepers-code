############################################################
# Checks if a player's UUID matches one in storage
############################################################

scoreboard players set @s tcc.dummy 1
data modify storage tcc:storage root.temp.boomerang.UUID2 set from storage tcc:storage root.temp.boomerang.UUID
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.boomerang.UUID2 set from entity @s UUID
#Fail Test
#execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.boomerang.UUID2 set value 0
execute if entity @s[scores={tcc.dummy=0}] run function tcc:item/boomerang/entity_interaction/pickup/pickup
execute if entity @s[gamemode=!creative,scores={tcc.dummy=1,tcc.invul_timer=0}] run function tcc:item/boomerang/entity_interaction/player_damage
