############################################################
# Matches the UUID an illager's attack to the illager
############################################################

scoreboard players set @s tcc.dummy 1
data modify storage tcc:storage root.temp.UUID2 set from storage tcc:storage root.temp.UUID
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.UUID2 set from entity @s UUID