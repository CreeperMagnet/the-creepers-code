############################################################
# Rotates a command-block type
############################################################

$execute if block ~ ~ ~ $(block)[conditional=false] run function tcc:item/wrench/rotate/macro/facing_all {block:"$(block)"}

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[conditional=true,facing=north] run setblock ~ ~ ~ $(block)[facing=east,conditional=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[conditional=true,facing=east] run setblock ~ ~ ~ $(block)[facing=south,conditional=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[conditional=true,facing=south] run setblock ~ ~ ~ $(block)[facing=west,conditional=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[conditional=true,facing=west] run setblock ~ ~ ~ $(block)[facing=up,conditional=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[conditional=true,facing=up] run setblock ~ ~ ~ $(block)[facing=down,conditional=true]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[conditional=true,facing=down] run setblock ~ ~ ~ $(block)[facing=north,conditional=true]
