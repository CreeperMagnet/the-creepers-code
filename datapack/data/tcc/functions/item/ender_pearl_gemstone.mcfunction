############################################################
# Description: Ender pearl gemstone functionality
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy
execute if entity @s[predicate=tcc:holding/ender_pearl_ring/cut] as @e[type=item,distance=..3,tag=!global.ignore] unless data entity @s Thrower run data modify entity @s PickupDelay set value 0s
execute if entity @s[predicate=tcc:holding/ender_pearl_ring/cut] store success score @s tcc.dummy as @e[type=item,distance=..3,tag=!global.ignore,tag=!global.ignore.pos] unless data entity @s Thrower run tp @s ~ ~ ~
execute if entity @s[predicate=tcc:holding/ender_pearl_ring/pristine] as @e[type=item,distance=..6,tag=!global.ignore] unless data entity @s Thrower run data modify entity @s PickupDelay set value 0s
execute if entity @s[predicate=tcc:holding/ender_pearl_ring/pristine] store success score @s tcc.dummy as @e[type=item,distance=..6,tag=!global.ignore,tag=!global.ignore.pos] unless data entity @s Thrower run tp @s ~ ~ ~
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:item/item_modification/durability/damage/offhand