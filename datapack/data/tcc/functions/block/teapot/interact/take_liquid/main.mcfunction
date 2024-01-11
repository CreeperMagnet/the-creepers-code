# Fills a teapot, setting tags and visuals

data remove storage tcc:storage root.temp.macro_input
execute on vehicle run data modify storage tcc:storage root.temp.macro_input set from entity @s item.tag.tea
execute on target at @s run function tcc:block/teapot/interact/take_liquid/give_item/main
execute unless data storage tcc:storage root.temp{creative:1b} run function tcc:block/teapot/interact/take_liquid/set_state