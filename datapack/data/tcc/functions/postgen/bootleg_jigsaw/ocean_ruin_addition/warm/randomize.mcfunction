scoreboard players set #in_0 tcc.dummy 100
function tcc:postgen/random_block

scoreboard players set #temp_1 tcc.dummy 0
execute if score #out_0 tcc.dummy matches ..50 run scoreboard players set #temp_1 tcc.dummy 1
execute if score #temp_1 tcc.dummy matches 0 run function tcc:postgen/bootleg_jigsaw/ocean_ruin_addition/warm/setblock_treasure
execute if score #temp_1 tcc.dummy matches 1 run function tcc:postgen/bootleg_jigsaw/ocean_ruin_addition/warm/setblock_trident
scoreboard players reset #temp_1 tcc.dummy
setblock ~ ~1 ~ air
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 water replace observer
