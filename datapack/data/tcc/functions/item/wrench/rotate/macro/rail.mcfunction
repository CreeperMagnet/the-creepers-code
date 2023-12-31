############################################################
# Rotates a block
############################################################

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[shape=north_south,waterlogged=true] run setblock ~ ~ ~ $(block)[shape=east_west,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[shape=east_west,waterlogged=true] run setblock ~ ~ ~ $(block)[shape=north_south,waterlogged=true]

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[shape=north_south,waterlogged=false] run setblock ~ ~ ~ $(block)[shape=east_west,waterlogged=false]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[shape=east_west,waterlogged=false] run setblock ~ ~ ~ $(block)[shape=north_south,waterlogged=false]
