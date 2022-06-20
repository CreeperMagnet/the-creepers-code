############################################################
# Makes apple pie slices work
############################################################

advancement revoke @s only tcc:technical/consume_item/golden_apple_pie_slice
effect give @s minecraft:regeneration 7 1
effect give @s minecraft:absorption 160 0
scoreboard players add @s manic.sanity 40