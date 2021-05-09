############################################################
# Description: Finds the block a geomancer is looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..199}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..199}] if entity @a[distance=..2] run tag @s add tcc.has_line_of_sight
execute if entity @s[scores={tcc.dummy=..199},tag=!tcc.has_line_of_sight] if block ^ ^ ^0.05 #tcc:seethrough positioned ^ ^ ^0.05 run function tcc:entity/geomancer/line_of_sight/raycast
