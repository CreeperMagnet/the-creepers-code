############################################################
# Finishes the entire teleportation
############################################################

tp @s ~ ~ ~
particle dragon_breath ~ ~ ~ 0.5 1 0.5 0.05 100 force
playsound tcc:block.gobblerift.teleport_player block @a[distance=..16]
tag @s add tcc.tag