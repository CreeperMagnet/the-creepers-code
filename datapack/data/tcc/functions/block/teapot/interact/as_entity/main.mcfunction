############################################################
# Finds the teapot you're looking at
############################################################

tag @p[advancements={tcc:technical/player_interacted_with_entity/teapot=true}] add tcc.tag
execute if entity @s[tag=!tcc.teapot.filled] run function tcc:block/teapot/interact/as_entity/set_states/water
execute if entity @s[tag=tcc.teapot.filled] if data storage tcc:storage root.temp.item{id:"minecraft:glass_bottle"} run data modify storage tcc:storage root.temp.tea set from entity @s HandItems[0].tag.tcc.tea
execute if entity @s[tag=tcc.teapot.filled] unless data storage tcc:storage root.temp.creative if data storage tcc:storage root.temp.item{id:"minecraft:glass_bottle"} run function tcc:block/teapot/interact/as_entity/set_states/empty
execute if entity @s[tag=tcc.teapot.water] if data storage tcc:storage root.temp.item.tag.tcc{id:"warped_wart"} run function tcc:block/teapot/interact/as_entity/set_states/warped_wart
execute if entity @s[tag=tcc.teapot.warped_wart] if data storage tcc:storage root.temp.item{tea_ingredient:1b} run function tcc:block/teapot/interact/as_entity/set_states/add_ingredient
execute if entity @s[tag=tcc.teapot.can_extend] if data storage tcc:storage root.temp.item{tag:{tcc:{id:"snail_mucus"}}} run function tcc:block/teapot/interact/as_entity/set_states/extended