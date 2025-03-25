# Special interactions with blocks

execute store result score #temp_1 tcc.dummy run gamerule projectilesCanBreakBlocks
execute if score #temp_1 tcc.dummy matches 0 if block ~ ~ ~ #tcc:boomerang/interact_solid run function tcc:item/boomerang/block_interaction/forced_bounce
execute if score #temp_1 tcc.dummy matches 0 run return 0

execute if block ~ ~ ~ minecraft:wheat[age=7] run function tcc:item/boomerang/block_interaction/seeds/wheat
execute if block ~ ~ ~ minecraft:potatoes[age=7] run function tcc:item/boomerang/block_interaction/seeds/potatoes
execute if block ~ ~ ~ minecraft:carrots[age=7] run function tcc:item/boomerang/block_interaction/seeds/carrots
execute if block ~ ~ ~ minecraft:beetroots[age=3] run function tcc:item/boomerang/block_interaction/seeds/beetroots
execute if block ~ ~ ~ minecraft:bamboo run function tcc:item/boomerang/block_interaction/bamboo
execute if block ~ ~ ~ minecraft:sugar_cane run function tcc:item/boomerang/block_interaction/sugar_cane
execute if block ~ ~ ~ minecraft:nether_wart[age=3] run function tcc:item/boomerang/block_interaction/seeds/nether_wart
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] run function tcc:item/boomerang/block_interaction/seeds/sweet_berries
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=3] run function tcc:item/boomerang/block_interaction/seeds/mature_sweet_berries
execute if block ~ ~ ~ minecraft:cocoa[age=2] run function tcc:item/boomerang/block_interaction/seeds/cocoa
execute if block ~ ~ ~ #minecraft:cave_vines[berries=true] run function tcc:item/boomerang/block_interaction/seeds/cave_vines

execute if block ~ ~ ~ minecraft:mangrove_propagule[age=4] run setblock ~ ~ ~ minecraft:air destroy
execute unless block ~ ~-0.3 ~ minecraft:snow if block ~ ~ ~ minecraft:snow[layers=1] run setblock ~ ~ ~ minecraft:air destroy
execute unless block ~ ~-0.6 ~ minecraft:snow if block ~ ~ ~ minecraft:snow[layers=2] run setblock ~ ~ ~ minecraft:air destroy

execute if block ~ ~ ~ minecraft:decorated_pot align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:item/boomerang/block_interaction/decorated_pot
execute if block ~ ~ ~ minecraft:cactus run function tcc:item/boomerang/block_interaction/cactus
execute if block ~ ~ ~ minecraft:chorus_plant run function tcc:item/boomerang/block_interaction/chorus_plant
execute if block ~ ~ ~ minecraft:firefly_bush run function tcc:item/boomerang/block_interaction/firefly_bush
execute if block ~ ~ ~ minecraft:bush run function tcc:item/boomerang/block_interaction/bush

execute if block ~ ~ ~ minecraft:pitcher_crop[age=4] run setblock ~ ~ ~ minecraft:air destroy

execute if block ~ ~ ~ #tcc:boomerang/break if predicate tcc:location_check/in_water run setblock ~ ~ ~ minecraft:water destroy
execute if block ~ ~ ~ #tcc:boomerang/break unless predicate tcc:location_check/in_water run setblock ~ ~ ~ minecraft:air destroy
