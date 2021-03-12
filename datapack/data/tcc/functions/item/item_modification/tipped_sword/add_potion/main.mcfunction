############################################################
# Description: Edits the value in tcc:storage.root.temp.Items[0] using tcc:storage.root.temp.potion
# Creator: CreeperMagnet_
############################################################

# List of proper values:
  # tcc:storage.root.temp.Items[0] : Stores the item to be modified
  # tcc:storage.root.temp.potion : Stores the id of the potion (i.e. potion:"minecraft:swiftness")

data remove storage tcc:storage root.temp.Items[0].Slot
data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.durability set value [60,60]
data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.custom_name set value 0
data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.custom_attributes set value 0
data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.custom_hideflags set value 0
data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.id set from storage tcc:storage root.temp.potion
execute if data storage tcc:storage root.temp.Items[0].tag.display.Name run data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.custom_name set value 1
execute if data storage tcc:storage root.temp.Items[0].tag.AttributeModifiers run data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.custom_attributes set value 1

execute unless data storage tcc:storage root.temp.Items[0].tag.display.Name if data storage tcc:storage root.temp.Items[{id:"minecraft:wooden_sword"}] run function tcc:item/item_modification/tipped_sword/add_potion/add_name/wooden
execute unless data storage tcc:storage root.temp.Items[0].tag.display.Name if data storage tcc:storage root.temp.Items[{id:"minecraft:stone_sword"}] run function tcc:item/item_modification/tipped_sword/add_potion/add_name/stone
execute unless data storage tcc:storage root.temp.Items[0].tag.display.Name if data storage tcc:storage root.temp.Items[{id:"minecraft:golden_sword"}] run function tcc:item/item_modification/tipped_sword/add_potion/add_name/golden
execute unless data storage tcc:storage root.temp.Items[0].tag.display.Name if data storage tcc:storage root.temp.Items[{id:"minecraft:iron_sword"}] run function tcc:item/item_modification/tipped_sword/add_potion/add_name/iron
execute unless data storage tcc:storage root.temp.Items[0].tag.display.Name if data storage tcc:storage root.temp.Items[{id:"minecraft:diamond_sword"}] run function tcc:item/item_modification/tipped_sword/add_potion/add_name/diamond
execute unless data storage tcc:storage root.temp.Items[0].tag.display.Name if data storage tcc:storage root.temp.Items[{id:"minecraft:netherite_sword"}] run function tcc:item/item_modification/tipped_sword/add_potion/add_name/netherite

function tcc:item/item_modification/tipped_sword/add_potion/modify_lore
execute unless data storage tcc:storage root.temp.Items[0].tag.CustomModelData run data modify storage tcc:storage root.temp.Items[0].tag.CustomModelData set value 330000
