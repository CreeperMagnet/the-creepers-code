############################################################
# Fills a teapot, setting tags and visuals
############################################################

execute on vehicle run data modify storage tcc:storage root.temp.tea set from entity @s item.tag.tea
execute on target run function tcc:block/teapot/interact/take_liquid/give_item/main
execute unless data storage tcc:storage root.temp{creative:1b} run function tcc:block/teapot/interact/take_liquid/set_state