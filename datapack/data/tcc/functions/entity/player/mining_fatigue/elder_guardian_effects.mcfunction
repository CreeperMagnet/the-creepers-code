############################################################
# Applies elder guardian effects to the player
############################################################

particle minecraft:elder_guardian ~ ~ ~ 0 0 0 1 1 force @s
playsound entity.elder_guardian.curse hostile @s ~ ~ ~ 100000 1
effect give @s minecraft:mining_fatigue 300 2 false