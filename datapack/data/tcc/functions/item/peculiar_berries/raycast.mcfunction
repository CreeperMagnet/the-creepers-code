############################################################
# Description: Finds if you're looking at a chicken
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] positioned ^ ^ ^0.01 if entity @e[tag=!global.ignore,type=chicken,tag=!tcc.peculiar_chicken,dx=0,dy=0,dz=0,limit=1,nbt={Age:0}] run function tcc:item/peculiar_berries/feed
execute if entity @s[scores={tcc.dummy=..499}] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:item/peculiar_berries/raycast
