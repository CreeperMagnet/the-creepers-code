############################################################
# Description: Puts enchantments on an enchanted block breaker when placing it
# Creator: Ellivers
############################################################

execute store success score @s tcc.dummy run data modify entity @s ArmorItems[3].tag.Enchantments set from block ~ ~ ~ Items[0].tag.tcc.enchantments
execute if entity @s[scores={tcc.dummy=1..}] run data modify entity @s HandItems[0].tag.Enchantments set from block ~ ~ ~ Items[0].tag.tcc.enchantments
execute if entity @s[scores={tcc.dummy=1..}] run tag @s add tcc.block_breaker.enchanted
tag @s remove tcc.block_placing
