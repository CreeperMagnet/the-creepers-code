############################################################
# Description: Removes a potion effect from a tipped sword
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.item{id:"minecraft:wooden_sword"} run item replace entity @s weapon.mainhand with wooden_sword
execute if data storage tcc:storage root.temp.item{id:"minecraft:stone_sword"} run item replace entity @s weapon.mainhand with stone_sword
execute if data storage tcc:storage root.temp.item{id:"minecraft:golden_sword"} run item replace entity @s weapon.mainhand with golden_sword
execute if data storage tcc:storage root.temp.item{id:"minecraft:iron_sword"} run item replace entity @s weapon.mainhand with iron_sword
execute if data storage tcc:storage root.temp.item{id:"minecraft:diamond_sword"} run item replace entity @s weapon.mainhand with diamond_sword
execute if data storage tcc:storage root.temp.item{id:"minecraft:netherite_sword"} run item replace entity @s weapon.mainhand with netherite_sword

execute unless data storage tcc:storage root.temp.item.tag.tcc.potion{custom_name:1} run data remove storage tcc:storage root.temp.item.tag.display.Name
execute if data storage tcc:storage root.temp.item.tag{CustomModelData:330000} run data remove storage tcc:storage root.temp.item.tag.CustomModelData

function tcc:item/item_modification/tipped_sword/remove_potion/modify_lore

data remove storage tcc:storage root.temp.item.tag.tcc.potion
