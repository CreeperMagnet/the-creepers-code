############################################################
# Description: Fills a teapot, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.item{id:"minecraft:dandelion"} run function tcc:block/teapot/interact/set_states/add_ingredient/steadiness
execute if data storage tcc:storage root.temp.item{id:"minecraft:wither_rose"} run function tcc:block/teapot/interact/set_states/add_ingredient/purity
execute if data storage tcc:storage root.temp.item{id:"minecraft:glowstone_dust"} run function tcc:block/teapot/interact/set_states/add_ingredient/clearsight
execute if data storage tcc:storage root.temp.item{id:"minecraft:ink_sac"} run function tcc:block/teapot/interact/set_states/add_ingredient/obscurity
execute if data storage tcc:storage root.temp.item{id:"minecraft:blaze_powder"} run function tcc:block/teapot/interact/set_states/add_ingredient/vigor
execute if data storage tcc:storage root.temp.item{id:"minecraft:rabbit_foot"} run function tcc:block/teapot/interact/set_states/add_ingredient/serendipity
execute if data storage tcc:storage root.temp.item{id:"minecraft:honey_bottle"} run function tcc:block/teapot/interact/set_states/add_ingredient/antitoxin
execute if data storage tcc:storage root.temp.item{id:"minecraft:sweet_berries"} run function tcc:block/teapot/interact/set_states/add_ingredient/plenty
execute if data storage tcc:storage root.temp.item{tag:{tcc:{id:"ancient_acorn"}}} run function tcc:block/teapot/interact/set_states/add_ingredient/vitality
execute if data storage tcc:storage root.temp.item{tag:{tcc:{id:"frostbloom_petals"}}} run function tcc:block/teapot/interact/set_states/add_ingredient/vivacity
execute if data storage tcc:storage root.temp.item{tag:{tcc:{id:"riftjuice_bottle"}}} run function tcc:block/teapot/interact/set_states/add_ingredient/stability
tag @s remove tcc.teapot.filled_warped_wart
execute at @s run playsound tcc:block.teapot.brew block @a[distance=..16]