############################################################
# Commands for placing a nether reactor
############################################################

summon item_display ~ ~ ~ {CustomName:'{"translate":"block.tcc.nether_reactor_core"}',Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.nether_reactor_core","smithed.entity","smithed.block"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330000}}}
execute as @e[type=item_display,limit=1,tag=tcc.nether_reactor_core,tag=!tcc.nether_reactor_core.on,sort=nearest] at @s run function tcc:block/nether_reactor/check_casing/off
setblock ~ ~-1 ~ obsidian
