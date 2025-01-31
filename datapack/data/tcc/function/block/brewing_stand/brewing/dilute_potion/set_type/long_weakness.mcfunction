# Modifies the storage for a specific potion type

function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:4738376,translation:"weakness",lore_color:"red",effect:"weakness",duration_0:2,duration_1:4,amplifier:0}
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"text":""}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"red","italic":false,"translate":"attribute.modifier.take.0","with":["4",{"translate":"attribute.name.attack_damage"}]}'