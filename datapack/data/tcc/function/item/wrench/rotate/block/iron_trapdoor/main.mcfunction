# Rotates a block

data modify storage tcc:temp root.macro_input set value {"half":"bottom","waterlogged":"false","facing":"north"}
execute if block ~ ~ ~ minecraft:iron_trapdoor[half=top] run data modify storage tcc:temp root.macro_input.half set value "top"
execute if block ~ ~ ~ minecraft:iron_trapdoor[waterlogged=true] run data modify storage tcc:temp root.macro_input.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:iron_trapdoor[facing=east] run data modify storage tcc:temp root.macro_input.facing set value "east"
execute if block ~ ~ ~ minecraft:iron_trapdoor[facing=south] run data modify storage tcc:temp root.macro_input.facing set value "south"
execute if block ~ ~ ~ minecraft:iron_trapdoor[facing=west] run data modify storage tcc:temp root.macro_input.facing set value "west"
function tcc:item/wrench/rotate/block/iron_trapdoor/macro with storage tcc:temp root.macro_input