# Modifies the storage for a specific potion type

function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16762624,translation:"strength",lore_color:"blue",effect:"strength",duration:9,duration_lore_0:0,duration_lore_1:9,amplifier:1}
data modify storage tcc:temp root.item.components."minecraft:lore" append value {"text":""}
data modify storage tcc:temp root.item.components."minecraft:lore" append value {"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}
data modify storage tcc:temp root.item.components."minecraft:lore" append value {"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":["6",{"translate":"attribute.name.attack_damage"}]}