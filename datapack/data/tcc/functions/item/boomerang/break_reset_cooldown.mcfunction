############################################################
# Checks if a player's UUID matches one in storage and then resets their cooldown
############################################################

scoreboard players set @s tcc.dummy 1
data modify storage tcc:storage root.temp.boomerang.UUID2 set from storage tcc:storage root.temp.boomerang.UUID
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.boomerang.UUID2 set from entity @s UUID
scoreboard players reset @s[scores={tcc.dummy=0}] tcc.boomerang_cooldown
