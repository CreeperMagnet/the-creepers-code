############################################################
# Rotates a block
############################################################

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=north] run setblock ~ ~ ~ $(block)[facing=east]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=east] run setblock ~ ~ ~ $(block)[facing=south]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=south] run setblock ~ ~ ~ $(block)[facing=west]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=west] run setblock ~ ~ ~ $(block)[facing=up]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=up] run setblock ~ ~ ~ $(block)[facing=down]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=down] run setblock ~ ~ ~ $(block)[facing=north]
