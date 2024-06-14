# Ticks down the tea timer for when it's processing

scoreboard players remove @s tcc.dummy2 1

data remove storage tcc:temp root
execute on vehicle run data modify storage tcc:temp root.tea set from entity @s item.components."minecraft:custom_data".tea

execute if data storage tcc:temp root.tea{id:"amenable"} run particle minecraft:entity_effect{color:[0.184,0.706,0.635,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"antitoxin"} run particle minecraft:entity_effect{color:[1.0,0.569,0.086,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"clearsight"} run particle minecraft:entity_effect{color:[0.910,0.447,0.447,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"illumination"} run particle minecraft:entity_effect{color:[0.039,0.313,0.376,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"obscurity"} run particle minecraft:entity_effect{color:[0.388,0.388,0.525,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"plenty"} run particle minecraft:entity_effect{color:[0.647,0.027,0.0,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"purity"} run particle minecraft:entity_effect{color:[0.259,0.209,0.180,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"serendipity"} run particle minecraft:entity_effect{color:[0.502,0.796,0.525,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"stability"} run particle minecraft:entity_effect{color:[0.741,0.424,0.859,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"steadiness"} run particle minecraft:entity_effect{color:[1.0,0.925,0.310,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"vigor"} run particle minecraft:entity_effect{color:[0.682,0.686,0.549,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"vitality"} run particle minecraft:entity_effect{color:[0.584,0.812,0.780,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"vivacity"} run particle minecraft:entity_effect{color:[0.553,0.701,0.965,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"salubrity"} run particle minecraft:entity_effect{color:[0.745,0.612,1.0,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"sealing"} run particle minecraft:entity_effect{color:[0.5,0.302,0.137,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"stillness"} run particle minecraft:entity_effect{color:[0.247,0.643,0.259,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{id:"untangling"} run particle minecraft:entity_effect{color:[0.714,0.482,0.463,1.0]} ~ ~ ~ 0 0 0 1 4
execute if data storage tcc:temp root.tea{extended:1b} run particle minecraft:entity_effect{color:[0.839,0.765,0.671,1.0]} ~ ~ ~ 0 0 0 1 4

execute if entity @s[scores={tcc.dummy2=0}] run function tcc:block/teapot/cook/finish