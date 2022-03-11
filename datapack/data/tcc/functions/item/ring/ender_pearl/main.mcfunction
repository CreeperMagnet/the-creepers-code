############################################################
# Ender pearl ring functionality
############################################################

scoreboard players reset @s tcc.dummy
data modify storage tcc:storage root.temp.ender_pearl_ring_pos set from entity @s Pos
execute store success score @s tcc.dummy if entity @s[predicate=!tcc:entity/holding/ring/netherite] as @e[type=item,distance=..3,tag=!smithed.entity] unless data entity @s Thrower run function tcc:item/ring/ender_pearl/as_item
execute store success score @s tcc.dummy if entity @s[predicate=tcc:entity/holding/ring/netherite] as @e[type=item,distance=..6,tag=!smithed.entity] unless data entity @s Thrower run function tcc:item/ring/ender_pearl/as_item
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:item/durability/damage_generic_amount/offhand_1
