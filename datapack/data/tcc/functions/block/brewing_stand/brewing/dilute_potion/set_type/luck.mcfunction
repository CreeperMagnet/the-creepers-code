############################################################
# Modifies the storage for a specific potion type
############################################################

function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"luck",color:"blue",effect:"luck",duration_0:3,duration_1:0,amplifier:0,custom_model_data:330209}
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"text":""}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[1,{"translate":"attribute.name.generic.luck"}]}'