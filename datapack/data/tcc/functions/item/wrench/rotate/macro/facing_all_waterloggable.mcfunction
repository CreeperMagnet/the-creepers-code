############################################################
# Rotates a block
############################################################

$execute if block ~ ~ ~ $(block)[waterlogged=false] run function tcc:item/wrench/rotate/macro/facing_all {block:"$(block)"}

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[waterlogged=true,facing=north] run setblock ~ ~ ~ $(block)[facing=east,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[waterlogged=true,facing=east] run setblock ~ ~ ~ $(block)[facing=south,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[waterlogged=true,facing=south] run setblock ~ ~ ~ $(block)[facing=west,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[waterlogged=true,facing=west] run setblock ~ ~ ~ $(block)[facing=up,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[waterlogged=true,facing=up] run setblock ~ ~ ~ $(block)[facing=down,waterlogged=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[waterlogged=true,facing=down] run setblock ~ ~ ~ $(block)[facing=north,waterlogged=true]
