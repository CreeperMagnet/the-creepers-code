# Runs when a decorated pot is placed

data remove storage tcc:storage root.temp
execute if entity @s[y_rotation=-135..-45] run data modify storage tcc:storage root.temp.direction set value "east"
execute if entity @s[y_rotation=-45..45] run data modify storage tcc:storage root.temp.direction set value "south"
execute if entity @s[y_rotation=45..135] run data modify storage tcc:storage root.temp.direction set value "west"
execute if entity @s[y_rotation=135..225] run data modify storage tcc:storage root.temp.direction set value "north"

execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"decorated_pot"}}}}] run data modify storage tcc:storage root.temp.item_tag set from entity @s SelectedItem.tag
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"decorated_pot"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"decorated_pot"}}}}] run data modify storage tcc:storage root.temp.item_tag set from entity @s Inventory[{Slot:-106b}].tag
advancement revoke @s only tcc:technical/placed_block/custom_decorated_pot

execute align xyz positioned ~0.5 ~-6.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~-5.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~-4.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~-3.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~-2.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~-1.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~1.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~2.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~3.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~4.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~5.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
execute align xyz positioned ~0.5 ~6.5 ~0.5 run function tcc:block/decorated_pot/placement/layer
