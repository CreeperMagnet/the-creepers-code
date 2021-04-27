############################################################
# Description: Functions to run tickly off of ice, I guess.
# Creator: CreeperMagnet_
############################################################

execute unless block ~ ~-1 ~ #tcc:air run function tcc:entity/iceologer/ice/land
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0,dz=0,dy=0,scores={tcc.invul_timer=0},tag=!tcc.scheduled.resistance] run function tcc:entity/iceologer/ice/damage
