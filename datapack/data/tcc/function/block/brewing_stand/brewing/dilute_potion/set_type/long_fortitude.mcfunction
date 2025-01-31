# Modifies the storage for a specific potion type

function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16738851,translation:"fortitude",lore_color:"blue",effect:"health_boost",duration_0:4,duration_1:8,amplifier:0}
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"text":""}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":["4",{"translate":"attribute.name.max_health"}]}'