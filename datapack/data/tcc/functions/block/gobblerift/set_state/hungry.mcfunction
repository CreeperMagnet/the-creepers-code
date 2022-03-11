############################################################
# Changes the state of a gobblerift to hungry
############################################################

function tcc:block/gobblerift/set_state/reset_tags
data modify entity @s ArmorItems[3].tag.tcc.custom_model_data.idle set value 330032
tag @s add tcc.gobblerift.hungry