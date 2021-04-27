############################################################
# Description: Adds an item to a phantom item frame
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.phantom_item_frame.empty
data modify entity @s Item set from storage tcc:storage root.temp.item
data modify entity @s ItemRotation set value 0b

# Particles

execute unless entity @s[tag=!tcc.phantom_item_frame.east,tag=!tcc.phantom_item_frame.west] run particle falling_dust blue_concrete ~ ~ ~ 0 .3 .3 .3 10
execute unless entity @s[tag=!tcc.phantom_item_frame.south,tag=!tcc.phantom_item_frame.north] run particle falling_dust blue_concrete ~ ~ ~ .3 .3 0 .3 10
execute unless entity @s[tag=!tcc.phantom_item_frame.up,tag=!tcc.phantom_item_frame.down] run particle falling_dust blue_concrete ~ ~ ~ .3 0 .3 .3 10
