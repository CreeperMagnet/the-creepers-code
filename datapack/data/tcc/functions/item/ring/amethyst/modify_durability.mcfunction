############################################################
# Modify the durability of the amethyst ring item when you die
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Item
function tcc:item/durability/modify/main
execute if data storage tcc:storage root.temp.item run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/amethyst_ring
execute if data storage tcc:storage root.temp.item as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{tcc:{replace_item:1b}}}},tag=!smithed.entity] run function tcc:item/ring/amethyst/edit_spawned_item
kill @s
