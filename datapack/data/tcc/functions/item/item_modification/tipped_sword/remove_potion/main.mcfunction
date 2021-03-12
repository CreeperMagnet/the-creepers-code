############################################################
# Description: Removes a potion effect from a tipped sword
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp.Items[0].Slot
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.potion{custom_name:1} run data remove storage tcc:storage root.temp.Items[0].tag.display.Name
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.potion{custom_attributes:1} run data remove storage tcc:storage root.temp.Items[0].tag.AttributeModifiers
execute if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{custom_attributes:1} run data remove storage tcc:storage root.temp.Items[0].tag.AttributeModifiers[{AttributeName:"generic.attack_damage",Amount:0.00001,Operation:2,Name:"generic.attack_damage",Slot:"mainhand",UUID:[I; 2, 0, 3, 3]}]
execute if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{custom_attributes:1} run data remove storage tcc:storage root.temp.Items[0].tag.AttributeModifiers[{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Name:"generic.attack_speed",Slot:"mainhand",UUID:[I; 2, 0, 3, 3]}]

execute if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{custom_hideflags:0} run data remove storage tcc:storage root.temp.Items[0].tag.HideFlags
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.potion{custom_hideflags:0} run data modify storage tcc:storage root.temp.Items[0].tag.HideFlags set from storage tcc:storage root.temp.Items[0].tag.tcc.potion.custom_hideflags
execute if data storage tcc:storage root.temp.Items[0].tag{CustomModelData:330000} run data remove storage tcc:storage root.temp.Items[0].tag.CustomModelData

function tcc:item/item_modification/tipped_sword/remove_potion/modify_lore

data remove storage tcc:storage root.temp.Items[0].tag.tcc.potion
