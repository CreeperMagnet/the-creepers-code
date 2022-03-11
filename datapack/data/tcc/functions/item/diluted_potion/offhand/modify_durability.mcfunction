############################################################
# Mainhand for diluted potions
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
function tcc:item/diluted_potion/modify_item
item modify entity @s weapon.offhand tcc:diluted_potion_lore
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute unless data storage tcc:storage root.temp.item.tag.tcc.potion.multiline_lore run data modify storage tcc:storage root.temp.item.tag.display.Lore[1] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute if data storage tcc:storage root.temp.item.tag.tcc.potion.multiline_lore run data modify storage tcc:storage root.temp.item.tag.display.Lore[2] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s weapon.offhand tcc:copy_nbt
execute if data storage tcc:storage root.temp.empty run item replace entity @s weapon.offhand with minecraft:glass_bottle