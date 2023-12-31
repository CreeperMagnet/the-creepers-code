############################################################
# Rotates a block
############################################################

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ minecraft:iron_trapdoor[half=$(half),waterlogged=$(waterlogged),facing=$(facing),open=true] run setblock ~ ~ ~ minecraft:iron_trapdoor[half=$(half),waterlogged=$(waterlogged),facing=$(facing),open=false]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ minecraft:iron_trapdoor[half=$(half),waterlogged=$(waterlogged),facing=$(facing),open=false] run setblock ~ ~ ~ minecraft:iron_trapdoor[half=$(half),waterlogged=$(waterlogged),facing=$(facing),open=true]