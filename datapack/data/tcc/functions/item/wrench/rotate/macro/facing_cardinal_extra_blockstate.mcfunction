############################################################
# Rotates a block with an cardinal facing blockstate and an extra blockstate
############################################################

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=north] run setblock ~ ~ ~ $(block)[facing=east,$(blockstate)]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=east] run setblock ~ ~ ~ $(block)[facing=south,$(blockstate)]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=south] run setblock ~ ~ ~ $(block)[facing=west,$(blockstate)]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[facing=west] run setblock ~ ~ ~ $(block)[facing=north,$(blockstate)]