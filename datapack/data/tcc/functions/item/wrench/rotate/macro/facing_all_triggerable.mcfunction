############################################################
# Rotates a block
############################################################

$execute if block ~ ~ ~ $(block)[triggered=false] run function tcc:item/wrench/rotate/macro/facing_all {block:"$(block)"}

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[triggered=true,facing=north] run setblock ~ ~ ~ $(block)[facing=east,triggered=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[triggered=true,facing=east] run setblock ~ ~ ~ $(block)[facing=south,triggered=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[triggered=true,facing=south] run setblock ~ ~ ~ $(block)[facing=west,triggered=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[triggered=true,facing=west] run setblock ~ ~ ~ $(block)[facing=up,triggered=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[triggered=true,facing=up] run setblock ~ ~ ~ $(block)[facing=down,triggered=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[triggered=true,facing=down] run setblock ~ ~ ~ $(block)[facing=north,triggered=true]
