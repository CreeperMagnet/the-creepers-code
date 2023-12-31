############################################################
# Rotates a block
############################################################

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=0] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=1]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=1] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=2]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=2] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=3]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=3] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=4]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=4] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=5]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=5] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=6]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=6] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=7]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=7] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=8]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=8] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=9]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=9] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=10]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=10] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=11]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=11] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=12]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=12] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=13]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=13] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=14]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=14] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=15]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=15] run setblock ~ ~ ~ $(block)[attached=true,waterlogged=true,rotation=0]
