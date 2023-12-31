############################################################
# Rotates a block
############################################################

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=north] run setblock ~ ~ ~ $(block)[facing=east,half=top,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=east] run setblock ~ ~ ~ $(block)[facing=south,half=top,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=south] run setblock ~ ~ ~ $(block)[facing=west,half=top,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=west] run setblock ~ ~ ~ $(block)[facing=north,half=top,waterlogged=true]
