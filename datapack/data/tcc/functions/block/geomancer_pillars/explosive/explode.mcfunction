############################################################
# Description: Makes an explosive pillar explode
# Creator: CreeperMagnet_
############################################################

particle minecraft:explosion ~ ~ ~ 3 2 3 0.5 20 normal
playsound tcc:block.explosive_geomancer_pillar.explode master @a[distance=..16]
execute as @e[type=player,distance=..7,gamemode=!creative,gamemode=!spectator] run function tcc:block/geomancer_pillars/explosive/damage
