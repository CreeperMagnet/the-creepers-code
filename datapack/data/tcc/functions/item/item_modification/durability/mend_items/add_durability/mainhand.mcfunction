############################################################
# Description: Repairs items
# Creator: CreeperMagnet_
############################################################

# Set storage stuff
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem

# Doubles the number of xp points your score changed by
scoreboard players set @s tcc.dummy2 2
scoreboard players operation @s tcc.dummy2 *= @s tcc.old_xp

# Makes sure the item isn't over-repaired
function tcc:item/item_modification/durability/mend_items/add_durability/set_max

function tcc:item/item_modification/durability/modify_durability
item modify entity @s weapon.mainhand tcc:durability_lore
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
data modify storage tcc:storage root.temp.item.tag.display.Lore[0] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s weapon.mainhand tcc:copy_nbt

scoreboard players operation @s tcc.dummy2 /= tcc.const.2 tcc.dummy
function tcc:item/item_modification/durability/mend_items/xp_subtraction_loop

scoreboard players reset @s tcc.old_xp
