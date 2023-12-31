############################################################
# Ticking commands for piston push checking
############################################################

scoreboard players remove @s[scores={tcc.dummy=1..}] tcc.dummy 1

execute if block ~ ~ ~ minecraft:moving_piston run function tcc:block/piston_push/move_inside
$execute if block ~ ~ ~ minecraft:air run function tcc:block/piston_push/move_other {on_broken:"$(on_broken)"}
