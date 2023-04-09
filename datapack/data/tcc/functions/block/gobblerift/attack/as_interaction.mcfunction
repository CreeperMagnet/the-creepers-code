############################################################
# Commands to run as the interaction entity
############################################################

execute if entity @s[tag=!tcc.gobblerift.hurt] on vehicle run function tcc:block/gobblerift/attack/as_item_display
tag @s add tcc.gobblerift.hurt
data remove entity @s attack