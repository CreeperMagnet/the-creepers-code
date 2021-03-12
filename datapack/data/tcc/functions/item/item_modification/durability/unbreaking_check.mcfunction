############################################################
# Description: Damages an item using scoreboards
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.Items[0].tag.Enchantments[{lvl:1s,id:"minecraft:unbreaking"}] if predicate tcc:chance/one_half run tag @s add tcc.tag
execute if data storage tcc:storage root.temp.Items[0].tag.Enchantments[{lvl:2s,id:"minecraft:unbreaking"}] if predicate tcc:chance/one_third run tag @s add tcc.tag
execute if data storage tcc:storage root.temp.Items[0].tag.Enchantments[{lvl:3s,id:"minecraft:unbreaking"}] if predicate tcc:chance/one_fourth run tag @s add tcc.tag
execute unless data storage tcc:storage root.temp.Items[0].tag.Enchantments[{id:"minecraft:unbreaking"}] run tag @s add tcc.tag
