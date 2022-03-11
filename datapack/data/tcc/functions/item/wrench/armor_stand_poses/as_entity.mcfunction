############################################################
# Commands to run as the armor stand found
############################################################

tag @p[advancements={tcc:technical/player_interacted_with_entity/armor_stand_wrench=true}] add tcc.tag
data modify storage tcc:storage root.temp.item set from entity @s HandItems[0]
item replace entity @s weapon.mainhand from entity @p[advancements={tcc:technical/player_interacted_with_entity/armor_stand_wrench=true}] weapon.mainhand
function tcc:item/wrench/armor_stand_poses/cycle_poses