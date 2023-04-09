############################################################
# Ticks down the tea timer for when it's processing
############################################################

scoreboard players remove @s tcc.dummy2 1

data remove storage tcc:storage root.temp
execute on vehicle run data modify storage tcc:storage root.temp.tea set from entity @s item.tag.tea

execute if data storage tcc:storage root.temp.tea{id:"amenable"} run function tcc:block/teapot/cook/particles/amenable
execute if data storage tcc:storage root.temp.tea{id:"antitoxin"} run function tcc:block/teapot/cook/particles/antitoxin
execute if data storage tcc:storage root.temp.tea{id:"clearsight"} run function tcc:block/teapot/cook/particles/clearsight
execute if data storage tcc:storage root.temp.tea{id:"illumination"} run function tcc:block/teapot/cook/particles/illumination
execute if data storage tcc:storage root.temp.tea{id:"obscurity"} run function tcc:block/teapot/cook/particles/obscurity
execute if data storage tcc:storage root.temp.tea{id:"plenty"} run function tcc:block/teapot/cook/particles/plenty
execute if data storage tcc:storage root.temp.tea{id:"purity"} run function tcc:block/teapot/cook/particles/purity
execute if data storage tcc:storage root.temp.tea{id:"serendipity"} run function tcc:block/teapot/cook/particles/serendipity
execute if data storage tcc:storage root.temp.tea{id:"stability"} run function tcc:block/teapot/cook/particles/stability
execute if data storage tcc:storage root.temp.tea{id:"vigor"} run function tcc:block/teapot/cook/particles/vigor
execute if data storage tcc:storage root.temp.tea{id:"vitality"} run function tcc:block/teapot/cook/particles/vitality
execute if data storage tcc:storage root.temp.tea{id:"vivacity"} run function tcc:block/teapot/cook/particles/vivacity
execute if data storage tcc:storage root.temp.tea{id:"steadiness"} run function tcc:block/teapot/cook/particles/steadiness
execute if data storage tcc:storage root.temp.tea{extended:1b} run function tcc:block/teapot/cook/particles/extended

execute if entity @s[scores={tcc.dummy2=0}] run function tcc:block/teapot/cook/finish