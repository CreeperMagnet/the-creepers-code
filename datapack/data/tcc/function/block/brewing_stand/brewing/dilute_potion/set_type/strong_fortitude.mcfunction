# Modifies the storage for a specific potion type

function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"fortitude",color:"blue",effect:"health_boost",duration_0:0,duration_1:9,amplifier:1}
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"text":""}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[8,{"translate":"attribute.name.max_health"}]}'