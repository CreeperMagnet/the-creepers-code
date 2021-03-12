############################################################
# Description: Makes enchanted golden apple pie slices work
# Creator: ChromaKey
############################################################

advancement revoke @s only tcc:technical/item/enchanted_golden_apple_pie_slice
effect give @s regeneration 10 1
function tcc:entity/player/modify_absorption/add_8
effect give @s absorption 300 3
effect give @s resistance 300 0
effect give @s fire_resistance 300 0
