############################################################
# Description: Finds the teapot you're looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
tag @p[advancements={tcc:technical/block/click_teapot=true}] add tcc.tag
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},tag=tcc.teapot.empty] run function tcc:block/teapot/interact/set_states/filled_water
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},tag=tcc.teapot.filled_water] if data storage tcc:storage root.temp.item{id:"minecraft:glass_bottle"} run function tcc:block/teapot/interact/set_states/empty
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},tag=tcc.teapot.filled_water] if data storage tcc:storage root.temp.item{tag:{tcc:{id:"warped_wart"}}} run function tcc:block/teapot/interact/set_states/filled_warped_wart
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},tag=tcc.teapot.filled_warped_wart] if data storage tcc:storage root.temp.item{tea_ingredient:1b} run function tcc:block/teapot/interact/set_states/add_ingredient/main
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},tag=tcc.teapot.filled_tea] if data storage tcc:storage root.temp.item{tag:{tcc:{id:"teacup"}}} run function tcc:block/teapot/interact/set_states/take_tea
