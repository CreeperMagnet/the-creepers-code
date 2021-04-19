############################################################
# Description: Amethyst gemstone functionality
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.drop
scoreboard players reset @s tcc.dummy
data modify storage tcc:storage root.temp.value set value 0
execute if entity @s[predicate=tcc:holding/amethyst_ring/pristine] run data modify storage tcc:storage root.temp.value set value 1
execute store result score @s tcc.dummy as @e[type=item,distance=..7,nbt={Age:0s},tag=!global.ignore] run function tcc:item/amethyst_ring/edit_item
execute as @s[gamemode=!creative,scores={tcc.dummy=1}] run function tcc:item/item_modification/durability/damage/offhand
