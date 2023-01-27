############################################################
# Checks if a player's UUID matches one in storage and then plays a hit sound
############################################################

scoreboard players set @s tcc.dummy 1
data modify storage tcc:storage root.temp.boomerang.UUID2 set from storage tcc:storage root.temp.boomerang.UUID
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.boomerang.UUID2 set from entity @s UUID
execute if entity @s[scores={tcc.dummy=0}] run playsound minecraft:entity.arrow.hit_player player @s
