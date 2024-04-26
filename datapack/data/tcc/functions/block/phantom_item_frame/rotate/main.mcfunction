# Gets entity interaction distance for macro

data remove storage tcc:temp root
execute store result score @s tcc.dummy run attribute @s minecraft:player.entity_interaction_range get
scoreboard players add @s tcc.dummy 2
execute store result storage tcc:temp root.macro_input.distance int 1 run scoreboard players get @s tcc.dummy
function tcc:block/phantom_item_frame/rotate/distance_macro with storage tcc:temp root.macro_input