############################################################
# Description: Pathfinds one snail to another
# Creator: CreeperMagnet_
############################################################

data remove entity @s WanderTarget
data remove storage tcc:storage root.temp
execute as @e[type=wandering_trader,distance=0.0001..5,tag=tcc.in_love,tag=tcc.snail,sort=nearest,limit=1] at @s run function tcc:entity/snail/breed/find_mate
execute if data storage tcc:storage root.temp.pos run function tcc:entity/snail/breed/set_wander_target
