############################################################
# Commands for placing a nether reactor
############################################################

setblock ~ ~ ~ obsidian
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.nether_reactor_core"}',HasVisualFire:1b,ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330000}}],Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.nether_reactor_core","smithed.entity","smithed.block"],NoGravity:1b,Invisible:1b,Marker:1b}
execute as @e[type=armor_stand,limit=1,tag=tcc.nether_reactor_core,tag=!tcc.nether_reactor_core.on,sort=nearest] at @s run function tcc:block/nether_reactor/check_casing/off
