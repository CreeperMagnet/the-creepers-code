############################################################
# Changes the state of a gobblerift to be ready for juice
############################################################

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.tag.CustomModelData set value 330036
tag @s add tcc.gobblerift.juice_ready