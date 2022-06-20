############################################################
# Finds the block you are looking at
############################################################

execute unless block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 align xyz unless entity @e[tag=smithed.block,dy=1] if predicate tcc:item/wrench/can_rotate run function tcc:item/wrench/rotate/main
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:item/wrench/raycast
