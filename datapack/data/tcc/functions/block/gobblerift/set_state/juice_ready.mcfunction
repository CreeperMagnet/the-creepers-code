############################################################
# Changes the state of a gobblerift to be ready for juice
############################################################

function tcc:block/gobblerift/set_state/reset_tags
data modify entity @s ArmorItems[3].tag.tcc.custom_model_data.idle set value 330036
tag @s add tcc.gobblerift.juice_ready