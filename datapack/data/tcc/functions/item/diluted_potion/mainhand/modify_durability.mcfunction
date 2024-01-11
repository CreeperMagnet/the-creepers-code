# Mainhand for diluted potions

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
function tcc:item/diluted_potion/modify_item
item modify entity @s weapon.mainhand tcc:diluted_potion_lore
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute unless data storage tcc:storage root.temp.item.tag.tcc.potion.multiline_lore run data modify storage tcc:storage root.temp.item.tag.display.Lore[1] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute if data storage tcc:storage root.temp.item.tag.tcc.potion.multiline_lore run data modify storage tcc:storage root.temp.item.tag.display.Lore[2] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s weapon.mainhand tcc:copy_nbt
execute if data storage tcc:storage root.temp.empty run item replace entity @s weapon.mainhand with minecraft:glass_bottle
