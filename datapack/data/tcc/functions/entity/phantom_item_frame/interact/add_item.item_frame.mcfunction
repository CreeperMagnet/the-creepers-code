############################################################
# Adds an item to a phantom item frame
############################################################

tag @s remove tcc.phantom_item_frame.empty
data modify entity @s Item set from storage tcc:storage root.temp.item
data modify entity @s ItemRotation set value 0b

# Particles

execute unless entity @s[tag=!tcc.phantom_item_frame.east,tag=!tcc.phantom_item_frame.west] run particle mycelium ~ ~ ~ 0 .3 .3 .3 100
execute unless entity @s[tag=!tcc.phantom_item_frame.south,tag=!tcc.phantom_item_frame.north] run particle mycelium ~ ~ ~ .3 .3 0 .3 100
execute unless entity @s[tag=!tcc.phantom_item_frame.up,tag=!tcc.phantom_item_frame.down] run particle mycelium ~ ~ ~ .3 0 .3 .3 100
