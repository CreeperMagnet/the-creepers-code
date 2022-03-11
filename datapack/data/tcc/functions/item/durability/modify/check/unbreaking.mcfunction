############################################################
# Checks if an item is going to take damage based on unbreaking enchantments
############################################################

execute if data storage tcc:storage root.temp.item.tag.Enchantments[{lvl:1s,id:"minecraft:unbreaking"}] if predicate tcc:chance/one_half run function tcc:item/durability/modify/check/overflow
execute if data storage tcc:storage root.temp.item.tag.Enchantments[{lvl:2s,id:"minecraft:unbreaking"}] if predicate tcc:chance/one_third run function tcc:item/durability/modify/check/overflow
execute if data storage tcc:storage root.temp.item.tag.Enchantments[{lvl:3s,id:"minecraft:unbreaking"}] if predicate tcc:chance/one_fourth run function tcc:item/durability/modify/check/overflow
execute unless data storage tcc:storage root.temp.item.tag.Enchantments[{id:"minecraft:unbreaking"}] run function tcc:item/durability/modify/check/overflow
