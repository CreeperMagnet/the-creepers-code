############################################################
# Description: Damages a mainhand item using scoreboards
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.Items insert 0 from entity @s SelectedItem
function tcc:item/item_modification/durability/damage/rings/potion/modify_durability
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine -30000000 0 2033 minecraft:air{drop_contents:1b}
