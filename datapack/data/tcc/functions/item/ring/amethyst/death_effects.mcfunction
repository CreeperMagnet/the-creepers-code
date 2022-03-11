############################################################
# Make the items glow when you die with an amethyst ring
############################################################

scoreboard players reset #item_durability_change tcc.dummy
execute as @e[type=item,distance=..10,nbt={Age:0s},nbt=!{Glowing:1b},tag=!smithed.entity] run function tcc:item/ring/amethyst/edit_item
execute unless score #item_durability_change tcc.dummy matches 0 run function tcc:item/ring/amethyst/modify_durability
