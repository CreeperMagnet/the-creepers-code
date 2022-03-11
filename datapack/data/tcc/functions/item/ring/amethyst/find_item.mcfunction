############################################################
# Finds the proper item to edit off of
############################################################

scoreboard players reset @s tcc.drop
scoreboard players reset @s tcc.dummy
data modify storage tcc:storage root.temp.value set value 0
execute if entity @s[predicate=tcc:entity/holding/ring/netherite] run data modify storage tcc:storage root.temp.value set value 1
execute store result score @s tcc.dummy as @e[type=item,distance=..7,nbt={Age:0s},tag=!smithed.entity] run function tcc:item/ring/amethyst/edit_item
execute if entity @s[gamemode=!creative,scores={tcc.dummy=1}] run function tcc:item/durability/damage_generic_amount/offhand_1
