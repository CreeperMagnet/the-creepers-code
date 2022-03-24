############################################################
# Makes apple pie slices work
############################################################

advancement revoke @s only tcc:technical/consume_item/golden_apple_pie_slice
effect give @s regeneration 5 1
function tcc:entity/player/modify_absorption/add_2
effect give @s minecraft:absorption 300 0
