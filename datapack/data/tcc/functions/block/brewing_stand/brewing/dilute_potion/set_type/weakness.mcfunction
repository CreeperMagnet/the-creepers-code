# Modifies the storage for a specific potion type

function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"weakness",color:"red",effect:"weakness",duration_0:0,duration_1:9,amplifier:0,custom_model_data:330189}
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"text":""}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"color":"red","italic":false,"translate":"attribute.modifier.take.0","with":[4,{"translate":"attribute.name.generic.attack_damage"}]}'