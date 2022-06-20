############################################################
# Ticks down the tea timer for when it's processing
############################################################

scoreboard players remove @s tcc.dummy2 1

execute if data entity @s HandItems[0].tag.tcc.tea{id:"amenable"} run function tcc:block/teapot/cook/particles/amenable
execute if data entity @s HandItems[0].tag.tcc.tea{id:"antitoxin"} run function tcc:block/teapot/cook/particles/antitoxin
execute if data entity @s HandItems[0].tag.tcc.tea{id:"clearsight"} run function tcc:block/teapot/cook/particles/clearsight
execute if data entity @s HandItems[0].tag.tcc.tea{id:"illumination"} run function tcc:block/teapot/cook/particles/illumination
execute if data entity @s HandItems[0].tag.tcc.tea{id:"obscurity"} run function tcc:block/teapot/cook/particles/obscurity
execute if data entity @s HandItems[0].tag.tcc.tea{id:"plenty"} run function tcc:block/teapot/cook/particles/plenty
execute if data entity @s HandItems[0].tag.tcc.tea{id:"purity"} run function tcc:block/teapot/cook/particles/purity
execute if data entity @s HandItems[0].tag.tcc.tea{id:"serendipity"} run function tcc:block/teapot/cook/particles/serendipity
execute if data entity @s HandItems[0].tag.tcc.tea{id:"stability"} run function tcc:block/teapot/cook/particles/stability
execute if data entity @s HandItems[0].tag.tcc.tea{id:"vigor"} run function tcc:block/teapot/cook/particles/vigor
execute if data entity @s HandItems[0].tag.tcc.tea{id:"vitality"} run function tcc:block/teapot/cook/particles/vitality
execute if data entity @s HandItems[0].tag.tcc.tea{id:"vivacity"} run function tcc:block/teapot/cook/particles/vivacity
execute if data entity @s HandItems[0].tag.tcc.tea{id:"steadiness"} run function tcc:block/teapot/cook/particles/steadiness
execute if data entity @s HandItems[0].tag.tcc.tea{extended:1b} run function tcc:block/teapot/cook/particles/extended

execute if entity @s[scores={tcc.dummy2=0}] run function tcc:block/teapot/cook/finish