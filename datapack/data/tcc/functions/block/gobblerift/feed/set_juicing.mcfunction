############################################################
# Description: Juices a gobblerift, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

data modify entity @s HandItems[0].tag.CustomModelData set value 330042
scoreboard players set @s tcc.dummy2 0
tag @s add tcc.gobblerift.juicing
tag @s remove tcc.gobblerift.hungry
tag @s remove tcc.gobblerift.in_love
tag @s remove tcc.gobblerift.can_love
tag @s remove tcc.gobblerift.open_state