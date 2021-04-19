############################################################
# Description: Modify the durability of the amethyst ring item when you die
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Item
function tcc:item/item_modification/durability/modify_durability
execute unless entity @s[tag=tcc.break] run loot spawn ~ ~ ~ loot tcc:technical/amethyst_ring_copy_nbt
execute unless entity @s[tag=tcc.break] as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{tcc:{replace_item:1b}}}},tag=!global.ignore] run function tcc:item/amethyst_ring/edit_spawned_item
kill @s
tag @s remove tcc.break
