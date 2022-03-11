############################################################
# Sets a gobblerift into digesting state
############################################################

function tcc:block/gobblerift/set_state/reset_tags
data modify entity @s ArmorItems[3].tag.tcc.custom_model_data.idle set value 330034
tag @s add tcc.gobblerift.digesting
