scoreboard players set #in_0 tcc.dummy 100
function tcc:postgen/random_block

execute if score #out_0 tcc.dummy matches ..40 run setblock ~ ~ ~ end_stone_bricks
execute if score #out_0 tcc.dummy matches 41..70 run function tcc:postgen/bootleg_jigsaw/end_city_addition/left_section/setblock_normal
execute if score #out_0 tcc.dummy matches 71..100 run function tcc:postgen/bootleg_jigsaw/end_city_addition/left_section/setblock_weird
