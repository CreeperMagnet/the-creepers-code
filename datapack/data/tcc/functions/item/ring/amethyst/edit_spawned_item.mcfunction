############################################################
# Edits the nbt of the ring item spawned for durability modification
############################################################

data modify entity @s Item.tag.display.Lore[0] set from entity @s Item.tag.display.Lore[-1]
data remove entity @s Item.tag.display.Lore[-1]
data remove entity @s Item.tag.tcc.replace_item
function tcc:item/ring/amethyst/edit_item
