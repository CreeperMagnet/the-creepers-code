############################################################
# Rotates a block
############################################################

$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=0] run setblock ~ ~ ~ $(block)[waterlogged=true,attached=$(attached),rotation=4]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=4] run setblock ~ ~ ~ $(block)[waterlogged=true,attached=$(attached),rotation=8]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=8] run setblock ~ ~ ~ $(block)[waterlogged=true,attached=$(attached),rotation=12]
$execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ $(block)[rotation=12] run setblock ~ ~ ~ $(block)[waterlogged=true,attached=$(attached),rotation=0]
