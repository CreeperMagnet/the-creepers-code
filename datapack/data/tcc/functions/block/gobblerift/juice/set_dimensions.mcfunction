############################################################
# Description: Sets the proper dimensions for riftjuice gotten from a gobblerift
# Creator: CreeperMagnet_
############################################################

# Use the "minecraft:overworld" line as a template if you're adding to this code via function tag. Also, make sure to add a predicate and add to the other function tag used in this process as well.

execute if entity @s[predicate=tcc:dimension/overworld] run data modify storage tcc:storage root.temp.item.riftjuice.dimension set value "minecraft:overworld"
execute if entity @s[predicate=tcc:dimension/overworld] run data modify storage tcc:storage root.temp.item.dimension_lore set value '{"translate":"item.tcc.riftjuice_bottle.lore.dimension.overworld","color":"gray"}'
execute if entity @s[predicate=tcc:dimension/the_nether] run data modify storage tcc:storage root.temp.item.riftjuice.dimension set value "minecraft:the_nether"
execute if entity @s[predicate=tcc:dimension/the_nether] run data modify storage tcc:storage root.temp.item.dimension_lore set value '{"translate":"item.tcc.riftjuice_bottle.lore.dimension.the_nether","color":"gray"}'
execute if entity @s[predicate=tcc:dimension/the_end] run data modify storage tcc:storage root.temp.item.riftjuice.dimension set value "minecraft:the_end"
execute if entity @s[predicate=tcc:dimension/the_end] run data modify storage tcc:storage root.temp.item.dimension_lore set value '{"translate":"item.tcc.riftjuice_bottle.lore.dimension.the_end","color":"gray"}'
