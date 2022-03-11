############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data modify storage tcc:storage root.temp.item.id set value "minecraft:splash_potion"
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.splash_potion.effect.blind_rage","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_blind_rage"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.splash_potion.effect.blind_rage","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:nausea"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.splash_potion.effect.nausea","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_nausea"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.splash_potion.effect.nausea","italic":false}'
