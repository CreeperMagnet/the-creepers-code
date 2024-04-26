# Fills a teapot, setting tags and visuals

data remove storage tcc:temp root.macro_input
execute on vehicle run data modify storage tcc:temp root.macro_input set from entity @s item.components."minecraft:custom_data".tea
execute on target at @s run function tcc:block/teapot/interact/take_liquid/give_item/main
execute unless data storage tcc:temp root{creative:1b} run function tcc:block/teapot/interact/take_liquid/set_state