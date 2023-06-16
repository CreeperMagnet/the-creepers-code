############################################################
# Special interactions with blocks
############################################################

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
execute if block ~ ~ ~ minecraft:pitcher_crop[age=4] run setblock ~ ~ ~ minecraft:air destroy

execute if block ~ ~ ~ #tcc:boomerang/break run setblock ~ ~ ~ minecraft:air destroy
