############################################################
# Sets a gobblerift into digesting state
############################################################

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.tag.CustomModelData set value 330034
tag @s add tcc.gobblerift.digesting
