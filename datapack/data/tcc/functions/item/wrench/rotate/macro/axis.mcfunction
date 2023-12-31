############################################################
# Rotates a block with an axis blockstate
############################################################

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[axis=y] run setblock ~ ~ ~ $(block)[axis=x]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[axis=x] run setblock ~ ~ ~ $(block)[axis=z]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[axis=z] run setblock ~ ~ ~ $(block)[axis=y]
