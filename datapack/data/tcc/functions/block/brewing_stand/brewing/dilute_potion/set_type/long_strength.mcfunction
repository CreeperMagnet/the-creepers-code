############################################################
# Modifies the storage for a specific potion type
############################################################

function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"strength",color:"blue",effect:"strength",duration_0:4,duration_1:8,amplifier:0,custom_model_data:330089}
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"text":""}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[3,{"translate":"attribute.name.generic.attack_damage"}]}'