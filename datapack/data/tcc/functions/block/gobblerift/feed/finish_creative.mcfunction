############################################################
# Description: Alternate, more convenient gobblerift finish function for creative mode
# Creator: ChromaKey
############################################################

data modify entity @s HandItems[0].tag.CustomModelData set value 330044
tag @s remove tcc.gobblerift.juicing
tag @s add tcc.gobblerift.open_state
tag @s add tcc.gobblerift.juice_ready
tag @s remove tcc.gobblerift.hungry
tag @s remove tcc.gobblerift.in_love
tag @s remove tcc.gobblerift.can_love
scoreboard players set @s tcc.dummy2 0