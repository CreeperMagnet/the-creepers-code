############################################################
# Increments a major positive gossip by 20
############################################################

execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.gossip.Value
scoreboard players add @s[scores={tcc.dummy=..99}] tcc.dummy 20
execute store result storage tcc:storage root.temp.gossip.Value int 1 run scoreboard players get @s tcc.dummy
tag @s add tcc.tag