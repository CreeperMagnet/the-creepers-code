############################################################
# Description: Finds the spawner
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] if block ^ ^ ^0.01 minecraft:spawner positioned ^ ^ ^0.01 run function tcc:block/spawner_edit/edit
execute if entity @s[scores={tcc.dummy=..499}] unless block ^ ^ ^0.01 minecraft:spawner positioned ^ ^ ^0.01 run function tcc:block/spawner_edit/raycast
