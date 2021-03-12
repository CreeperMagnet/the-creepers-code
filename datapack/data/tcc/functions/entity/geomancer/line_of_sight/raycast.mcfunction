############################################################
# Description: Finds the block you are looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..199}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..199}] unless entity @a[distance=..1] unless block ^ ^ ^0.05 #tcc:seethrough run tag @s add tcc.failed_line_of_sight
execute if entity @s[scores={tcc.dummy=..199}] if block ^ ^ ^0.05 #tcc:seethrough positioned ^ ^ ^0.05 run function tcc:entity/geomancer/line_of_sight/raycast
