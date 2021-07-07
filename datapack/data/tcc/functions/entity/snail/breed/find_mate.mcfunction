############################################################
# Description: Takes the data from the snail's mate
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.pos set from entity @s Pos
execute as @e[type=wandering_trader,sort=nearest,distance=0.001..1.5,tag=tcc.snail,tag=tcc.in_love,limit=1] at @s run function tcc:entity/snail/breed/set_tags
execute if data storage tcc:storage root.temp.bred run function tcc:entity/snail/breed/set_tags_female
