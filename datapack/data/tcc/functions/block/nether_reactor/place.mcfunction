############################################################
# Description: Commands for placing a nether reactor
# Creator: CreeperMagnet_
############################################################

setblock ~ ~ ~ obsidian
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.nether_reactor_core"}',Fire:32767s,ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:330030}}],Tags:["tcc.block","tcc.entity","tcc.fire","tcc.nether_reactor_core","global.ignore"],NoGravity:1b,Invisible:1b,Marker:1b}
execute as @e[type=armor_stand,limit=1,nbt={Fire:32767s},tag=tcc.nether_reactor_core,tag=!tcc.nether_reactor_core.on,sort=nearest] at @s run function tcc:block/nether_reactor/check_casing/off
