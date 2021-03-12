############################################################
# Description: Makes an explosive pillar explode
# Creator: CreeperMagnet_
############################################################

particle minecraft:explosion ~ ~ ~ 1 2 1 0.5 10 normal
playsound tcc:block.explosive_geomancer_pillar.explode master @a[distance=..16]
execute as @e[type=player,distance=..5,gamemode=!creative,gamemode=!spectator] run function tcc:block/geomancer_pillars/explosive/damage
