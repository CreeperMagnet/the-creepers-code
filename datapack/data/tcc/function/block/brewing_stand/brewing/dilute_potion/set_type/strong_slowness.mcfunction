# Modifies the storage for a specific potion type

function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:9154528,translation:"slowness",lore_color:"red",effect:"slowness",duration:2,duration_lore_0:0,duration_lore_1:2,amplifier:3}
data modify storage tcc:temp root.item.components."minecraft:lore" append value {"text":""}
data modify storage tcc:temp root.item.components."minecraft:lore" append value {"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}
data modify storage tcc:temp root.item.components."minecraft:lore" append value {"color":"red","italic":false,"translate":"attribute.modifier.take.1","with":["60",{"translate":"attribute.name.movement_speed"}]}